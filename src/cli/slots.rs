//! Exhaustive **parametric** slot search for the 170-bit BLC self-interpreter
//! (`ref/AIT/ait/int.lam`), per
//! `docs/classical/self-interpreter/search-spec.md` §1 and §4.
//!
//! The interpreter's three branch bodies sit under a stack of rigid binders:
//!
//! ```text
//! (\a. a a) (\a. (\intL. \cont \list.
//!    list (\bit0 \list1. bit0
//!       (list1 (\bit1. intL (\exp. bit1  <ABS>  <APP> )))
//!       <VAR>))
//!   (a a))
//! ```
//!
//! so a candidate for a slot is an *open* term over a frame of 8 (ABS, APP)
//! or 6 (VAR) rigid variables. We close it under those binders plus one
//! extra rigid `rest`:
//!
//! ```text
//! U(C) = \rest \a \intL \cont \list \bit0 \list1 \bit1 \exp. C rest
//! ```
//!
//! and demand that `U(C)` and `U(REF)` have the *same* β-normal form. That is
//! a proof, not evidence: β-equivalence is a congruence, so `U(C) =β U(REF)`
//! makes `C` interchangeable with `REF` under every instantiation of the frame
//! — strictly stronger than any finite family of closed test markers (the
//! marker scheme is what produced the VAR false positive that motivated the
//! spec). Applying to `rest` widens acceptance from β to βη, which only makes
//! a *negative* (optimality) result stronger; a positive one gets the full
//! splice-and-battery treatment before it is believed.
//!
//! Soundness of early rejection: KN readback emits the normal form's bits in
//! order, so any bit that already disagrees with the golden proves the normal
//! forms differ — whether or not the run would have terminated. Hitting a cap
//! is never a rejection; those candidates escalate and, if still unresolved,
//! are reported as residual unknowns.
//!
//! Usage: `blam slots (var|abs|app) [flags]` — see `USAGE` below.

use crate::args::{self, Args, R};
use blam::blc::wire::enc_to_string;
use blam::classical::escalation::{normal_form, EngineCfg, LTerm, NoNf};
use blam::classical::machine::{Machine, Node, Pool, Sink};
use blam::classical::oracle::no_nf;
use blam::classical::OutOfFuel;
use rayon::prelude::*;
use std::collections::BinaryHeap;
use std::time::Instant;

// ---------------------------------------------------------------- slot table

/// A slot of the reference interpreter, with the frame it lives under and the
/// golden normal form of its rigid closure. `must` names the frame variables
/// that occur *rigidly* in that golden normal form: β-reduction cannot invent
/// a free variable, so a candidate lacking one cannot reach the golden. That
/// is the only enumeration constraint used, and it is a theorem, not a
/// heuristic (`docs/classical/self-interpreter/search-spec.md` §4).
struct Slot {
    name: &'static str,
    /// Number of rigid frame binders in scope at the slot.
    frame: u8,
    /// Required frame-occurrence bits (bit r = frame variable at index
    /// depth+1+r, i.e. bit 0 = innermost).
    must: u8,
    /// Frame variable names, innermost first.
    names: &'static [&'static str],
    /// The reference slot's own BLC bits.
    reference: &'static str,
    /// BLC bits of the normal form of `U(reference)`.
    golden: &'static str,
}

const SLOTS: &[Slot] = &[
    // cont list1 (list1 list1 list1)          -- skipvar inlined
    Slot {
        name: "var",
        frame: 6,
        must: 0b001001, // list1 (bit 0) + cont (bit 3)
        names: &["list1", "bit0", "list", "cont", "intL", "a"],
        reference: "010111110100101101010",
        golden: "000000000000000101011111010010110101011111110",
    },
    // cont (\args \arg. exp (\zx \zy. zx arg (zy args)))    -- cons' inlined
    Slot {
        name: "abs",
        frame: 8,
        must: 0b00100001, // exp (bit 0) + cont (bit 5)
        names: &["exp", "bit1", "list1", "bit0", "list", "cont", "intL", "a"],
        reference: "0111111100000011110000001011101110011011110",
        golden: "0000000000000000000101111111000000111100000010111011100110111101111111110",
    },
    // intL (\exp2. cont (\args. exp args (exp2 args)))
    Slot {
        name: "app",
        frame: 8,
        must: 0b01100001, // exp (bit 0) + cont (bit 5) + intL (bit 6)
        names: &["exp", "bit1", "list1", "bit0", "list", "cont", "intL", "a"],
        reference: "01111111100001111111100001011110100111010",
        golden: "00000000000000000001011111111000011111111000010111101001110101111111110",
    },
];

// --------------------------------------------------- obligation-aware enumerator

/// One outstanding subterm to generate: `size` bits at candidate-local binder
/// `depth`, which must mention every frame variable in `must` and none in
/// `forbid`. `v = frame + depth` free indices are addressable.
#[derive(Clone, Copy, PartialEq, Eq, Hash, Debug)]
struct Pending {
    depth: u8,
    size: u8,
    must: u8,
    forbid: u8,
}

/// The occurrence bit a variable leaf of BLC size `n` contributes at `depth`,
/// or `None` if the index is out of range. `Some(0)` = candidate-local binder.
#[inline(always)]
fn occurrence(frame: u8, depth: u8, n: u8) -> Option<u8> {
    let i = n - 1; // 1-based de Bruijn index
    if i > frame + depth {
        return None;
    }
    Some(if i <= depth { 0 } else { 1 << (i - depth - 1) })
}

#[inline(always)]
fn leaf_ok(frame: u8, p: Pending) -> bool {
    if p.size < 2 {
        return false;
    }
    match occurrence(frame, p.depth, p.size) {
        None => false,
        Some(occ) => occ & p.forbid == 0 && p.must & !occ == 0,
    }
}

/// Dense saturating DP over exactly the enumerator's recurrence.
///
/// It pays for itself twice over: it weights the rayon task split, and — the
/// reason it is *dense* and not a `HashMap` — `go` consults it before every
/// branch. Without that, the obligation split explodes: an App node offers
/// `2^|must|` partitions at each of ~n/2 size splits, and nearly all of them
/// are dead (you cannot fit `exp`, `cont` and `intL` into a 2-bit subterm).
/// The enumerator then spends its whole life walking subtrees that emit
/// nothing. Zero-count pruning is what makes the sweep linear in *output*.
struct Counts {
    frame: u8,
    /// mask (subset of the root's must) -> dense index
    idx: [u8; 256],
    nsub: usize,
    depths: usize,
    tbl: Vec<u64>,
}

const MAX_DEPTH: usize = 24;

impl Counts {
    fn new(frame: u8, m0: u8, max_size: u8) -> Self {
        // Both `must` and `forbid` only ever range over subsets of the root's
        // must-mask, so the dense axes are tiny (2^|m0| each).
        let mut subs: Vec<u8> = Vec::new();
        let mut s = m0;
        loop {
            subs.push(s);
            if s == 0 {
                break;
            }
            s = (s - 1) & m0;
        }
        subs.sort_unstable();
        let mut idx = [0u8; 256];
        for (i, &m) in subs.iter().enumerate() {
            idx[m as usize] = i as u8;
        }
        let nsub = subs.len();
        let depths = MAX_DEPTH + 1;
        let sizes = max_size as usize + 1;
        let mut c = Counts {
            frame,
            idx,
            nsub,
            depths,
            tbl: vec![0; sizes * depths * nsub * nsub],
        };
        for size in 2..=max_size {
            for depth in 0..=MAX_DEPTH as u8 {
                for &must in &subs {
                    for &forbid in &subs {
                        let p = Pending {
                            depth,
                            size,
                            must,
                            forbid,
                        };
                        let v = c.compute(p);
                        let i = c.slot(p);
                        c.tbl[i] = v;
                    }
                }
            }
        }
        c
    }

    #[inline(always)]
    fn slot(&self, p: Pending) -> usize {
        ((p.size as usize * self.depths + p.depth as usize) * self.nsub
            + self.idx[p.must as usize] as usize)
            * self.nsub
            + self.idx[p.forbid as usize] as usize
    }

    #[inline(always)]
    fn get(&self, p: Pending) -> u64 {
        if p.size < 2 || p.depth as usize > MAX_DEPTH {
            return 0;
        }
        self.tbl[self.slot(p)]
    }

    /// One step of the recurrence, reading already-filled smaller sizes.
    fn compute(&self, p: Pending) -> u64 {
        let n = p.size;
        let mut tot = leaf_ok(self.frame, p) as u64;
        if n >= 4 {
            tot += self.get(Pending {
                depth: p.depth + 1,
                size: n - 2,
                ..p
            });
        }
        for lsz in 2..=n.saturating_sub(4) {
            let rsz = n - 2 - lsz;
            let mut s = p.must;
            loop {
                let rest = p.must & !s;
                let l = self.get(Pending {
                    depth: p.depth,
                    size: lsz,
                    must: s,
                    forbid: p.forbid | rest,
                });
                if l != 0 {
                    tot += l * self.get(Pending {
                        depth: p.depth,
                        size: rsz,
                        must: rest,
                        forbid: p.forbid,
                    });
                }
                if s == 0 {
                    break;
                }
                s = (s - 1) & p.must;
            }
        }
        tot
    }

    fn task_count(&self, t: &Task) -> u64 {
        t.pending.iter().map(|&p| self.get(p)).product()
    }
}

/// Enumerate every term satisfying the obligation stack, calling `f(bits, len)`.
fn go(c: &Counts, pending: &mut Vec<Pending>, acc: u64, len: u8, f: &mut impl FnMut(u64, u8)) {
    let Some(p) = pending.pop() else {
        f(acc, len);
        return;
    };
    let n = p.size;
    // Variable: 1^(n-1) 0
    if leaf_ok(c.frame, p) {
        let bits = ((1u64 << (n - 1)) - 1) << 1;
        go(c, pending, acc << n | bits, len + n, f);
    }
    // Abstraction: 00 body — obligations pass through unchanged.
    if n >= 4 {
        let q = Pending {
            depth: p.depth + 1,
            size: n - 2,
            ..p
        };
        if c.get(q) != 0 {
            pending.push(q);
            go(c, pending, acc << 2, len + 2, f);
            pending.pop();
        }
    }
    // Application: 01 left right. Each required variable either occurs on the
    // left (then it is in S, and the right is left unconstrained) or does not
    // (then it is forbidden left and required right). That makes the partition
    // of `must` unique, so no term is generated twice.
    for lsz in 2..=n.saturating_sub(4) {
        let rsz = n - 2 - lsz;
        let mut s = p.must;
        loop {
            let rest = p.must & !s;
            let r = Pending {
                depth: p.depth,
                size: rsz,
                must: rest,
                forbid: p.forbid,
            };
            let l = Pending {
                depth: p.depth,
                size: lsz,
                must: s,
                forbid: p.forbid | rest,
            };
            if c.get(l) != 0 && c.get(r) != 0 {
                pending.push(r);
                pending.push(l);
                go(c, pending, acc << 2 | 1, len + 2, f);
                pending.pop();
                pending.pop();
            }
            if s == 0 {
                break;
            }
            s = (s - 1) & p.must;
        }
    }
    pending.push(p);
}

// -------------------------------------------------------------- task splitting

#[derive(Clone)]
struct Task {
    pending: Vec<Pending>,
    acc: u64,
    len: u8,
}

/// One level of `go`'s branch structure, as tasks. Kept in lockstep with `go`
/// by the `split_covers_exactly` test rather than by shared code.
fn expand(c: &Counts, t: &Task) -> Vec<Task> {
    let mut pending = t.pending.clone();
    let Some(p) = pending.pop() else {
        return Vec::new();
    };
    let n = p.size;
    let mut out = Vec::new();
    if leaf_ok(c.frame, p) {
        let bits = ((1u64 << (n - 1)) - 1) << 1;
        out.push(Task {
            pending: pending.clone(),
            acc: t.acc << n | bits,
            len: t.len + n,
        });
    }
    if n >= 4 {
        let q = Pending {
            depth: p.depth + 1,
            size: n - 2,
            ..p
        };
        if c.get(q) != 0 {
            let mut v = pending.clone();
            v.push(q);
            out.push(Task {
                pending: v,
                acc: t.acc << 2,
                len: t.len + 2,
            });
        }
    }
    for lsz in 2..=n.saturating_sub(4) {
        let rsz = n - 2 - lsz;
        let mut s = p.must;
        loop {
            let rest = p.must & !s;
            let r = Pending {
                depth: p.depth,
                size: rsz,
                must: rest,
                forbid: p.forbid,
            };
            let l = Pending {
                depth: p.depth,
                size: lsz,
                must: s,
                forbid: p.forbid | rest,
            };
            if c.get(l) != 0 && c.get(r) != 0 {
                let mut v = pending.clone();
                v.push(r);
                v.push(l);
                out.push(Task {
                    pending: v,
                    acc: t.acc << 2 | 1,
                    len: t.len + 2,
                });
            }
            if s == 0 {
                break;
            }
            s = (s - 1) & p.must;
        }
    }
    out
}

/// Split the enumeration into ~`target` tasks by repeatedly expanding the
/// heaviest one (DP-weighted), which balances far better than expanding the
/// frontier level by level: the App fan-out makes subtree sizes span orders
/// of magnitude at every depth.
fn split_tasks(c: &Counts, root: Pending, target: usize) -> Vec<Task> {
    let mut store = vec![Task {
        pending: vec![root],
        acc: 0,
        len: 0,
    }];
    let mut dead = vec![false];
    let mut heap: BinaryHeap<(u64, usize)> = BinaryHeap::new();
    let c0 = c.task_count(&store[0]);
    if c0 == 0 {
        return Vec::new();
    }
    heap.push((c0, 0));
    let mut live = 1usize;
    while live < target {
        let Some((w, idx)) = heap.pop() else { break };
        if w <= 1 {
            break; // everything left is a single term
        }
        let children = expand(c, &store[idx]);
        if children.is_empty() {
            continue; // count>1 with no live child is impossible, but don't trust it
        }
        dead[idx] = true;
        live += children.len() - 1;
        for ch in children {
            let w = c.task_count(&ch);
            store.push(ch);
            dead.push(false);
            heap.push((w, store.len() - 1));
        }
    }
    store
        .into_iter()
        .zip(dead)
        .filter(|(_, d)| !d)
        .map(|(t, _)| t)
        .collect()
}

// ------------------------------------------------------------- closing + probe

/// Incremental comparison against the golden bit stream. Stops the machine at
/// the first disagreement (`Sink::CAN_ABORT`), rejects an extra bit past the
/// golden, and only reports success when the run ends exactly at its length.
struct Cmp<'a> {
    g: &'a [u8],
    pos: usize,
    bad: bool,
}

impl Cmp<'_> {
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
    #[inline(always)]
    fn matched(&self) -> bool {
        !self.bad && self.pos == self.g.len()
    }
}

impl Sink for Cmp<'_> {
    const CAN_ABORT: bool = true;
    #[inline(always)]
    fn zero(&mut self) {
        self.bit(0);
    }
    #[inline(always)]
    fn one(&mut self) {
        self.bit(1);
    }
    /// O(1) in practice as the contract demands: the loop cannot outrun the
    /// golden's remaining `1` run (≤ 10 bits) before `bad` short-circuits it.
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

enum P {
    Lam,
    App0,
    App1(u32),
}

/// Decode `C` into the pool and close it: `\rest \...frame. C rest`.
/// Reuses `work` so the hot loop allocates nothing per candidate.
fn close(pool: &mut Pool, work: &mut Vec<P>, frame: u8, enc: u64, len: u8) -> u32 {
    pool.clear();
    work.clear();
    let mut bit = len as i32;
    let root = 'outer: loop {
        bit -= 1;
        let mut done = if enc >> bit & 1 == 0 {
            bit -= 1;
            if enc >> bit & 1 == 0 {
                work.push(P::Lam);
            } else {
                work.push(P::App0);
            }
            continue;
        } else {
            let mut n = 1u32;
            loop {
                bit -= 1;
                if enc >> bit & 1 == 1 {
                    n += 1;
                } else {
                    break;
                }
            }
            pool.push(Node::Var(n))
        };
        loop {
            match work.pop() {
                None => break 'outer done,
                Some(P::Lam) => done = pool.push(Node::Lam(done)),
                Some(P::App0) => {
                    work.push(P::App1(done));
                    break;
                }
                Some(P::App1(f)) => done = pool.push(Node::App(f, done)),
            }
        }
    };
    debug_assert_eq!(bit, 0);
    // `rest` is one past the frame; C's own indices 1..frame still address
    // the frame binders, so no shifting is needed.
    let rest = pool.push(Node::Var(frame as u32 + 1));
    let mut t = pool.push(Node::App(root, rest));
    for _ in 0..=frame {
        t = pool.push(Node::Lam(t));
    }
    t
}

// Rung 1: the spec's recommended first rung for a ~73-bit closure.
/// Engine settings, resolved and VALIDATED once at startup (env
/// fallback, then the library defaults) by [`resolve_engine_cfg`]. The
/// slot search exposes no knob flags, so the environment is the only
/// channel — and a nonsense `BLC_WORK_MULT` there is still exit 2.
static ENGINE: std::sync::OnceLock<EngineCfg> = std::sync::OnceLock::new();

fn resolve_engine_cfg() -> R<()> {
    let _ = ENGINE.set(args::engine_cfg("slots", None, None)?);
    Ok(())
}

fn engine_cfg() -> EngineCfg {
    *ENGINE.get().expect("resolved at startup")
}

const BETA1: u64 = 256;
const TRANS1: u64 = 16_384;
// Rung 2: a cheap second look before the expensive proof machinery. Escalation
// is where all the time goes (a rung-1 cap costs ~10^4 transitions; a rung-3
// cap costs ~10^6), so the ladder is shaped to keep the expensive rungs rare.
const BETA2: u64 = 4_096;
const TRANS2: u64 = 262_144;
// Rung 3: last KN attempt before declaring an honest unknown.
const BETA3: u64 = 1 << 20;
const TRANS3: u64 = 1 << 22;
const BB_CAP: i64 = 2_000_000;

#[derive(PartialEq, Eq, Clone, Copy, Debug)]
enum Verdict {
    Match,
    Mismatch,
    /// Proved to have no normal form (oracle or escalation engine) — so it
    /// cannot equal the golden, and the exhaustiveness claim survives.
    Diverge,
    Unknown,
}

#[allow(clippy::too_many_arguments)]
fn adjudicate(
    pool: &mut Pool,
    vm: &mut Machine,
    work: &mut Vec<P>,
    slot: &Slot,
    golden: &[u8],
    enc: u64,
    len: u8,
    esc: &mut [u64; 4],
) -> Verdict {
    let root = close(pool, work, slot.frame, enc, len);
    macro_rules! rung {
        ($b:expr, $t:expr) => {
            let mut cmp = Cmp {
                g: golden,
                pos: 0,
                bad: false,
            };
            match vm.normalize_capped(pool, root, $b, $t, &mut cmp) {
                Ok(_) => {
                    return if cmp.matched() {
                        Verdict::Match
                    } else {
                        Verdict::Mismatch
                    }
                }
                Err(OutOfFuel::Aborted) => return Verdict::Mismatch,
                Err(_) => {}
            }
        };
    }
    rung!(BETA1, TRANS1);
    // Capped without ever disagreeing: the emitted prefix still matches the
    // golden, so this one owes a real verdict — a cap is never a rejection.
    esc[0] += 1;
    // The syntactic divergence oracle is orders of magnitude cheaper than
    // another machine run, and catches the common W-shaped loops outright.
    if no_nf(0, (&*pool, root)) {
        return Verdict::Diverge;
    }
    esc[1] += 1;
    rung!(BETA2, TRANS2);
    esc[2] += 1;
    // The escalation engine carries the self-feedback certificate, so it
    // decides loops the syntactic oracle alone cannot.
    // Engine settings resolve env → default once at the CLI layer; the
    // slot search exposes no knob flags (its budgets are its own consts).
    match normal_form(engine_cfg(), BB_CAP, &LTerm::from_pool(pool, root)) {
        Err(NoNf::Diverge { .. }) => return Verdict::Diverge,
        Ok(nf) if nf.bit_size() != golden.len() as u64 => return Verdict::Mismatch,
        _ => {}
    }
    esc[3] += 1;
    rung!(BETA3, TRANS3);
    Verdict::Unknown
}

// ------------------------------------------------------------------ reporting

#[derive(Default, Clone)]
struct Stats {
    total: u64,
    mismatch: u64,
    diverge: u64,
    /// How many candidates reached each escalation rung (rung1 cap, post-oracle,
    /// rung2 cap, post-bb-engine).
    esc: [u64; 4],
    matches: Vec<(u64, u8)>,
    unknowns: Vec<(u64, u8)>,
}

impl Stats {
    fn merge(mut self, o: Stats) -> Stats {
        self.total += o.total;
        self.mismatch += o.mismatch;
        self.diverge += o.diverge;
        for i in 0..4 {
            self.esc[i] += o.esc[i];
        }
        self.matches.extend(o.matches);
        self.unknowns.extend(o.unknowns);
        self
    }
    fn record(&mut self, v: Verdict, enc: u64, len: u8) {
        self.total += 1;
        match v {
            Verdict::Match => self.matches.push((enc, len)),
            Verdict::Mismatch => self.mismatch += 1,
            Verdict::Diverge => self.diverge += 1,
            Verdict::Unknown => self.unknowns.push((enc, len)),
        }
    }
}

fn bits_of(s: &str) -> Vec<u8> {
    s.bytes().map(|c| c - b'0').collect()
}

/// Render with the slot's frame names and fresh local binder names.
fn render(slot: &Slot, enc: u64, len: u8) -> String {
    let mut pool = Pool::new();
    let mut work = Vec::new();
    // reuse `close`'s decoder but keep only the candidate root
    let closed = close(&mut pool, &mut work, slot.frame, enc, len);
    // closed = frame+1 lambdas over App(C, rest); peel them off
    let mut t = closed;
    for _ in 0..=slot.frame {
        t = match pool.node(t) {
            Node::Lam(b) => b,
            _ => unreachable!(),
        };
    }
    let c = match pool.node(t) {
        Node::App(f, _) => f,
        _ => unreachable!(),
    };
    fn local(d: usize) -> String {
        const LOCAL: [&str; 8] = ["p", "q", "r", "s", "t", "u", "v", "w"];
        if d < 8 {
            LOCAL[d].to_string()
        } else {
            format!("x{d}")
        }
    }
    fn pp(pool: &Pool, slot: &Slot, id: u32, depth: usize, prec: u8, out: &mut String) {
        match pool.node(id) {
            Node::Var(n) => {
                let i = n as usize;
                if i <= depth {
                    out.push_str(&local(depth - i));
                } else {
                    out.push_str(slot.names[i - depth - 1]);
                }
            }
            Node::Lam(_) => {
                if prec > 0 {
                    out.push('(');
                }
                out.push('\\');
                let mut b = id;
                let mut d = depth;
                while let Node::Lam(x) = pool.node(b) {
                    out.push_str(&local(d));
                    out.push(' ');
                    d += 1;
                    b = x;
                }
                out.push_str(". ");
                pp(pool, slot, b, d, 0, out);
                if prec > 0 {
                    out.push(')');
                }
            }
            Node::App(f, a) => {
                if prec > 1 {
                    out.push('(');
                }
                pp(pool, slot, f, depth, 1, out);
                out.push(' ');
                pp(pool, slot, a, depth, 2, out);
                if prec > 1 {
                    out.push(')');
                }
            }
        }
    }
    let mut s = String::new();
    pp(&pool, slot, c, 0, 0, &mut s);
    s
}

const USAGE: &str = "\
blam slots — exhaustive parametric slot search for the self-interpreter

usage: blam slots (var|abs|app) [flags]

  --min-size N    smallest candidate size in bits (default 2)
  --max-size N    largest candidate size (default: the reference's size)
  --tasks N       generation tasks per thread (default 64)
  --counts-only   print the enumeration-count table and stop
  --dump FILE     write MATCH / UNKNOWN survivors to FILE";

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut min_size: u8 = 2;
    let mut max_size: Option<u8> = None;
    let mut tasks_per_thread = 64usize;
    let mut counts_only = false;
    let mut dump: Option<String> = None;
    let mut p = Args::new("slots", argv);
    while let Some(tok) = p.next() {
        match tok {
            "--min-size" => min_size = p.num(tok)?,
            "--max-size" => max_size = Some(p.num(tok)?),
            "--tasks" => tasks_per_thread = p.num(tok)?,
            "--dump" => dump = Some(p.value(tok)?.to_string()),
            "--counts-only" => {
                p.flag(tok)?;
                counts_only = true;
            }
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    p.at_most(1)?;
    let Some(slot_name) = p.positional().first().copied() else {
        return Err(format!(
            "blam slots: missing slot name (var | abs | app)\n{}",
            args::hint("slots")
        ));
    };
    let Some(slot) = SLOTS.iter().find(|s| s.name == slot_name) else {
        return Err(format!(
            "blam slots: unknown slot `{slot_name}` (expected var, abs, or app)\n{}",
            args::hint("slots")
        ));
    };
    resolve_engine_cfg()?;
    // The dump is a full-run product; prove its path writable now.
    let mut dump_file = match &dump {
        Some(path) => Some(crate::out::create("slots", "--dump", path)?),
        None => None,
    };
    let golden = bits_of(slot.golden);
    let ref_size = slot.reference.len() as u8;
    let max_size = max_size.unwrap_or(ref_size);

    // ---- soundness canary: the reference must pass its own harness.
    {
        let mut pool = Pool::new();
        let mut vm = Machine::new();
        let mut work = Vec::new();
        let enc = u64::from_str_radix(slot.reference, 2).unwrap();
        let v = adjudicate(
            &mut pool,
            &mut vm,
            &mut work,
            slot,
            &golden,
            enc,
            ref_size,
            &mut [0; 4],
        );
        assert_eq!(v, Verdict::Match, "reference slot failed its own harness");
        println!(
            "slot {}: frame {}, reference {} bits, golden nf {} bits, must-mask {:#010b}",
            slot.name,
            slot.frame,
            ref_size,
            golden.len(),
            slot.must
        );
        println!("  reference: {}", render(slot, enc, ref_size));
        println!("  canary: reference reproduces the golden normal form (PASS)");
    }

    let counts = Counts::new(slot.frame, slot.must, max_size);
    let naive_counts = Counts::new(slot.frame, 0, max_size);
    println!(
        "\n{:>4} {:>18} {:>18} {:>7}",
        "size", "naive(frame)", "pruned(must)", "ratio"
    );
    let (mut tn, mut tp) = (0u64, 0u64);
    for n in min_size..=max_size {
        let naive = naive_counts.get(Pending {
            depth: 0,
            size: n,
            must: 0,
            forbid: 0,
        });
        let pruned = counts.get(Pending {
            depth: 0,
            size: n,
            must: slot.must,
            forbid: 0,
        });
        tn += naive;
        tp += pruned;
        println!(
            "{:>4} {:>18} {:>18} {:>7}",
            n,
            naive,
            pruned,
            if pruned == 0 {
                "-".to_string()
            } else {
                format!("{:.0}x", naive as f64 / pruned as f64)
            }
        );
    }
    println!(
        "{:>4} {:>18} {:>18} {:>6.0}x",
        "sum",
        tn,
        tp,
        tn as f64 / tp.max(1) as f64
    );
    if counts_only {
        return Ok(());
    }

    println!(
        "\nthreads {}, rung1 beta {} trans {}, rung2 beta {} trans {}",
        rayon::current_num_threads(),
        BETA1,
        TRANS1,
        BETA2,
        TRANS2
    );
    println!(
        "\n{:>4} {:>18} {:>14} {:>10} {:>9} {:>9} {:>12}",
        "size", "candidates", "mismatch", "diverge", "unknown", "survivors", "time_s"
    );
    let t_all = Instant::now();
    let mut all = Stats::default();
    for n in min_size..=max_size {
        let root = Pending {
            depth: 0,
            size: n,
            must: slot.must,
            forbid: 0,
        };
        if counts.get(root) == 0 {
            continue;
        }
        let t0 = Instant::now();
        let target = rayon::current_num_threads() * tasks_per_thread;
        let tasks = split_tasks(&counts, root, target);
        let stats = tasks
            .par_iter()
            .map_init(
                || (Pool::new(), Machine::new(), Vec::new()),
                |(pool, vm, work), task| {
                    let mut st = Stats::default();
                    let mut esc = [0u64; 4];
                    let mut pending = task.pending.clone();
                    go(
                        &counts,
                        &mut pending,
                        task.acc,
                        task.len,
                        &mut |enc, len| {
                            let v = adjudicate(pool, vm, work, slot, &golden, enc, len, &mut esc);
                            st.record(v, enc, len);
                        },
                    );
                    st.esc = esc;
                    st
                },
            )
            .reduce(Stats::default, Stats::merge);
        let secs = t0.elapsed().as_secs_f64();
        assert_eq!(
            stats.total,
            counts.get(root),
            "enumerated count disagrees with the DP at size {n}"
        );
        println!(
            "{:>4} {:>18} {:>14} {:>10} {:>9} {:>9} {:>12.2}   esc {:?}",
            n,
            stats.total,
            stats.mismatch,
            stats.diverge,
            stats.unknowns.len(),
            stats.matches.len(),
            secs,
            stats.esc
        );
        for (enc, len) in &stats.matches {
            println!(
                "     SURVIVOR {:>3} bits  {}   {}",
                len,
                enc_to_string(*enc, *len),
                render(slot, *enc, *len)
            );
        }
        for (enc, len) in stats.unknowns.iter().take(8) {
            println!(
                "     UNKNOWN  {:>3} bits  {}",
                len,
                enc_to_string(*enc, *len)
            );
        }
        all = all.merge(stats);
    }
    println!(
        "\ntotal {} candidates in {:.1}s: {} mismatch, {} proved divergent, {} unknown, {} survivors",
        all.total,
        t_all.elapsed().as_secs_f64(),
        all.mismatch,
        all.diverge,
        all.unknowns.len(),
        all.matches.len()
    );
    if let (Some(path), Some(f)) = (&dump, dump_file.as_mut()) {
        use std::fmt::Write as _;
        let mut body = String::new();
        for (enc, len) in &all.matches {
            let _ = writeln!(body, "MATCH {}", enc_to_string(*enc, *len));
        }
        for (enc, len) in &all.unknowns {
            let _ = writeln!(body, "UNKNOWN {}", enc_to_string(*enc, *len));
        }
        crate::out::write_all("slots", path, f, body.as_bytes())?;
    }
    let sub: Vec<_> = all.matches.iter().filter(|(_, l)| *l < ref_size).collect();
    if sub.is_empty() && all.unknowns.is_empty() {
        println!(
            "VERDICT: the reference {} slot is exhaustively optimal at <= {} bits \
             ({} survivor(s) at {} bits, no residual unknowns)",
            slot.name,
            ref_size,
            all.matches.len(),
            ref_size
        );
    } else if !sub.is_empty() {
        println!(
            "VERDICT: {} sub-reference survivor(s) -- VERIFY BEFORE BELIEVING",
            sub.len()
        );
    } else {
        println!(
            "VERDICT: incomplete -- {} residual unknowns",
            all.unknowns.len()
        );
    }
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;

    fn enumerate(frame: u8, root: Pending) -> Vec<(u64, u8)> {
        let c = Counts::new(frame, root.must, root.size);
        let mut out = Vec::new();
        let mut pending = vec![root];
        go(&c, &mut pending, 0, 0, &mut |e, l| out.push((e, l)));
        out.sort_unstable();
        out
    }

    /// The occurrence mask a *generated* term actually has — computed from the
    /// decoded syntax, independent of the obligation threading.
    fn actual_mask(frame: u8, e: u64, l: u8) -> u8 {
        let mut pool = Pool::new();
        let mut work = Vec::new();
        let mut t = close(&mut pool, &mut work, frame, e, l);
        for _ in 0..=frame {
            t = match pool.node(t) {
                Node::Lam(b) => b,
                _ => unreachable!(),
            };
        }
        let c = match pool.node(t) {
            Node::App(f, _) => f,
            _ => unreachable!(),
        };
        let mut mask = 0u8;
        let mut stack = vec![(c, 0u8)];
        while let Some((id, d)) = stack.pop() {
            match pool.node(id) {
                Node::Var(k) => {
                    if let Some(o) = occurrence(frame, d, k as u8 + 1) {
                        mask |= o;
                    }
                }
                Node::Lam(b) => stack.push((b, d + 1)),
                Node::App(f, a) => {
                    stack.push((f, d));
                    stack.push((a, d));
                }
            }
        }
        mask
    }

    /// Brute force: enumerate with no obligations, then filter by the actual
    /// occurrence mask of the generated term. This is the ground truth the
    /// threaded obligations must reproduce.
    fn brute(frame: u8, n: u8, must: u8) -> Vec<(u64, u8)> {
        let mut out: Vec<(u64, u8)> = enumerate(
            frame,
            Pending {
                depth: 0,
                size: n,
                must: 0,
                forbid: 0,
            },
        )
        .into_iter()
        .filter(|&(e, l)| must & !actual_mask(frame, e, l) == 0)
        .collect();
        out.sort_unstable();
        out
    }

    #[test]
    fn obligations_match_brute_force() {
        for frame in [6u8, 8] {
            for must in [0u8, 0b1, 0b100001, 0b1100001] {
                let must = must & ((1u16 << frame) - 1) as u8;
                for n in 2..=17u8 {
                    let via = enumerate(
                        frame,
                        Pending {
                            depth: 0,
                            size: n,
                            must,
                            forbid: 0,
                        },
                    );
                    assert_eq!(
                        via,
                        brute(frame, n, must),
                        "frame={frame} must={must} n={n}"
                    );
                }
            }
        }
    }

    #[test]
    fn dp_matches_enumeration() {
        for frame in [6u8, 8] {
            for must in [0u8, 0b100001] {
                let c = Counts::new(frame, must, 20);
                for n in 2..=20u8 {
                    let p = Pending {
                        depth: 0,
                        size: n,
                        must,
                        forbid: 0,
                    };
                    assert_eq!(c.get(p) as usize, enumerate(frame, p).len());
                }
            }
        }
    }

    /// The published regression values from
    /// `docs/classical/self-interpreter/search-spec.md` §4.
    #[test]
    fn spec_regression_counts() {
        let sum = |must: u8, hi: u8| -> u64 {
            let c = Counts::new(8, must, hi);
            (2..=hi)
                .map(|n| {
                    c.get(Pending {
                        depth: 0,
                        size: n,
                        must,
                        forbid: 0,
                    })
                })
                .sum()
        };
        assert_eq!(sum(0, 40), 4_299_963_246);
        assert_eq!(sum(0, 42), 15_388_221_349);
        assert_eq!(sum(0b00100001, 42), 740_485_972);
        assert_eq!(sum(0b01100001, 40), 5_120_164);
    }

    #[test]
    fn split_covers_exactly() {
        for frame in [6u8, 8] {
            for must in [0u8, 0b100001] {
                for n in [12u8, 17, 21] {
                    let root = Pending {
                        depth: 0,
                        size: n,
                        must,
                        forbid: 0,
                    };
                    let c = Counts::new(frame, must, n);
                    let direct = enumerate(frame, root);
                    for target in [1usize, 7, 64, 1000] {
                        let mut via = Vec::new();
                        for t in split_tasks(&c, root, target) {
                            let mut pending = t.pending.clone();
                            go(&c, &mut pending, t.acc, t.len, &mut |e, l| via.push((e, l)));
                        }
                        via.sort_unstable();
                        assert_eq!(
                            via, direct,
                            "frame={frame} must={must} n={n} target={target}"
                        );
                    }
                }
            }
        }
    }

    #[test]
    fn reference_slots_are_survivors() {
        for slot in SLOTS {
            let golden = bits_of(slot.golden);
            let enc = u64::from_str_radix(slot.reference, 2).unwrap();
            let mut pool = Pool::new();
            let mut vm = Machine::new();
            let mut work = Vec::new();
            assert_eq!(
                adjudicate(
                    &mut pool,
                    &mut vm,
                    &mut work,
                    slot,
                    &golden,
                    enc,
                    slot.reference.len() as u8,
                    &mut [0; 4]
                ),
                Verdict::Match,
                "{}",
                slot.name
            );
        }
    }

    /// Positive control: the harness must accept terms that are *β-equal* to
    /// the reference without being it. Wrapping in an identity redex is the
    /// cheapest such witness. Without this, a harness that silently compared
    /// input bits would look just as green as one that normalizes.
    #[test]
    fn beta_variants_of_the_reference_also_pass() {
        for slot in SLOTS {
            let golden = bits_of(slot.golden);
            // (\x. x) REF
            let s = format!("010010{}", slot.reference);
            let enc = u64::from_str_radix(&s, 2).unwrap();
            let mut pool = Pool::new();
            let mut vm = Machine::new();
            let mut work = Vec::new();
            assert_eq!(
                adjudicate(
                    &mut pool,
                    &mut vm,
                    &mut work,
                    slot,
                    &golden,
                    enc,
                    s.len() as u8,
                    &mut [0; 4]
                ),
                Verdict::Match,
                "{}",
                slot.name
            );
        }
    }

    /// Differential check of the whole adjudication path (decode, close, early
    /// abort, comparison) against a plain full normalization with no early
    /// exit: `Match` must hold exactly when the streamed normal form equals
    /// the golden.
    #[test]
    fn adjudication_agrees_with_full_normalization() {
        use blam::classical::machine::StringSink;
        for slot in SLOTS {
            let golden = bits_of(slot.golden);
            let hi = if slot.frame == 6 {
                slot.reference.len() as u8
            } else {
                28
            };
            let c = Counts::new(slot.frame, slot.must, hi);
            let mut pool = Pool::new();
            let mut vm = Machine::new();
            let mut work = Vec::new();
            let mut checked = 0u64;
            for n in 2..=hi {
                let root = Pending {
                    depth: 0,
                    size: n,
                    must: slot.must,
                    forbid: 0,
                };
                if c.get(root) == 0 {
                    continue;
                }
                let mut pending = vec![root];
                let mut items = Vec::new();
                go(&c, &mut pending, 0, 0, &mut |e, l| items.push((e, l)));
                for (e, l) in items {
                    let v = adjudicate(
                        &mut pool,
                        &mut vm,
                        &mut work,
                        slot,
                        &golden,
                        e,
                        l,
                        &mut [0; 4],
                    );
                    let id = close(&mut pool, &mut work, slot.frame, e, l);
                    let mut s = StringSink::default();
                    let Ok(_) = vm.normalize_capped(&pool, id, 1 << 16, 1 << 20, &mut s) else {
                        continue; // no normal form within budget; nothing to compare
                    };
                    checked += 1;
                    assert_eq!(
                        v == Verdict::Match,
                        s.0 == slot.golden,
                        "{} disagreed on {}",
                        slot.name,
                        enc_to_string(e, l)
                    );
                }
            }
            assert!(checked > 100, "{}: too few comparisons", slot.name);
        }
    }

    /// The reference slot must also be *reachable*: its own occurrence mask
    /// has to satisfy the must-mask, or the search would silently skip it.
    #[test]
    fn reference_slots_satisfy_their_must_mask() {
        for slot in SLOTS {
            let enc = u64::from_str_radix(slot.reference, 2).unwrap();
            let len = slot.reference.len() as u8;
            let mask = actual_mask(slot.frame, enc, len);
            assert_eq!(
                slot.must & !mask,
                0,
                "{}: must={:#b} not covered by actual mask {:#b}",
                slot.name,
                slot.must,
                mask
            );
        }
    }
}
