//! Trusted skeleton checker for the quantum escalation ladder
//! (`docs/quantum/escalation.md`).
//!
//! Adjudicates a qBLC program `p` by exact symbolic reduction of
//! `p X₁ … X_k` with one opaque hole per signature slot. Holes are
//! represented as root-free de Bruijn variables (at depth d, any index
//! exceeding d): named, mutually distinct, never collapsed — deliberately
//! NOT the escalation engine's ⊥-abstraction, whose `simplify`/`bot_free`
//! machinery distinguishes live placeholders from dead ⊥ and therefore
//! breaks shape-replay uniformity (counterexample on the ratification
//! thread: simplify(D x) = x x but simplify(D ⊥) = D ⊥). This checker
//! does plain leftmost-outermost β only — no simplify, no oracle, no
//! history abstraction — so every conclusion is an exact statement about
//! the one demanded-path reduction chain both machines share.
//!
//! Verdicts and their transfer theorems (σ = the primitive substitution):
//!
//! - `Loop`: the chain revisited an exact state. The symbolic search is
//!   deterministic, so it runs forever; no hole was ever demanded along
//!   it, so under σ no primitive redex ever fires (δ-rules are
//!   demand-gated) and the quantum machine walks the identical infinite
//!   chain — single branch, no fork, never Normal. No Halt leaf at any
//!   budget: the program contributes exactly zero to Ω_success.
//! - `HoleFree(r)`: every hole was erased; `σ(p x⃗) →β* σ(r) = r` by the
//!   identical steps with no primitive fired and the store still empty.
//!   `r` is a closed pure term in both machines, so classical SEMANTIC
//!   verdicts transfer wholesale (oracle and escalation engine allowed):
//!   classical NF ⇒ quantum Halt with empty store at full mass;
//!   classical proven no-NF ⇒ no Halt leaf. Step counts and resource
//!   outcomes do not transfer.
//! - `HoleDemanded`: a hole reached operator position on the demanded
//!   path — under σ a primitive could saturate, fire, fork, or Err
//!   there. No claim; the program stays with the quantum engines.
//! - `CapOut`: step or size budget exhausted before any exit.
//!
//! The reducer must abort the moment the search TOUCHES an application
//! headed by a hole — before descending into its arguments — because the
//! quantum machine's saturation/species checks inspect exactly that
//! position ("abort when evaluation would need the hole's
//! operator/value classification", per the ratified design). A bare hole
//! in argument position is inert on both sides and travels through β
//! opaquely.

use crate::blc::reduction::beta;
use crate::blc::{app, lam, Term};
use crate::classical::escalation::{normal_form_with, EngineCfg, LTerm, NoNf};
use crate::classical::machine::{Machine, Pool, SizeSink};
use crate::classical::oracle;
use crate::quantum::sig;
use std::collections::HashSet;

#[derive(Clone, Debug, PartialEq, Eq)]
pub enum SkelVerdict {
    /// Exact state recurrence: proven diverger, zero Ω_success mass.
    Loop { steps: u64 },
    /// Hole-free CLOSED residual: classical semantic verdicts transfer.
    HoleFree { residual: Term, steps: u64 },
    /// Symbolic normal form with holes surviving in argument positions
    /// (never applied — the reducer aborts on applied holes first).
    /// Under σ those slots are bare primitives, which are canonical
    /// values: the quantum run reaches the same normal form and Halts
    /// with an empty store at full mass. Decisive: quantum Halt.
    NormalWithHoles { steps: u64 },
    /// A hole reached operator position; out of this checker's scope.
    HoleDemanded { steps: u64 },
    /// Budget exhausted (steps or term size), with the telemetry rung 3
    /// needs to stratify its survivors.
    CapOut(CapOut),
}

/// Which cap fired, and where the chain had got to.
///
/// `docs/quantum/escalation.md`, rung 3: "CapOut must record which cap
/// fired and the high-water state, so that a stratified sample can split
/// the population — size-bound monotone growers go to pattern discovery,
/// step-bound bounded-size terms justify another exact-cycle tier." Both
/// abort sites already knew which one they were; the verdict just did not
/// carry it.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct CapOut {
    pub reason: CapReason,
    /// Reduction steps taken before the abort.
    pub steps: u64,
    /// Largest term size (BLC bits) reached along the chain.
    pub high_water_bits: u64,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum CapReason {
    /// The step budget ran out at bounded size — an exact-cycle candidate.
    Steps,
    /// The term grew past the size ceiling — a monotone grower, pattern
    /// discovery's population.
    Size,
}

/// `adjudicate`'s input contract: the checker adjudicates CLOSED programs,
/// because holes are exactly the root-free variables and a program's own
/// free variable would be silently reinterpreted as a signature slot.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct OpenProgram {
    /// Largest free de Bruijn index found at the root.
    pub max_free: u32,
}

impl std::fmt::Display for OpenProgram {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "skeleton adjudication needs a closed program (free index {})",
            self.max_free
        )
    }
}

pub struct SkelCaps {
    /// Reduction steps before giving up.
    pub steps: u64,
    /// Term size (BLC bits) ceiling; growing past it is CapOut.
    pub size_bits: u64,
}

impl Default for SkelCaps {
    /// Tier-1 sweep caps: exact loops recur within a handful of steps
    /// and exponential growers breach the size ceiling within ~10, so
    /// tight caps keep the per-program cost microseconds-grade. Raise
    /// per tier on survivors, not globally — each step costs O(size)
    /// in cloning and the recurrence key is the full wire string.
    fn default() -> Self {
        SkelCaps {
            steps: 256,
            size_bits: 1 << 14,
        }
    }
}

enum Step {
    Did(Term),
    /// No redex on the demanded path: symbolic normal form.
    Nf,
    Hole,
}

/// One traversal for the three things the adjudication loop asks of a
/// term each step: its BLC bit-string (the recurrence key), that string's
/// length (the size cap — `Var(n)` writes `n` ones and a zero, so
/// `out.len()` grows by exactly `Term::bit_size`'s contribution at every
/// node), and the largest free index (hole-freeness). The loop used to
/// walk the term three times and build a `String` besides.
fn write_bits_max_free(t: &Term, depth: u32, out: &mut String) -> u32 {
    match t {
        Term::Var(n) => {
            for _ in 0..*n {
                out.push('1');
            }
            out.push('0');
            n.saturating_sub(depth)
        }
        Term::Lam(b) => {
            out.push_str("00");
            write_bits_max_free(b, depth + 1, out)
        }
        Term::App(f, a) => {
            out.push_str("01");
            let hf = write_bits_max_free(f, depth, out);
            hf.max(write_bits_max_free(a, depth, out))
        }
    }
}

/// One leftmost-outermost step, holes inert, hole-headed applications
/// fatal. `depth` = binders enclosing the current position; a Var with
/// index > depth is a hole.
fn step(t: &Term, depth: u32) -> Step {
    match t {
        Term::Var(_) => Step::Nf,
        Term::Lam(b) => match step(b, depth + 1) {
            Step::Did(nb) => Step::Did(lam(nb)),
            other => other,
        },
        Term::App(f, a) => {
            match &**f {
                Term::Lam(body) => return Step::Did(beta(body, a)),
                Term::Var(n) if *n > depth => return Step::Hole,
                _ => {}
            }
            match step(f, depth) {
                Step::Did(nf) => Step::Did(app(nf, (**a).clone())),
                Step::Nf => match step(a, depth) {
                    Step::Did(na) => Step::Did(app((**f).clone(), na)),
                    other => other,
                },
                Step::Hole => Step::Hole,
            }
        }
    }
}

/// Adjudicate closed `p` applied to `slots` holes.
///
/// An open `p` is an input error, not a verdict: its own free variables
/// are indistinguishable from holes at the root, so adjudicating one would
/// silently reinterpret them as signature slots and hand back a
/// conclusion about a different program.
pub fn adjudicate(p: &Term, slots: u32, caps: &SkelCaps) -> Result<SkelVerdict, OpenProgram> {
    let max_free = p.max_free(0);
    if max_free != 0 {
        return Err(OpenProgram { max_free });
    }
    let mut t = sig::with_holes(p, slots);
    // The exact wire string is the trusted-proof recurrence key: `Loop` is
    // only sound because two states that compare equal here ARE equal, so
    // this stays a full `String` set and never becomes a hash.
    let mut seen: HashSet<String> = HashSet::new();
    let mut steps = 0u64;
    // Every read of `high_water` below is preceded by the `max` against the
    // current term's size in the same iteration, so it starts at zero
    // rather than costing an extra `bit_size` walk up front.
    let mut high_water = 0u64;
    // Reused across iterations: the key is only cloned into `seen` on a
    // miss, so a growing chain no longer re-grows a fresh buffer per step.
    let mut bits = String::new();
    let cap = |reason, steps, high_water_bits| {
        Ok(SkelVerdict::CapOut(CapOut {
            reason,
            steps,
            high_water_bits,
        }))
    };
    loop {
        bits.clear();
        if write_bits_max_free(&t, 0, &mut bits) == 0 {
            return Ok(SkelVerdict::HoleFree { residual: t, steps });
        }
        let nbits = bits.len() as u64;
        high_water = high_water.max(nbits);
        if nbits > caps.size_bits {
            return cap(CapReason::Size, steps, high_water);
        }
        if seen.contains(bits.as_str()) {
            return Ok(SkelVerdict::Loop { steps });
        }
        if steps >= caps.steps {
            return cap(CapReason::Steps, steps, high_water);
        }
        seen.insert(bits.clone());
        match step(&t, 0) {
            Step::Did(nt) => {
                t = nt;
                steps += 1;
            }
            Step::Nf => return Ok(SkelVerdict::NormalWithHoles { steps }),
            Step::Hole => return Ok(SkelVerdict::HoleDemanded { steps }),
        }
    }
}

// ---------------------------------------------------------------------------
// The transfer ladder: skeleton verdict + the classical rung that turns a
// hole-free residual into a quantum fate.

/// Reusable arenas for the residual ladder. A sweep threads one of these
/// per worker (`for_each_init`): both the KN pool and the KN machine reset
/// themselves per call, so reuse is verdict-neutral and only saves the
/// per-program allocation the driver used to pay.
#[derive(Default)]
pub struct TransferScratch {
    pool: Pool,
    kn: Machine,
}

impl TransferScratch {
    pub fn new() -> TransferScratch {
        TransferScratch::default()
    }
}

/// Budgets for the residual (rung-2) classical ladder.
pub struct TransferCaps {
    /// KN β budget on the closed residual before escalating.
    pub kn_beta: u64,
    /// Escalation-engine capacity on the residual (the census default).
    pub residual_cap: i64,
    /// Escalation-engine settings for the residual run — explicit data,
    /// like every engine config in the library (the CLI resolves
    /// flag → env → default and passes the result down).
    pub engine: EngineCfg,
}

impl Default for TransferCaps {
    fn default() -> Self {
        TransferCaps {
            kn_beta: 65_536,
            residual_cap: 2_000_000,
            engine: EngineCfg::default(),
        }
    }
}

/// How a hole-free residual's classical fate was established.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Via {
    /// The syntactic no-nf oracle fired on the residual.
    Oracle,
    /// The KN machine normalised it within `kn_beta`.
    Kn,
    /// The escalation engine settled it (halt or proven Diverge).
    Bb,
}

/// The full ladder's outcome for one program.
///
/// Rung 1 (`Loop` / `HaltInert` / `HoleDemanded` / `CapOut`) is the trusted
/// checker's own verdict; rung 2 (`Halt` / `Div` / `ResidualUnknown`) is the
/// classical adjudication of a `HoleFree` residual. Only `Loop`, `HaltInert`,
/// `Halt`, and `Div` transfer to the quantum run — see the transfer theorems
/// on `SkelVerdict` and `docs/quantum/escalation.md`.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Transfer {
    /// Exact recurrence of a hole-inert chain: proven quantum diverger.
    Loop { steps: u64 },
    /// Symbolic normal form with inert holes: proven quantum Halt, empty store.
    HaltInert { steps: u64 },
    /// A hole reached operator position; the quantum engines keep this one.
    HoleDemanded { steps: u64 },
    /// Rung 1's budget ran out.
    CapOut(CapOut),
    /// Hole-free residual with a classical normal form: quantum Halt.
    Halt { steps: u64, nf_bits: u64, via: Via },
    /// Hole-free residual proven to have no normal form: no Halt leaf.
    Div { steps: u64, via: Via },
    /// Hole-free residual the classical ladder could not settle — a new
    /// hard classical term, compactly generated (escalation.md, rung 2).
    ResidualUnknown { steps: u64 },
}

/// Rung 1 + rung 2 in one call: adjudicate the skeleton, and where it
/// erases every hole, run the closed residual through the classical
/// semantic ladder (oracle → KN → escalation engine).
///
/// This is the ladder `blam q skeleton` used to carry inline. Promoting it
/// keeps the transfer argument — which classical verdicts may be believed
/// about a residual, and why — beside the checker whose theorem licenses
/// it, instead of in a driver.
pub fn adjudicate_with_transfer(
    p: &Term,
    slots: u32,
    caps: &SkelCaps,
    transfer: &TransferCaps,
    scratch: &mut TransferScratch,
) -> Result<Transfer, OpenProgram> {
    Ok(match adjudicate(p, slots, caps)? {
        SkelVerdict::Loop { steps } => Transfer::Loop { steps },
        SkelVerdict::NormalWithHoles { steps } => Transfer::HaltInert { steps },
        SkelVerdict::HoleDemanded { steps } => Transfer::HoleDemanded { steps },
        SkelVerdict::CapOut(c) => Transfer::CapOut(c),
        SkelVerdict::HoleFree { residual, steps } => {
            // Classical semantic ladder on the closed residual; Halt AND
            // proven no-NF both transfer (`HoleFree`'s theorem: both
            // machines now run the same closed pure term).
            let lt = LTerm::from_term(&residual);
            if oracle::no_nf(0, &lt) {
                return Ok(Transfer::Div {
                    steps,
                    via: Via::Oracle,
                });
            }
            scratch.pool.clear();
            // Straight from the tree — the residual is already in hand, so
            // a to_bits/decode_str round-trip through the wire format was
            // pure ceremony (and it re-parses a residual that rung 2 grows
            // into the thousands of bits).
            let root = scratch.pool.from_term(&residual);
            let mut sink = SizeSink::default();
            match scratch
                .kn
                .normalize(&scratch.pool, root, transfer.kn_beta, &mut sink)
            {
                Ok(_) => Transfer::Halt {
                    steps,
                    nf_bits: sink.0,
                    via: Via::Kn,
                },
                Err(_) => match normal_form_with(transfer.engine, transfer.residual_cap, &lt).0 {
                    Ok(nf) => Transfer::Halt {
                        steps,
                        nf_bits: nf.bit_size(),
                        via: Via::Bb,
                    },
                    Err(NoNf::Diverge) => Transfer::Div {
                        steps,
                        via: Via::Bb,
                    },
                    Err(NoNf::Unknown(_)) => Transfer::ResidualUnknown { steps },
                },
            }
        }
    })
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::blc::var;
    use crate::blc::wire::parse_all;

    fn d() -> Term {
        lam(app(var(1), var(1)))
    }

    /// Every fixture here is a closed program, so the input contract is
    /// satisfied by construction; unwrapping keeps the assertions about
    /// verdicts rather than about `Result`.
    fn adj(p: &Term, slots: u32) -> SkelVerdict {
        adjudicate(p, slots, &SkelCaps::default()).expect("fixture is closed")
    }

    #[test]
    fn omega_sig_loops() {
        // Ω x⃗: D D recurs exactly after one step.
        let omega = app(d(), d());
        match adj(&omega, 5) {
            SkelVerdict::Loop { steps } => assert!(steps <= 2, "{steps}"),
            other => panic!("{other:?}"),
        }
    }

    #[test]
    fn wrapped_omega_loops() {
        // (λ.Ω) x₁ … discards a hole then loops.
        let p = lam(app(d(), d()));
        assert!(matches!(adj(&p, 5), SkelVerdict::Loop { .. }));
    }

    #[test]
    fn open_input_is_an_error_not_a_verdict() {
        // λ.(1 2) has a free index: adjudicating it would silently read
        // that variable as a signature slot.
        let open = lam(app(var(1), var(2)));
        assert_eq!(
            adjudicate(&open, 5, &SkelCaps::default()),
            Err(OpenProgram { max_free: 1 })
        );
    }

    #[test]
    fn capout_records_which_cap_fired() {
        // λa. (G G) a with G = λx. x x x: the head chain G G → G G G → …
        // grows without bound while the hole rides along inert in
        // argument position, so nothing recurs and nothing is demanded —
        // the size ceiling is what stops it.
        let g = lam(app(app(var(1), var(1)), var(1)));
        let grower = lam(app(app(g.clone(), g), var(1)));
        let caps = SkelCaps {
            steps: 1000,
            size_bits: 64,
        };
        match adjudicate(&grower, 1, &caps).unwrap() {
            SkelVerdict::CapOut(c) => {
                assert_eq!(c.reason, CapReason::Size);
                assert!(c.high_water_bits > caps.size_bits, "{c:?}");
                assert!(c.steps > 0, "{c:?}");
            }
            other => panic!("{other:?}"),
        }
        // Bounded size, no room to step: the step cap fires instead, and
        // the two are distinguishable — which is the whole point of the
        // telemetry (escalation.md's rung-3 stratification).
        let caps = SkelCaps {
            steps: 0,
            size_bits: 1 << 14,
        };
        match adjudicate(&app(d(), d()), 5, &caps).unwrap() {
            SkelVerdict::CapOut(c) => {
                assert_eq!(c.reason, CapReason::Steps);
                assert_eq!(c.steps, 0);
                assert!(c.high_water_bits <= caps.size_bits, "{c:?}");
            }
            other => panic!("{other:?}"),
        }
    }

    #[test]
    fn transfer_ladder_settles_both_directions() {
        let mut scratch = TransferScratch::new();
        let caps = SkelCaps::default();
        let tc = TransferCaps::default();
        let mut go = |p: &Term, slots: u32| {
            adjudicate_with_transfer(p, slots, &caps, &tc, &mut scratch).expect("closed")
        };
        // D (λx.λy. x x): erases every hole, residual W W diverges. Which
        // rung proves it is the ladder's business (the oracle gets first
        // refusal); that it is a Div is the transfer claim.
        let w = lam(lam(app(var(2), var(2))));
        assert!(matches!(go(&app(d(), w), 5), Transfer::Div { .. }));
        // λ⁶.1 erases the signature and halts at λ.1 — two bits of NF.
        let halter = lam(lam(lam(lam(lam(lam(var(1)))))));
        match go(&halter, 5) {
            Transfer::Halt { nf_bits, via, .. } => {
                assert_eq!(via, Via::Kn);
                assert_eq!(nf_bits, lam(var(1)).bit_size());
            }
            other => panic!("{other:?}"),
        }
        // Ω is rung 1's own verdict; the residual ladder never runs.
        assert!(matches!(go(&app(d(), d()), 5), Transfer::Loop { .. }));
    }

    #[test]
    fn lambda_tower_erases_to_hole_free() {
        // D (λx.λy. x x): consumes and discards every hole, then the
        // residual W W diverges purely classically — the ≤26-bit
        // off-spine family from the frontier measurement.
        let w = lam(lam(app(var(2), var(2))));
        let p = app(d(), w);
        match adj(&p, 5) {
            SkelVerdict::HoleFree { residual, .. } => {
                assert!(residual.is_closed());
                // The classical escalation engine proves the residual
                // diverges — the full transfer chain.
                assert_eq!(
                    normal_form_with(
                        EngineCfg::default(),
                        2_000_000,
                        &LTerm::from_term(&residual)
                    )
                    .0,
                    Err(NoNf::Diverge)
                );
            }
            other => panic!("{other:?}"),
        }
    }

    #[test]
    fn erasing_halter_transfers_halt() {
        // λλλλλ.(λ.1): erases the signature, halts at λ.1.
        let p = lam(lam(lam(lam(lam(lam(var(1)))))));
        match adj(&p, 5) {
            SkelVerdict::HoleFree { residual, .. } => {
                assert_eq!(residual, lam(var(1)));
            }
            other => panic!("{other:?}"),
        }
    }

    #[test]
    fn identity_demands_a_hole() {
        // (λ.1) x₁ … → x₁ x₂ …: hole in operator position, no claim.
        let p = lam(var(1));
        assert!(matches!(adj(&p, 5), SkelVerdict::HoleDemanded { .. }));
    }

    #[test]
    fn applied_hole_in_nf_position_aborts() {
        // p = λx.λy. y (λz.z): after consuming both holes the second
        // heads an application — under σ a primitive could fire there.
        let p = lam(lam(app(var(1), lam(var(1)))));
        assert!(matches!(adj(&p, 2), SkelVerdict::HoleDemanded { .. }));
    }

    #[test]
    fn inert_hole_normal_form_is_decisive_halt() {
        // p = λa.λz. z a with one slot: reduces to λz. z X₁ — a normal
        // form whose hole sits in argument position of a bound head.
        // Under σ that is λz. z prim: a quantum normal form, Halt with
        // empty store.
        let p = lam(lam(app(var(1), var(2))));
        assert!(matches!(adj(&p, 1), SkelVerdict::NormalWithHoles { .. }));
    }

    #[test]
    fn frontier_smoke_matches_discovery() {
        // The 18-bit Ω sig program from the measured frontier.
        let p = parse_all("010001101000011010").unwrap();
        assert!(matches!(adj(&p, 5), SkelVerdict::Loop { .. }));
    }
}
