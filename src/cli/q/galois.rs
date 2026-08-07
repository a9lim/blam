//! The dyadicity campaign: the two halves of the Galois-style split of
//! the closed-program space at a size, each accumulating the EXACT total
//! successful mass and reporting its √2-coefficient.
//!
//! `idiom` is phase 1 — programs of shape λ⁵.body, the signature idiom.
//! `complement` is phase 2 — everything else, k < 5 leading lambdas,
//! with a syntactic rung-0 filter in front of the engine. Together they
//! cover a size exactly.
//!
//! Shared here rather than duplicated: the packed prefix-binder walker
//! (`consumed_mentions`), which phase 1 uses at the idiom's fixed k = 5
//! and phase 2 at each k it meets, and the capped witness list both
//! tallies enforce.

use crate::args::R;

const USAGE: &str = "\
blam q galois — the dyadicity campaign

usage: blam q galois <sector> [LO] [HI] [flags]

  idiom        the lambda^5 idiom sector (phase 1)
  complement   the non-lambda^5 complement (phase 2)";

pub fn run(argv: &[String]) -> R<()> {
    let Some(sector) = argv.first() else {
        println!("{USAGE}");
        return Ok(());
    };
    let rest = &argv[1..];
    match sector.as_str() {
        "--help" | "-h" | "help" => {
            println!("{USAGE}");
            Ok(())
        }
        "idiom" => idiom::run(rest),
        "complement" => complement::run(rest),
        other => Err(format!(
            "blam q galois: unknown sector `{other}` (idiom|complement)\n\
             try `blam q galois --help`"
        )),
    }
}

/// Witness lists are evidence, not data: a size can produce millions of
/// hits and the first hundred settle the question either way. Both
/// sectors enforce the same cap so their reports compare directly.
const WITNESS_CAP: usize = 100;

/// A witness list that stops growing at [`WITNESS_CAP`]. The cap used to
/// be reimplemented at every push and every merge arm, in two tallies
/// with eight lists between them; here it is one invariant with one
/// place to break it.
#[derive(Clone, Default)]
struct CappedWitnesses(Vec<(u64, u8)>);

impl CappedWitnesses {
    fn push(&mut self, w: (u64, u8)) {
        if self.0.len() < WITNESS_CAP {
            self.0.push(w);
        }
    }

    /// Fold another list in, keeping the same cap (rayon reduce).
    fn merge(&mut self, o: CappedWitnesses) {
        for w in o.0 {
            self.push(w);
        }
    }

    /// Has the list stopped recording? (The reports say so explicitly:
    /// a truncated witness list must never read as an exhaustive one.)
    fn is_capped(&self) -> bool {
        self.0.len() == WITNESS_CAP
    }

    fn iter(&self) -> std::slice::Iter<'_, (u64, u8)> {
        self.0.iter()
    }
}

/// Bitmask of the k prefix binders referenced by the body of λᵏ.M (bit
/// s−1 for slot s ∈ 1..=k, innermost-first). One msb-first walk of the
/// packed body, tracking local binder depth; a var of index i at local
/// depth d references prefix slot i−d when i > d (closedness bounds
/// i ≤ d+k).
///
/// Phase 1 calls this at k = 5 (the idiom's own prefix — the binders it
/// consumes by construction) and phase 2 at the k it read off the
/// encoding's leading zeros; the walk is the same either way, which is
/// why it lives here and why neither sector keeps a fixed-k alias.
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

mod idiom {
    //! qradical: the radical-aggregate census — phase 1 of the dyadicity
    //! decision instrument for Ω_success beyond the exhaustive 45-bit horizon.
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
    //! Usage: `blam q galois idiom [LO] [HI] [--mode sweep|count]` (default
    //! 46 53 sweep; `--mode count` skips the engine and reports
    //! enumeration/filter counts only — the n=53 filtered count has an
    //! independent DP cross-check of 90,064,344.)

    use super::{consumed_mentions, CappedWitnesses, WITNESS_CAP};
    use crate::args::{self, Args, R};
    use blam::blc::enumerate::{interleave_tasks, run_task, split_tasks_at};
    use blam::blc::wire::enc_to_string;
    use blam::quantum::machine::{Machine as QMachine, Pool, QProgram};
    use blam::quantum::scalar::{is_dyadic, radical_parts, show_parts, ExactSum};
    use blam::quantum::sig::FROZEN;
    use blam::quantum::sweep::run_and_summarize;
    use blam::quantum::{Budget as QBudget, Fate, Leaf};
    use rayon::prelude::*;
    use std::time::Instant;

    /// The λ⁵ idiom's own prefix: five leading binders, consumed in
    /// signature order.
    const IDIOM_K: u32 = 5;

    /// Frame slots by innermost-first de Bruijn index under the λ⁵ idiom:
    /// t=1, cnot=2, new=3, meas=4, h=5. Required for a √2-capable trace:
    /// t, new, meas, h (cnot is permitted, not required).
    const REQUIRED: u8 = 0b11101;

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
        witnesses: CappedWitnesses,
        /// Programs whose per-program Σ Halt mass is itself irrational — the
        /// unpaired fate-divergent class, the only one that can push a size
        /// aggregate off the dyadics (witness45's leaves cancel within the
        /// program; P53's do not).
        fate_div_n: u64,
        fate_div: CappedWitnesses,
        /// Σ Halt mass, raw (per-size; weight by 2^−n only across sizes).
        success: ExactSum,
        /// Σ Unknown/Capacity mass — the caveat bracket for this size.
        unresolved: ExactSum,
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
                witnesses: CappedWitnesses::default(),
                fate_div_n: 0,
                fate_div: CappedWitnesses::default(),
                success: ExactSum::ZERO,
                unresolved: ExactSum::ZERO,
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
            self.witnesses.merge(o.witnesses);
            self.fate_div_n += o.fate_div_n;
            self.fate_div.merge(o.fate_div);
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
        // Run plus the shared mass-conservation battery (quantum::sweep):
        // Σ leaf mass = 1 exactly, asserted for every program of every
        // sweep, in one place none of the three can quietly skip.
        let summary = run_and_summarize(m, pool, &QProgram::new(enc, len, &FROZEN), budget, leaves);
        t.max_steps = t.max_steps.max(summary.max_steps);
        let mut nondyadic_here = false;
        for leaf in leaves.iter() {
            match &leaf.fate {
                Fate::Halt(_) => {
                    t.halt_n += 1;
                    t.success.add(leaf.mass);
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
        if nondyadic_here {
            t.witnesses.push((enc, len));
        }
        if let Some(h) = summary.halt_mass {
            let (_, (s2, _)) = radical_parts(h);
            if s2 != 0 {
                t.fate_div_n += 1;
                t.fate_div.push((enc, len));
            }
        }
    }

    const USAGE: &str = "\
blam q galois idiom [LO] [HI] — the lambda^5 idiom sector's radical aggregate

usage: blam q galois idiom [LO] [HI] [flags]      (default 46 53)

  --mode sweep|count   count skips the engine and reports enumeration and
                       filter counts only (default sweep)
  --beta N             beta-steps per branch (default 512, hunt precedent)
  --trans N            transitions per branch (default 1048576)";

    pub fn run(argv: &[String]) -> R<()> {
        if args::wants_help(argv) {
            println!("{USAGE}");
            return Ok(());
        }
        // Hunt-precedent budgets (the 42..45 sweep): shallow-halter caveat
        // applies — a witness needing >β contractions would sit in `unk`.
        // Adjudication reruns at canonical census budgets: 4096 67108864.
        let mut budget = QBudget {
            beta: 512,
            trans: 1 << 20,
            ..QBudget::default()
        };
        let mut count_only = false;
        let mut p = Args::new("q galois idiom", argv);
        while let Some(tok) = p.next() {
            match tok {
                "--beta" => budget.beta = p.num(tok)?,
                "--trans" => budget.trans = p.num(tok)?,
                "--mode" => {
                    count_only = match p.value(tok)? {
                        "sweep" => false,
                        "count" => true,
                        other => {
                            return Err(format!(
                                "blam q galois idiom: unknown mode `{other}` (sweep|count)\n{}",
                                args::hint("q galois idiom")
                            ))
                        }
                    }
                }
                _ if tok.starts_with('-') => return Err(p.unknown(tok)),
                _ => p.push(tok),
            }
        }
        p.at_most(2)?;
        let lo: u32 = p.pos_num(0)?.unwrap_or(46);
        let hi: u32 = p.pos_num(1)?.unwrap_or(53);
        if !(lo >= 12 && hi <= 63 && lo <= hi) {
            return Err(format!(
                "blam q galois idiom: need 12 <= LO <= HI <= 63, got {lo}..{hi}\n{}",
                args::hint("q galois idiom")
            ));
        }
        let nthreads = rayon::current_num_threads();
        eprintln!(
            "qradical [{}]: sizes {lo}..={hi}, λ⁵ idiom, filter {{h,meas,new,t}}, \
         beta={} trans={}, {nthreads} threads",
            if count_only { "count" } else { "sweep" },
            budget.beta,
            budget.trans,
        );

        // Weighted running Ω-contribution across sizes: Σ 2^−n · Σ_success(n).
        let mut weighted = ExactSum::ZERO;
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
                            if consumed_mentions(enc, len, IDIOM_K) & REQUIRED != REQUIRED {
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
            let sum = tally
                .success
                .expect_exact(&format!("n={n}: idiom success aggregate"))
                .reduce();
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
            if !tally.unresolved.is_exact() || !tally.unresolved.partial().is_zero() {
                println!(
                    "      unresolved bracket: {:?} (ok={})",
                    tally.unresolved.partial().reduce(),
                    tally.unresolved.is_exact()
                );
            }
            for &(enc, len) in tally.fate_div.iter() {
                println!("      FATEDIV {}", enc_to_string(enc, len));
            }
            if tally.fate_div.is_capped() {
                println!("      (fate-div list capped at {WITNESS_CAP})");
            }
            for &(enc, len) in tally.witnesses.iter() {
                println!("      WITNESS {}", enc_to_string(enc, len));
            }
            if tally.witnesses.is_capped() {
                println!("      (witness list capped at {WITNESS_CAP})");
            }
        }
        if !count_only {
            let parts = radical_parts(weighted.expect_exact("weighted aggregate").reduce());
            println!(
                "Ω_success contribution of the swept idiom sector: {}   [{:.1?} total]",
                show_parts(parts),
                t0.elapsed()
            );
        }
        Ok(())
    }

    #[cfg(test)]
    mod tests {
        use super::*;
        use blam::quantum::scalar::Dw;

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
            let frame = |e, l| consumed_mentions(e, l, IDIOM_K);
            // witness45 and P53 mention exactly {t, new, meas, h}.
            let (e, l) = pack(WITNESS45);
            assert_eq!(frame(e, l), REQUIRED);
            let (e, l) = pack(P53);
            assert_eq!(frame(e, l), REQUIRED);
            // λ⁵. t t mentions only t.
            let (e, l) = pack("000000000001101010");
            assert_eq!(frame(e, l), 0b00001);
            // Local binders shift indices: λ⁵. λ.1 mentions nothing;
            // λ⁵. λ.2 reaches t through one local binder.
            let (e, l) = pack("00000000000010");
            assert_eq!(frame(e, l), 0);
            let (e, l) = pack("000000000000110");
            assert_eq!(frame(e, l), 0b00001);
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
            assert_eq!(t.success.expect_exact("witness45").reduce(), Dw::ONE);

            // P53: Err at (2+√2)/4, Halt at (2−√2)/4 — the unpaired witness;
            // its success aggregate IS the irrational mass.
            let mut t = Tally::new();
            let (e, l) = pack(P53);
            sweep_one(&mut pool, &mut m, &mut leaves, e, l, &budget, &mut t);
            assert_eq!(t.nondyadic_leaves, 1);
            assert_eq!(t.fate_div_n, 1); // the unpaired class, detected
            assert_eq!(t.err_n, 1);
            let ((ra, re), (sa, se)) = radical_parts(t.success.expect_exact("P53"));
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
                        if consumed_mentions(enc, len, IDIOM_K) & REQUIRED == REQUIRED {
                            sweep_one(&mut pool, &mut m, &mut leaves, enc, len, &budget, &mut t);
                        }
                    });
                }
                assert_eq!(t.nondyadic_leaves, 0, "n={n}");
                let (_, (sa, _)) = radical_parts(t.success.expect_exact(&format!("n={n}")));
                assert_eq!(sa, 0, "n={n}: idiom aggregate has a √2 part");
            }
        }
    }
}

mod complement {
    //! qcomplement: phase 2 of the dyadicity decision instrument — the exact
    //! radical aggregate of the non-λ⁵ complement, 46..53.
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
    //! DP-verified) — 36× phase 1's enumeration. The protocol:
    //!
    //! - **Rung 0** (syntactic, one O(n) bit-walk): leading-λ count k comes
    //!   from the packed encoding's leading zeros (λᵏ = 2k zeros; a non-λ
    //!   body adds exactly one more for an app head, none for a var head, so
    //!   k = lz/2 either way). k ≥ 5 → phase 1's population, skipped. For
    //!   k ≥ 1, REJECT if a consumed REQUIRED argument's binder is
    //!   unreferenced in the body — the source-origin lemma (β duplicates
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
    //!   abstraction and no necessity lemma. *Terminal stability* makes
    //!   the tree budget-independent: a resolved tree is bit-identical at every
    //!   larger budget; partial trees do not extend, so unresolved programs
    //!   contribute nothing here.
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
    //! Usage: `blam q galois complement [LO] [HI] [flags]` — see `USAGE`.
    //!   `--mode` ∈ sweep (default) | count | adjudicate
    //!   defaults: 46 53, sweep at 512/2²⁰ (hunt precedent), adjudicate at
    //!   4096/2²⁶ (canonical), `--file qcomplement_unresolved.txt` (sweep
    //!   truncates it; adjudicate reads it and writes `<file>.rem`).
    //!   `--slice i/m` (sweep/count): run every m-th interleaved task with
    //!   offset i — disjoint exact cover, so a big size splits into
    //!   independent runs under a9's ≤1-2h-per-run cap; slice tallies
    //!   merge by exact addition (unit-tested).

    use super::{consumed_mentions, CappedWitnesses, WITNESS_CAP};
    use crate::args::{self, Args, R};
    use blam::blc::enumerate::{interleave_tasks, run_task, split_tasks};
    use blam::blc::wire::enc_to_string;
    use blam::quantum::machine::{Machine as QMachine, Pool, QProgram};
    use blam::quantum::scalar::{is_dyadic, radical_parts, show_parts, sqrt2_part, ExactSum};
    use blam::quantum::sig::FROZEN;
    use blam::quantum::sweep::run_and_summarize;
    use blam::quantum::{Budget as QBudget, Fate, Leaf};
    use rayon::prelude::*;
    use std::io::{BufRead, BufWriter, Write};
    use std::sync::Mutex;
    use std::time::Instant;

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
        unresolved_w: CappedWitnesses,
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
        witnesses: CappedWitnesses,
        /// Resolved programs whose Σ Halt mass is irrational — the unpaired
        /// fate-divergent class, the only one that can move a size aggregate
        /// off the dyadics.
        fate_div_n: u64,
        fate_div: CappedWitnesses,
        /// Resolved programs whose Σ Halt mass overflowed Dw (√2 part
        /// undecided — would need individual adjudication; expected zero).
        radical_unknown_n: u64,
        radical_unknown_w: CappedWitnesses,
        /// Σ Halt mass over RESOLVED programs (per-size; weight by 2^−n only
        /// across sizes).
        success: ExactSum,
        /// The threshold deliverable: Σ over resolved programs of the
        /// √2-coefficient of their Σ Halt mass (scalar::sqrt2_part).
        sqrt2: ExactSum,
        /// Unresolved programs' Halt-leaf mass (partial trees) — reported,
        /// never added to `success`; adjudication re-derives it whole.
        deferred: ExactSum,
        /// √2 part of `deferred` (the caveat's radical exposure).
        deferred_sqrt2: ExactSum,
        /// Σ Unknown/Capacity leaf mass — the pending bracket.
        unresolved: ExactSum,
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
                unresolved_w: CappedWitnesses::default(),
                halt_n: 0,
                err_n: 0,
                unk_beta: 0,
                unk_trans: 0,
                cap_n: 0,
                nondyadic_leaves: 0,
                witnesses: CappedWitnesses::default(),
                fate_div_n: 0,
                fate_div: CappedWitnesses::default(),
                radical_unknown_n: 0,
                radical_unknown_w: CappedWitnesses::default(),
                success: ExactSum::ZERO,
                sqrt2: ExactSum::ZERO,
                deferred: ExactSum::ZERO,
                deferred_sqrt2: ExactSum::ZERO,
                unresolved: ExactSum::ZERO,
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
                dst.merge(src);
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
        // Run plus the shared mass-conservation battery (quantum::sweep),
        // which also settles resolvedness and the per-program Σ Halt mass.
        let summary = run_and_summarize(m, pool, &QProgram::new(enc, len, &FROZEN), budget, leaves);
        t.max_steps = t.max_steps.max(summary.max_steps);
        let resolved = summary.resolved;
        let hsum = summary.halt_mass;

        let mut nondyadic_here = false;
        for leaf in leaves.iter() {
            match &leaf.fate {
                Fate::Halt(_) => {
                    t.halt_n += 1;
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
            t.unresolved_w.push((enc, len));
            t.deferred_sqrt2.add(hsum.map(sqrt2_part));
            if let Some(s) = sink {
                let mut w = s.lock().unwrap();
                writeln!(w, "{} {}", len, enc_to_string(enc, len)).expect("unresolved sink write");
            }
            return false;
        }
        if nondyadic_here {
            t.witnesses.push((enc, len));
        }
        match hsum {
            Some(h) => {
                let s2 = sqrt2_part(h);
                if !s2.is_zero() {
                    t.sqrt2.add(Some(s2));
                    t.fate_div_n += 1;
                    t.fate_div.push((enc, len));
                }
            }
            None => {
                // Halt mass overflowed: the program's √2 part is undecided.
                t.sqrt2.add(None);
                t.radical_unknown_n += 1;
                t.radical_unknown_w.push((enc, len));
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

    fn print_witness_lines(label: &str, list: &CappedWitnesses, total: u64) {
        for &(enc, len) in list.iter() {
            println!("      {label} {}", enc_to_string(enc, len));
        }
        if list.is_capped() && total > WITNESS_CAP as u64 {
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
        match tally.success.value() {
            Some(v) => {
                let sum = v.reduce();
                println!(
                    "      Σ_success (resolved rung-0 survivors) = {}   [{sum:?}]",
                    show_parts(radical_parts(sum))
                );
            }
            None => println!(
                "      Σ_success (resolved): rational aggregate OVERFLOWED (√2 track unaffected)"
            ),
        }
        // The threshold deliverable rides its own accumulator precisely so
        // it survives a rational-part overflow; if THIS one is poisoned
        // there is no number to report.
        let s2 = tally.sqrt2.expect_exact(&format!(
            "n={n}: √2 accumulator poisoned — adjudicate the radical-unk witnesses"
        ));
        let (s2n, s2e) = {
            let r = s2.reduce();
            assert!(r.b == 0 && r.c == 0 && r.d == 0 && r.k.is_multiple_of(2));
            (r.a, r.k / 2)
        };
        println!("      √2-coefficient of Σ_success = {s2n}/2^{s2e}   [exact]");
        if s2n != 0 {
            weighted_s2.add(s2n, s2e + n);
        }
        if !tally.unresolved.is_exact() || !tally.unresolved.partial().is_zero() {
            println!(
            "      unresolved bracket: {:?} (ok={})   deferred halt mass: {:?} (ok={}, √2 {:?} ok={})",
            tally.unresolved.partial().reduce(),
            tally.unresolved.is_exact(),
            tally.deferred.partial().reduce(),
            tally.deferred.is_exact(),
            tally.deferred_sqrt2.partial().reduce(),
            tally.deferred_sqrt2.is_exact(),
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
        tally.success.is_exact()
    }

    const USAGE: &str = "\
blam q galois complement [LO] [HI] — the non-lambda^5 complement sector

usage: blam q galois complement [LO] [HI] [flags]     (default 46 53)

  --mode sweep|count|adjudicate   sweep (default) evaluates rung-0
                       survivors and streams the unresolved wires;
                       count reports enumeration and filter counts only;
                       adjudicate re-runs --file at raised budgets
  --beta N     beta-steps per branch (default 512; 4096 in adjudicate mode)
  --trans N    transitions per branch (default 1048576; 67108864 there)
  --file FILE  unresolved-wire stream (default qcomplement_unresolved.txt);
               sweep truncates it, adjudicate reads it and writes <FILE>.rem
  --slice i/m  run every m-th interleaved task with offset i — a disjoint
               exact cover, so one size splits into independent runs
               (sweep/count only)";

    pub fn run(argv: &[String]) -> R<()> {
        if args::wants_help(argv) {
            println!("{USAGE}");
            return Ok(());
        }
        let mut mode = "sweep";
        let mut beta: Option<u64> = None;
        let mut trans: Option<u64> = None;
        let mut path = String::from("qcomplement_unresolved.txt");
        let mut slice_arg: Option<String> = None;
        let mut p = Args::new("q galois complement", argv);
        while let Some(tok) = p.next() {
            match tok {
                "--beta" => beta = Some(p.num(tok)?),
                "--trans" => trans = Some(p.num(tok)?),
                "--file" => path = p.value(tok)?.to_string(),
                "--slice" => slice_arg = Some(p.value(tok)?.to_string()),
                "--mode" => {
                    mode = match p.value(tok)? {
                        "sweep" => "sweep",
                        "count" => "count",
                        "adjudicate" => "adjudicate",
                        other => {
                            return Err(format!(
                                "blam q galois complement: unknown mode `{other}` \
                             (sweep|count|adjudicate)\n{}",
                                args::hint("q galois complement")
                            ))
                        }
                    }
                }
                _ if tok.starts_with('-') => return Err(p.unknown(tok)),
                _ => p.push(tok),
            }
        }
        p.at_most(2)?;
        let lo: u32 = p.pos_num(0)?.unwrap_or(46);
        let hi: u32 = p.pos_num(1)?.unwrap_or(53);
        let budget = QBudget {
            beta: beta.unwrap_or(if mode == "adjudicate" { 4096 } else { 512 }),
            trans: trans.unwrap_or(if mode == "adjudicate" {
                1 << 26
            } else {
                1 << 20
            }),
            ..QBudget::default()
        };
        // Optional "i/m" slice spec: run only every m-th task (offset i) of
        // the interleaved task list — disjoint, exactly covering slices, so
        // a big size splits into independent ≤2h runs whose tallies merge
        // by exact addition (unit-tested). Sweep/count modes only.
        let slice: Option<(usize, usize)> = match &slice_arg {
            None => None,
            Some(s) => {
                let bad = || {
                    format!(
                    "blam q galois complement: `--slice {s}`: expected i/m with i < m and m >= 1\n{}",
                    args::hint("q galois complement")
                )
                };
                let (i, m) = s.split_once('/').ok_or_else(bad)?;
                let (i, m): (usize, usize) =
                    (i.parse().map_err(|_| bad())?, m.parse().map_err(|_| bad())?);
                if m < 1 || i >= m {
                    return Err(bad());
                }
                if mode == "adjudicate" {
                    return Err(format!(
                        "blam q galois complement: --slice applies to sweep/count only\n{}",
                        args::hint("q galois complement")
                    ));
                }
                Some((i, m))
            }
        };
        if !(lo >= 4 && hi <= 63 && lo <= hi) {
            return Err(format!(
                "blam q galois complement: need 4 <= LO <= HI <= 63, got {lo}..{hi}\n{}",
                args::hint("q galois complement")
            ));
        }

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
            return Ok(());
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
        Ok(())
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
        use blam::quantum::scalar::Dw;

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
                blam::blc::enumerate::for_each_closed(n, &mut |enc, len| {
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
            let r = t.sqrt2.expect_exact("wrapped P53 √2").reduce();
            assert_eq!((r.a, r.k), (-1, 4), "√2 part is −1/4");
        }

        #[test]
        fn rung0_rejections_are_dyadic() {
            // Every mention-rejected program, run at canonical budgets, must
            // show only dyadic resolved masses and a zero per-program √2 part
            // — the source-origin lemma's checkable shadow.
            let mut pool = Pool::new();
            let mut m = QMachine::new();
            let mut leaves = Vec::new();
            for n in 4..=26 {
                blam::blc::enumerate::for_each_closed(n, &mut |enc, len| {
                    let k = leading_lambdas(enc, len);
                    if !(1..5).contains(&k)
                        || consumed_mentions(enc, len, k) & REQ[k as usize] == REQ[k as usize]
                    {
                        return;
                    }
                    leaves.clear();
                    m.run_into_with(
                        &mut pool,
                        &QProgram::new(enc, len, &FROZEN),
                        &CANONICAL,
                        &mut leaves,
                    );
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
                blam::blc::enumerate::for_each_closed(n, &mut |enc, len| {
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
                assert_eq!(
                    composed.expect_exact("composed").reduce(),
                    single.success.expect_exact("single").reduce(),
                    "n={n}"
                );
                let mut composed_s2 = sweep.sqrt2;
                composed_s2.merge(&adj.sqrt2);
                assert_eq!(
                    composed_s2.expect_exact("composed √2").reduce(),
                    single.sqrt2.expect_exact("single √2").reduce(),
                    "n={n}"
                );
                assert_eq!(
                    sweep.fate_div_n + adj.fate_div_n,
                    single.fate_div_n,
                    "n={n}"
                );
                assert_eq!(adj.unresolved_n, single.unresolved_n, "n={n}");
                assert_eq!(
                    adj.deferred.expect_exact("adj deferred").reduce(),
                    single.deferred.expect_exact("single deferred").reduce(),
                    "n={n}"
                );
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
                let mut sweep_tasks = |tasks: Vec<blam::blc::enumerate::GenTask>, t: &mut Tally| {
                    for task in &tasks {
                        blam::blc::enumerate::run_task(task, &mut |enc, len| {
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
                assert_eq!(
                    merged.success.expect_exact("merged").reduce(),
                    full.success.expect_exact("full").reduce(),
                    "n={n}"
                );
                assert_eq!(
                    merged.sqrt2.expect_exact("merged √2").reduce(),
                    full.sqrt2.expect_exact("full √2").reduce(),
                    "n={n}"
                );
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
                blam::blc::enumerate::for_each_closed(n, &mut |enc, len| {
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
                assert!(t.sqrt2.expect_exact("√2").is_zero(), "n={n}");
                assert!(
                    t.deferred_sqrt2.expect_exact("deferred √2").is_zero(),
                    "n={n}"
                );
                assert_eq!(t.fate_div_n, 0, "n={n}");
                assert_eq!(t.radical_unknown_n, 0, "n={n}");
            }
        }
    }
}
