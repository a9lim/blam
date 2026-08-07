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

use super::OutOfFuel;
use crate::blc::reduction::beta;
use crate::blc::Term;
use std::rc::Rc;

/// Beta-step fuel: ticks toward an explicit limit.
struct Fuel {
    limit: u64,
    steps: u64,
}

impl Fuel {
    fn tick(&mut self) -> Result<(), OutOfFuel> {
        if self.steps >= self.limit {
            return Err(OutOfFuel::Beta);
        }
        self.steps += 1;
        Ok(())
    }
}

/// Reduce to weak head normal form, charging one tick per beta-step.
fn whnf(t: &Term, fuel: &mut Fuel) -> Result<Term, OutOfFuel> {
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

/// Fully normalize in normal (leftmost-outermost) order, so a normal form
/// is reached whenever one exists within `limit` beta-steps. Returns the
/// normal form and the beta-step count — the same count
/// [`Machine::normalize`](crate::classical::machine::Machine::normalize)
/// returns, enforced term by term in `tests/differential.rs`.
pub fn normalize(t: &Term, limit: u64) -> Result<(Term, u64), OutOfFuel> {
    let mut fuel = Fuel { limit, steps: 0 };
    let nf = norm(t, &mut fuel)?;
    Ok((nf, fuel.steps))
}

fn norm(t: &Term, fuel: &mut Fuel) -> Result<Term, OutOfFuel> {
    match t {
        Term::Var(n) => Ok(Term::Var(*n)),
        Term::Lam(b) => Ok(Term::Lam(Rc::new(norm(b, fuel)?))),
        Term::App(f, a) => {
            let f = whnf(f, fuel)?;
            if let Term::Lam(body) = &f {
                fuel.tick()?;
                norm(&beta(body, a), fuel)
            } else {
                Ok(Term::App(Rc::new(norm(&f, fuel)?), Rc::new(norm(a, fuel)?)))
            }
        }
    }
}
