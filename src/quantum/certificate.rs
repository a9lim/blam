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
use crate::blc::{app, lam, var, Term};
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
    /// Budget exhausted (steps or term size).
    CapOut,
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
pub fn adjudicate(p: &Term, slots: u32, caps: &SkelCaps) -> SkelVerdict {
    debug_assert!(p.is_closed());
    let mut t = p.clone();
    for i in 1..=slots {
        t = app(t, var(i));
    }
    let mut seen: HashSet<String> = HashSet::new();
    let mut steps = 0u64;
    loop {
        if t.max_free(0) == 0 {
            return SkelVerdict::HoleFree { residual: t, steps };
        }
        if t.bit_size() > caps.size_bits {
            return SkelVerdict::CapOut;
        }
        if !seen.insert(t.to_bits()) {
            return SkelVerdict::Loop { steps };
        }
        if steps >= caps.steps {
            return SkelVerdict::CapOut;
        }
        match step(&t, 0) {
            Step::Did(nt) => {
                t = nt;
                steps += 1;
            }
            Step::Nf => return SkelVerdict::NormalWithHoles { steps },
            Step::Hole => return SkelVerdict::HoleDemanded { steps },
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::blc::wire::parse_all;

    fn d() -> Term {
        lam(app(var(1), var(1)))
    }

    #[test]
    fn omega_sig_loops() {
        // Ω x⃗: D D recurs exactly after one step.
        let omega = app(d(), d());
        match adjudicate(&omega, 5, &SkelCaps::default()) {
            SkelVerdict::Loop { steps } => assert!(steps <= 2, "{steps}"),
            other => panic!("{other:?}"),
        }
    }

    #[test]
    fn wrapped_omega_loops() {
        // (λ.Ω) x₁ … discards a hole then loops.
        let p = lam(app(d(), d()));
        assert!(matches!(
            adjudicate(&p, 5, &SkelCaps::default()),
            SkelVerdict::Loop { .. }
        ));
    }

    #[test]
    fn lambda_tower_erases_to_hole_free() {
        // D (λx.λy. x x): consumes and discards every hole, then the
        // residual W W diverges purely classically — the ≤26-bit
        // off-spine family from the frontier measurement.
        let w = lam(lam(app(var(2), var(2))));
        let p = app(d(), w);
        match adjudicate(&p, 5, &SkelCaps::default()) {
            SkelVerdict::HoleFree { residual, .. } => {
                assert!(residual.is_closed());
                // The classical escalation engine proves the residual
                // diverges — the full transfer chain.
                use crate::classical::escalation::{normal_form, LTerm, NoNf};
                assert_eq!(
                    normal_form(2_000_000, &LTerm::from_term(&residual)),
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
        match adjudicate(&p, 5, &SkelCaps::default()) {
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
        assert!(matches!(
            adjudicate(&p, 5, &SkelCaps::default()),
            SkelVerdict::HoleDemanded { .. }
        ));
    }

    #[test]
    fn applied_hole_in_nf_position_aborts() {
        // p = λx.λy. y (λz.z): after consuming both holes the second
        // heads an application — under σ a primitive could fire there.
        let p = lam(lam(app(var(1), lam(var(1)))));
        assert!(matches!(
            adjudicate(&p, 2, &SkelCaps::default()),
            SkelVerdict::HoleDemanded { .. }
        ));
    }

    #[test]
    fn inert_hole_normal_form_is_decisive_halt() {
        // p = λa.λz. z a with one slot: reduces to λz. z X₁ — a normal
        // form whose hole sits in argument position of a bound head.
        // Under σ that is λz. z prim: a quantum normal form, Halt with
        // empty store.
        let p = lam(lam(app(var(1), var(2))));
        assert!(matches!(
            adjudicate(&p, 1, &SkelCaps::default()),
            SkelVerdict::NormalWithHoles { .. }
        ));
    }

    #[test]
    fn frontier_smoke_matches_discovery() {
        // The 18-bit Ω sig program from the measured frontier.
        let p = parse_all("010001101000011010").unwrap();
        assert!(matches!(
            adjudicate(&p, 5, &SkelCaps::default()),
            SkelVerdict::Loop { .. }
        ));
    }
}
