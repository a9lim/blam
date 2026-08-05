//! qcomplement: phase 2 of the dyadicity decision instrument — the exact
//! radical aggregate of the non-λ⁵ complement, 46..53 (gaslamp thread
//! `qblc-omega-witnesses`, rounds 2–3).
//!
//! Phase 1 (`qradical`) decided the idiom sector: the √2-coefficient of
//! Σ_success is exactly 0 for 46..52 and −1/4 at n=53 (unique witness
//! P53). This bin sweeps everything else: closed programs with k < 5
//! leading lambdas, whose signature arguments are consumed partly by the
//! leading binders (the first k, in application order h meas new cnot t)
//! and partly by whatever the body reduces to. The population is the
//! problem: 933,062,632,336 complement programs across 46..53 (exact DP,
//! anchored bit-identically to the qcensus 4..41 total and qradical's
//! n=53 idiom enumeration; rung-0 survivor counts independently
//! DP-verified by Codex) — 36× phase 1's enumeration. The protocol:
//!
//! - **Rung 0** (syntactic, one O(n) bit-walk): leading-λ count k comes
//!   from the packed encoding's leading zeros (λᵏ = 2k zeros; a non-λ
//!   body adds exactly one more for an app head, none for a var head, so
//!   k = lz/2 either way). k ≥ 5 → phase 1's population, skipped. For
//!   k ≥ 1, REJECT if a consumed REQUIRED argument's binder is
//!   unreferenced in the body — the provenance lemma (β duplicates
//!   origins, never conjures them): no occurrence ⇒ that primitive never
//!   fires ⇒ no H / no measurement / no allocation ⇒ every branch mass
//!   dyadic. Required = {h, meas, new, t} ∩ consumed: k=1 {h}, k=2
//!   {h,meas}, k=3 {h,meas,new}, k=4 {h,meas,new} (cnot consumed but not
//!   required). Nothing is assumed about stack arguments — t sits on the
//!   stack for every k ≤ 4 and gets no test. Rejects contribute exactly
//!   0 to the √2 coefficient (which is therefore sector-complete) but
//!   CAN halt with dyadic mass, so the rational subtotal is
//!   survivors-only, stated as such.
//! - **The sweep rung** (concrete, hunt budgets β=512/trans=2²⁰): a
//!   program whose tree fully resolves (all leaves Halt/Err) contributes
//!   its exact per-program Σ_success — concrete resolution needs no
//!   abstraction and no necessity lemma, and *terminal stability* makes
//!   the tree budget-independent [Codex r3 audit: a resolved tree is
//!   bit-identical at every larger budget; partial trees do NOT extend,
//!   which is why unresolved programs contribute nothing here].
//!   Unresolved programs are counted, their pending mass bracketed,
//!   their resolved-leaf halt mass reported separately (`deferred`), and
//!   their wires streamed UNCAPPED to a file for the second pass.
//!   Budgets deliberately stop at the hunt rung inline: trans-bound
//!   divergers cost ~trans·(node visits), so an inline canonical rung
//!   (2²⁶) would multiply diverger cost ~64× for nothing — the lesson
//!   of the first (killed) 42..45 attempt.
//! - **Adjudication** (`adjudicate` mode): re-run exactly the streamed
//!   file at canonical budgets (4096/2²⁶ default, raisable). Newly
//!   resolved programs contribute their full trees; the still-unresolved
//!   residue is re-streamed to `<file>.rem` with the same accounting.
//!   The composition sweep-Σ + adjudication-Σ (+ residue caveat) equals
//!   a single canonical sweep — unit-tested at small sizes.
//!
//! The threshold deliverable — the per-size √2-coefficient of the
//! complement's Σ_success — rides its own accumulator (√2-parts
//! re-embedded as rationals, `radical::sqrt2_part`), decoupled from the
//! full aggregate so it survives even a rational-part overflow.
//!
//! Usage: qcomplement [lo] [hi] [mode] [beta] [trans] [file] [slice]
//!   mode ∈ sweep (default) | count | adjudicate
//!   defaults: 46 53, sweep at 512/2²⁰ (hunt precedent), adjudicate at
//!   4096/2²⁶ (canonical), file `qcomplement_unresolved.txt` (sweep
//!   truncates it; adjudicate reads it and writes `<file>.rem`).
//!   slice `i/m` (sweep/count): run every m-th interleaved task with
//!   offset i — disjoint exact cover, so a big size splits into
//!   independent runs under a9's ≤1-2h-per-run cap; slice tallies
//!   merge by exact addition (unit-tested).

use blam::dw::Dw;
use blam::enumerate::{enc_to_string, interleave_tasks, run_task, split_tasks};
use blam::qeval::{Fate, Leaf, Prim, QBudget};
use blam::qvm::{Pool, QMachine};
use blam::radical::{is_dyadic, radical_parts, show_parts, sqrt2_part, Exact};
use rayon::prelude::*;
use std::io::{BufRead, BufWriter, Write};
use std::sync::Mutex;
use std::time::Instant;

/// The frozen signature order (`docs/quantum/architecture.md`): p h meas new cnot t.
const FROZEN: [Prim; 5] = [Prim::H, Prim::Meas, Prim::New, Prim::Cnot, Prim::T];

/// Required consumed-binder masks per leading-λ count k (bit s−1 for
/// prefix slot s, innermost-first: slot s binds argument k+1−s). h is the
/// first argument ⇒ slot k; meas ⇒ k−1; new ⇒ k−2; cnot (slot k−3 when
/// k=4) is consumed but not radical-required.
const REQ: [u8; 5] = [0, 0b1, 0b11, 0b111, 0b1110];

/// Leading-λ count from the packed encoding: λᵏ contributes 2k zeros and
/// the (non-λ) body head starts 01 (one more zero) or 1ⁿ0 (none), so
/// k = (leading zeros within len) / 2 exactly.
fn leading_lambdas(enc: u64, len: u8) -> u32 {
    debug_assert!(enc != 0, "closed terms contain a variable");
    (enc.leading_zeros() - (64 - len as u32)) / 2
}

/// Bitmask of the k prefix binders referenced by the body of λᵏ.M (bit
/// s−1 for slot s ∈ 1..=k, innermost-first). One msb-first walk of the
/// packed body; a var of index i at local depth d references prefix slot
/// i−d when i > d (closedness bounds i ≤ d+k).
fn consumed_mentions(enc: u64, len: u8, k: u32) -> u8 {
    let mut mask = 0u8;
    let mut stack: Vec<u32> = vec![0];
    let mut j = len as i32 - 2 * k as i32 - 1; // next bit (msb-first walk)
    while let Some(d) = stack.pop() {
        let b0 = enc >> j & 1;
        j -= 1;
        if b0 == 0 {
            let b1 = enc >> j & 1;
            j -= 1;
            if b1 == 0 {
                stack.push(d + 1); // 00: λ body
            } else {
                stack.push(d); // 01: two subterms at this depth
                stack.push(d);
            }
        } else {
            // 1^i 0: variable of index i.
            let mut i = 1u32;
            while enc >> j & 1 == 1 {
                i += 1;
                j -= 1;
            }
            j -= 1; // the terminating 0
            if i > d {
                debug_assert!(i - d <= k, "closedness bounds free indices by k");
                mask |= 1 << (i - d - 1);
            }
        }
    }
    debug_assert_eq!(j, -1, "walk must consume the encoding exactly");
    mask
}

/// An exact dyadic fraction num/2^exp on plain i128 — for the weighted
/// cross-size √2 total, whose exponent (2(e+n) in Dw embedding) would
/// breach K_CAP. Coefficients here are tiny (only fate-divergent programs
/// contribute); overflow would be a bug, and panics loudly.
#[derive(Clone, Copy)]
struct QFrac {
    num: i128,
    exp: u32,
}

impl QFrac {
    const ZERO: QFrac = QFrac { num: 0, exp: 0 };

    fn add(&mut self, num: i128, exp: u32) {
        let e = self.exp.max(exp);
        let a = self
            .num
            .checked_shl(e - self.exp)
            .expect("weighted √2 total overflowed i128");
        let b = num
            .checked_shl(e - exp)
            .expect("weighted √2 total overflowed i128");
        self.num = a.checked_add(b).expect("weighted √2 total overflowed i128");
        self.exp = e;
    }

    fn reduced(mut self) -> (i128, u32) {
        while self.exp > 0 && self.num & 1 == 0 {
            self.num /= 2;
            self.exp -= 1;
        }
        (self.num, self.exp)
    }
}

const WITNESS_CAP: usize = 100;

fn push_capped(v: &mut Vec<(u64, u8)>, w: (u64, u8)) {
    if v.len() < WITNESS_CAP {
        v.push(w);
    }
}

/// Uncapped stream of unresolved program wires (the adjudication input).
type Sink = Mutex<BufWriter<std::fs::File>>;

#[derive(Clone)]
struct Tally {
    enumerated: u64,
    /// k ≥ 5: phase 1's population, skipped here.
    idiom: u64,
    enum_k: [u64; 5],
    /// Rung-0 mention rejections (k ≥ 1 only; proved dyadic-only).
    rejected_k: [u64; 5],
    /// Programs evaluated (rung-0 survivors).
    run: u64,
    /// Programs with ≥1 Unknown/Capacity leaf — contribute NOTHING to
    /// success/√2 in this pass; streamed for adjudication.
    unresolved_n: u64,
    unresolved_w: Vec<(u64, u8)>,
    // Leaf counts (over all evaluated programs).
    halt_n: u64,
    err_n: u64,
    /// Unknown leaves split by which budget bound them (steps ≥ β ⇒
    /// β-bound; else transition-bound — the expensive class).
    unk_beta: u64,
    unk_trans: u64,
    cap_n: u64,
    nondyadic_leaves: u64,
    /// Resolved programs with ≥1 non-dyadic Halt leaf, capped.
    witnesses: Vec<(u64, u8)>,
    /// Resolved programs whose Σ Halt mass is irrational — the unpaired
    /// fate-divergent class, the only one that can move a size aggregate
    /// off the dyadics.
    fate_div_n: u64,
    fate_div: Vec<(u64, u8)>,
    /// Resolved programs whose Σ Halt mass overflowed Dw (√2 part
    /// undecided — would need individual adjudication; expected zero).
    radical_unknown_n: u64,
    radical_unknown_w: Vec<(u64, u8)>,
    /// Σ Halt mass over RESOLVED programs (per-size; weight by 2^−n only
    /// across sizes).
    success: Exact,
    /// The threshold deliverable: Σ over resolved programs of the
    /// √2-coefficient of their Σ Halt mass (radical::sqrt2_part).
    sqrt2: Exact,
    /// Unresolved programs' Halt-leaf mass (partial trees) — reported,
    /// never added to `success`; adjudication re-derives it whole.
    deferred: Exact,
    /// √2 part of `deferred` (the caveat's radical exposure).
    deferred_sqrt2: Exact,
    /// Σ Unknown/Capacity leaf mass — the pending bracket.
    unresolved: Exact,
    max_steps: u64,
}

impl Tally {
    fn new() -> Tally {
        Tally {
            enumerated: 0,
            idiom: 0,
            enum_k: [0; 5],
            rejected_k: [0; 5],
            run: 0,
            unresolved_n: 0,
            unresolved_w: Vec::new(),
            halt_n: 0,
            err_n: 0,
            unk_beta: 0,
            unk_trans: 0,
            cap_n: 0,
            nondyadic_leaves: 0,
            witnesses: Vec::new(),
            fate_div_n: 0,
            fate_div: Vec::new(),
            radical_unknown_n: 0,
            radical_unknown_w: Vec::new(),
            success: Exact::ZERO,
            sqrt2: Exact::ZERO,
            deferred: Exact::ZERO,
            deferred_sqrt2: Exact::ZERO,
            unresolved: Exact::ZERO,
            max_steps: 0,
        }
    }

    fn merge(mut self, o: Tally) -> Tally {
        self.enumerated += o.enumerated;
        self.idiom += o.idiom;
        for k in 0..5 {
            self.enum_k[k] += o.enum_k[k];
            self.rejected_k[k] += o.rejected_k[k];
        }
        self.run += o.run;
        self.unresolved_n += o.unresolved_n;
        self.halt_n += o.halt_n;
        self.err_n += o.err_n;
        self.unk_beta += o.unk_beta;
        self.unk_trans += o.unk_trans;
        self.cap_n += o.cap_n;
        self.nondyadic_leaves += o.nondyadic_leaves;
        self.fate_div_n += o.fate_div_n;
        self.radical_unknown_n += o.radical_unknown_n;
        for (dst, src) in [
            (&mut self.unresolved_w, o.unresolved_w),
            (&mut self.witnesses, o.witnesses),
            (&mut self.fate_div, o.fate_div),
            (&mut self.radical_unknown_w, o.radical_unknown_w),
        ] {
            for w in src {
                push_capped(dst, w);
            }
        }
        self.success.merge(&o.success);
        self.sqrt2.merge(&o.sqrt2);
        self.deferred.merge(&o.deferred);
        self.deferred_sqrt2.merge(&o.deferred_sqrt2);
        self.unresolved.merge(&o.unresolved);
        self.max_steps = self.max_steps.max(o.max_steps);
        self
    }
}

/// Run one program at one budget and aggregate. Resolved programs (all
/// leaves Halt/Err) commit to `success`/`sqrt2`; unresolved ones commit
/// only counts, the pending bracket, and the `deferred` report, and are
/// streamed to `sink`. Returns whether the program resolved.
#[allow(clippy::too_many_arguments)]
fn sweep_one(
    pool: &mut Pool,
    m: &mut QMachine,
    leaves: &mut Vec<Leaf>,
    enc: u64,
    len: u8,
    budget: &QBudget,
    t: &mut Tally,
    sink: Option<&Sink>,
) -> bool {
    t.run += 1;
    leaves.clear();
    m.run_program_into(pool, enc, len, &FROZEN, budget, leaves);
    // Mass conservation on every run whose masses are representable.
    let msum = leaves
        .iter()
        .try_fold(Dw::ZERO, |s, l| l.mass.and_then(|x| s.add(x)));
    if let Some(s) = msum {
        assert_eq!(
            s.reduce(),
            Dw::ONE,
            "mass conservation violated at ({enc:#x},{len})"
        );
    }
    let resolved = leaves
        .iter()
        .all(|l| matches!(l.fate, Fate::Halt(_) | Fate::Err(_)));

    let mut nondyadic_here = false;
    let mut hsum = Some(Dw::ZERO);
    for leaf in leaves.iter() {
        t.max_steps = t.max_steps.max(leaf.steps);
        match &leaf.fate {
            Fate::Halt(_) => {
                t.halt_n += 1;
                hsum = hsum.and_then(|s| leaf.mass.and_then(|x| s.add(x)));
                if resolved {
                    t.success.add(leaf.mass);
                } else {
                    t.deferred.add(leaf.mass);
                }
                if let Some(mv) = leaf.mass {
                    if !is_dyadic(mv) {
                        t.nondyadic_leaves += 1;
                        nondyadic_here = true;
                    }
                }
            }
            Fate::Err(_) => t.err_n += 1,
            Fate::Unknown => {
                if leaf.steps >= budget.beta {
                    t.unk_beta += 1;
                } else {
                    t.unk_trans += 1;
                }
                t.unresolved.add(leaf.mass);
            }
            Fate::Capacity(_) => {
                t.cap_n += 1;
                t.unresolved.add(leaf.mass);
            }
        }
    }

    if !resolved {
        t.unresolved_n += 1;
        push_capped(&mut t.unresolved_w, (enc, len));
        match hsum {
            Some(h) => t.deferred_sqrt2.add(Some(sqrt2_part(h))),
            None => t.deferred_sqrt2.add(None),
        }
        if let Some(s) = sink {
            let mut w = s.lock().unwrap();
            writeln!(w, "{} {}", len, enc_to_string(enc, len)).expect("unresolved sink write");
        }
        return false;
    }
    if nondyadic_here {
        push_capped(&mut t.witnesses, (enc, len));
    }
    match hsum {
        Some(h) => {
            let s2 = sqrt2_part(h);
            if !s2.is_zero() {
                t.sqrt2.add(Some(s2));
                t.fate_div_n += 1;
                push_capped(&mut t.fate_div, (enc, len));
            }
        }
        None => {
            // Halt mass overflowed: the program's √2 part is undecided.
            t.sqrt2.add(None);
            t.radical_unknown_n += 1;
            push_capped(&mut t.radical_unknown_w, (enc, len));
        }
    }
    true
}

/// Rung-0 classification; returns true for programs the sweep must
/// evaluate, false for skips (idiom) and rejections (proved dyadic-only).
fn rung0(enc: u64, len: u8, t: &mut Tally) -> bool {
    t.enumerated += 1;
    let k = leading_lambdas(enc, len);
    if k >= 5 {
        t.idiom += 1;
        return false;
    }
    t.enum_k[k as usize] += 1;
    if k >= 1 && consumed_mentions(enc, len, k) & REQ[k as usize] != REQ[k as usize] {
        t.rejected_k[k as usize] += 1;
        return false;
    }
    true
}

fn print_witness_lines(label: &str, list: &[(u64, u8)], total: u64) {
    for &(enc, len) in list {
        println!("      {label} {}", enc_to_string(enc, len));
    }
    if list.len() == WITNESS_CAP && total > WITNESS_CAP as u64 {
        println!("      ({label} list capped at {WITNESS_CAP} of {total})");
    }
}

/// Per-size report (everything after the enumeration line), plus the
/// weighted √2 update. Returns whether the rational aggregate was exact.
fn report_size(n: u32, tally: &Tally, weighted_s2: &mut QFrac) -> bool {
    println!(
        "      halt {:>12}  err {:>13}  unkβ {:>7}  unkT {:>7}  cap {:>6}  \
         unresolved-prog {:>7}  nondyadic {:>3}  fatediv {:>3}  radical-unk {:>3}  maxsteps {:>6}",
        tally.halt_n,
        tally.err_n,
        tally.unk_beta,
        tally.unk_trans,
        tally.cap_n,
        tally.unresolved_n,
        tally.nondyadic_leaves,
        tally.fate_div_n,
        tally.radical_unknown_n,
        tally.max_steps,
    );
    if tally.success.ok {
        let sum = tally.success.v.reduce();
        println!(
            "      Σ_success (resolved rung-0 survivors) = {}   [{sum:?}]",
            show_parts(radical_parts(sum))
        );
    } else {
        println!("      Σ_success (resolved): rational aggregate OVERFLOWED (√2 track unaffected)");
    }
    assert!(
        tally.sqrt2.ok,
        "n={n}: √2 accumulator poisoned — adjudicate the radical-unk witnesses"
    );
    let (s2n, s2e) = {
        let r = tally.sqrt2.v.reduce();
        assert!(r.b == 0 && r.c == 0 && r.d == 0 && r.k.is_multiple_of(2));
        (r.a, r.k / 2)
    };
    println!("      √2-coefficient of Σ_success = {s2n}/2^{s2e}   [exact]");
    if s2n != 0 {
        weighted_s2.add(s2n, s2e + n);
    }
    if !tally.unresolved.ok || !tally.unresolved.v.is_zero() {
        println!(
            "      unresolved bracket: {:?} (ok={})   deferred halt mass: {:?} (ok={}, √2 {:?} ok={})",
            tally.unresolved.v.reduce(),
            tally.unresolved.ok,
            tally.deferred.v.reduce(),
            tally.deferred.ok,
            tally.deferred_sqrt2.v.reduce(),
            tally.deferred_sqrt2.ok,
        );
    }
    print_witness_lines("FATEDIV", &tally.fate_div, tally.fate_div_n);
    print_witness_lines(
        "RADICAL-UNK",
        &tally.radical_unknown_w,
        tally.radical_unknown_n,
    );
    print_witness_lines("WITNESS", &tally.witnesses, tally.nondyadic_leaves);
    print_witness_lines("UNRESOLVED", &tally.unresolved_w, tally.unresolved_n);
    tally.success.ok
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let lo: u32 = args.get(1).map(|s| s.parse().expect("lo")).unwrap_or(46);
    let hi: u32 = args.get(2).map(|s| s.parse().expect("hi")).unwrap_or(53);
    let mode = args.get(3).map(String::as_str).unwrap_or("sweep");
    assert!(
        ["sweep", "count", "adjudicate"].contains(&mode),
        "mode must be sweep | count | adjudicate"
    );
    let budget = QBudget {
        beta: args
            .get(4)
            .map(|s| s.parse().expect("beta"))
            .unwrap_or(if mode == "adjudicate" { 4096 } else { 512 }),
        trans: args
            .get(5)
            .map(|s| s.parse().expect("trans"))
            .unwrap_or(if mode == "adjudicate" {
                1 << 26
            } else {
                1 << 20
            }),
        ..QBudget::default()
    };
    let path = args
        .get(6)
        .cloned()
        .unwrap_or_else(|| "qcomplement_unresolved.txt".into());
    // Optional "i/m" slice spec: run only every m-th task (offset i) of
    // the interleaved task list — disjoint, exactly covering slices, so
    // a big size splits into independent ≤2h runs whose tallies merge
    // by exact addition (unit-tested). Sweep/count modes only.
    let slice: Option<(usize, usize)> = args.get(7).map(|s| {
        let (i, m) = s.split_once('/').expect("slice spec: i/m");
        let (i, m) = (i.parse().expect("slice i"), m.parse().expect("slice m"));
        assert!(m >= 1 && i < m, "slice i/m needs i < m");
        assert!(mode != "adjudicate", "slice applies to sweep/count only");
        (i, m)
    });
    assert!(lo >= 4 && hi <= 63 && lo <= hi);

    let nthreads = rayon::current_num_threads();
    eprintln!(
        "qcomplement [{mode}]: sizes {lo}..={hi}, non-λ⁵ complement, β={} trans={}, \
         file {path}{}, {nthreads} threads",
        budget.beta,
        budget.trans,
        slice.map_or(String::new(), |(i, m)| format!(", slice {i}/{m}")),
    );

    if mode == "adjudicate" {
        adjudicate(lo, hi, &budget, &path);
        return;
    }

    let sink: Option<Sink> = if mode == "sweep" {
        Some(Mutex::new(BufWriter::new(
            std::fs::File::create(&path).expect("create unresolved sink"),
        )))
    } else {
        None
    };

    // Weighted cross-size √2 total: Σ_n 2^−n · sqrt2(n).
    let mut weighted_s2 = QFrac::ZERO;
    let mut all_exact = true;
    let t0 = Instant::now();
    for n in lo..=hi {
        let tn = Instant::now();
        let mut tasks = interleave_tasks(split_tasks(n, nthreads * 2048));
        if let Some((si, sm)) = slice {
            tasks = tasks
                .into_iter()
                .enumerate()
                .filter(|(j, _)| j % sm == si)
                .map(|(_, t)| t)
                .collect();
        }
        let done = std::sync::atomic::AtomicU64::new(0);
        let total_tasks = tasks.len() as u64;
        let tally = tasks
            .par_iter()
            .fold(
                || (Pool::new(), QMachine::new(), Vec::new(), Tally::new()),
                |(mut pool, mut m, mut leaves, mut t), task| {
                    run_task(task, &mut |enc, len| {
                        if rung0(enc, len, &mut t) {
                            if mode == "count" {
                                t.run += 1;
                            } else {
                                sweep_one(
                                    &mut pool,
                                    &mut m,
                                    &mut leaves,
                                    enc,
                                    len,
                                    &budget,
                                    &mut t,
                                    sink.as_ref(),
                                );
                            }
                        }
                    });
                    let d = done.fetch_add(1, std::sync::atomic::Ordering::Relaxed) + 1;
                    if d.is_multiple_of(4096) || d == total_tasks {
                        eprint!("\r  n={n}: {d}/{total_tasks} tasks ({:.0?})", tn.elapsed());
                    }
                    (pool, m, leaves, t)
                },
            )
            .map(|(_, _, _, t)| t)
            .reduce(Tally::new, Tally::merge);
        eprintln!();

        println!(
            "n={n:>2}: enum {:>13}  idiom {:>12}  k [{}]  rej [{}]  run {:>12}  \
             ({:.2?}, {:.1}M prog/s)",
            tally.enumerated,
            tally.idiom,
            tally
                .enum_k
                .iter()
                .map(|c| c.to_string())
                .collect::<Vec<_>>()
                .join(" "),
            tally
                .rejected_k
                .iter()
                .map(|c| c.to_string())
                .collect::<Vec<_>>()
                .join(" "),
            tally.run,
            tn.elapsed(),
            tally.run as f64 / tn.elapsed().as_secs_f64() / 1e6,
        );
        if mode == "count" {
            continue;
        }
        all_exact &= report_size(n, &tally, &mut weighted_s2);
    }
    if let Some(s) = &sink {
        s.lock().unwrap().flush().expect("flush unresolved sink");
    }
    if mode == "sweep" {
        let (wn, we) = weighted_s2.reduced();
        println!(
            "Ω_success √2-contribution, resolved complement {lo}..{hi}: ({wn}/2^{we})·√2   \
             [rational parts {}; {:.1?} total]",
            if all_exact { "exact" } else { "OVERFLOWED" },
            t0.elapsed()
        );
    }
}

/// Second pass: re-run the streamed unresolved wires at (canonical or
/// raised) budgets; write the still-unresolved residue to `<path>.rem`.
fn adjudicate(lo: u32, hi: u32, budget: &QBudget, path: &str) {
    let file = std::fs::File::open(path).expect("open unresolved file");
    let mut by_size: std::collections::BTreeMap<u32, Vec<(u64, u8)>> = Default::default();
    for line in std::io::BufReader::new(file).lines() {
        let line = line.expect("read unresolved line");
        let (n, bits) = line.split_once(' ').expect("line format: n bits");
        let n: u32 = n.parse().expect("size");
        if n < lo || n > hi {
            continue;
        }
        assert_eq!(bits.len(), n as usize, "wire length matches size");
        let mut enc = 0u64;
        for c in bits.bytes() {
            enc = enc << 1 | u64::from(c == b'1');
        }
        by_size.entry(n).or_default().push((enc, n as u8));
    }
    let rem: Sink = Mutex::new(BufWriter::new(
        std::fs::File::create(format!("{path}.rem")).expect("create residue sink"),
    ));
    let mut weighted_s2 = QFrac::ZERO;
    let t0 = Instant::now();
    for (&n, programs) in &by_size {
        let tn = Instant::now();
        let tally = programs
            .par_chunks(1024)
            .fold(
                || (Pool::new(), QMachine::new(), Vec::new(), Tally::new()),
                |(mut pool, mut m, mut leaves, mut t), chunk| {
                    for &(enc, len) in chunk {
                        sweep_one(
                            &mut pool,
                            &mut m,
                            &mut leaves,
                            enc,
                            len,
                            budget,
                            &mut t,
                            Some(&rem),
                        );
                    }
                    (pool, m, leaves, t)
                },
            )
            .map(|(_, _, _, t)| t)
            .reduce(Tally::new, Tally::merge);
        println!(
            "n={n:>2}: adjudicating {:>9} programs  resolved {:>9}  still-unresolved {:>9}  ({:.2?})",
            programs.len(),
            tally.run - tally.unresolved_n,
            tally.unresolved_n,
            tn.elapsed()
        );
        report_size(n, &tally, &mut weighted_s2);
    }
    rem.lock().unwrap().flush().expect("flush residue sink");
    let (wn, we) = weighted_s2.reduced();
    println!(
        "Ω_success √2-contribution, adjudicated programs: ({wn}/2^{we})·√2   [{:.1?} total]",
        t0.elapsed()
    );
}

#[cfg(test)]
mod tests {
    use super::*;

    fn pack(bits: &str) -> (u64, u8) {
        let mut enc = 0u64;
        for c in bits.bytes() {
            enc = enc << 1 | u64::from(c == b'1');
        }
        (enc, bits.len() as u8)
    }

    const P53: &str = "00000000000101111100111111001100111111001111010011010";

    const HUNT: QBudget = QBudget {
        beta: 512,
        trans: 1 << 20,
        max_qubits: 12,
        max_branches: 4096,
    };
    const CANONICAL: QBudget = QBudget {
        beta: 4096,
        trans: 1 << 26,
        max_qubits: 12,
        max_branches: 4096,
    };

    #[test]
    fn leading_lambda_count_matches_prefix_parse() {
        // Bit-twiddled k must equal the count of leading 00-pairs, for
        // every closed term at small sizes.
        for n in 4..=20 {
            blam::enumerate::for_each_closed(n, &mut |enc, len| {
                let s = enc_to_string(enc, len);
                let mut k_ref = 0u32;
                let mut rest = s.as_str();
                while rest.starts_with("00") {
                    k_ref += 1;
                    rest = &rest[2..];
                }
                assert_eq!(leading_lambdas(enc, len), k_ref, "{s}");
            });
        }
    }

    #[test]
    fn consumed_mentions_classify() {
        // λ.(1 1): the sole binder (h for k=1) is referenced.
        let (e, l) = pack("00011010");
        assert_eq!(leading_lambdas(e, l), 1);
        assert_eq!(consumed_mentions(e, l, 1), 0b1);
        // λ.((λ.1)(λ.1)): the outer binder is never referenced.
        let (e, l) = pack("000100100010");
        assert_eq!(leading_lambdas(e, l), 1);
        assert_eq!(consumed_mentions(e, l, 1), 0);
    }

    #[test]
    fn k2_mentions() {
        // λλ.(2 1) = 00 00 01 110 10: slots {2,1} = 0b11.
        let (e, l) = pack("00000111010");
        assert_eq!(leading_lambdas(e, l), 2);
        assert_eq!(consumed_mentions(e, l, 2), 0b11);
        // λλ.(1 1) = 00 00 01 10 10: only slot 1 (meas for k=2) — h dead.
        let (e, l) = pack("0000011010");
        assert_eq!(leading_lambdas(e, l), 2);
        assert_eq!(consumed_mentions(e, l, 2), 0b01);
        // λλ.((λ.3) 1) = 00 00 01 00 1110 10: slot 2 via local depth 1,
        // slot 1 directly.
        let (e, l) = pack("00000100111010");
        assert_eq!(leading_lambdas(e, l), 2);
        assert_eq!(consumed_mentions(e, l, 2), 0b11);
    }

    #[test]
    fn wrapped_p53_is_fate_divergent_in_the_complement() {
        // (λ.1) P53 — a k=0 complement program (59 bits) that β-reduces to
        // P53: the sweep must find fatediv with √2-coefficient −1/4.
        let wrapped = format!("010010{P53}");
        let (e, l) = pack(&wrapped);
        assert_eq!(leading_lambdas(e, l), 0);
        let mut pool = Pool::new();
        let mut m = QMachine::new();
        let mut leaves = Vec::new();
        let mut t = Tally::new();
        let resolved = sweep_one(&mut pool, &mut m, &mut leaves, e, l, &HUNT, &mut t, None);
        assert!(resolved);
        assert_eq!(t.fate_div_n, 1);
        assert_eq!(t.nondyadic_leaves, 1);
        assert_eq!(t.err_n, 1);
        assert!(t.sqrt2.ok);
        let r = t.sqrt2.v.reduce();
        assert_eq!((r.a, r.k), (-1, 4), "√2 part is −1/4");
    }

    #[test]
    fn rung0_rejections_are_dyadic() {
        // Every mention-rejected program, run at canonical budgets, must
        // show only dyadic resolved masses and a zero per-program √2 part
        // — the provenance lemma's checkable shadow.
        let mut pool = Pool::new();
        let mut m = QMachine::new();
        let mut leaves = Vec::new();
        for n in 4..=26 {
            blam::enumerate::for_each_closed(n, &mut |enc, len| {
                let k = leading_lambdas(enc, len);
                if !(1..5).contains(&k)
                    || consumed_mentions(enc, len, k) & REQ[k as usize] == REQ[k as usize]
                {
                    return;
                }
                leaves.clear();
                m.run_program_into(&mut pool, enc, len, &FROZEN, &CANONICAL, &mut leaves);
                let mut hsum = Some(Dw::ZERO);
                for leaf in leaves.iter() {
                    if let Some(mv) = leaf.mass {
                        assert!(is_dyadic(mv), "{}", enc_to_string(enc, len));
                    }
                    if matches!(leaf.fate, Fate::Halt(_)) {
                        hsum = hsum.and_then(|s| leaf.mass.and_then(|x| s.add(x)));
                    }
                }
                assert!(sqrt2_part(hsum.expect("no overflow at these sizes")).is_zero());
            });
        }
    }

    #[test]
    fn two_pass_protocol_matches_single_canonical_sweep() {
        // The composition law the protocol rests on: sweep at hunt
        // budgets + adjudication of exactly the unresolved set at
        // canonical budgets must reproduce a straight canonical sweep's
        // aggregates (with the still-unresolved residue matching).
        for n in [16u32, 20, 24] {
            let mut pool = Pool::new();
            let mut m = QMachine::new();
            let mut leaves = Vec::new();
            let mut sweep = Tally::new();
            let mut unresolved: Vec<(u64, u8)> = Vec::new();
            let mut single = Tally::new();
            blam::enumerate::for_each_closed(n, &mut |enc, len| {
                if rung0(enc, len, &mut sweep)
                    && !sweep_one(
                        &mut pool,
                        &mut m,
                        &mut leaves,
                        enc,
                        len,
                        &HUNT,
                        &mut sweep,
                        None,
                    )
                {
                    unresolved.push((enc, len));
                }
                let mut dummy = Tally::new();
                if rung0(enc, len, &mut dummy) {
                    sweep_one(
                        &mut pool,
                        &mut m,
                        &mut leaves,
                        enc,
                        len,
                        &CANONICAL,
                        &mut single,
                        None,
                    );
                }
            });
            let mut adj = Tally::new();
            for &(enc, len) in &unresolved {
                sweep_one(
                    &mut pool,
                    &mut m,
                    &mut leaves,
                    enc,
                    len,
                    &CANONICAL,
                    &mut adj,
                    None,
                );
            }
            // Composition: resolved-Σ pieces add; the residue matches.
            let mut composed = sweep.success;
            composed.merge(&adj.success);
            assert!(composed.ok && single.success.ok, "n={n}");
            assert_eq!(composed.v.reduce(), single.success.v.reduce(), "n={n}");
            let mut composed_s2 = sweep.sqrt2;
            composed_s2.merge(&adj.sqrt2);
            assert_eq!(composed_s2.v.reduce(), single.sqrt2.v.reduce(), "n={n}");
            assert_eq!(
                sweep.fate_div_n + adj.fate_div_n,
                single.fate_div_n,
                "n={n}"
            );
            assert_eq!(adj.unresolved_n, single.unresolved_n, "n={n}");
            assert_eq!(adj.deferred.v.reduce(), single.deferred.v.reduce(), "n={n}");
        }
    }

    #[test]
    fn slice_union_matches_full_sweep() {
        // The i/m task-list slices are a disjoint exact cover: merging
        // the m slice tallies must reproduce the full sweep's tally,
        // including the exact accumulators.
        for n in [18u32, 22] {
            let mut pool = Pool::new();
            let mut m = QMachine::new();
            let mut leaves = Vec::new();
            let mut sweep_tasks = |tasks: Vec<blam::enumerate::GenTask>, t: &mut Tally| {
                for task in &tasks {
                    blam::enumerate::run_task(task, &mut |enc, len| {
                        if rung0(enc, len, t) {
                            sweep_one(&mut pool, &mut m, &mut leaves, enc, len, &HUNT, t, None);
                        }
                    });
                }
            };
            let all = interleave_tasks(split_tasks(n, 64));
            let mut full = Tally::new();
            sweep_tasks(all.clone(), &mut full);
            let mut merged = Tally::new();
            for si in 0..3usize {
                let slice: Vec<_> = all
                    .iter()
                    .enumerate()
                    .filter(|(j, _)| j % 3 == si)
                    .map(|(_, t)| t.clone())
                    .collect();
                let mut part = Tally::new();
                sweep_tasks(slice, &mut part);
                merged = merged.merge(part);
            }
            assert_eq!(merged.enumerated, full.enumerated, "n={n}");
            assert_eq!(merged.enum_k, full.enum_k, "n={n}");
            assert_eq!(merged.rejected_k, full.rejected_k, "n={n}");
            assert_eq!(merged.run, full.run, "n={n}");
            assert_eq!(merged.halt_n, full.halt_n, "n={n}");
            assert_eq!(merged.err_n, full.err_n, "n={n}");
            assert_eq!(merged.unk_beta, full.unk_beta, "n={n}");
            assert_eq!(merged.unresolved_n, full.unresolved_n, "n={n}");
            assert_eq!(merged.fate_div_n, full.fate_div_n, "n={n}");
            assert!(merged.success.ok && full.success.ok, "n={n}");
            assert_eq!(merged.success.v.reduce(), full.success.v.reduce(), "n={n}");
            assert_eq!(merged.sqrt2.v.reduce(), full.sqrt2.v.reduce(), "n={n}");
            assert_eq!(merged.max_steps, full.max_steps, "n={n}");
        }
    }

    #[test]
    fn small_complement_is_dyadic_and_counts_match_dp() {
        // The full complement 4..=24 swept at hunt budgets: resolved and
        // deferred √2 aggregates exactly zero (the exhaustive hunt proved
        // the full population dyadic through 45), and rung-0
        // classification counts must match an independent (size, depth)
        // DP.
        let mut dp = [[0u64; 64]; 32];
        for n in 2..64usize {
            for d in 0..31usize {
                let mut t = 0u64;
                if 2 <= n && n <= d + 1 {
                    t += 1;
                }
                if n >= 4 {
                    t += dp[d + 1][n - 2];
                }
                for a in 2..n.saturating_sub(3) {
                    t += dp[d][a] * dp[d][n - 2 - a];
                }
                dp[d][n] = t;
            }
        }
        let mut pool = Pool::new();
        let mut m = QMachine::new();
        let mut leaves = Vec::new();
        for n in 4..=24u32 {
            let mut t = Tally::new();
            blam::enumerate::for_each_closed(n, &mut |enc, len| {
                if rung0(enc, len, &mut t) {
                    sweep_one(
                        &mut pool,
                        &mut m,
                        &mut leaves,
                        enc,
                        len,
                        &HUNT,
                        &mut t,
                        None,
                    );
                }
            });
            // Counts vs DP: exactly-k = non-λ-headed at depth k.
            let nu = n as usize;
            for k in 0..5usize {
                if nu < 2 * k + 2 {
                    continue;
                }
                let m_ = nu - 2 * k;
                let expect = dp[k][m_] - if m_ >= 4 { dp[k + 1][m_ - 2] } else { 0 };
                assert_eq!(t.enum_k[k], expect, "n={n} k={k}");
            }
            let idiom_expect = if nu >= 12 { dp[5][nu - 10] } else { 0 };
            assert_eq!(t.idiom, idiom_expect, "n={n} idiom");
            // Dyadicity: both √2 tracks identically zero.
            assert!(t.sqrt2.ok && t.sqrt2.v.is_zero(), "n={n}");
            assert!(t.deferred_sqrt2.ok && t.deferred_sqrt2.v.is_zero(), "n={n}");
            assert_eq!(t.fate_div_n, 0, "n={n}");
            assert_eq!(t.radical_unknown_n, 0, "n={n}");
        }
    }
}
