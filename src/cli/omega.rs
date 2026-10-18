//! `blam omega leaves [MIN] MAX` — leaf tables for the certified bounds on
//! the true halting probability (`docs/classical/omega.md` §3).
//!
//! Every open term M is judged exactly once, through its *minimal* closure
//! λᵐ M (m = maxfree(M)): a closed term λᴸ b of size n with its outermost
//! binder used yields, for each 1 ≤ m ≤ L, the body M_m (strip m binders),
//! whose maxfree is exactly m. The closed term itself is M_0. A body
//! normalizes iff its closure does, and its normal form is an abstraction iff
//! the closure's normal form has more than m leading λs. Judging each term
//! once makes the leaf predicate depth-independent, which bound.py's
//! leaf/structural subtraction needs. Separate ladder runs on λʲ M and λᵏ M
//! could disagree at a budget edge.
//!
//! Rows, cumulative over maxfree:
//!
//!   A t s k c      c witnessed-halting terms of size s valid at depth k, NF type t
//!   H t s k j c    … of which c also avoid free variable j (1-based)
//!   halt n c       closed terms of size n proved halting
//!
//! t = 0 for a neutral normal form, 1 for an abstraction. Terms the ladder
//! leaves Unknown are not counted. `halt` must equal the census table's halt
//! column, and the table is only meaningful as a complete horizon 4..=MAX.

use crate::args::{self, Args, R};
use blam::blc::enumerate::{interleave_tasks, run_task, split_tasks};
use blam::classical::ladder::{self, FastOutcome, LadderCfg, LadderOutcome, Rung, Verdict};
use blam::classical::machine::{Machine, Pool, Sink};
use rayon::prelude::*;
use std::io::Write;
use std::time::Instant;

const USAGE: &str = "\
blam omega — leaf tables for the certified bounds on the true Omega

usage: blam omega leaves [MIN] MAX [flags]     (MIN defaults to 4, MAX <= 63)

  --out FILE             write the table here (default: stdout)
  --threads N            rayon threads (0 = ambient, the default)
  --work-mult N          escalation work meter per capacity bit (default 16)
  --probe-fuel N         redloop probe beta budget (default 4096)

Runs the census ladder on every closed term of size MIN..=MAX and tabulates
the halting ones' open bodies (docs/classical/omega.md). Read the table
with tools/omega/bound.py.";

/// Counts the normal form's leading abstractions from the streamed bits:
/// a λ is the token `00`, an application `01`, a variable `1ⁿ0`.
#[derive(Default)]
struct LeadSink {
    lead: u32,
    half: bool,
    done: bool,
}

impl Sink for LeadSink {
    fn zero(&mut self) {
        if !self.done {
            if self.half {
                // Saturate: only comparisons against binder depths <= 31 matter.
                self.lead = (self.lead + 1).min(31);
            }
            self.half = !self.half;
        }
    }
    fn one(&mut self) {
        self.done = true;
    }
    fn var(&mut self, _n: u32) {
        self.done = true;
    }
}

/// Leading binder count L of a packed closed term, and the bitmask of the
/// leading binders its body uses (bit p − 1 for binder p, 1 = outermost).
fn leading(enc: u64, len: u8) -> (u32, u64) {
    let bit = |i: u32| (enc >> (len as u32 - 1 - i)) & 1 == 1;
    let mut i = 0u32;
    let mut lead = 0u32;
    while i + 1 < len as u32 && !bit(i) && !bit(i + 1) {
        lead += 1;
        i += 2;
    }
    // Walk the body with a stack of pending-slot depths.
    let mut used = 0u64;
    // A closed term of <= 63 bits has at most 32 pending slots.
    let mut stack = [0u32; 64];
    stack[0] = lead;
    let mut sp = 1usize;
    while sp > 0 {
        sp -= 1;
        let d = stack[sp];
        if bit(i) {
            let mut v = 0u32;
            while bit(i) {
                v += 1;
                i += 1;
            }
            i += 1;
            let p = d + 1 - v; // binder position counted from the outside
            if p <= lead {
                used |= 1 << (p - 1);
            }
        } else if bit(i + 1) {
            i += 2;
            stack[sp] = d;
            stack[sp + 1] = d;
            sp += 2;
        } else {
            i += 2;
            stack[sp] = d + 1;
            sp += 1;
        }
    }
    debug_assert_eq!(i, len as u32);
    (lead, used)
}

/// Counts by *exact* maxfree m: e[t][s][m] and, for j < m, eh[t][s][m][j]
/// (avoiding var j). Cumulated over m ≤ k at output.
struct Acc {
    kmax: usize,
    halt: Vec<u64>,
    a: Vec<u64>, // e: [t][s][m]
    h: Vec<u64>, // eh: [t][s][m][j]
}

impl Acc {
    fn new(max_n: usize) -> Acc {
        let kmax = max_n / 2 + 1;
        Acc {
            kmax,
            halt: vec![0; max_n + 1],
            a: vec![0; 2 * (max_n + 1) * (kmax + 1)],
            h: vec![0; 2 * (max_n + 1) * (kmax + 1) * (kmax + 1)],
        }
    }
    fn ai(&self, t: usize, s: usize, k: usize) -> usize {
        (t * self.halt.len() + s) * (self.kmax + 1) + k
    }
    fn record(&mut self, n: usize, lead: u32, used: u64, nflead: u32) {
        self.halt[n] += 1;
        // M_m has maxfree exactly m iff m = 0 or the outermost binder is used.
        let top = if used & 1 == 1 { lead as usize } else { 0 };
        for m in 0..=top {
            let s = n - 2 * m;
            let t = usize::from(nflead as usize > m);
            let ai = self.ai(t, s, m);
            self.a[ai] += 1;
            for j in 1..m {
                // free variable j of M_m is leading binder m − j + 1
                if used & (1 << (m - j)) == 0 {
                    self.h[ai * (self.kmax + 1) + j] += 1;
                }
            }
        }
    }
    /// Cumulative rows: A(t,s,k) = Σ_{m≤k} e(t,s,m); H(t,s,k,j) adds the
    /// terms with m < j (var j absent automatically) to eh(t,s,m,j), j < m ≤ k.
    fn cumulative(&self) -> (Vec<u64>, Vec<u64>) {
        let (ns, kk) = (self.halt.len(), self.kmax + 1);
        let mut a = vec![0; self.a.len()];
        let mut h = vec![0; self.h.len()];
        for t in 0..2 {
            for s in 0..ns {
                let mut run = 0;
                for k in 0..kk {
                    run += self.a[self.ai(t, s, k)];
                    a[self.ai(t, s, k)] = run;
                    for j in 1..=k {
                        let mut c = 0;
                        for m in 0..=k {
                            c += if m < j {
                                self.a[self.ai(t, s, m)]
                            } else if m > j {
                                self.h[self.ai(t, s, m) * kk + j]
                            } else {
                                0
                            };
                        }
                        h[self.ai(t, s, k) * kk + j] = c;
                    }
                }
            }
        }
        (a, h)
    }
    fn merge(mut self, o: Acc) -> Acc {
        for (x, y) in self.halt.iter_mut().zip(o.halt) {
            *x += y;
        }
        for (x, y) in self.a.iter_mut().zip(o.a) {
            *x += y;
        }
        for (x, y) in self.h.iter_mut().zip(o.h) {
            *x += y;
        }
        self
    }
}

/// Tabulate one adjudicated term if it halted.
fn record(acc: &mut Acc, o: &LadderOutcome, enc: u64, len: u8, sink: &LeadSink) {
    if let Verdict::Halt { .. } = o.verdict {
        let (lead, used) = leading(enc, len);
        // A pre-scan halt is a redex-free term: its own normal form.
        let nflead = if o.rung == Rung::Prescan {
            lead
        } else {
            sink.lead
        };
        acc.record(len as usize, lead, used, nflead);
    }
}

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) || argv.is_empty() {
        println!("{USAGE}");
        return Ok(());
    }
    if argv[0] != "leaves" {
        return Err(format!(
            "blam omega: unknown subcommand `{}`\n{}",
            argv[0],
            args::hint("omega")
        ));
    }
    let mut cfg = LadderCfg::default();
    let mut out: Option<String> = None;
    let mut threads = 0usize;
    let mut work_mult: Option<i64> = None;
    let mut probe_fuel: Option<u64> = None;
    let mut p = Args::new("omega", &argv[1..]);
    while let Some(tok) = p.next() {
        match tok {
            "--out" => out = Some(p.value(tok)?.to_string()),
            "--threads" => threads = p.num(tok)?,
            "--work-mult" => work_mult = Some(p.num(tok)?),
            "--probe-fuel" => probe_fuel = Some(p.num(tok)?),
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    let (min_n, max_n) = p.range_packed(4)?;
    cfg.engine = args::engine_cfg("omega", work_mult, probe_fuel)?;
    let mut w: Box<dyn Write> = match &out {
        Some(path) => Box::new(std::io::BufWriter::new(crate::out::create(
            "omega", "--out", path,
        )?)),
        None => Box::new(std::io::BufWriter::new(std::io::stdout().lock())),
    };
    args::build_pool(threads)?;

    let t0 = Instant::now();
    let mut acc = Acc::new(max_n as usize);
    for n in min_n..=max_n {
        // Two-phase, like the census: generation fused with the cheap rungs
        // across a range-split par_iter, then the ~0.3% survivors through
        // rayon at single-term granularity, so no leaf task strands a cluster
        // of expensive terms on one core.
        let tasks = interleave_tasks(split_tasks(n, rayon::current_num_threads() * 64));
        let (a, survivors) = tasks
            .par_iter()
            .map_init(
                || (Pool::new(), Machine::new()),
                |(pool, vm), task| {
                    let mut acc = Acc::new(max_n as usize);
                    let mut surv = Vec::new();
                    let mut sink = LeadSink::default();
                    run_task(task, &mut |enc, len| {
                        pool.clear();
                        let root = pool.decode_u64(enc, len).expect("valid term");
                        match ladder::adjudicate_fast(&cfg, pool, vm, root, &mut sink) {
                            FastOutcome::Done(o) => record(&mut acc, &o, enc, len, &sink),
                            FastOutcome::Survivor => surv.push((enc, len)),
                        }
                    });
                    (acc, surv)
                },
            )
            .reduce(
                || (Acc::new(max_n as usize), Vec::new()),
                |(a, mut s), (b, t)| {
                    s.extend(t);
                    (a.merge(b), s)
                },
            );
        let b = {
            let next = std::sync::atomic::AtomicUsize::new(0);
            let workers = rayon::current_num_threads().min(survivors.len());
            (0..workers)
                .into_par_iter()
                .map(|_| {
                    let mut pool = Pool::new();
                    let mut vm = Machine::new();
                    let mut acc = Acc::new(max_n as usize);
                    let mut sink = LeadSink::default();
                    loop {
                        let i = next.fetch_add(1, std::sync::atomic::Ordering::Relaxed);
                        let Some(&(enc, len)) = survivors.get(i) else {
                            break;
                        };
                        pool.clear();
                        let root = pool.decode_u64(enc, len).expect("valid term");
                        let o = ladder::adjudicate_slow(&cfg, &pool, &mut vm, root, &mut sink);
                        record(&mut acc, &o, enc, len, &sink);
                    }
                    acc
                })
                .reduce(|| Acc::new(max_n as usize), Acc::merge)
        };
        acc = acc.merge(a).merge(b);
        eprintln!(
            "n={n}: halt {} ({} slow-path survivors, {:.1}s total)",
            acc.halt[n as usize],
            survivors.len(),
            t0.elapsed().as_secs_f64()
        );
    }

    let io = |e: std::io::Error| format!("blam omega: write failed: {e}");
    writeln!(
        w,
        "# blam omega leaves v1: HL={max_n} sizes {min_n}..{max_n} ladder=census"
    )
    .map_err(io)?;
    writeln!(
        w,
        "# A t s k count | H t s k j count | halt n count; t: 0 neutral NF, 1 abstraction NF"
    )
    .map_err(io)?;
    for n in min_n as usize..=max_n as usize {
        if acc.halt[n] > 0 {
            writeln!(w, "halt {n} {}", acc.halt[n]).map_err(io)?;
        }
    }
    let ns = acc.halt.len();
    let (ca, ch) = acc.cumulative();
    for t in 0..2 {
        for s in 0..ns {
            for k in 0..=acc.kmax {
                let c = ca[acc.ai(t, s, k)];
                if c > 0 {
                    writeln!(w, "A {t} {s} {k} {c}").map_err(io)?;
                }
            }
        }
    }
    for t in 0..2 {
        for s in 0..ns {
            for k in 0..=acc.kmax {
                for j in 1..=k {
                    let c = ch[acc.ai(t, s, k) * (acc.kmax + 1) + j];
                    if c > 0 {
                        writeln!(w, "H {t} {s} {k} {j} {c}").map_err(io)?;
                    }
                }
            }
        }
    }
    w.flush().map_err(io)?;
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;

    fn packed(bits: &str) -> (u64, u8) {
        (u64::from_str_radix(bits, 2).unwrap(), bits.len() as u8)
    }

    #[test]
    fn leading_binders_and_their_use() {
        // λλ1: two leading binders, only the inner one (position 2) used.
        let (e, l) = packed("000010");
        assert_eq!(leading(e, l), (2, 0b10));
        // λλ2: the outer one used.
        let (e, l) = packed("0000110");
        assert_eq!(leading(e, l), (2, 0b01));
        // λ(1 (λ2)): one leading binder, used twice (once from under a λ).
        let (e, l) = packed("00011000110");
        assert_eq!(leading(e, l), (1, 0b1));
        // (λ1)(λ1): no leading binders.
        let (e, l) = packed("0100100010");
        assert_eq!(leading(e, l), (0, 0));
    }

    #[test]
    fn lead_sink_counts_leading_abstractions() {
        let mut s = LeadSink::default();
        for b in "00000110".chars() {
            if b == '0' {
                s.zero()
            } else {
                s.one()
            }
        }
        assert_eq!(s.lead, 2);
        let mut s = LeadSink::default();
        s.zero();
        s.one(); // an application token right away
        assert_eq!(s.lead, 0);
    }
}
