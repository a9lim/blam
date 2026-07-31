//! Exhaustive census of closed BLC terms by size: halting behavior, β-step
//! totals, and the busy beaver statistic max |nf| — cross-checked against
//! Tromp's published values.
//!
//! Pipeline per term (cheapest verdict first):
//!   1. decode u64 → arena; pre-scan: no redex ⇒ term is its own nf
//!   2. divergence-oracle prefilter on the raw term
//!   3. KN machine, small budget (resolves the 99.7% fast)
//!   4. KN machine, medium budget
//!   5. BB.lhs-style escalation engine (oracle at every App + redex
//!      history): proven Diverge, Halt, or Unknown (capacity out)
//!   6. Unknowns get one last big-budget KN attempt
//!
//! Usage: census <min_n> <max_n> [--budget1 N] [--budget2 N] [--bb-cap N]
//!        [--rescue N] [--no-prescan] [--no-oracle] [--verify] [--chunk N]
//!        [--dump-unknowns FILE] [--terms-file FILE]
//! (--chunk now sets the minimum generation-task count for the fused
//! parallel enumeration.)

use blc::bb::{normal_form, LTerm, NoNf, Why};
use blc::enumerate::{enc_to_string, interleave_tasks, run_task, split_tasks};
use blc::oracle::no_nf;
use blc::vm::{Machine, SizeSink, TermPool};
use rayon::prelude::*;
use std::time::Instant;

#[derive(Clone, Copy)]
struct Cfg {
    budget1: u64,
    budget2: u64,
    bb_cap: i64,
    rescue: u64,
    prescan: bool,
    oracle: bool,
    chunk: usize,
}

#[derive(Default, Clone)]
struct Stats {
    total: u64,
    prescan_nf: u64,
    halt: u64,
    diverge: u64,
    unknown: u64,
    unknown_cap: u64,
    unknown_work: u64,
    escalated: u64,
    beta_total: u64,
    max_nf: u64,
    max_nf_witness: (u64, u8),
    max_rescue_beta: u64,
    /// Successful rescues by the bb-engine Why they rescued from:
    /// (count, max β). Decides whether per-cause rescue budgets are safe.
    rescue_cap: (u64, u64),
    rescue_work: (u64, u64),
    unknowns: Vec<(u64, u8)>,
}

impl Stats {
    fn merge(mut self, o: Stats) -> Stats {
        self.total += o.total;
        self.prescan_nf += o.prescan_nf;
        self.halt += o.halt;
        self.diverge += o.diverge;
        self.unknown += o.unknown;
        self.unknown_cap += o.unknown_cap;
        self.unknown_work += o.unknown_work;
        self.escalated += o.escalated;
        self.beta_total += o.beta_total;
        // Total order on ties so the reported witness is independent of
        // reduce order (task interleaving shuffles it otherwise).
        if (o.max_nf, o.max_nf_witness) > (self.max_nf, self.max_nf_witness) {
            self.max_nf = o.max_nf;
            self.max_nf_witness = o.max_nf_witness;
        }
        self.max_rescue_beta = self.max_rescue_beta.max(o.max_rescue_beta);
        self.rescue_cap = (
            self.rescue_cap.0 + o.rescue_cap.0,
            self.rescue_cap.1.max(o.rescue_cap.1),
        );
        self.rescue_work = (
            self.rescue_work.0 + o.rescue_work.0,
            self.rescue_work.1.max(o.rescue_work.1),
        );
        self.unknowns.extend(o.unknowns);
        self
    }

    fn record_halt(&mut self, nf_bits: u64, steps: u64, enc: u64, len: u8) {
        self.halt += 1;
        self.beta_total += steps;
        if nf_bits > self.max_nf {
            self.max_nf = nf_bits;
            self.max_nf_witness = (enc, len);
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

fn census_term(
    cfg: &Cfg,
    pool: &mut TermPool,
    vm: &mut Machine,
    stats: &mut Stats,
    enc: u64,
    len: u8,
) {
    stats.total += 1;
    pool.clear();
    let root = pool.decode_u64(enc, len).expect("enumerator emits valid terms");

    if cfg.prescan && !pool.has_redex(root) {
        stats.prescan_nf += 1;
        stats.record_halt(len as u64, 0, enc, len);
        return;
    }
    if cfg.oracle && no_nf(0, (&*pool, root)) {
        stats.diverge += 1;
        return;
    }
    // Rung 1 gets a transition cap proportional to its β budget; the
    // default floor (1<<22) would make it exactly as expensive as rung 2
    // on transition-bound terms, i.e. pure overhead (audit item 4).
    let mut sink = SizeSink::default();
    if let Ok(steps) =
        vm.normalize_capped(pool, root, cfg.budget1, cfg.budget1.saturating_mul(64), &mut sink)
    {
        stats.record_halt(sink.0, steps, enc, len);
        return;
    }
    let mut sink = SizeSink::default();
    if let Ok(steps) = vm.normalize(pool, root, cfg.budget2, &mut sink) {
        stats.record_halt(sink.0, steps, enc, len);
        return;
    }
    // Escalation: full BB.lhs semantics.
    stats.escalated += 1;
    let t = lterm_of(pool, root);
    match normal_form(cfg.bb_cap, &t) {
        Ok(nf) => {
            // β-count from the escalation engine isn't canonical (history
            // machinery, no step ledger) — recover it with a KN re-run.
            let mut sink = SizeSink::default();
            match vm.normalize(pool, root, cfg.rescue, &mut sink) {
                Ok(steps) => {
                    stats.max_rescue_beta = stats.max_rescue_beta.max(steps);
                    stats.record_halt(sink.0, steps, enc, len);
                }
                Err(_) => {
                    // Halts per BB engine but out of rescue fuel for the
                    // canonical count; record with the engine's nf size.
                    stats.record_halt(nf.bit_size(), 0, enc, len);
                }
            }
        }
        Err(NoNf::Diverge) => stats.diverge += 1,
        Err(NoNf::Unknown(why)) => {
            let mut sink = SizeSink::default();
            match vm.normalize(pool, root, cfg.rescue, &mut sink) {
                Ok(steps) => {
                    stats.max_rescue_beta = stats.max_rescue_beta.max(steps);
                    let r = match why {
                        Why::Capacity => &mut stats.rescue_cap,
                        Why::WorkMeter => &mut stats.rescue_work,
                    };
                    r.0 += 1;
                    r.1 = r.1.max(steps);
                    stats.record_halt(sink.0, steps, enc, len);
                }
                Err(_) => {
                    stats.unknown += 1;
                    match why {
                        Why::Capacity => stats.unknown_cap += 1,
                        Why::WorkMeter => stats.unknown_work += 1,
                    }
                    stats.unknowns.push((enc, len));
                }
            }
        }
    }
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let mut pos = Vec::new();
    let mut cfg = Cfg {
        budget1: 64,
        budget2: 4096,
        // Tromp runs 42M because his BB reducer is his only engine; ours
        // only needs to catch loops (small redexes) before handing
        // big-growth halters to the far faster KN rescue. A tight cap
        // keeps the naive-substitution engine away from exploding terms.
        bb_cap: 2_000_000,
        // 50x the BB(34) witness's measured 192757 beta; with the VM's
        // 64x transition cap a stuck rescue costs ~3s, not 2 hours.
        rescue: 10_000_000,
        prescan: true,
        oracle: true,
        chunk: 0, // 0 = auto (threads * 64)
    };
    let mut verify = false;
    let mut term_arg: Option<String> = None;
    let mut dump_path: Option<String> = None;
    let mut terms_file: Option<String> = None;
    let mut i = 1;
    while i < args.len() {
        match args[i].as_str() {
            "--term" => {
                i += 1;
                term_arg = Some(args[i].clone());
            }
            "--budget1" => {
                i += 1;
                cfg.budget1 = args[i].parse().unwrap();
            }
            "--budget2" => {
                i += 1;
                cfg.budget2 = args[i].parse().unwrap();
            }
            "--bb-cap" => {
                i += 1;
                cfg.bb_cap = args[i].parse().unwrap();
            }
            "--rescue" => {
                i += 1;
                cfg.rescue = args[i].parse().unwrap();
            }
            "--chunk" => {
                i += 1;
                cfg.chunk = args[i].parse().unwrap();
            }
            "--dump-unknowns" => {
                i += 1;
                dump_path = Some(args[i].clone());
            }
            "--terms-file" => {
                i += 1;
                terms_file = Some(args[i].clone());
            }
            "--no-prescan" => cfg.prescan = false,
            "--no-oracle" => cfg.oracle = false,
            "--verify" => verify = true,
            a => pos.push(a.parse::<u32>().expect("size argument")),
        }
        i += 1;
    }
    // One-term adjudication mode: run the ladder verbosely on given bits.
    if let Some(bits) = term_arg {
        let mut pool = TermPool::new();
        let root = pool.decode_str(&bits).expect("parse");
        println!("term: {} bits, redex: {}", pool.bit_size(root), pool.has_redex(root));
        println!("oracle prefilter no_nf: {}", no_nf(0, (&pool, root)));
        let mut vm = Machine::new();
        for budget in [cfg.budget1, cfg.budget2, cfg.rescue] {
            let mut sink = SizeSink::default();
            let t = Instant::now();
            match vm.normalize(&pool, root, budget, &mut sink) {
                Ok(steps) => {
                    println!(
                        "KN budget {budget}: HALT |nf|={} in {} beta ({:.3}s)",
                        sink.0,
                        steps,
                        t.elapsed().as_secs_f64()
                    );
                    return;
                }
                Err(_) => println!(
                    "KN budget {budget}: out of fuel ({:.3}s)",
                    t.elapsed().as_secs_f64()
                ),
            }
        }
        let t = Instant::now();
        let verdict = normal_form(cfg.bb_cap, &lterm_of(&pool, root));
        println!(
            "BB engine cap {}: {:?} ({:.3}s)",
            cfg.bb_cap,
            verdict.as_ref().map(|nf| nf.bit_size()),
            t.elapsed().as_secs_f64()
        );
        return;
    }

    // Escalation recursion can go deep on tower terms; give workers room.
    rayon::ThreadPoolBuilder::new()
        .stack_size(256 << 20)
        .build_global()
        .unwrap();

    // Batch adjudication: run the full ladder on each bitstring in FILE
    // (one per line), in parallel, and print one verdict per line in input
    // order. Combine with --bb-cap / --rescue to go beyond census defaults.
    if let Some(path) = terms_file {
        let text = std::fs::read_to_string(&path).expect("read terms file");
        let terms: Vec<&str> =
            text.lines().map(str::trim).filter(|l| !l.is_empty()).collect();
        let t0 = Instant::now();
        // Verdicts stream as they land (stdout is line-buffered), so a
        // killed run keeps everything it finished. Order is completion
        // order; downstream analysis groups by content, not position.
        let counts = std::sync::Mutex::new((0u64, 0u64, 0u64));
        terms.par_iter().for_each_init(
            || (TermPool::new(), Machine::new()),
            |(pool, vm), bits| {
                pool.clear();
                let root = pool.decode_str(bits).expect("parse term line");
                let line = 'v: {
                    if cfg.prescan && !pool.has_redex(root) {
                        break 'v format!("{bits} HALT nf={} steps=0", pool.bit_size(root));
                    }
                    if cfg.oracle && no_nf(0, (&*pool, root)) {
                        break 'v format!("{bits} DIVERGE oracle");
                    }
                    for budget in [cfg.budget1, cfg.budget2] {
                        let mut sink = SizeSink::default();
                        if let Ok(steps) = vm.normalize(pool, root, budget, &mut sink) {
                            break 'v format!("{bits} HALT nf={} steps={steps}", sink.0);
                        }
                    }
                    match normal_form(cfg.bb_cap, &lterm_of(pool, root)) {
                        Ok(nf) => {
                            let mut sink = SizeSink::default();
                            match vm.normalize(pool, root, cfg.rescue, &mut sink) {
                                Ok(steps) => {
                                    format!("{bits} HALT nf={} steps={steps}", sink.0)
                                }
                                Err(_) => format!("{bits} HALT nf={} steps=?", nf.bit_size()),
                            }
                        }
                        Err(NoNf::Diverge) => format!("{bits} DIVERGE bb-engine"),
                        Err(NoNf::Unknown(_)) => {
                            let mut sink = SizeSink::default();
                            match vm.normalize(pool, root, cfg.rescue, &mut sink) {
                                Ok(steps) => {
                                    format!("{bits} HALT nf={} steps={steps}", sink.0)
                                }
                                Err(_) => format!("{bits} UNKNOWN"),
                            }
                        }
                    }
                };
                let mut c = counts.lock().unwrap();
                if line.contains(" HALT ") {
                    c.0 += 1;
                } else if line.contains(" DIVERGE") {
                    c.1 += 1;
                } else {
                    c.2 += 1;
                }
                let done = c.0 + c.1 + c.2;
                println!("{line}");
                if done % 100 == 0 {
                    eprintln!(
                        "progress: {done}/{} ({:.0}s)",
                        terms.len(),
                        t0.elapsed().as_secs_f64()
                    );
                }
            },
        );
        let (h, d, u) = *counts.lock().unwrap();
        eprintln!(
            "adjudicated {} terms: {h} halt, {d} diverge, {u} unknown ({:.1}s)",
            terms.len(),
            t0.elapsed().as_secs_f64()
        );
        return;
    }

    let (min_n, max_n) = match pos.as_slice() {
        [a] => (*a, *a),
        [a, b] => (*a, *b),
        _ => {
            eprintln!("usage: census <min_n> [max_n] [flags]");
            std::process::exit(2);
        }
    };

    // (n, A114852 count) and (n, BBλ(n)) reference values (BB1.lhs bb0).
    let counts_ref: &[(u32, u64)] =
        &[(20, 883), (24, 8574), (28, 89270), (32, 978447), (36, 11148652)];
    let bb_ref: &[(u32, u64)] = &[
        (4, 4),
        (20, 20),
        (21, 22),
        (26, 52),
        (29, 223),
        (32, 298),
        (33, 1812),
        (34, 327686),
    ];

    println!(
        "{:>3} {:>12} {:>12} {:>8} {:>8} {:>8} {:>10} {:>12} {:>9} {:>10}",
        "n", "closed", "halt", "diverge", "unknown", "escal", "max|nf|", "beta_total", "time_s", "terms/s"
    );
    for n in min_n..=max_n {
        // Generation is fused into the workers: each task enumerates its
        // subtree of the term space and censuses terms as they appear.
        let t0 = Instant::now();
        let target = if cfg.chunk == 0 {
            rayon::current_num_threads() * 64
        } else {
            cfg.chunk
        };
        let tasks = interleave_tasks(split_tasks(n, target));
        let stats = tasks
            .par_iter()
            .map_init(
                || (TermPool::new(), Machine::new()),
                |(pool, vm), task| {
                    let mut stats = Stats::default();
                    run_task(task, &mut |enc, len| {
                        census_term(&cfg, pool, vm, &mut stats, enc, len);
                    });
                    stats
                },
            )
            .reduce(Stats::default, Stats::merge);
        let secs = t0.elapsed().as_secs_f64();

        println!(
            "{:>3} {:>12} {:>12} {:>8} {:>8} {:>8} {:>10} {:>12} {:>9.2} {:>10.0}",
            n,
            stats.total,
            stats.halt,
            stats.diverge,
            stats.unknown,
            stats.escalated,
            stats.max_nf,
            stats.beta_total,
            secs,
            stats.total as f64 / secs
        );
        if !stats.unknowns.is_empty() {
            println!(
                "    unknowns by cause: {} capacity, {} work-meter; max successful rescue {} beta",
                stats.unknown_cap, stats.unknown_work, stats.max_rescue_beta
            );
        }
        if stats.rescue_cap.0 + stats.rescue_work.0 > 0 {
            println!(
                "    rescued: {} from capacity (max {} beta), {} from work-meter (max {} beta)",
                stats.rescue_cap.0, stats.rescue_cap.1, stats.rescue_work.0, stats.rescue_work.1
            );
        }
        if !stats.unknowns.is_empty() {
            for (enc, len) in stats.unknowns.iter().take(16) {
                println!("    unknown: {}", enc_to_string(*enc, *len));
            }
            if stats.unknowns.len() > 16 {
                println!("    ... and {} more unknowns", stats.unknowns.len() - 16);
            }
            if let Some(path) = &dump_path {
                use std::io::Write;
                let mut f = std::fs::OpenOptions::new()
                    .create(true)
                    .append(true)
                    .open(path)
                    .expect("open dump file");
                for (enc, len) in &stats.unknowns {
                    writeln!(f, "{}", enc_to_string(*enc, *len)).unwrap();
                }
            }
        }
        if verify {
            if let Some((_, c)) = counts_ref.iter().find(|(m, _)| *m == n) {
                assert_eq!(stats.total, *c, "A114852 mismatch at n={n}");
                println!("    verify: count matches A114852");
            }
            if let Some((_, b)) = bb_ref.iter().find(|(m, _)| *m == n) {
                assert_eq!(stats.max_nf, *b, "BBλ mismatch at n={n}");
                println!("    verify: max|nf| matches BBλ({n})");
            }
        }
    }
    use std::sync::atomic::Ordering;
    let fires = blc::bb::REDLOOP_FIRES.load(Ordering::Relaxed);
    let fuel = blc::bb::REDLOOP_FUEL_REJECTS.load(Ordering::Relaxed);
    println!("redloop: {fires} proofs, {fuel} shape-matches lost to probe fuel");
}
