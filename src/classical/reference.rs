//! Naive normal-order normalizer: the executable spec.
//!
//! Textbook shift/substitute reduction (the `blc::reduction` kernel,
//! TAPL adapted to 1-indexed de Bruijn), leftmost-outermost order, fuel
//! counted in beta-steps. Deliberately favors obvious correctness over
//! speed; the fast machine is tested against this.
//!
//! Step-counting convention: β-steps, i.e. leftmost-outermost
//! contractions. This is lockstep-identical to the KN machine's count
//! (`tests/differential.rs` enforces it term by term); Tromp's tooling
//! has no comparable counter to compare against.

use super::{Budget, OutOfFuel};
use crate::blc::reduction::beta;
use crate::blc::Term;
use std::rc::Rc;

/// Reduce to weak head normal form, charging one tick per beta-step.
fn whnf(t: &Term, fuel: &mut Budget) -> Result<Term, OutOfFuel> {
    match t {
        Term::App(f, a) => {
            let f = whnf(f, fuel)?;
            if let Term::Lam(body) = &f {
                fuel.tick()?;
                whnf(&beta(body, a), fuel)
            } else {
                Ok(Term::App(Rc::new(f), a.clone()))
            }
        }
        _ => Ok(t.clone()),
    }
}

/// Fully normalize in normal (leftmost-outermost) order, so a normal form is
/// reached whenever one exists, fuel permitting.
pub fn normalize(t: &Term, fuel: &mut Budget) -> Result<Term, OutOfFuel> {
    match t {
        Term::Var(n) => Ok(Term::Var(*n)),
        Term::Lam(b) => Ok(Term::Lam(Rc::new(normalize(b, fuel)?))),
        Term::App(f, a) => {
            let f = whnf(f, fuel)?;
            if let Term::Lam(body) = &f {
                fuel.tick()?;
                normalize(&beta(body, a), fuel)
            } else {
                Ok(Term::App(
                    Rc::new(normalize(&f, fuel)?),
                    Rc::new(normalize(a, fuel)?),
                ))
            }
        }
    }
}
