//! Exhaustive census of closed BLC terms by size: halting behavior, β-step
//! totals, and the busy beaver statistic max |nf| — cross-checked against
//! Tromp's published values.
//!
//! Per term this decodes the packed u64 into the arena and hands it to
//! [`blam::classical::ladder`], which owns the cheapest-verdict-first
//! pipeline (pre-scan → oracle → two KN rungs → escalation → KN rescue).
//! What lives HERE and not in the ladder is the census's cross-size
//! memory — the λ-wrap verdict memo and the no-whnf head memo — because
//! those reuse one term's fate for a *different* term, which is a fact
//! about an enumeration rather than about a term.
//!
//! Usage: `blam census [MIN] MAX [flags]` — see `USAGE` below.
//! (--chunk sets the minimum generation-task count for the fused
//! parallel enumeration.) Single-term and batch adjudication moved to
//! `blam adjudicate`.
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

use crate::args::{self, Args, R};
use crate::ckpt::{sha256_16, Ckpt, CkptRecord};
use blam::blc::enumerate::{interleave_tasks, run_task, split_tasks, GenTask};
use blam::blc::wire::enc_to_string;
use blam::classical::escalation::Why;
use blam::classical::ladder::{self, LadderCfg, Rung, Verdict};
use blam::classical::machine::{Machine, Pool, SizeSink};
use blam::classical::OutOfFuel;
use rayon::prelude::*;
use std::time::Instant;

const USAGE: &str = "\
blam census [MIN] MAX — exhaustive closed-term census by size

usage: blam census [MIN] MAX [flags]        (MIN defaults to 4)

ladder
  --budget1 N            rung-1 beta budget (default 64)
  --budget2 N            rung-2 beta budget (default 4096)
  --bb-cap N             escalation-engine capacity (default 2000000)
  --rescue N             KN rescue beta budget (default 10000000)
  --rescue-trans-mult N  rescue transition cap = rescue x N (default 32)
  --no-prescan           skip the redex-free pre-scan
  --no-oracle            skip the divergence-oracle prefilter
  --work-mult N          escalation work meter per capacity bit (default 16)
  --probe-fuel N         redloop probe beta budget (default 4096)

run
  --threads N            rayon threads (0 = ambient, the default)
  --chunk N              minimum generation-task count (0 = threads x 64)
  --verify               assert A114852 counts and BB-lambda values
  --dump-unknowns FILE   write the unknown frontier
  --checkpoint FILE      kill-safe group-level resume
  --groups K             groups per size for --checkpoint (default 64)
  --memo-in FILE         seed the lambda-wrap and no-whnf memos
  --memo-out FILE        persist them as sizes complete";

/// The sweep's configuration: the shared ladder's budgets plus the one
/// knob that belongs to the enumeration rather than to a term.
#[derive(Clone, Copy, Default)]
struct Cfg {
    ladder: LadderCfg,
    /// Minimum generation-task count for the fused parallel enumeration
    /// (0 = auto, threads × 64).
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
    /// Failed rung-2 attempts by fuel type (β-bound, transition-bound):
    /// the cost of the rung that the 1<<22 transition floor used to
    /// charge ~150k times per big size.
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

/// Version of the [`Rec`] line grammar, pinned in the checkpoint header
/// so a format change cannot silently resume onto stale records.
const REC_FMT: u32 = 1;

/// One verdict record. This is the ONE line grammar for both files the
/// census persists — checkpoint bodies and `--memo-out` — so the two
/// cannot drift; a single fmt/parse pair, exercised by both readers.
///
/// ```text
/// H <enc> <len> <nf_bits> <beta>   λ-wrap memo: proven halt
/// D <enc> <len>                    λ-wrap memo: proven divergence
/// W <enc> <len>                    no-whnf fact (transfers under App)
/// U <enc> <len>                    unknown frontier member
/// ```
///
/// `G`/`E` are reserved by `blam::ckpt` for its own framing, and `S` by
/// the [`Stats`] scalar line; none of the tags here collide.
#[derive(Clone, Copy)]
enum Rec {
    Wrap((u64, u8), MemoV),
    NoWhnf((u64, u8)),
    Unknown((u64, u8)),
}

impl Rec {
    fn write(&self, out: &mut String) {
        use std::fmt::Write as _;
        match self {
            Rec::Wrap((enc, len), MemoV::Halt { nf, steps }) => {
                writeln!(out, "H {enc} {len} {nf} {steps}")
            }
            Rec::Wrap((enc, len), MemoV::Diverge) => writeln!(out, "D {enc} {len}"),
            Rec::NoWhnf((enc, len)) => writeln!(out, "W {enc} {len}"),
            Rec::Unknown((enc, len)) => writeln!(out, "U {enc} {len}"),
        }
        .unwrap()
    }

    fn parse(line: &str) -> Option<Rec> {
        let mut it = line.split_whitespace();
        let tag = it.next()?;
        let key = (it.next()?.parse().ok()?, it.next()?.parse().ok()?);
        Some(match tag {
            "H" => Rec::Wrap(
                key,
                MemoV::Halt {
                    nf: it.next()?.parse().ok()?,
                    steps: it.next()?.parse().ok()?,
                },
            ),
            "D" => Rec::Wrap(key, MemoV::Diverge),
            "W" => Rec::NoWhnf(key),
            "U" => Rec::Unknown(key),
            _ => return None,
        })
    }
}

/// Driver config string pinned in the checkpoint header (`blam::ckpt`).
/// Everything that can change a group record's *contents* belongs here:
/// the ladder budgets, the engine tunables, the record format, and the
/// identity of the seeded memo file (whose facts decide fates at
/// App-rooted compositions).
fn ckpt_config(cfg: &Cfg, min_n: u32, max_n: u32, memo_in: Option<&str>) -> String {
    let l = &cfg.ladder;
    format!(
        "census min={min_n} max={max_n} b1={} b2={} cap={} rescue={} rtm={} prescan={} \
         oracle={} fmt={REC_FMT} work={} probe={} memoin={}",
        l.budget1,
        l.budget2,
        l.bb_cap,
        l.rescue,
        l.rescue_trans_mult,
        l.prescan as u8,
        l.oracle as u8,
        l.work_mult,
        l.probe_fuel,
        memo_in.map_or_else(|| "none".to_string(), sha256_16),
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
            self.rung2_stuck.0,
            self.rung2_stuck.1,
            self.memo_hits,
            self.head_hits,
        ] {
            write!(out, " {v}").unwrap();
        }
        out.push('\n');
        for (k, v) in &self.memo_out {
            Rec::Wrap(*k, *v).write(out);
        }
        for k in &self.unknowns {
            Rec::Unknown(*k).write(out);
        }
        for k in &self.no_whnf_out {
            Rec::NoWhnf(*k).write(out);
        }
    }

    fn parse_line(&mut self, line: &str) -> Option<()> {
        if let Some(rest) = line.strip_prefix("S ") {
            let mut it = rest.split_whitespace();
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
            self.rung2_stuck = (num()?, num()?);
            self.memo_hits = num()?;
            self.head_hits = num()?;
            return Some(());
        }
        match Rec::parse(line)? {
            Rec::Wrap(k, v) => self.memo_out.push((k, v)),
            Rec::NoWhnf(k) => self.no_whnf_out.push(k),
            Rec::Unknown(k) => self.unknowns.push(k),
        }
        Some(())
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

/// Append `unknowns` to the dump file, truncating it on the run's FIRST
/// write (`started` flips there). Appending unconditionally made the
/// file an accumulation across every run that ever named the path — a
/// stale frontier that `scripts/census-regen.sh`'s subtraction identity
/// would then silently mis-count.
fn write_unknowns(path: &str, unknowns: &[(u64, u8)], started: &mut bool) -> R<()> {
    use std::io::Write;
    let mut f = std::fs::OpenOptions::new()
        .create(true)
        .write(true)
        .append(*started)
        .truncate(!*started)
        .open(path)
        .map_err(|e| format!("blam census: cannot open --dump-unknowns {path}: {e}"))?;
    *started = true;
    let mut out = String::new();
    for (enc, len) in unknowns {
        out.push_str(&enc_to_string(*enc, *len));
        out.push('\n');
    }
    f.write_all(out.as_bytes())
        .map_err(|e| format!("blam census: cannot write {path}: {e}"))
}

/// The census's cross-size verdict memory, read-only within a size:
/// the parity-rolled λ-wrap memo and the monotone no-whnf head set.
struct Memos<'a> {
    wrap: &'a std::collections::HashMap<(u64, u8), MemoV>,
    no_whnf: &'a std::collections::HashSet<(u64, u8)>,
}

fn census_term(
    cfg: &Cfg,
    pool: &mut Pool,
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

    let mut sink = SizeSink::default();
    let o = ladder::adjudicate(&cfg.ladder, pool, vm, root, &mut sink);

    // Path telemetry, verdict-independent.
    if o.rung == Rung::Prescan {
        stats.prescan_nf += 1;
    }
    if o.tel.escalated {
        stats.escalated += 1;
    }
    let bump = |c: &mut (u64, u64), e: OutOfFuel| match e {
        OutOfFuel::Beta => c.0 += 1,
        _ => c.1 += 1,
    };
    if let Some(e) = o.tel.kn2_stuck {
        bump(&mut stats.rung2_stuck, e);
    }
    if let Some(e) = o.tel.rescue_stuck {
        bump(&mut stats.rescue_stuck, e);
    }

    match o.verdict {
        // `steps` is 0 when the escalation engine proved the halt but the
        // rescue could not recover the canonical count, so beta_total
        // stays a sum of *known* β counts, never an estimate.
        Verdict::Halt { nf, steps, .. } => {
            let nf_bits = nf.resolve(sink.0);
            if o.rung == Rung::Rescue {
                stats.max_rescue_beta = stats.max_rescue_beta.max(steps);
                stats.rescue_max_trans = stats.rescue_max_trans.max(o.tel.last_trans);
                // Rescues OFF the Unknown branch are the interesting
                // ones: they say which engine resource a bigger budget
                // would have to buy back.
                if let Some(why) = o.tel.escal_why {
                    let r = match why {
                        Why::Capacity => &mut stats.rescue_cap,
                        Why::WorkMeter => &mut stats.rescue_work,
                    };
                    r.0 += 1;
                    r.1 = r.1.max(steps);
                }
            }
            stats.record_halt(nf_bits, steps, enc, len);
            if o.tel.escalated {
                stats
                    .memo_out
                    .push(((enc, len), MemoV::Halt { nf: nf_bits, steps }));
            }
        }
        Verdict::Diverge => {
            stats.diverge += 1;
            if o.tel.escalated {
                stats.memo_out.push(((enc, len), MemoV::Diverge));
                // Spine-certified proof: the term has no whnf, a fact
                // that transfers to every application headed by it. The
                // oracle's cheaper fires never qualify — and never reach
                // here, since they land on `Rung::Oracle`.
                if o.tel.head_diverge {
                    stats.no_whnf_out.push((enc, len));
                }
            }
        }
        Verdict::Unknown(why) => {
            stats.unknown += 1;
            match why {
                Why::Capacity => stats.unknown_cap += 1,
                Why::WorkMeter => stats.unknown_work += 1,
            }
            stats.unknowns.push((enc, len));
        }
    }
}

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut cfg = Cfg::default();
    let mut verify = false;
    let mut dump_path: Option<String> = None;
    let mut ckpt_path: Option<String> = None;
    let mut groups_flag = 0usize;
    let mut memo_in_path: Option<String> = None;
    let mut memo_out_path: Option<String> = None;
    let mut threads = 0usize;
    let mut work_mult: Option<i64> = None;
    let mut probe_fuel: Option<u64> = None;
    let mut chunk_given = false;
    let mut p = Args::new("census", argv);
    while let Some(tok) = p.next() {
        match tok {
            "--budget1" => cfg.ladder.budget1 = p.num(tok)?,
            "--budget2" => cfg.ladder.budget2 = p.num(tok)?,
            "--bb-cap" => cfg.ladder.bb_cap = p.num(tok)?,
            "--rescue" => cfg.ladder.rescue = p.num(tok)?,
            "--rescue-trans-mult" => cfg.ladder.rescue_trans_mult = p.num(tok)?,
            "--chunk" => {
                cfg.chunk = p.num(tok)?;
                chunk_given = true;
            }
            "--threads" => threads = p.num(tok)?,
            "--work-mult" => work_mult = Some(p.num(tok)?),
            "--probe-fuel" => probe_fuel = Some(p.num(tok)?),
            "--dump-unknowns" => dump_path = Some(p.value(tok)?.to_string()),
            "--checkpoint" => ckpt_path = Some(p.value(tok)?.to_string()),
            "--groups" => groups_flag = p.num(tok)?,
            "--memo-in" => memo_in_path = Some(p.value(tok)?.to_string()),
            "--memo-out" => memo_out_path = Some(p.value(tok)?.to_string()),
            "--no-prescan" => {
                p.flag(tok)?;
                cfg.ladder.prescan = false;
            }
            "--no-oracle" => {
                p.flag(tok)?;
                cfg.ladder.oracle = false;
            }
            "--verify" => {
                p.flag(tok)?;
                verify = true;
            }
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    let (min_n, max_n) = p.range(4)?;
    let engine = args::engine_cfg(work_mult, probe_fuel);
    cfg.ladder.work_mult = engine.work_mult;
    cfg.ladder.probe_fuel = engine.probe_fuel;
    if chunk_given && ckpt_path.is_some() {
        eprintln!(
            "    warning: --chunk is ignored under --checkpoint; the task split comes \
             from the checkpoint header (target=), which pins it across resumes"
        );
    }

    // Escalation recursion can go deep on tower terms; give workers room.
    args::build_pool(threads)?;

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
    let ckpt_cfg = ckpt_config(&cfg, min_n, max_n, memo_in_path.as_deref());
    let mut ckpt = ckpt_path
        .as_ref()
        .map(|p| Ckpt::<Stats>::open(p, &ckpt_cfg, groups_flag));

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
        let text = std::fs::read_to_string(path)
            .map_err(|e| format!("blam census: cannot read --memo-in {path}: {e}"))?;
        for (k, line) in text.lines().enumerate() {
            if line.trim().is_empty() {
                continue;
            }
            let rec = Rec::parse(line).ok_or_else(|| {
                format!(
                    "blam census: {path}:{}: malformed memo record: `{line}`",
                    k + 1
                )
            })?;
            match rec {
                Rec::NoWhnf(key) => {
                    no_whnf.insert(key);
                }
                // Only the two live parity slots matter; other sizes'
                // H/D records are inert here.
                Rec::Wrap(key, v) if (key.1 as u32) + 2 == min_n || (key.1 as u32) + 1 == min_n => {
                    memo_by_parity[(key.1 % 2) as usize].insert(key, v);
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
    let mut dump_started = false;
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
                    || (Pool::new(), Machine::new()),
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
            use std::io::Write;
            let mut recs: Vec<((u64, u8), MemoV)> = memo_by_parity[(n % 2) as usize]
                .iter()
                .map(|(k, v)| (*k, *v))
                .collect();
            recs.sort_unstable_by_key(|(k, _)| *k);
            let mut out = String::new();
            for (k, v) in recs {
                Rec::Wrap(k, v).write(&mut out);
            }
            let mut wrecs = stats.no_whnf_out.clone();
            wrecs.sort_unstable();
            for k in wrecs {
                Rec::NoWhnf(k).write(&mut out);
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
        // How much of the size class never reached an engine at all: the
        // redex-free terms, each its own normal form. Their share is the
        // ladder's cheapest rung and the baseline every other cost is
        // measured against.
        println!(
            "    prescan: {} redex-free of {} closed terms",
            stats.prescan_nf, stats.total
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
        if stats.rung2_stuck.0 + stats.rung2_stuck.1 > 0 {
            println!(
                "    rung2 stuck: {} beta-bound, {} transition-bound",
                stats.rung2_stuck.0, stats.rung2_stuck.1
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
                // Truncate on the FIRST write of this run, append after:
                // the file is this run's frontier, not an accumulation
                // over every run that ever named the path.
                write_unknowns(path, &stats.unknowns, &mut dump_started)?;
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
            // Same truncate-then-append contract; with a checkpoint the
            // whole run lands in one write, so a resumed run replaces
            // rather than duplicates the earlier attempt's lines.
            write_unknowns(path, &deferred_unknowns, &mut dump_started)?;
        }
    }
    use std::sync::atomic::Ordering;
    let fires = blam::classical::escalation::REDLOOP_FIRES.load(Ordering::Relaxed);
    let fuel = blam::classical::escalation::REDLOOP_FUEL_REJECTS.load(Ordering::Relaxed);
    println!("redloop: {fires} proofs, {fuel} shape-matches lost to probe fuel");
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;

    /// The whole point of `Rec` is that ONE grammar serves the memo file
    /// and the checkpoint body, so a memo written by one reader is read
    /// back identically by the other.
    #[test]
    fn record_codec_round_trips_every_tag() {
        let recs = [
            Rec::Wrap((0, 4), MemoV::Diverge),
            Rec::Wrap((u64::MAX, 63), MemoV::Diverge),
            Rec::Wrap((7, 12), MemoV::Halt { nf: 0, steps: 0 }),
            Rec::Wrap(
                (12345, 41),
                MemoV::Halt {
                    nf: 327686,
                    steps: 9_457_564,
                },
            ),
            Rec::NoWhnf((99, 24)),
            Rec::Unknown((1 << 40, 41)),
        ];
        let mut text = String::new();
        for r in &recs {
            r.write(&mut text);
        }
        // Straight through the census's own reader: the checkpoint body
        // parser, which is also what `--memo-in` lines feed.
        let mut s = Stats::default();
        for line in text.lines() {
            s.parse_line(line).expect("every written line parses");
        }
        assert_eq!(s.memo_out.len(), 4);
        assert_eq!(s.no_whnf_out, vec![(99, 24)]);
        assert_eq!(s.unknowns, vec![(1 << 40, 41)]);
        assert!(matches!(
            s.memo_out[3],
            (
                (12345, 41),
                MemoV::Halt {
                    nf: 327686,
                    steps: 9_457_564
                }
            )
        ));
        // Re-emitting the parsed records reproduces the bytes exactly.
        let mut again = String::new();
        for (k, v) in &s.memo_out {
            Rec::Wrap(*k, *v).write(&mut again);
        }
        for k in &s.unknowns {
            Rec::Unknown(*k).write(&mut again);
        }
        for k in &s.no_whnf_out {
            Rec::NoWhnf(*k).write(&mut again);
        }
        let mut want = String::new();
        for r in [&recs[0], &recs[1], &recs[2], &recs[3], &recs[5], &recs[4]] {
            r.write(&mut want);
        }
        assert_eq!(again, want);
    }

    #[test]
    fn malformed_records_are_rejected_not_guessed() {
        for bad in [
            "",
            "Z 1 4",          // unknown tag
            "H 1",            // truncated key
            "H 1 4 7",        // halt missing its step count
            "D 1 four",       // non-numeric length
            "W 1 4 extra ok", // trailing junk is fine, but…
        ] {
            let ok = Rec::parse(bad).is_some();
            assert_eq!(ok, bad.starts_with("W 1 4"), "{bad:?}");
        }
    }

    /// The Stats line and the record lines share a file; their tags must
    /// not collide, and a torn `S` line must read as a tear.
    #[test]
    fn stats_line_round_trips_and_short_lines_tear() {
        let s = Stats {
            total: 11_148_652,
            prescan_nf: 4_000_000,
            max_nf_witness: (1 << 35, 36),
            max_nf: 327_686,
            rescue_stuck: (22, 22),
            head_hits: 9,
            ..Default::default()
        };
        let mut text = String::new();
        s.write_body(&mut text);
        let line = text.lines().next().unwrap();
        let mut back = Stats::default();
        back.parse_line(line).expect("stats line parses");
        assert_eq!(
            (back.total, back.prescan_nf, back.max_nf, back.head_hits),
            (11_148_652, 4_000_000, 327_686, 9)
        );
        assert_eq!(back.max_nf_witness, (1 << 35, 36));
        assert_eq!(back.rescue_stuck, (22, 22));
        assert!(Stats::default().parse_line("S 1 2 3").is_none());
    }

    #[test]
    fn ckpt_config_pins_every_verdict_relevant_knob() {
        let base = ckpt_config(&Cfg::default(), 4, 41, None);
        assert!(base.contains("fmt=1"), "{base}");
        assert!(base.contains("work=16"), "{base}");
        assert!(base.contains("probe=4096"), "{base}");
        assert!(base.contains("memoin=none"), "{base}");
        for mutate in [
            (|c: &mut Cfg| c.ladder.budget1 = 128) as fn(&mut Cfg),
            |c: &mut Cfg| c.ladder.work_mult = 2,
            |c: &mut Cfg| c.ladder.probe_fuel = 8192,
            |c: &mut Cfg| c.ladder.oracle = false,
        ] {
            let mut c = Cfg::default();
            mutate(&mut c);
            assert_ne!(base, ckpt_config(&c, 4, 41, None));
        }
        // `chunk` is a scheduling knob, not a verdict knob: it must NOT
        // fence, or a rerun at a different thread count would refuse a
        // perfectly valid checkpoint.
        let c = Cfg {
            chunk: 4096,
            ..Default::default()
        };
        assert_eq!(base, ckpt_config(&c, 4, 41, None));
    }
}
