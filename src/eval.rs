//! Naive normal-order normalizer: the executable spec.
//!
//! Textbook shift/substitute reduction (TAPL, adapted to 1-indexed de Bruijn),
//! leftmost-outermost order, fuel counted in beta-steps. Deliberately favors
//! obvious correctness over speed; the fast machine is tested against this.
//!
//! NOTE: the step-counting convention (beta-steps here) is provisional until
//! we've pinned down what Tromp's tooling counts, for comparability.

use crate::term::Term;
use std::rc::Rc;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum OutOfFuel {
    /// β-step budget exhausted.
    Beta,
    /// Machine-transition cap exhausted (vm only).
    Transitions,
}

/// Beta-step budget. `steps` is left at the count reached so far, so a
/// successful run reports its cost and an exhausted one shows the limit.
#[derive(Clone, Copy, Debug)]
pub struct Budget {
    pub limit: u64,
    pub steps: u64,
}

impl Budget {
    pub fn new(limit: u64) -> Self {
        Budget { limit, steps: 0 }
    }

    fn tick(&mut self) -> Result<(), OutOfFuel> {
        if self.steps >= self.limit {
            return Err(OutOfFuel::Beta);
        }
        self.steps += 1;
        Ok(())
    }
}

/// Add `d` to every variable with index >= `cutoff`.
fn shift(t: &Term, d: i64, cutoff: u32) -> Term {
    match t {
        Term::Var(n) => {
            if *n >= cutoff {
                Term::Var((*n as i64 + d) as u32)
            } else {
                Term::Var(*n)
            }
        }
        Term::Lam(b) => Term::Lam(Rc::new(shift(b, d, cutoff + 1))),
        Term::App(f, a) => Term::App(Rc::new(shift(f, d, cutoff)), Rc::new(shift(a, d, cutoff))),
    }
}

/// Capture-avoiding substitution of `s` for variable `j` in `t`.
fn subst(t: &Term, j: u32, s: &Term) -> Term {
    match t {
        Term::Var(n) => {
            if *n == j {
                s.clone()
            } else {
                Term::Var(*n)
            }
        }
        Term::Lam(b) => Term::Lam(Rc::new(subst(b, j + 1, &shift(s, 1, 1)))),
        Term::App(f, a) => Term::App(Rc::new(subst(f, j, s)), Rc::new(subst(a, j, s))),
    }
}

/// Contract the redex `(\body) arg`: TAPL's `shift(-1, [1 := shift(1, arg)] body)`.
fn beta(body: &Term, arg: &Term) -> Term {
    shift(&subst(body, 1, &shift(arg, 1, 1)), -1, 1)
}

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
