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
//!        [--rescue N] [--rescue-trans-mult N] [--no-prescan] [--no-oracle]
//!        [--verify] [--chunk N] [--dump-unknowns FILE] [--terms-file FILE]
//!        [--checkpoint FILE] [--groups K] [--memo-in FILE] [--memo-out FILE]
//! (--chunk now sets the minimum generation-task count for the fused
//! parallel enumeration.)
//!
//! Checkpointing: `--checkpoint FILE` splits each size into K sequential
//! groups (`--groups`, default 64) of parallel tasks and appends each
//! group's full Stats to FILE as it completes; rerunning the same command
//! resumes after the last complete group. Group records are valid only up
//! to their end marker, so a kill mid-append costs exactly one group. The
//! header pins the engine config and the task split (the default split is
//! thread-count dependent), and resume refuses a mismatched config.
//! Verdict merging is order-independent with a total witness tie-break,
//! so a chunked run's table rows are bit-identical to a monolithic run's.
//!
//! Delta runs: the λ-wrap memo rolls by size parity (size n reuses size
//! n−2's escalation-tier verdicts), and the no-whnf head memo accumulates
//! across all sizes (an application whose head has no weak head normal
//! form diverges for every argument). `--memo-out FILE` appends both as
//! sizes complete; `--memo-in FILE` seeds them. A cold `census n n` is
//! halt-identical to the monolithic row (halts, |nf|, β totals) but may
//! report Unknown where the sweep's accumulated no-whnf facts prove
//! Diverge, and re-escalates memo-covered wraps; with `--memo-in` from a
//! run through n−1 the row is bit-identical, escal column included.

use blam::bb::{normal_form, take_head_diverge, LTerm, NoNf, Why};
use blam::ckpt::{Ckpt, CkptRecord};
use blam::enumerate::{enc_to_string, interleave_tasks, run_task, split_tasks, GenTask};
use blam::eval::OutOfFuel;
use blam::oracle::no_nf;
use blam::vm::{Machine, SizeSink, TermPool};
use rayon::prelude::*;
use std::time::Instant;

#[derive(Clone, Copy)]
struct Cfg {
    budget1: u64,
    budget2: u64,
    bb_cap: i64,
    rescue: u64,
    /// Rescue transition cap = rescue × this. Measured: no successful
    /// rescue in 4..40 exceeds 17.0 transitions/β (the n=38 champion:
    /// 9,452,558 β via 160,434,707 trans); 32 keeps a 1.88× margin and
    /// halves the cost of transition-bound stuck rescues vs the old
    /// blanket 64. `--rescue-trans-mult` overrides.
    rescue_trans_mult: u64,
    prescan: bool,
    oracle: bool,
    chunk: usize,
}

/// Cross-size verdict memo entry for λ-wrap reuse. A closed term T and
/// its wrap λ.T (same bits behind a "00" prefix, size +2) have exactly
/// the same fate under normal order: identical β sequence, nf two bits
/// larger, diverge iff diverge. The bit code is prefix-free and
/// unambiguous, so a (stripped-bits, len−2) hit in a map of CLOSED
/// memoized terms proves the body is closed — no walk needed. Only
/// terms that reach the escalation tier are memoized (the cheap 99.7%
/// are cheaper to redo than to hash); memo hits re-insert themselves so
/// λλ-chains stay free. Halt and Diverge are SEMANTIC results and reusable
/// under λ, but Unknown is a
/// resource/proof-search outcome of the seed's run — copying it would
/// not prove the wrap exhausts the same engine budget, so seed-Unknown
/// wraps run the ordinary ladder instead (the census's advertised
/// budgeted-ladder meaning is preserved exactly).
#[derive(Clone, Copy)]
enum MemoV {
    /// steps=0 preserves the seed's "BB engine proved halt, canonical
    /// rescue exhausted" sentinel; the wrap inherits the seed's recorded
    /// verdict, not a claim about which path a direct run would take.
    Halt {
        nf: u64,
        steps: u64,
    },
    Diverge,
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
    /// Max transitions consumed by any successful rescue (incl. the
    /// step-count-recovery rescues of engine-proven halters) — the datum
    /// that decides whether the rescue transition cap can drop below 64×β.
    rescue_max_trans: u64,
    /// Failed rescues by which fuel died: (β-bound, transition-bound).
    /// β-bound burns ~ms; transition-bound burns the full 64×β cap (~3 s).
    rescue_stuck: (u64, u64),
    /// Rung-2 cost structure: successes needing > 64×β transitions
    /// (the 1<<22 floor's beneficiaries — big-readback halters), and
    /// failures by fuel type. Decides whether rung 2's floor can drop.
    rung2_over: u64,
    rung2_stuck: (u64, u64),
    memo_hits: u64,
    /// (term, verdict) records feeding the next-size-plus-two memo:
    /// escalated terms and memo hits (chain propagation).
    memo_out: Vec<((u64, u8), MemoV)>,
    unknowns: Vec<(u64, u8)>,
    /// Terms proven to have NO WEAK HEAD NORMAL FORM this size:
    /// escalation Diverges whose proof landed on the root's own spine
    /// (bb::take_head_diverge), plus head-memo kills (an application of
    /// a no-whnf head is itself no-whnf). Feeds the cross-size set.
    no_whnf_out: Vec<(u64, u8)>,
    /// App-rooted terms killed by the no-whnf head memo.
    head_hits: u64,
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
        self.rescue_max_trans = self.rescue_max_trans.max(o.rescue_max_trans);
        self.rescue_stuck = (
            self.rescue_stuck.0 + o.rescue_stuck.0,
            self.rescue_stuck.1 + o.rescue_stuck.1,
        );
        self.rung2_over += o.rung2_over;
        self.rung2_stuck = (
            self.rung2_stuck.0 + o.rung2_stuck.0,
            self.rung2_stuck.1 + o.rung2_stuck.1,
        );
        self.memo_hits += o.memo_hits;
        self.memo_out.extend(o.memo_out);
        self.unknowns.extend(o.unknowns);
        self.no_whnf_out.extend(o.no_whnf_out);
        self.head_hits += o.head_hits;
        self
    }

    fn record_halt(&mut self, nf_bits: u64, steps: u64, enc: u64, len: u8) {
        self.halt += 1;
        self.beta_total += steps;
        // Same total order as merge: at tied |nf| the max (enc, len) wins
        // everywhere, so the reported witness is independent of task
        // partitioning (and thus thread count / checkpoint grouping) —
        // first-hit-wins here would make per-task representatives depend
        // on which tied terms share a task.
        if (nf_bits, (enc, len)) > (self.max_nf, self.max_nf_witness) {
            self.max_nf = nf_bits;
            self.max_nf_witness = (enc, len);
        }
    }
}

/// Driver config string pinned in the checkpoint header (`blam::ckpt`).
fn ckpt_config(cfg: &Cfg, min_n: u32, max_n: u32) -> String {
    format!(
        "census min={min_n} max={max_n} b1={} b2={} cap={} rescue={} rtm={} prescan={} oracle={}",
        cfg.budget1,
        cfg.budget2,
        cfg.bb_cap,
        cfg.rescue,
        cfg.rescue_trans_mult,
        cfg.prescan as u8,
        cfg.oracle as u8
    )
}

impl CkptRecord for Stats {
    fn write_body(&self, out: &mut String) {
        use std::fmt::Write as _;
        out.push('S');
        for v in [
            self.total,
            self.prescan_nf,
            self.halt,
            self.diverge,
            self.unknown,
            self.unknown_cap,
            self.unknown_work,
            self.escalated,
            self.beta_total,
            self.max_nf,
            self.max_nf_witness.0,
            self.max_nf_witness.1 as u64,
            self.max_rescue_beta,
            self.rescue_cap.0,
            self.rescue_cap.1,
            self.rescue_work.0,
            self.rescue_work.1,
            self.rescue_max_trans,
            self.rescue_stuck.0,
            self.rescue_stuck.1,
            self.rung2_over,
            self.rung2_stuck.0,
            self.rung2_stuck.1,
            self.memo_hits,
            self.head_hits,
        ] {
            write!(out, " {v}").unwrap();
        }
        out.push('\n');
        for ((enc, len), v) in &self.memo_out {
            match v {
                MemoV::Halt { nf, steps } => writeln!(out, "M {enc} {len} H {nf} {steps}").unwrap(),
                MemoV::Diverge => writeln!(out, "M {enc} {len} D").unwrap(),
            }
        }
        for (enc, len) in &self.unknowns {
            writeln!(out, "U {enc} {len}").unwrap();
        }
        for (enc, len) in &self.no_whnf_out {
            writeln!(out, "W {enc} {len}").unwrap();
        }
    }

    fn parse_line(&mut self, line: &str) -> Option<()> {
        let mut it = line.split_whitespace();
        match it.next()? {
            "S" => {
                let mut num = || -> Option<u64> { it.next()?.parse().ok() };
                self.total = num()?;
                self.prescan_nf = num()?;
                self.halt = num()?;
                self.diverge = num()?;
                self.unknown = num()?;
                self.unknown_cap = num()?;
                self.unknown_work = num()?;
                self.escalated = num()?;
                self.beta_total = num()?;
                self.max_nf = num()?;
                self.max_nf_witness = (num()?, num()? as u8);
                self.max_rescue_beta = num()?;
                self.rescue_cap = (num()?, num()?);
                self.rescue_work = (num()?, num()?);
                self.rescue_max_trans = num()?;
                self.rescue_stuck = (num()?, num()?);
                self.rung2_over = num()?;
                self.rung2_stuck = (num()?, num()?);
                self.memo_hits = num()?;
                self.head_hits = num()?;
                Some(())
            }
            "M" => {
                let enc: u64 = it.next()?.parse().ok()?;
                let len: u8 = it.next()?.parse().ok()?;
                let v = match it.next()? {
                    "H" => MemoV::Halt {
                        nf: it.next()?.parse().ok()?,
                        steps: it.next()?.parse().ok()?,
                    },
                    "D" => MemoV::Diverge,
                    _ => return None,
                };
                self.memo_out.push(((enc, len), v));
                Some(())
            }
            "U" => {
                let enc: u64 = it.next()?.parse().ok()?;
                let len: u8 = it.next()?.parse().ok()?;
                self.unknowns.push((enc, len));
                Some(())
            }
            "W" => {
                let enc: u64 = it.next()?.parse().ok()?;
                let len: u8 = it.next()?.parse().ok()?;
                self.no_whnf_out.push((enc, len));
                Some(())
            }
            _ => None,
        }
    }
}

fn lterm_of(pool: &TermPool, id: u32) -> LTerm {
    use blam::vm::Node;
    match pool.nodes[id as usize] {
        Node::Var(n) => LTerm::Var(n),
        Node::Lam(b) => blam::bb::lam(lterm_of(pool, b)),
        Node::App(f, a) => blam::bb::app(lterm_of(pool, f), lterm_of(pool, a)),
    }
}

/// For an App-rooted packed term (top two bits 01), the (enc, len) of
/// its head subterm: the unique complete term after the application tag
/// (the code is prefix-free). At top level both components of a closed
/// application are themselves closed, so the head's bits are exactly a
/// key into the closed-term verdict sets. Pure bit walk, no decode.
fn head_of(enc: u64, len: u8) -> (u64, u8) {
    debug_assert_eq!((enc >> (len - 2)) & 0b11, 0b01);
    let mut i = len - 2; // positions i-1 .. 0 remain unread
    let mut rem = 1u32; // pending subterms of the head
    while rem > 0 {
        match (enc >> (i - 2)) & 0b11 {
            0b00 => i -= 2,
            0b01 => {
                i -= 2;
                rem += 1;
            }
            _ => {
                while (enc >> (i - 1)) & 1 == 1 {
                    i -= 1;
                }
                i -= 1;
                rem -= 1;
            }
        }
    }
    let hlen = (len - 2) - i;
    ((enc >> i) & ((1u64 << hlen) - 1), hlen)
}

/// The census's cross-size verdict memory, read-only within a size:
/// the parity-rolled λ-wrap memo and the monotone no-whnf head set.
struct Memos<'a> {
    wrap: &'a std::collections::HashMap<(u64, u8), MemoV>,
    no_whnf: &'a std::collections::HashSet<(u64, u8)>,
}

fn census_term(
    cfg: &Cfg,
    pool: &mut TermPool,
    vm: &mut Machine,
    stats: &mut Stats,
    memos: &Memos,
    enc: u64,
    len: u8,
) {
    stats.total += 1;
    // λ-wrap memo: bits are packed MSB-first, so a Lam-headed term is
    // top-two-bits 00 and its body key is simply (enc, len−2).
    if !memos.wrap.is_empty() && len >= 3 && (enc >> (len - 2)) & 0b11 == 0 {
        if let Some(v) = memos.wrap.get(&(enc, len - 2)) {
            stats.memo_hits += 1;
            let bumped = match *v {
                MemoV::Halt { nf, steps } => {
                    stats.record_halt(nf + 2, steps, enc, len);
                    MemoV::Halt { nf: nf + 2, steps }
                }
                MemoV::Diverge => {
                    stats.diverge += 1;
                    MemoV::Diverge
                }
            };
            stats.memo_out.push(((enc, len), bumped));
            return;
        }
    }
    // No-whnf head memo: an App-rooted term whose head has no weak head
    // normal form cannot reach a whnf itself — head reduction IS the
    // head's head reduction — so it has no nf, for any argument. Heads
    // are strict subterms, so the set (facts from strictly smaller
    // sizes) is read-only during a size. The kill is itself a no-whnf
    // fact and a valid λ-wrap Diverge seed.
    if !memos.no_whnf.is_empty()
        && (enc >> (len - 2)) & 0b11 == 0b01
        && memos.no_whnf.contains(&head_of(enc, len))
    {
        stats.diverge += 1;
        stats.head_hits += 1;
        stats.no_whnf_out.push((enc, len));
        stats.memo_out.push(((enc, len), MemoV::Diverge));
        return;
    }
    pool.clear();
    let root = pool
        .decode_u64(enc, len)
        .expect("enumerator emits valid terms");

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
    if let Ok(steps) = vm.normalize_capped(
        pool,
        root,
        cfg.budget1,
        cfg.budget1.saturating_mul(64),
        &mut sink,
    ) {
        stats.record_halt(sink.0, steps, enc, len);
        return;
    }
    // Rung 2 at 64×β transitions too: measured across 4..40, exactly ONE
    // rung-2 success ever exceeded that (n=39; it now takes the
    // escalation+rescue path to the same verdict), while stuck rung-2
    // attempts burned the 1<<22 floor ~150k times per big size.
    let mut sink = SizeSink::default();
    match vm.normalize_capped(
        pool,
        root,
        cfg.budget2,
        cfg.budget2.saturating_mul(64),
        &mut sink,
    ) {
        Ok(steps) => {
            if vm.last_trans > cfg.budget2.saturating_mul(64) {
                stats.rung2_over += 1;
            }
            stats.record_halt(sink.0, steps, enc, len);
            return;
        }
        Err(OutOfFuel::Beta) => stats.rung2_stuck.0 += 1,
        Err(_) => stats.rung2_stuck.1 += 1,
    }
    // Escalation: full BB.lhs semantics.
    stats.escalated += 1;
    let t = lterm_of(pool, root);
    match normal_form(cfg.bb_cap, &t) {
        Ok(nf) => {
            // β-count from the escalation engine isn't canonical (history
            // machinery, no step ledger) — recover it with a KN re-run.
            let mut sink = SizeSink::default();
            match vm.normalize_capped(
                pool,
                root,
                cfg.rescue,
                cfg.rescue.saturating_mul(cfg.rescue_trans_mult),
                &mut sink,
            ) {
                Ok(steps) => {
                    stats.max_rescue_beta = stats.max_rescue_beta.max(steps);
                    stats.rescue_max_trans = stats.rescue_max_trans.max(vm.last_trans);
                    stats.record_halt(sink.0, steps, enc, len);
                    stats
                        .memo_out
                        .push(((enc, len), MemoV::Halt { nf: sink.0, steps }));
                }
                Err(e) => {
                    match e {
                        OutOfFuel::Beta => stats.rescue_stuck.0 += 1,
                        _ => stats.rescue_stuck.1 += 1,
                    }
                    // Halts per BB engine but out of rescue fuel for the
                    // canonical count; record with the engine's nf size.
                    stats.record_halt(nf.bit_size(), 0, enc, len);
                    stats.memo_out.push((
                        (enc, len),
                        MemoV::Halt {
                            nf: nf.bit_size(),
                            steps: 0,
                        },
                    ));
                }
            }
        }
        Err(NoNf::Diverge) => {
            stats.diverge += 1;
            stats.memo_out.push(((enc, len), MemoV::Diverge));
            // Spine-certified proof: the term has no whnf, a fact that
            // transfers to every application headed by it.
            if take_head_diverge() {
                stats.no_whnf_out.push((enc, len));
            }
        }
        Err(NoNf::Unknown(why)) => {
            let mut sink = SizeSink::default();
            match vm.normalize_capped(
                pool,
                root,
                cfg.rescue,
                cfg.rescue.saturating_mul(cfg.rescue_trans_mult),
                &mut sink,
            ) {
                Ok(steps) => {
                    stats.max_rescue_beta = stats.max_rescue_beta.max(steps);
                    stats.rescue_max_trans = stats.rescue_max_trans.max(vm.last_trans);
                    let r = match why {
                        Why::Capacity => &mut stats.rescue_cap,
                        Why::WorkMeter => &mut stats.rescue_work,
                    };
                    r.0 += 1;
                    r.1 = r.1.max(steps);
                    stats.record_halt(sink.0, steps, enc, len);
                    stats
                        .memo_out
                        .push(((enc, len), MemoV::Halt { nf: sink.0, steps }));
                }
                Err(e) => {
                    match e {
                        OutOfFuel::Beta => stats.rescue_stuck.0 += 1,
                        _ => stats.rescue_stuck.1 += 1,
                    }
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
        rescue_trans_mult: 32,
        prescan: true,
        oracle: true,
        chunk: 0, // 0 = auto (threads * 64)
    };
    let mut verify = false;
    let mut term_arg: Option<String> = None;
    let mut dump_path: Option<String> = None;
    let mut terms_file: Option<String> = None;
    let mut ckpt_path: Option<String> = None;
    let mut groups_flag = 0usize;
    let mut memo_in_path: Option<String> = None;
    let mut memo_out_path: Option<String> = None;
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
            "--rescue-trans-mult" => {
                i += 1;
                cfg.rescue_trans_mult = args[i].parse().unwrap();
            }
            "--chunk" => {
                i += 1;
                cfg.chunk = args[i].parse().unwrap();
            }
            "--dump-unknowns" => {
                i += 1;
                dump_path = Some(args[i].clone());
            }
            "--checkpoint" => {
                i += 1;
                ckpt_path = Some(args[i].clone());
            }
            "--groups" => {
                i += 1;
                groups_flag = args[i].parse().unwrap();
            }
            "--memo-in" => {
                i += 1;
                memo_in_path = Some(args[i].clone());
            }
            "--memo-out" => {
                i += 1;
                memo_out_path = Some(args[i].clone());
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
        println!(
            "term: {} bits, redex: {}",
            pool.bit_size(root),
            pool.has_redex(root)
        );
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
        let terms: Vec<&str> = text
            .lines()
            .map(str::trim)
            .filter(|l| !l.is_empty())
            .collect();
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
                            match vm.normalize_capped(
                                pool,
                                root,
                                cfg.rescue,
                                cfg.rescue.saturating_mul(cfg.rescue_trans_mult),
                                &mut sink,
                            ) {
                                Ok(steps) => {
                                    format!("{bits} HALT nf={} steps={steps}", sink.0)
                                }
                                Err(_) => format!("{bits} HALT nf={} steps=?", nf.bit_size()),
                            }
                        }
                        Err(NoNf::Diverge) => format!("{bits} DIVERGE bb-engine"),
                        Err(NoNf::Unknown(_)) => {
                            let mut sink = SizeSink::default();
                            match vm.normalize_capped(
                                pool,
                                root,
                                cfg.rescue,
                                cfg.rescue.saturating_mul(cfg.rescue_trans_mult),
                                &mut sink,
                            ) {
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
                if done.is_multiple_of(100) {
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
    let counts_ref: &[(u32, u64)] = &[
        (20, 883),
        (24, 8574),
        (28, 89270),
        (32, 978447),
        (36, 11148652),
    ];
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
        "n",
        "closed",
        "halt",
        "diverge",
        "unknown",
        "escal",
        "max|nf|",
        "beta_total",
        "time_s",
        "terms/s"
    );
    let mut ckpt = ckpt_path
        .as_ref()
        .map(|p| Ckpt::<Stats>::open(p, &ckpt_config(&cfg, min_n, max_n), groups_flag));

    // λ-wrap memo, rolling by size parity: slot n%2 holds size n−2's
    // expensive verdicts during size n, then is replaced by size n's.
    let mut memo_by_parity: [std::collections::HashMap<(u64, u8), MemoV>; 2] =
        [Default::default(), Default::default()];
    // Cross-size no-whnf fact set (grows monotonically; never rolled).
    // Heads are strict subterms, so the set is read-only within a size.
    let mut no_whnf: std::collections::HashSet<(u64, u8)> = Default::default();
    // Seed the two live parity slots (sizes min_n−2 and min_n−1) and the
    // whole no-whnf set from a prior run's --memo-out file; other sizes'
    // H/D records are inert here. Loads dedup by key (same key ⇒ same
    // deterministic verdict), so duplicate lines from resumed runs are
    // harmless. Fates at App-rooted compositions depend on these facts
    // (the sweep derives them from smaller sizes; a delta run cannot),
    // so --memo-in is part of the delta protocol, not a speedup.
    if let Some(path) = &memo_in_path {
        let text = std::fs::read_to_string(path).expect("read memo file");
        for line in text.lines() {
            let mut it = line.split_whitespace();
            let (Some(e), Some(l)) = (it.next(), it.next()) else {
                continue;
            };
            let enc: u64 = e.parse().unwrap();
            let len: u8 = l.parse().unwrap();
            match it.next() {
                Some("W") => {
                    no_whnf.insert((enc, len));
                }
                Some(tag) if (len as u32) + 2 == min_n || (len as u32) + 1 == min_n => {
                    let v = match tag {
                        "H" => MemoV::Halt {
                            nf: it.next().unwrap().parse().unwrap(),
                            steps: it.next().unwrap().parse().unwrap(),
                        },
                        _ => MemoV::Diverge,
                    };
                    memo_by_parity[(len % 2) as usize].insert((enc, len), v);
                }
                _ => {}
            }
        }
        eprintln!(
            "    memo-in: seeded {} + {} records for sizes {}/{}; {} no-whnf facts",
            memo_by_parity[(min_n % 2) as usize].len(),
            memo_by_parity[((min_n + 1) % 2) as usize].len(),
            min_n.saturating_sub(2),
            min_n.saturating_sub(1),
            no_whnf.len()
        );
    }
    // With a checkpoint, per-size unknown dumping would duplicate lines
    // across resumed runs; collect and rewrite the file once at the end.
    let mut deferred_unknowns: Vec<(u64, u8)> = Vec::new();
    for n in min_n..=max_n {
        // Generation is fused into the workers: each task enumerates its
        // subtree of the term space and censuses terms as they appear.
        let target = match &ckpt {
            Some(c) => c.target,
            None if cfg.chunk == 0 => rayon::current_num_threads() * 64,
            None => cfg.chunk,
        };
        let tasks = interleave_tasks(split_tasks(n, target));
        let memos = Memos {
            wrap: &memo_by_parity[(n % 2) as usize],
            no_whnf: &no_whnf,
        };
        let memos = &memos;
        let run_slice = |slice: &[GenTask]| -> Stats {
            slice
                .par_iter()
                .map_init(
                    || (TermPool::new(), Machine::new()),
                    |(pool, vm), task| {
                        let mut stats = Stats::default();
                        run_task(task, &mut |enc, len| {
                            census_term(&cfg, pool, vm, &mut stats, memos, enc, len);
                        });
                        stats
                    },
                )
                .reduce(Stats::default, Stats::merge)
        };
        let (mut stats, secs) = match &mut ckpt {
            Some(c) => {
                let per = tasks.len().div_ceil(c.groups).max(1);
                let mut acc = Stats::default();
                let mut secs = 0.0;
                for gi in 0..c.groups {
                    if let Some((s, gsecs)) = c.take_restored(n, gi) {
                        acc = acc.merge(s);
                        secs += gsecs;
                        continue;
                    }
                    let lo = (gi * per).min(tasks.len());
                    let hi = ((gi + 1) * per).min(tasks.len());
                    let t0 = Instant::now();
                    let gs = run_slice(&tasks[lo..hi]);
                    let gsecs = t0.elapsed().as_secs_f64();
                    c.append(n, gi, gsecs, &gs);
                    acc = acc.merge(gs);
                    secs += gsecs;
                }
                (acc, secs)
            }
            None => {
                let t0 = Instant::now();
                let s = run_slice(&tasks);
                (s, t0.elapsed().as_secs_f64())
            }
        };
        let memo_in = memo_by_parity[(n % 2) as usize].len();
        memo_by_parity[(n % 2) as usize] = stats.memo_out.drain(..).collect();
        if stats.memo_hits > 0 || memo_in > 0 {
            eprintln!(
                "    memo: {} hits of {} candidates; {} records forward",
                stats.memo_hits,
                memo_in,
                memo_by_parity[(n % 2) as usize].len()
            );
        }
        // Persist size n's memo records (sorted for stable diffs). Loads
        // dedup by key, so re-appends from resumed runs are harmless.
        if let Some(path) = &memo_out_path {
            use std::fmt::Write as _;
            use std::io::Write;
            let mut recs: Vec<((u64, u8), MemoV)> = memo_by_parity[(n % 2) as usize]
                .iter()
                .map(|(k, v)| (*k, *v))
                .collect();
            recs.sort_unstable_by_key(|(k, _)| *k);
            let mut out = String::new();
            for ((enc, len), v) in recs {
                match v {
                    MemoV::Halt { nf, steps } => {
                        writeln!(out, "{enc} {len} H {nf} {steps}").unwrap()
                    }
                    MemoV::Diverge => writeln!(out, "{enc} {len} D").unwrap(),
                }
            }
            let mut wrecs = stats.no_whnf_out.clone();
            wrecs.sort_unstable();
            for (enc, len) in wrecs {
                writeln!(out, "{enc} {len} W").unwrap();
            }
            let mut f = std::fs::OpenOptions::new()
                .create(true)
                .append(true)
                .open(path)
                .expect("open memo-out file");
            f.write_all(out.as_bytes()).unwrap();
        }
        // Fold size n's no-whnf facts into the cross-size set.
        let new_whnf = stats.no_whnf_out.len();
        no_whnf.extend(stats.no_whnf_out.drain(..));
        if stats.head_hits > 0 || new_whnf > 0 {
            eprintln!(
                "    no-whnf: {} head-memo kills; {} new facts ({} total)",
                stats.head_hits,
                new_whnf,
                no_whnf.len()
            );
        }

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
        // The BBλ champion's own bits — at record-setting sizes the
        // witness term is the headline, not just its |nf|.
        if stats.max_nf > 0 {
            let (wenc, wlen) = stats.max_nf_witness;
            let bits: String = (0..wlen)
                .rev()
                .map(|i| if (wenc >> i) & 1 == 1 { '1' } else { '0' })
                .collect();
            println!("    max|nf| witness: {bits}");
        }
        if !stats.unknowns.is_empty() {
            println!(
                "    unknowns by cause: {} capacity, {} work-meter; max successful rescue {} beta",
                stats.unknown_cap, stats.unknown_work, stats.max_rescue_beta
            );
        }
        if stats.rescue_cap.0 + stats.rescue_work.0 > 0 {
            println!(
                "    rescued: {} from capacity (max {} beta), {} from work-meter (max {} beta); max trans {}",
                stats.rescue_cap.0,
                stats.rescue_cap.1,
                stats.rescue_work.0,
                stats.rescue_work.1,
                stats.rescue_max_trans
            );
        }
        if stats.rescue_stuck.0 + stats.rescue_stuck.1 > 0 {
            println!(
                "    stuck rescues: {} beta-bound, {} transition-bound",
                stats.rescue_stuck.0, stats.rescue_stuck.1
            );
        }
        if stats.rung2_over + stats.rung2_stuck.0 + stats.rung2_stuck.1 > 0 {
            println!(
                "    rung2: {} successes past 64x trans; stuck {} beta-bound, {} transition-bound",
                stats.rung2_over, stats.rung2_stuck.0, stats.rung2_stuck.1
            );
        }
        // Preview and dump in sorted order: accumulation order is task
        // order, which depends on the split target (thread count or
        // checkpoint grouping); sorted output is machine-independent.
        stats.unknowns.sort_unstable();
        if !stats.unknowns.is_empty() {
            for (enc, len) in stats.unknowns.iter().take(16) {
                println!("    unknown: {}", enc_to_string(*enc, *len));
            }
            if stats.unknowns.len() > 16 {
                println!("    ... and {} more unknowns", stats.unknowns.len() - 16);
            }
            if dump_path.is_some() && ckpt.is_some() {
                deferred_unknowns.extend(stats.unknowns.iter().copied());
            } else if let Some(path) = &dump_path {
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
    if ckpt.is_some() {
        if let Some(path) = &dump_path {
            use std::io::Write;
            let mut f = std::fs::File::create(path).expect("create dump file");
            for (enc, len) in &deferred_unknowns {
                writeln!(f, "{}", enc_to_string(*enc, *len)).unwrap();
            }
        }
    }
    use std::sync::atomic::Ordering;
    let fires = blam::bb::REDLOOP_FIRES.load(Ordering::Relaxed);
    let fuel = blam::bb::REDLOOP_FUEL_REJECTS.load(Ordering::Relaxed);
    println!("redloop: {fires} proofs, {fuel} shape-matches lost to probe fuel");
}
