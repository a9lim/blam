//! qradical: the radical-aggregate census — phase 1 of the dyadicity
//! decision instrument for Ω_success beyond the exhaustive 45-bit horizon
//! (gaslamp thread `qblc-omega-witnesses`, 2026-08-03).
//!
//! Per size n, accumulate the EXACT total successful (Halt) mass of the
//! λ⁵-idiom population and report its √2-coefficient — not merely the count
//! of non-dyadic leaves, since leaves can cancel (the n=45 witness's two
//! (2±√2)/4 branches sum to 1) while an unpaired fate-divergent witness
//! (P53, halt mass (2−√2)/4) cannot cancel except through a global
//! enumeration identity across other programs of the same size. A nonzero
//! per-size √2-coefficient here decides idiom-sector non-dyadicity at that
//! size exactly.
//!
//! Phase-1 scope, deliberately: only programs of shape λ⁵.body (the
//! signature idiom), pre-filtered to bodies that REFERENCE all of
//! {h, meas, new, t} — a sound necessary condition within the idiom, since
//! a primitive can fire only if its binder occurs (β can duplicate an
//! occurrence, never conjure a reference to an unmentioned binder), and a
//! √2-part needs H, T, and a measurement, which needs an allocation.
//! Non-idiomatic signature plumbing (fewer/more prefix λs, partial
//! application) is phase 2 — an abstract primitive-taint evaluator — so a
//! CLEAN phase-1 size is "no idiom-sector witness", not yet a theorem for
//! the whole size.
//!
//! Usage: qradical [lo] [hi] [count]   (default 46 53; `count` skips the
//! engine and reports enumeration/filter counts only — the n=53 filtered
//! count has an independent DP cross-check of 90,064,344.)

use blam::dw::Dw;
use blam::enumerate::{enc_to_string, interleave_tasks, run_task, split_tasks_at};
use blam::qeval::{Fate, Leaf, Prim, QBudget};
use blam::qvm::{Pool, QMachine};
use blam::radical::{is_dyadic, radical_parts, show_parts, Exact};
use rayon::prelude::*;
use std::time::Instant;

/// The frozen signature order (DESIGN-QBLC.md): p h meas new cnot t.
const FROZEN: [Prim; 5] = [Prim::H, Prim::Meas, Prim::New, Prim::Cnot, Prim::T];

/// Frame slots by innermost-first de Bruijn index under the λ⁵ idiom:
/// t=1, cnot=2, new=3, meas=4, h=5. Required for a √2-capable trace:
/// t, new, meas, h (cnot is permitted, not required).
const REQUIRED: u8 = 0b11101;

/// Bitmask of frame slots referenced by the λ⁵-idiom program `enc`
/// (bit s−1 for slot s ∈ 1..=5). Walks the packed body once, tracking
/// local binder depth; a var of index i at local depth d references frame
/// slot i−d when i > d (closedness bounds i ≤ d+5).
fn frame_mentions(enc: u64, len: u8) -> u8 {
    let mut mask = 0u8;
    // Subterm obligations as local depths; body starts after the 10-bit
    // λ⁵ prefix at local depth 0.
    let mut stack: Vec<u32> = vec![0];
    let mut j = len as i32 - 11; // next bit index (msb-first walk)
    while let Some(d) = stack.pop() {
        // Read the head of this subterm at bit j.
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
                mask |= 1 << (i - d - 1);
            }
        }
    }
    debug_assert_eq!(j, -1, "walk must consume the encoding exactly");
    mask
}

const WITNESS_CAP: usize = 100;

#[derive(Clone)]
struct Tally {
    enumerated: u64,
    run: u64,
    halt_n: u64,
    err_n: u64,
    unk_n: u64,
    cap_n: u64,
    nondyadic_leaves: u64,
    /// Programs with ≥1 non-dyadic Halt leaf (wire bits), capped.
    witnesses: Vec<(u64, u8)>,
    /// Programs whose per-program Σ Halt mass is itself irrational — the
    /// unpaired fate-divergent class, the only one that can push a size
    /// aggregate off the dyadics (witness45's leaves cancel within the
    /// program; P53's do not).
    fate_div_n: u64,
    fate_div: Vec<(u64, u8)>,
    /// Σ Halt mass, raw (per-size; weight by 2^−n only across sizes).
    success: Exact,
    /// Σ Unknown/Capacity mass — the caveat bracket for this size.
    unresolved: Exact,
    max_steps: u64,
}

impl Tally {
    fn new() -> Tally {
        Tally {
            enumerated: 0,
            run: 0,
            halt_n: 0,
            err_n: 0,
            unk_n: 0,
            cap_n: 0,
            nondyadic_leaves: 0,
            witnesses: Vec::new(),
            fate_div_n: 0,
            fate_div: Vec::new(),
            success: Exact::ZERO,
            unresolved: Exact::ZERO,
            max_steps: 0,
        }
    }

    fn merge(mut self, o: Tally) -> Tally {
        self.enumerated += o.enumerated;
        self.run += o.run;
        self.halt_n += o.halt_n;
        self.err_n += o.err_n;
        self.unk_n += o.unk_n;
        self.cap_n += o.cap_n;
        self.nondyadic_leaves += o.nondyadic_leaves;
        for w in o.witnesses {
            if self.witnesses.len() < WITNESS_CAP {
                self.witnesses.push(w);
            }
        }
        self.fate_div_n += o.fate_div_n;
        for w in o.fate_div {
            if self.fate_div.len() < WITNESS_CAP {
                self.fate_div.push(w);
            }
        }
        self.success.merge(&o.success);
        self.unresolved.merge(&o.unresolved);
        self.max_steps = self.max_steps.max(o.max_steps);
        self
    }
}

fn sweep_one(
    pool: &mut Pool,
    m: &mut QMachine,
    leaves: &mut Vec<Leaf>,
    enc: u64,
    len: u8,
    budget: &QBudget,
    t: &mut Tally,
) {
    t.run += 1;
    leaves.clear();
    m.run_program_into(pool, enc, len, &FROZEN, budget, leaves);
    let mut nondyadic_here = false;
    let mut msum = Some(Dw::ZERO);
    let mut hsum = Some(Dw::ZERO);
    for leaf in leaves.iter() {
        t.max_steps = t.max_steps.max(leaf.steps);
        msum = msum.and_then(|s| leaf.mass.and_then(|x| s.add(x)));
        match &leaf.fate {
            Fate::Halt(_) => {
                t.halt_n += 1;
                t.success.add(leaf.mass);
                hsum = hsum.and_then(|s| leaf.mass.and_then(|x| s.add(x)));
                if let Some(mv) = leaf.mass {
                    if !is_dyadic(mv) {
                        t.nondyadic_leaves += 1;
                        nondyadic_here = true;
                    }
                }
            }
            Fate::Err(_) => t.err_n += 1,
            Fate::Unknown => {
                t.unk_n += 1;
                t.unresolved.add(leaf.mass);
            }
            Fate::Capacity(_) => {
                t.cap_n += 1;
                t.unresolved.add(leaf.mass);
            }
        }
    }
    if let Some(s) = msum {
        assert_eq!(
            s.reduce(),
            Dw::ONE,
            "mass conservation violated at ({enc:#x},{len})"
        );
    }
    if nondyadic_here && t.witnesses.len() < WITNESS_CAP {
        t.witnesses.push((enc, len));
    }
    if let Some(h) = hsum {
        let (_, (s2, _)) = radical_parts(h);
        if s2 != 0 {
            t.fate_div_n += 1;
            if t.fate_div.len() < WITNESS_CAP {
                t.fate_div.push((enc, len));
            }
        }
    }
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let lo: u32 = args.get(1).map(|s| s.parse().expect("lo")).unwrap_or(46);
    let hi: u32 = args.get(2).map(|s| s.parse().expect("hi")).unwrap_or(53);
    let count_only = args.get(3).map(|s| s == "count").unwrap_or(false);
    assert!(lo >= 12 && hi <= 63 && lo <= hi);

    // Hunt-precedent budgets (the 42..45 sweep): shallow-halter caveat
    // applies — a witness needing >β contractions would sit in `unk`.
    // Optional overrides: qradical [lo] [hi] [beta] [trans]  (adjudication
    // reruns at canonical census budgets: 4096 67108864).
    let budget = QBudget {
        beta: args
            .get(if count_only { 4 } else { 3 })
            .map(|s| s.parse().expect("beta"))
            .unwrap_or(512),
        trans: args
            .get(if count_only { 5 } else { 4 })
            .map(|s| s.parse().expect("trans"))
            .unwrap_or(1 << 20),
        ..QBudget::default()
    };
    let nthreads = rayon::current_num_threads();
    eprintln!(
        "qradical [{}]: sizes {lo}..={hi}, λ⁵ idiom, filter {{h,meas,new,t}}, \
         beta={} trans={}, {nthreads} threads",
        if count_only { "count" } else { "sweep" },
        budget.beta,
        budget.trans,
    );

    // Weighted running Ω-contribution across sizes: Σ 2^−n · Σ_success(n).
    let mut weighted = Exact::ZERO;
    let t0 = Instant::now();
    for n in lo..=hi {
        let tn = Instant::now();
        let tasks = interleave_tasks(split_tasks_at(5, n - 10, 0, 10, nthreads * 32));
        let tally = tasks
            .par_iter()
            .fold(
                || (Pool::new(), QMachine::new(), Vec::new(), Tally::new()),
                |(mut pool, mut m, mut leaves, mut t), task| {
                    run_task(task, &mut |enc, len| {
                        t.enumerated += 1;
                        if frame_mentions(enc, len) & REQUIRED != REQUIRED {
                            return;
                        }
                        if count_only {
                            t.run += 1;
                            return;
                        }
                        sweep_one(&mut pool, &mut m, &mut leaves, enc, len, &budget, &mut t);
                    });
                    (pool, m, leaves, t)
                },
            )
            .map(|(_, _, _, t)| t)
            .reduce(Tally::new, Tally::merge);

        if count_only {
            println!(
                "n={n:>2}: enumerated {:>12}  filtered {:>11}  ({:.2?})",
                tally.enumerated,
                tally.run,
                tn.elapsed()
            );
            continue;
        }
        assert!(tally.success.ok, "n={n}: success aggregate overflowed");
        let sum = tally.success.v.reduce();
        let parts = radical_parts(sum);
        weighted.add(sum.div_pow2(n));
        println!(
            "n={n:>2}: run {:>10}/{:<12}  halt {:>9}  err {:>10}  unk {:>6}  cap {:>3}  \
             nondyadic {:>3}  fatediv {:>3}  maxsteps {:>3}  ({:.2?})",
            tally.run,
            tally.enumerated,
            tally.halt_n,
            tally.err_n,
            tally.unk_n,
            tally.cap_n,
            tally.nondyadic_leaves,
            tally.fate_div_n,
            tally.max_steps,
            tn.elapsed()
        );
        println!("      Σ_success = {}   [{sum:?}]", show_parts(parts));
        if !tally.unresolved.ok || !tally.unresolved.v.is_zero() {
            println!(
                "      unresolved bracket: {:?} (ok={})",
                tally.unresolved.v.reduce(),
                tally.unresolved.ok
            );
        }
        for &(enc, len) in tally.fate_div.iter() {
            println!("      FATEDIV {}", enc_to_string(enc, len));
        }
        if tally.fate_div.len() == WITNESS_CAP {
            println!("      (fate-div list capped at {WITNESS_CAP})");
        }
        for &(enc, len) in tally.witnesses.iter() {
            println!("      WITNESS {}", enc_to_string(enc, len));
        }
        if tally.witnesses.len() == WITNESS_CAP {
            println!("      (witness list capped at {WITNESS_CAP})");
        }
    }
    if !count_only {
        assert!(weighted.ok, "weighted aggregate overflowed");
        let parts = radical_parts(weighted.v.reduce());
        println!(
            "Ω_success contribution of the swept idiom sector: {}   [{:.1?} total]",
            show_parts(parts),
            t0.elapsed()
        );
    }
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

    const WITNESS45: &str = "000000000001111100111111001100111111001111010";
    const P53: &str = "00000000000101111100111111001100111111001111010011010";

    #[test]
    fn frame_mentions_classify() {
        // witness45 and P53 mention exactly {t, new, meas, h}.
        let (e, l) = pack(WITNESS45);
        assert_eq!(frame_mentions(e, l), REQUIRED);
        let (e, l) = pack(P53);
        assert_eq!(frame_mentions(e, l), REQUIRED);
        // λ⁵. t t mentions only t.
        let (e, l) = pack("000000000001101010");
        assert_eq!(frame_mentions(e, l), 0b00001);
        // Local binders shift indices: λ⁵. λ.1 mentions nothing;
        // λ⁵. λ.2 reaches t through one local binder.
        let (e, l) = pack("00000000000010");
        assert_eq!(frame_mentions(e, l), 0);
        let (e, l) = pack("000000000000110");
        assert_eq!(frame_mentions(e, l), 0b00001);
    }

    #[test]
    fn radical_aggregates_of_the_two_witnesses() {
        let budget = QBudget {
            beta: 512,
            trans: 1 << 20,
            ..QBudget::default()
        };
        let mut pool = Pool::new();
        let mut m = QMachine::new();
        let mut leaves = Vec::new();

        // witness45: both branches halt, masses (2±√2)/4 — two non-dyadic
        // leaves whose SUM is exactly 1: the involution's within-program
        // cancellation, visible to the aggregate as dyadic.
        let mut t = Tally::new();
        let (e, l) = pack(WITNESS45);
        sweep_one(&mut pool, &mut m, &mut leaves, e, l, &budget, &mut t);
        assert_eq!(t.nondyadic_leaves, 2);
        assert_eq!(t.fate_div_n, 0); // leaves cancel within the program
        assert_eq!(t.success.v.reduce(), Dw::ONE);

        // P53: Err at (2+√2)/4, Halt at (2−√2)/4 — the unpaired witness;
        // its success aggregate IS the irrational mass.
        let mut t = Tally::new();
        let (e, l) = pack(P53);
        sweep_one(&mut pool, &mut m, &mut leaves, e, l, &budget, &mut t);
        assert_eq!(t.nondyadic_leaves, 1);
        assert_eq!(t.fate_div_n, 1); // the unpaired class, detected
        assert_eq!(t.err_n, 1);
        let ((ra, re), (sa, se)) = radical_parts(t.success.v);
        assert_eq!((ra, re), (1, 1)); // rational part 1/2
        assert_eq!((sa, se), (-1, 2)); // √2 part −√2/4
    }

    #[test]
    fn small_sizes_have_dyadic_idiom_aggregates() {
        // Exhaustive idiom sweep well below the 45-bit leaf threshold:
        // every aggregate must be exactly dyadic with zero non-dyadic
        // leaves (the 42..45 hunt proved leaves stay dyadic below 45).
        let budget = QBudget {
            beta: 512,
            trans: 1 << 20,
            ..QBudget::default()
        };
        for n in [16u32, 20, 24, 28] {
            let mut pool = Pool::new();
            let mut m = QMachine::new();
            let mut leaves = Vec::new();
            let mut t = Tally::new();
            for task in split_tasks_at(5, n - 10, 0, 10, 1) {
                run_task(&task, &mut |enc, len| {
                    t.enumerated += 1;
                    if frame_mentions(enc, len) & REQUIRED == REQUIRED {
                        sweep_one(&mut pool, &mut m, &mut leaves, enc, len, &budget, &mut t);
                    }
                });
            }
            assert_eq!(t.nondyadic_leaves, 0, "n={n}");
            assert!(t.success.ok, "n={n}");
            let (_, (sa, _)) = radical_parts(t.success.v);
            assert_eq!(sa, 0, "n={n}: idiom aggregate has a √2 part");
        }
    }
}
