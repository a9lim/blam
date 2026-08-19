//! The per-program step every quantum sweep shares.
//!
//! Three measurements walk the same population in the same way — the
//! operator census (`blam q census`) and both dyadicity sectors (`blam q
//! galois idiom` and `... complement`) — and each used to carry its own
//! copy of the run-and-check preamble. They agreed on the science and
//! drifted on the phrasing, which is exactly the shape of a bug that only
//! shows up as two numbers that should have matched.
//!
//! This is measurement plumbing, not engine surface: the library owns the
//! semantics (`quantum::machine`) and this owns what the drivers do with
//! them, so it sits with the drivers rather than in the pillar.
//!
//! The soundness battery lives here, so it cannot be dropped from one
//! sweep and kept in another: CP instruments conserve mass, so a program's
//! leaf masses sum to exactly 1, asserted per program across every sweep
//! (`docs/quantum/architecture.md`; AGENTS.md, "Soundness battery, free").
//! The check is vacuous exactly when some leaf's mass overflowed — a
//! resource outcome, never a wrong number — and says so rather than
//! silently folding a `None` away.

use blam::quantum::machine::{Machine, Pool, QProgram};
use blam::quantum::scalar::Dw;
#[cfg(any(test, feature = "lab"))]
use blam::quantum::Fate;
use blam::quantum::{Budget, Leaf};

/// What every sweep reads off a program's leaves beyond its own tally.
///
/// `halt_mass` and `resolved` belong to the lab-gated dyadicity sweeps;
/// production census builds carry only the maximum-step telemetry they use.
#[derive(Clone, Copy, Debug)]
pub struct Summary {
    /// Largest contraction count over the branch tree (budget headroom).
    pub max_steps: u64,
    /// Σ Halt-leaf mass — the program's own Ω_success contribution.
    /// `None` if any Halt leaf's mass overflowed, so the √2-decomposition
    /// of this program is undecided rather than wrong.
    #[cfg(any(test, feature = "lab"))]
    pub halt_mass: Option<Dw>,
    /// Every leaf is Halt or Err: the tree is complete, so it is
    /// bit-identical at every larger budget (terminal stability) and its
    /// aggregates may be committed.
    #[cfg(any(test, feature = "lab"))]
    pub resolved: bool,
    /// Σ over all leaves, `None` on overflow — exposed only to the tests
    /// that pin the mass-conservation battery.
    #[cfg(test)]
    pub total_mass: Option<Dw>,
}

/// Run one program to its leaves and check the mass-conservation battery.
///
/// `leaves` is cleared and refilled; it is the caller's reusable buffer.
fn run_and_summarize_inner<const DETAILS: bool>(
    m: &mut Machine,
    pool: &mut Pool,
    prog: &QProgram,
    budget: &Budget,
    leaves: &mut Vec<Leaf>,
) -> Summary {
    leaves.clear();
    m.run_into_with(pool, prog, budget, leaves);

    let mut max_steps = 0u64;
    let mut total_mass = Some(Dw::ZERO);
    #[cfg(any(test, feature = "lab"))]
    let mut halt_mass = DETAILS.then_some(Dw::ZERO);
    #[cfg(any(test, feature = "lab"))]
    let mut resolved = DETAILS;
    for leaf in leaves.iter() {
        max_steps = max_steps.max(leaf.steps);
        total_mass = total_mass.and_then(|s| leaf.mass.and_then(|x| s.add(x)));
        #[cfg(any(test, feature = "lab"))]
        if DETAILS {
            match leaf.fate {
                Fate::Halt(_) => {
                    halt_mass = halt_mass.and_then(|s| leaf.mass.and_then(|x| s.add(x)))
                }
                Fate::Err(_) => {}
                Fate::Unknown | Fate::Capacity(_) => resolved = false,
            }
        }
    }
    if let Some(s) = total_mass {
        assert_eq!(
            s.reduce(),
            Dw::ONE,
            "mass conservation violated at program ({:#x},{})",
            prog.enc(),
            prog.len_bits()
        );
    }
    Summary {
        max_steps,
        #[cfg(any(test, feature = "lab"))]
        halt_mass,
        #[cfg(any(test, feature = "lab"))]
        resolved,
        #[cfg(test)]
        total_mass,
    }
}

/// Production-census spelling: run the shared mass-conservation battery and
/// return only the step telemetry that caller consumes. In a lab build the
/// const parameter lets LLVM delete dyadicity-only fate aggregation instead
/// of making every ordinary census program maintain unused detail.
pub fn run_and_check(
    m: &mut Machine,
    pool: &mut Pool,
    prog: &QProgram,
    budget: &Budget,
    leaves: &mut Vec<Leaf>,
) -> u64 {
    run_and_summarize_inner::<false>(m, pool, prog, budget, leaves).max_steps
}

/// Detailed spelling for the lab-gated dyadicity sweeps and their tests.
#[cfg(any(test, feature = "lab"))]
pub fn run_and_summarize(
    m: &mut Machine,
    pool: &mut Pool,
    prog: &QProgram,
    budget: &Budget,
    leaves: &mut Vec<Leaf>,
) -> Summary {
    run_and_summarize_inner::<true>(m, pool, prog, budget, leaves)
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::q::pack;
    use blam::quantum::sig::FROZEN;

    #[test]
    fn witness45_summarises_as_a_resolved_dyadic_pair() {
        // Both branches Halt at (2±√2)/4: resolved, and the two irrational
        // leaf masses sum back to exactly 1 within the program.
        let (enc, len) = pack("000000000001111100111111001100111111001111010");
        let mut pool = Pool::new();
        let mut m = Machine::new();
        let mut leaves = Vec::new();
        let s = run_and_summarize(
            &mut m,
            &mut pool,
            &QProgram::new(enc, len, None, &FROZEN).expect("wire vector"),
            &Budget::default(),
            &mut leaves,
        );
        assert_eq!(leaves.len(), 2);
        assert!(s.resolved);
        assert_eq!(s.total_mass.unwrap().reduce(), Dw::ONE);
        assert_eq!(s.halt_mass.unwrap().reduce(), Dw::ONE);
    }

    #[test]
    fn p53_is_resolved_but_its_halt_mass_is_irrational() {
        // Err at (2+√2)/4, Halt at (2−√2)/4: still resolved (no Unknown),
        // but Σ Halt mass carries a √2 part — the unpaired class.
        let (enc, len) = pack("00000000000101111100111111001100111111001111010011010");
        let mut pool = Pool::new();
        let mut m = Machine::new();
        let mut leaves = Vec::new();
        let s = run_and_summarize(
            &mut m,
            &mut pool,
            &QProgram::new(enc, len, None, &FROZEN).expect("wire vector"),
            &Budget::default(),
            &mut leaves,
        );
        assert!(s.resolved);
        assert_eq!(s.total_mass.unwrap().reduce(), Dw::ONE);
        let (_, (sa, se)) = blam::quantum::scalar::radical_parts(s.halt_mass.unwrap());
        assert_eq!((sa, se), (-1, 2));
    }

    #[test]
    fn an_unresolved_program_is_flagged() {
        // Ω under the signature never settles: one Unknown leaf.
        let (enc, len) = pack("010001101000011010");
        let mut pool = Pool::new();
        let mut m = Machine::new();
        let mut leaves = Vec::new();
        let s = run_and_summarize(
            &mut m,
            &mut pool,
            &QProgram::new(enc, len, None, &FROZEN).expect("wire vector"),
            &Budget::default(),
            &mut leaves,
        );
        assert!(!s.resolved);
        assert_eq!(s.total_mass.unwrap().reduce(), Dw::ONE);
        assert_eq!(s.halt_mass.unwrap(), Dw::ZERO);
    }
}
