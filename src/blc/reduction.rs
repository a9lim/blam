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

/// Rebuild `App(f, a)` from optional rewrites of its children, sharing
/// whichever child is unchanged; `None` when neither changed.
fn rebuild_app(f: &Rc<Term>, a: &Rc<Term>, nf: Option<Term>, na: Option<Term>) -> Option<Term> {
    if nf.is_none() && na.is_none() {
        return None;
    }
    Some(Term::App(
        nf.map_or_else(|| f.clone(), Rc::new),
        na.map_or_else(|| a.clone(), Rc::new),
    ))
}

/// Does `t` mention a variable free beyond `depth` binders? No allocation.
fn has_free(t: &Term, depth: u32) -> bool {
    match t {
        Term::Var(n) => *n > depth,
        Term::Lam(b) => has_free(b, depth + 1),
        Term::App(f, a) => has_free(f, depth) || has_free(a, depth),
    }
}

/// `shift`, sharing: `None` when no variable `>= cutoff` occurs.
fn shifted(t: &Term, d: i64, cutoff: u32) -> Option<Term> {
    match t {
        Term::Var(n) if *n >= cutoff && d != 0 => Some(Term::Var((*n as i64 + d) as u32)),
        Term::Lam(b) => shifted(b, d, cutoff + 1).map(|nb| Term::Lam(Rc::new(nb))),
        Term::App(f, a) => rebuild_app(f, a, shifted(f, d, cutoff), shifted(a, d, cutoff)),
        _ => None,
    }
}

fn instantiate(body: &Term, arg: &Term, depth: u32, closed: &mut Option<bool>) -> Option<Term> {
    match body {
        Term::Var(n) if *n == depth + 1 => {
            if depth == 0 || *closed.get_or_insert_with(|| !has_free(arg, 0)) {
                Some(arg.clone())
            } else {
                Some(shifted(arg, depth as i64, 1).unwrap_or_else(|| arg.clone()))
            }
        }
        Term::Var(n) if *n > depth + 1 => Some(Term::Var(n - 1)),
        Term::Lam(b) => instantiate(b, arg, depth + 1, closed).map(|nb| Term::Lam(Rc::new(nb))),
        Term::App(f, a) => rebuild_app(
            f,
            a,
            instantiate(f, arg, depth, closed),
            instantiate(a, arg, depth, closed),
        ),
        _ => None,
    }
}

/// Contract `(\body) arg` in one pass, sharing: the same term as
/// [`beta`], but the argument is shifted once per occurrence by the depth
/// it lands at (not at all when closed) and every subtree the contraction
/// leaves unchanged keeps its `Rc`, where the three-pass form rebuilds
/// every node of the body and re-shifts the argument at each binder. The
/// trusted skeleton checker steps with this one; [`beta`] stays the
/// textbook kernel the reference reducer is written in.
pub fn beta_shared(body: &Term, arg: &Term) -> Term {
    instantiate(body, arg, 0, &mut None).unwrap_or_else(|| body.clone())
}

#[cfg(test)]
mod shared_tests {
    use super::*;
    use crate::blc::wire::parse_all;
    #[test]
    fn beta_shared_matches_three_pass_on_small_terms() {
        use crate::blc::enumerate::for_each_closed;
        let mut terms = Vec::new();
        for n in 4..=18 {
            for_each_closed(n, &mut |enc, len| {
                terms.push(crate::blc::wire::enc_to_string(enc, len))
            });
        }
        let mut checked = 0u64;
        let ts: Vec<Term> = terms.iter().map(|b| parse_all(b).unwrap()).collect();
        // all (body, arg) pairs from redex positions: pair each lambda body with a handful of args
        let args: Vec<&Term> = ts.iter().step_by(37).take(60).collect();
        for t in &ts {
            if let Term::Lam(b) = t {
                for a in &args {
                    assert_eq!(beta(b, a), beta_shared(b, a));
                    checked += 1;
                }
                // open args under binders
                let open = Term::Var(2);
                let open2 = Term::App(
                    Rc::new(Term::Var(1)),
                    Rc::new(Term::Lam(Rc::new(Term::Var(3)))),
                );
                assert_eq!(beta(b, &open), beta_shared(b, &open));
                assert_eq!(beta(b, &open2), beta_shared(b, &open2));
            }
        }
        assert!(checked > 1000);
    }
}
