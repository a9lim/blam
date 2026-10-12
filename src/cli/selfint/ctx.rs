//! Step 2 of the post-168 plan: contextual, law-directed slot search.
//!
//! `blam slots` proved each of the 168's slots optimal *parametrically*: with
//! every frame variable rigid, the reference is the only term of its size or
//! smaller whose closure has the right normal form. That excludes, by
//! construction, fragments that work only because of what the frame
//! variables actually are at run time. In the ABS branch `bit1` is `true`; in
//! APP it is `false`. `x x` is `intL`. In VAR, `list` is `(false : list1)`.
//!
//! This search drops the parametric contract. A candidate is spliced into the
//! 168 at the slot and has to satisfy the interpreter's real law on every
//! probe program `M`:
//!
//! ```text
//! \c \n. E' c (⌜M⌝ ++ n)   has the same normal form as   \c \n. c (\z. M) n
//! ```
//!
//! with `c` and `n` rigid. The goldens come from the reference interpreter
//! itself, so each probe is an exact contract check for that program. A
//! survivor is a hypothesis: it has passed finitely many programs, and
//! `tools/self-interpreter/battery.py` must pass the spliced interpreter
//! before it is believed. A rejection is final, because failing one program
//! falsifies the contract.
//!
//! Enumeration keeps only *contextual* obligations. The parametric search
//! required, for example, `intL` in APP. Here `x x` can stand in for it, so
//! the only required frame variables are those whose information cannot
//! reach the result any other way. `cont` is the only route to the rigid
//! `c`, and `exp` is the only route to the parsed body (ABS) or function
//! (APP). See each slot's `must`.

use crate::args::{self, Args, R};
use crate::golf::term::INT168;
use crate::slots::{go, split_tasks, Counts, Pending};
use blam::blc::wire::enc_to_string;
use blam::classical::escalation::{normal_form, EngineCfg, LTerm, NoNf};
use blam::classical::machine::{Machine, Pool, Sink, StringSink};
use blam::classical::oracle::no_nf;
use blam::classical::OutOfFuel;
use rayon::prelude::*;
use std::time::Instant;

const USAGE: &str = "\
blam selfint ctx — contextual slot search in the 168

usage: blam selfint ctx SLOT [--max-size N] [--min-size N] [--programs N]
                             [--counts-only] [--tasks N] [--threads N]

  SLOT            var | abs | app | cell | appval | handler
  --max-size N    largest candidate (default: reference size - 1)
  --min-size N    smallest candidate (default 2)
  --programs N    probe programs (default: all closed terms of 4..=14 bits
                  plus deep-index extras, about 70)
  --counts-only   print the per-size candidate counts and stop
  --escalate N    re-run a size's budget-capped candidates at 512x budget plus
                  the divergence oracle when there are at most N (default 20000)

A candidate survives when the spliced interpreter meets the contract on
every probe program; survivors still need battery.py.";

struct CSlot {
    name: &'static str,
    frame: u8,
    /// Contextually required frame variables (bit r = r-th innermost).
    must: u8,
    names: &'static [&'static str],
    reference: &'static str,
}

const CSLOTS: &[CSlot] = &[
    // cont list1 (list1 list1 list1). `list bit0` is list1 in context, so
    // only cont (the sole route to the rigid continuation) is required.
    CSlot {
        name: "var",
        frame: 7,
        must: 0b0010000,
        names: &["list1", "bit0", "list", "next", "cont", "intL", "x"],
        reference: "0101111110100101101010",
    },
    // cont (\args \arg. exp (\zx \zy. zx arg (zy args)))
    CSlot {
        name: "abs",
        frame: 5,
        must: 0b00101,
        names: &["exp", "bit1", "cont", "intL", "x"],
        reference: "0111100000011110000001011101110011011110",
    },
    // intL (\exp2. cont (\args. exp args (exp2 args))); x x may replace intL.
    CSlot {
        name: "app",
        frame: 5,
        must: 0b00101,
        names: &["exp", "bit1", "cont", "intL", "x"],
        reference: "01111100001111100001011110100111010",
    },
    // the cons' cell \zx \zy. zx arg (zy args)
    CSlot {
        name: "cell",
        frame: 7,
        must: 0b0000011,
        names: &["arg", "args", "exp", "bit1", "cont", "intL", "x"],
        reference: "000001011101110011011110",
    },
    // APP's value \args. exp args (exp2 args)
    CSlot {
        name: "appval",
        frame: 6,
        must: 0b000011,
        names: &["exp2", "exp", "bit1", "cont", "intL", "x"],
        reference: "0001011110100111010",
    },
    // the dispatch handler \bit0 \list1. bit0 (list1 next) VAR
    CSlot {
        name: "handler",
        frame: 5,
        must: 0b00100,
        names: &["list", "next", "cont", "intL", "x"],
        reference: "000001011100110111100101111110100101101010",
    },
];

/// Splice points: the reference occurs exactly once in the 168.
fn split168(slot: &CSlot) -> R<(Vec<bool>, Vec<bool>)> {
    let at: Vec<usize> = INT168
        .match_indices(slot.reference)
        .map(|(i, _)| i)
        .collect();
    if at.len() != 1 {
        return Err(format!(
            "blam selfint ctx: slot {} reference occurs {} times in the 168",
            slot.name,
            at.len()
        ));
    }
    let bits = |s: &str| s.bytes().map(|c| c == b'1').collect::<Vec<bool>>();
    Ok((
        bits(&INT168[..at[0]]),
        bits(&INT168[at[0] + slot.reference.len()..]),
    ))
}

/// One probe program: the probe's wire bits around the interpreter, and the
/// golden normal form produced by the reference.
pub(super) struct Probe {
    /// `\c \n. ` + `E c` application spine, before the interpreter.
    pub(super) head: Vec<bool>,
    /// after the interpreter: `c` then the stream ⌜M⌝ ++ n.
    pub(super) tail: Vec<bool>,
    pub(super) golden: Vec<u8>,
    pub(super) beta: u64,
}

pub(super) fn push_bits(v: &mut Vec<bool>, s: &str) {
    v.extend(s.bytes().map(|c| c == b'1'));
}

pub(super) fn var_bits(v: &mut Vec<bool>, i: usize) {
    for _ in 0..i {
        v.push(true);
    }
    v.push(false);
}

impl Probe {
    /// The universal-machine contract: `\n. U (⌜M⌝ ++ n)` against `\n. M n`.
    pub(super) fn new_uni(m: &str) -> Probe {
        let mut head = Vec::new();
        push_bits(&mut head, "00" /* \n */);
        push_bits(&mut head, "01" /* U S */);
        let mut tail = Vec::new();
        for b in m.bytes() {
            push_bits(&mut tail, "00010110");
            push_bits(&mut tail, if b == b'0' { "0000110" } else { "000010" });
        }
        var_bits(&mut tail, 1 + m.len());
        Probe {
            head,
            tail,
            golden: Vec::new(),
            beta: 0,
        }
    }

    pub(super) fn new(m: &str) -> Probe {
        let mut head = Vec::new();
        push_bits(&mut head, "0000" /* \c \n */);
        push_bits(&mut head, "0101" /* ((E c) S) */);
        let mut tail = Vec::new();
        var_bits(&mut tail, 2); // c
        for b in m.bytes() {
            // \f. f B rest
            push_bits(&mut tail, "00010110");
            push_bits(&mut tail, if b == b'0' { "0000110" } else { "000010" });
        }
        var_bits(&mut tail, 1 + m.len()); // n, under every list cell's binder
        Probe {
            head,
            tail,
            golden: Vec::new(),
            beta: 0,
        }
    }
}

pub(super) struct Golden<'a> {
    pub(super) g: &'a [u8],
    pub(super) pos: usize,
    pub(super) bad: bool,
}

impl Golden<'_> {
    #[inline(always)]
    fn bit(&mut self, b: u8) {
        if self.bad {
            return;
        }
        if self.pos == self.g.len() || self.g[self.pos] != b {
            self.bad = true;
            return;
        }
        self.pos += 1;
    }
}

impl Sink for Golden<'_> {
    const CAN_ABORT: bool = true;
    #[inline(always)]
    fn zero(&mut self) {
        self.bit(0);
    }
    #[inline(always)]
    fn one(&mut self) {
        self.bit(1);
    }
    #[inline(always)]
    fn var(&mut self, n: u32) {
        for _ in 0..n {
            self.bit(1);
            if self.bad {
                return;
            }
        }
        self.bit(0);
    }
    #[inline(always)]
    fn aborted(&self) -> bool {
        self.bad
    }
}

#[derive(Clone, Copy, PartialEq, Eq, Debug)]
pub(super) enum Verdict {
    Pass,
    Fail,
    Unknown,
}

pub(super) struct Ctx<'a> {
    pub(super) cfg: EngineCfg,
    pub(super) pre: &'a [bool],
    pub(super) post: &'a [bool],
    pub(super) probes: &'a [Probe],
}

impl Ctx<'_> {
    pub(super) fn assemble(&self, buf: &mut Vec<bool>, p: &Probe, enc: u64, len: u8) {
        buf.clear();
        buf.extend_from_slice(&p.head);
        buf.extend_from_slice(self.pre);
        for i in (0..len).rev() {
            buf.push(enc >> i & 1 == 1);
        }
        buf.extend_from_slice(self.post);
        buf.extend_from_slice(&p.tail);
    }

    pub(super) fn judge(
        &self,
        pool: &mut Pool,
        vm: &mut Machine,
        buf: &mut Vec<bool>,
        enc: u64,
        len: u8,
    ) -> Verdict {
        self.judge_at(pool, vm, buf, enc, len, 8)
    }

    /// `mult` scales each probe's β budget relative to the reference run.
    pub(super) fn judge_at(
        &self,
        pool: &mut Pool,
        vm: &mut Machine,
        buf: &mut Vec<bool>,
        enc: u64,
        len: u8,
        mult: u64,
    ) -> Verdict {
        let mut verdict = Verdict::Pass;
        // A candidate that runs out of budget on this many probes cannot be
        // a survivor; stop paying for it.
        let mut open = 0;
        for p in self.probes {
            self.assemble(buf, p, enc, len);
            pool.clear();
            let Some(root) = pool.decode(&mut buf.iter().copied()) else {
                return Verdict::Fail;
            };
            let beta = mult * p.beta + 64 * mult;
            let mut sink = Golden {
                g: &p.golden,
                pos: 0,
                bad: false,
            };
            match vm.normalize_capped(pool, root, beta, 64 * beta, &mut sink) {
                Ok(_) if !sink.bad && sink.pos == p.golden.len() => {}
                Ok(_) | Err(OutOfFuel::Aborted) => return Verdict::Fail,
                // A cap is never a rejection. A probe proved to have no
                // normal form is one (the golden has one); otherwise keep
                // looking for a failing program.
                Err(_) => {
                    if mult > 8 {
                        if no_nf(0, (&*pool, root)) {
                            return Verdict::Fail;
                        }
                        match normal_form(self.cfg, 2_000_000, &LTerm::from_pool(pool, root)) {
                            Err(NoNf::Diverge { .. }) => return Verdict::Fail,
                            Ok(nf) if nf.bit_size() != p.golden.len() as u64 => {
                                return Verdict::Fail
                            }
                            _ => {}
                        }
                    }
                    verdict = Verdict::Unknown;
                    open += 1;
                    if open == 3 {
                        return verdict;
                    }
                }
            }
        }
        verdict
    }
}

pub(super) fn programs(limit: usize) -> Vec<String> {
    let mut out = Vec::new();
    for n in 4..=14u32 {
        blam::blc::enumerate::for_each_closed(n, &mut |enc, len| out.push(enc_to_string(enc, len)));
    }
    // Deep indices and reducible programs (the battery's extras).
    for extra in [
        "0000000000111110",
        "00000000000101010110110111011110111110",
        "00000000000101010111111011110111011010",
        "000100011011010",
        "00000111001110011100111010",
        "0100011010000010",
        "00010000000101111010011101010",
        "0000000000000000001111111110",
        "010000011100111010000001110011100111010",
        "0001011000000000000011111100000011101110",
    ] {
        out.push(extra.to_string());
    }
    out.truncate(limit);
    out
}

#[derive(Default)]
pub(super) struct Stats {
    pub(super) total: u64,
    pub(super) fail: u64,
    pub(super) pass: Vec<(u64, u8)>,
    pub(super) unknown: Vec<(u64, u8)>,
}

impl Stats {
    pub(super) fn merge(mut self, o: Stats) -> Stats {
        self.total += o.total;
        self.fail += o.fail;
        self.pass.extend(o.pass);
        self.unknown.extend(o.unknown);
        self
    }
}

pub(super) fn spliced(pre: &[bool], post: &[bool], enc: u64, len: u8) -> String {
    let b = |v: &[bool]| {
        v.iter()
            .map(|&x| if x { '1' } else { '0' })
            .collect::<String>()
    };
    format!("{}{}{}", b(pre), enc_to_string(enc, len), b(post))
}

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut max_size: Option<u8> = None;
    let mut min_size: u8 = 2;
    let mut n_programs = usize::MAX;
    let mut counts_only = false;
    let mut tasks_per_thread = 64usize;
    let mut threads = 0usize;
    let mut escalate = 20_000usize;
    let mut p = Args::new("selfint ctx", argv);
    while let Some(tok) = p.next() {
        match tok {
            "--max-size" => max_size = Some(p.num(tok)?),
            "--min-size" => min_size = p.num(tok)?,
            "--programs" => n_programs = p.num(tok)?,
            "--tasks" => tasks_per_thread = p.num(tok)?,
            "--threads" => threads = p.num(tok)?,
            "--escalate" => escalate = p.num(tok)?,
            "--counts-only" => {
                p.flag(tok)?;
                counts_only = true;
            }
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    p.at_most(1)?;
    let Some(name) = p.positional().first().copied() else {
        return Err(format!(
            "blam selfint ctx: missing slot name\n{}",
            args::hint("selfint ctx")
        ));
    };
    let slot = CSLOTS.iter().find(|s| s.name == name).ok_or_else(|| {
        format!(
            "blam selfint ctx: unknown slot `{name}`\n{}",
            args::hint("selfint ctx")
        )
    })?;
    args::build_pool(threads)?;
    let cfg = args::engine_cfg("selfint ctx", None, None)?;
    let (pre, post) = split168(slot)?;
    let ref_len = slot.reference.len() as u8;
    let max_size = max_size.unwrap_or(ref_len - 1);

    // Goldens from the reference interpreter itself.
    let ref_enc = u64::from_str_radix(slot.reference, 2).expect("reference bits");
    let mut probes = Vec::new();
    let mut pool = Pool::new();
    let mut vm = Machine::new();
    let mut buf = Vec::new();
    for m in programs(n_programs) {
        let mut pr = Probe::new(&m);
        let ctx = Ctx {
            cfg,
            pre: &pre,
            post: &post,
            probes: &[],
        };
        ctx.assemble(&mut buf, &pr, ref_enc, ref_len);
        pool.clear();
        let root = pool
            .decode(&mut buf.iter().copied())
            .expect("probe decodes");
        let mut s = StringSink(String::new());
        // A program with no normal form within budget is not a probe.
        if let Ok(beta) = vm.normalize_capped(&pool, root, 1 << 20, 1 << 26, &mut s) {
            pr.golden = s.0.bytes().map(|c| c - b'0').collect();
            pr.beta = beta;
            probes.push(pr);
        }
    }
    // Cheapest probes first: most candidates die on the first one.
    probes.sort_by_key(|p| p.beta);
    let ctx = Ctx {
        cfg,
        pre: &pre,
        post: &post,
        probes: &probes,
    };
    assert_eq!(
        ctx.judge(&mut pool, &mut vm, &mut buf, ref_enc, ref_len),
        Verdict::Pass,
        "the reference must pass its own probes"
    );
    println!(
        "slot {} (frame {}: {}), reference {} bits; {} probe programs, reference beta {}..{}",
        slot.name,
        slot.frame,
        slot.names.join(" "),
        ref_len,
        probes.len(),
        probes.first().map_or(0, |p| p.beta),
        probes.last().map_or(0, |p| p.beta),
    );

    let counts = Counts::new(slot.frame, slot.must, max_size);
    let t_all = Instant::now();
    let mut all = Stats::default();
    println!(
        "{:>4} {:>16} {:>9} {:>9} {:>10}",
        "size", "candidates", "unknown", "survivors", "time_s"
    );
    for n in min_size..=max_size {
        let root = Pending {
            depth: 0,
            size: n,
            must: slot.must,
            forbid: 0,
        };
        let want = counts.get(root);
        if want == 0 {
            continue;
        }
        if counts_only {
            println!("{n:>4} {want:>16}");
            continue;
        }
        let t0 = Instant::now();
        let tasks = split_tasks(
            &counts,
            root,
            rayon::current_num_threads() * tasks_per_thread,
        );
        let st = tasks
            .par_iter()
            .map_init(
                || (Pool::new(), Machine::new(), Vec::new()),
                |(pool, vm, buf), task| {
                    let mut st = Stats::default();
                    let mut pending = task.pending.clone();
                    go(
                        &counts,
                        &mut pending,
                        task.acc,
                        task.len,
                        &mut |enc, len| {
                            st.total += 1;
                            match ctx.judge(pool, vm, buf, enc, len) {
                                Verdict::Pass => st.pass.push((enc, len)),
                                Verdict::Fail => st.fail += 1,
                                Verdict::Unknown => st.unknown.push((enc, len)),
                            }
                        },
                    );
                    st
                },
            )
            .reduce(Stats::default, Stats::merge);
        assert_eq!(
            st.total, want,
            "enumeration disagrees with the DP at size {n}"
        );
        // Escalate caps: a candidate that only ran out of budget is re-run
        // with 512x the reference's budget per probe.
        let mut st = st;
        let unknown = if st.unknown.len() <= escalate {
            std::mem::take(&mut st.unknown)
        } else {
            println!(
                "     ({} unknowns: too many to escalate, reported as capped at 8x)",
                st.unknown.len()
            );
            Vec::new()
        };
        let settled: Vec<(Verdict, (u64, u8))> = unknown
            .par_iter()
            .map_init(
                || (Pool::new(), Machine::new(), Vec::new()),
                |(pool, vm, buf), &(enc, len)| {
                    (ctx.judge_at(pool, vm, buf, enc, len, 512), (enc, len))
                },
            )
            .collect();
        for (v, c) in settled {
            match v {
                Verdict::Pass => st.pass.push(c),
                Verdict::Fail => st.fail += 1,
                Verdict::Unknown => st.unknown.push(c),
            }
        }
        println!(
            "{n:>4} {:>16} {:>9} {:>9} {:>10.1}",
            st.total,
            st.unknown.len(),
            st.pass.len(),
            t0.elapsed().as_secs_f64()
        );
        for (enc, len) in st.pass.iter().take(20) {
            println!("     SURVIVOR {len} bits  {}", enc_to_string(*enc, *len));
            println!("       spliced {}", spliced(&pre, &post, *enc, *len));
        }
        for (enc, len) in st.unknown.iter().take(5) {
            println!("     UNKNOWN  {len} bits  {}", enc_to_string(*enc, *len));
        }
        all = all.merge(st);
    }
    if !counts_only {
        println!(
            "total {} candidates in {:.1}s: {} survivors, {} unknown",
            all.total,
            t_all.elapsed().as_secs_f64(),
            all.pass.len(),
            all.unknown.len()
        );
    }
    Ok(())
}
