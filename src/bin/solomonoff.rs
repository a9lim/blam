//! Empirical algorithmic information theory over the closed-term census:
//! the Solomonoff prior m(x), prefix complexity K(x), and two-sided bounds
//! on the plain-machine halting probability Ω — all from exhaustively
//! running every closed BLC term of size min_n..=max_n.
//!
//! Closed-term codes are prefix-free, so Σ 2^-|p| over any set of closed
//! terms is ≤ 1 and every mass here is EXACT: masses are integers in units
//! of 2^-64 (u128), no floating-point accumulation anywhere.
//!
//!   Ω ∈ [halt_mass, 1 − diverge_mass − (never-halting mass outside range)]
//!   m_N(x) = Σ_{|p|≤N, p→x} 2^-|p|   (reported: nontrivial mass + 2^-|x|)
//!   K_N(x) = min{|p| : p→x, |p|≤N}   (≤ |x| via the self-program)
//!
//! Only programs WITH a redex are tabulated — every normal form x is its
//! own program, and that trivial 2^-|x| contribution is added analytically
//! at print time. Normal forms wider than 63 bits can't be u64-keyed and
//! are aggregated by size (identity dropped, counts and mass kept).
//!
//! Usage: solomonoff <min_n> <max_n> [--bb-cap N] [--rescue N] [--table FILE]
//!        [--dump-max-x N] [--top N]

use blc::bb::{normal_form, LTerm, NoNf};
use blc::enumerate::{enc_to_string, interleave_tasks, run_task, split_tasks};
use blc::oracle::no_nf;
use blc::vm::{Machine, Sink, TermPool};
use rayon::prelude::*;
use std::collections::HashMap;
use std::time::Instant;

/// One unit = 2^-64. A size-n program contributes 2^(64-n) units.
fn mass_of(n: u8) -> u128 {
    1u128 << (64 - n as u32)
}

/// Streams normal-form bits into a u64-packed key; falls back to
/// size-only counting past 63 bits.
#[derive(Default)]
struct KeySink {
    enc: u64,
    len: u64,
    overflow: bool,
}

impl KeySink {
    fn clear(&mut self) {
        *self = KeySink::default();
    }
    fn push(&mut self, bit: bool) {
        self.len += 1;
        if self.len > 63 {
            self.overflow = true;
        } else {
            self.enc = self.enc << 1 | bit as u64;
        }
    }
}

impl Sink for KeySink {
    fn zero(&mut self) {
        self.push(false);
    }
    fn one(&mut self) {
        self.push(true);
    }
    /// O(1) equivalent of the default (n ones, then a zero). The default
    /// is O(n) with n bounded only by the machine's transition cap —
    /// profiled at 99.9% of the n=40 tail before this override existed.
    fn var(&mut self, n: u32) {
        let need = n as u64 + 1;
        if !self.overflow && self.len + need <= 63 {
            self.enc = (self.enc << need) | (((1u64 << n) - 1) << 1);
        } else {
            self.overflow = true;
        }
        self.len += need;
    }
}

fn emit_lterm(t: &LTerm, sink: &mut KeySink) {
    match t {
        LTerm::Var(n) => {
            sink.var(*n);
        }
        LTerm::Lam(a) => {
            sink.zero();
            sink.zero();
            emit_lterm(a, sink);
        }
        LTerm::App(f, a) => {
            sink.zero();
            sink.one();
            emit_lterm(f, sink);
            emit_lterm(a, sink);
        }
        LTerm::Bot => unreachable!("normal forms are bot-free"),
    }
}

#[derive(Clone, Copy)]
struct Entry {
    mass: u128,    // nontrivial mass, units of 2^-64
    count: u64,    // nontrivial programs
    k: u8,         // shortest program size seen (incl. nontrivial only)
    k_prog: (u64, u8),
}

#[derive(Default)]
struct Acc {
    total: u64,
    halt: u64,
    diverge: u64,
    unknown: u64,
    halt_mass: u128,
    diverge_mass: u128,
    unknown_mass: u128,
    nontrivial: u64,
    table: HashMap<(u64, u8), Entry>,
    big: HashMap<u64, (u128, u64)>, // nf size -> (mass, count) past 63 bits
}

impl Acc {
    fn merge(mut self, o: Acc) -> Acc {
        self.total += o.total;
        self.halt += o.halt;
        self.diverge += o.diverge;
        self.unknown += o.unknown;
        self.halt_mass += o.halt_mass;
        self.diverge_mass += o.diverge_mass;
        self.unknown_mass += o.unknown_mass;
        self.nontrivial += o.nontrivial;
        for (k, e) in o.table {
            self.table
                .entry(k)
                .and_modify(|m| {
                    m.mass += e.mass;
                    m.count += e.count;
                    // Total order on ties: reduce-order independent.
                    if (e.k, e.k_prog) < (m.k, m.k_prog) {
                        m.k = e.k;
                        m.k_prog = e.k_prog;
                    }
                })
                .or_insert(e);
        }
        for (sz, (mass, count)) in o.big {
            let b = self.big.entry(sz).or_insert((0, 0));
            b.0 += mass;
            b.1 += count;
        }
        self
    }

    fn record_halt(&mut self, enc: u64, len: u8, sink: &KeySink, steps: u64) {
        self.halt += 1;
        self.halt_mass += mass_of(len);
        if steps == 0 {
            return; // normal-form program: trivial self-computation
        }
        self.nontrivial += 1;
        if sink.overflow {
            let b = self.big.entry(sink.len).or_insert((0, 0));
            b.0 += mass_of(len);
            b.1 += 1;
        } else {
            self.table
                .entry((sink.enc, sink.len as u8))
                .and_modify(|m| {
                    m.mass += mass_of(len);
                    m.count += 1;
                    if (len, (enc, len)) < (m.k, m.k_prog) {
                        m.k = len;
                        m.k_prog = (enc, len);
                    }
                })
                .or_insert(Entry {
                    mass: mass_of(len),
                    count: 1,
                    k: len,
                    k_prog: (enc, len),
                });
        }
    }
}

fn lterm_of(pool: &TermPool, id: u32) -> LTerm {
    use blc::vm::Node;
    match pool.nodes[id as usize] {
        Node::Var(n) => LTerm::Var(n),
        Node::Lam(b) => blc::bb::lam(lterm_of(pool, b)),
        Node::App(f, a) => blc::bb::app(lterm_of(pool, f), lterm_of(pool, a)),
    }
}

/// Format a 2^-64-unit mass as a decimal probability.
fn pm(units: u128) -> f64 {
    units as f64 / 2f64.powi(64)
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let mut pos = Vec::new();
    let mut bb_cap: i64 = 2_000_000;
    let mut rescue: u64 = 10_000_000;
    let mut table_path = String::from("solomonoff_table.txt");
    let mut dump_max_x: u8 = 20;
    let mut top: usize = 40;
    let mut i = 1;
    while i < args.len() {
        match args[i].as_str() {
            "--bb-cap" => {
                i += 1;
                bb_cap = args[i].parse().unwrap();
            }
            "--rescue" => {
                i += 1;
                rescue = args[i].parse().unwrap();
            }
            "--table" => {
                i += 1;
                table_path = args[i].clone();
            }
            "--dump-max-x" => {
                i += 1;
                dump_max_x = args[i].parse().unwrap();
            }
            "--top" => {
                i += 1;
                top = args[i].parse().unwrap();
            }
            a => pos.push(a.parse::<u32>().expect("size argument")),
        }
        i += 1;
    }
    let (min_n, max_n) = match pos.as_slice() {
        [a] => (4u32, *a),
        [a, b] => (*a, *b),
        _ => {
            eprintln!("usage: solomonoff <min_n> [max_n] [flags]");
            std::process::exit(2);
        }
    };
    assert!(max_n <= 63);

    rayon::ThreadPoolBuilder::new()
        .stack_size(256 << 20)
        .build_global()
        .unwrap();

    let t0 = Instant::now();
    let mut acc = Acc::default();
    for n in min_n..=max_n {
        let tn = Instant::now();
        let tasks = interleave_tasks(split_tasks(n, rayon::current_num_threads() * 64));
        let a = tasks
            .par_iter()
            .map_init(
                || (TermPool::new(), Machine::new()),
                |(pool, vm), task| {
                    let mut acc = Acc::default();
                    run_task(task, &mut |enc, len| {
                        acc.total += 1;
                        pool.clear();
                        let root = pool.decode_u64(enc, len).expect("valid term");
                        if !pool.has_redex(root) {
                            acc.record_halt(enc, len, &KeySink::default(), 0);
                            return;
                        }
                        if no_nf(0, (&*pool, root)) {
                            acc.diverge += 1;
                            acc.diverge_mass += mass_of(len);
                            return;
                        }
                        let mut sink = KeySink::default();
                        for budget in [64u64, 4096] {
                            sink.clear();
                            if let Ok(steps) = vm.normalize(pool, root, budget, &mut sink) {
                                acc.record_halt(enc, len, &sink, steps);
                                return;
                            }
                        }
                        let t = lterm_of(pool, root);
                        match normal_form(bb_cap, &t) {
                            Ok(nf) => {
                                sink.clear();
                                match vm.normalize(pool, root, rescue, &mut sink) {
                                    Ok(steps) => acc.record_halt(enc, len, &sink, steps),
                                    Err(_) => {
                                        // Canonical step count unavailable;
                                        // 1 keeps it marked nontrivial.
                                        sink.clear();
                                        emit_lterm(&nf, &mut sink);
                                        acc.record_halt(enc, len, &sink, 1);
                                    }
                                }
                            }
                            Err(NoNf::Diverge) => {
                                acc.diverge += 1;
                                acc.diverge_mass += mass_of(len);
                            }
                            Err(NoNf::Unknown(_)) => {
                                sink.clear();
                                match vm.normalize(pool, root, rescue, &mut sink) {
                                    Ok(steps) => acc.record_halt(enc, len, &sink, steps),
                                    Err(_) => {
                                        acc.unknown += 1;
                                        acc.unknown_mass += mass_of(len);
                                    }
                                }
                            }
                        }
                    });
                    acc
                },
            )
            .reduce(Acc::default, Acc::merge);
        acc = acc.merge(a);
        eprintln!(
            "n={n}: cumulative {} terms, {} distinct nontrivial nfs ({:.1}s, {:.1}s total)",
            acc.total,
            acc.table.len(),
            tn.elapsed().as_secs_f64(),
            t0.elapsed().as_secs_f64()
        );
    }

    // ---- Ω accounting (exact, units of 2^-64) ----
    let covered = acc.halt_mass + acc.diverge_mass + acc.unknown_mass;
    println!("== programs {min_n}..{max_n} bits ==");
    println!(
        "terms {} | halt {} | diverge {} | unknown {}",
        acc.total, acc.halt, acc.diverge, acc.unknown
    );
    println!("halt_mass     = {} * 2^-64 = {:.12}", acc.halt_mass, pm(acc.halt_mass));
    println!(
        "diverge_mass  = {} * 2^-64 = {:.12}",
        acc.diverge_mass,
        pm(acc.diverge_mass)
    );
    println!(
        "unknown_mass  = {} * 2^-64 = {:.2e}",
        acc.unknown_mass,
        pm(acc.unknown_mass)
    );
    println!("kraft covered = {:.12} (all closed terms {min_n}..{max_n})", pm(covered));
    println!(
        "Ω_plain restricted to |p|≤{max_n}: [{:.12}, {:.12}]",
        pm(acc.halt_mass),
        pm(acc.halt_mass + acc.unknown_mass)
    );

    // ---- table analytics ----
    let mut rows: Vec<((u64, u8), Entry)> = acc.table.into_iter().collect();

    // Most compressible: largest |x| − K(x) (K includes the self-program).
    let mut by_compression: Vec<_> = rows
        .iter()
        .filter(|((_, xlen), e)| e.k < *xlen)
        .map(|(k, e)| (*k, *e))
        .collect();
    by_compression.sort_by_key(|((_, xlen), e)| std::cmp::Reverse(*xlen as i64 - e.k as i64));
    println!("\n== most compressible normal forms (|x| − K ≤{max_n}(x)) ==");
    println!("{:>5} {:>4} {:>6} {:>8}  program -> x", "|x|", "K", "gain", "#progs");
    for ((xenc, xlen), e) in by_compression.iter().take(top) {
        println!(
            "{:>5} {:>4} {:>6} {:>8}  {} -> {}",
            xlen,
            e.k,
            *xlen as i64 - e.k as i64,
            e.count,
            enc_to_string(e.k_prog.0, e.k_prog.1),
            if *xlen <= 40 {
                enc_to_string(*xenc, *xlen)
            } else {
                format!("<{xlen} bits>")
            }
        );
    }
    // Oversized normal forms, by size (identity not tracked past 63 bits).
    if !acc.big.is_empty() {
        let mut big: Vec<_> = acc.big.into_iter().collect();
        big.sort_by_key(|(sz, _)| std::cmp::Reverse(*sz));
        println!("\n== normal forms wider than 63 bits (aggregated) ==");
        for (sz, (mass, count)) in big.iter().take(top) {
            println!("  |x|={sz}: {count} programs, mass {:.3e}", pm(*mass));
        }
    }

    // Coding theorem check: K(x) vs −log2 m(x) for the heaviest x.
    rows.sort_by_key(|(_, e)| std::cmp::Reverse(e.mass));
    println!("\n== coding theorem: heaviest normal forms ==");
    println!(
        "{:>18} {:>5} {:>4} {:>9} {:>12} {:>10}",
        "x", "|x|", "K", "#progs", "m_N(x)", "-log2 m"
    );
    for ((xenc, xlen), e) in rows.iter().take(top) {
        let self_mass = if *xlen as u32 <= max_n && *xlen as u32 >= min_n {
            mass_of(*xlen)
        } else {
            0
        };
        let m = e.mass + self_mass;
        let k_eff = e.k.min(*xlen);
        println!(
            "{:>18} {:>5} {:>4} {:>9} {:>12.3e} {:>10.2}",
            if *xlen <= 18 {
                enc_to_string(*xenc, *xlen)
            } else {
                format!("<{} bits>", xlen)
            },
            xlen,
            k_eff,
            e.count,
            pm(m),
            -pm(m).log2()
        );
    }

    // ---- full table dump for small x ----
    use std::io::Write;
    let mut f = std::io::BufWriter::new(std::fs::File::create(&table_path).unwrap());
    writeln!(f, "# x |x| K_N count nontrivial_mass_2^-64 min_program").unwrap();
    let mut dumped = 0u64;
    for ((xenc, xlen), e) in rows.iter() {
        if *xlen <= dump_max_x {
            writeln!(
                f,
                "{} {} {} {} {} {}",
                enc_to_string(*xenc, *xlen),
                xlen,
                e.k.min(*xlen),
                e.count,
                e.mass,
                enc_to_string(e.k_prog.0, e.k_prog.1)
            )
            .unwrap();
            dumped += 1;
        }
    }
    println!(
        "\ntable: {} distinct nontrivial nfs total; {dumped} with |x|≤{dump_max_x} dumped to {table_path}",
        rows.len()
    );
}
