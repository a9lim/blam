//! The reduction kernel: textbook shift/substitute over 1-indexed de
//! Bruijn terms (TAPL, adapted), shared by every engine that contracts a
//! redex on plain `Term` trees. Crate-private — reducer internals are
//! not public surface.

use super::term::Term;
use std::rc::Rc;

/// Add `d` to every variable with index >= `cutoff`.
pub fn shift(t: &Term, d: i64, cutoff: u32) -> Term {
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
pub fn subst(t: &Term, j: u32, s: &Term) -> Term {
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
pub fn beta(body: &Term, arg: &Term) -> Term {
    shift(&subst(body, 1, &shift(arg, 1, 1)), -1, 1)
}
