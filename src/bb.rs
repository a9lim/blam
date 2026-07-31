//! Escalation engine: a faithful port of the `nf`/`normalForm` reducer in
//! Tromp's ref/AIT/BB/BB.lhs — normal-order reduction instrumented with the
//! syntactic divergence oracle (`oracle::no_nf`) at every application and
//! redex-history loop detection (his PHT), with its capacity accounting:
//! each recorded redex charges its own BLC bit-size against a budget.
//!
//! One deliberate deviation from BB.lhs: his `Maybe` conflates proven
//! divergence with budget exhaustion; we separate `Diverge` (oracle hit or
//! redex reoccurrence — proven) from `Unknown` (capacity exhausted).
//!
//! His `simplify` argument-preprocessing IS ported: it canonicalizes
//! arguments (inlining variable/affine arguments, collapsing applications
//! of identity, ⊥-ing arguments of erasing functions), which is what lets
//! the redex history catch loops whose redexes otherwise grow a fresh
//! wrapper each cycle — e.g. (λx. x x)(λx. x (I x)), where simplify
//! collapses I W' back to W' and the history key recurs exactly.
//! β-inlining inside simplify distorts step counts, which is why the
//! escalation engine never reports canonical counts (the census recovers
//! them with a KN re-run).
//!
//! History semantics preserved exactly: membership is checked against the
//! pre-insert set; the set (not the capacity) resets when switching from
//! strong to weak reduction (the BB.lhs:89 counterexample); the whole redex
//! is matched in the β case, its function part alone in the rigid case;
//! keys are `bot_free`'d (free variables collapsed to ⊥ — detection modulo
//! free variables).
//!
//! Only ~0.3% of closed terms ever reach this engine, so it favors
//! fidelity over speed: boxed terms, textbook substitution, cloned sets at
//! history forks (mirroring the Haskell's persistent-set sharing).

use crate::oracle::{no_nf, LView, NV};
use std::rc::Rc;

/// Boxed term with ⊥, mirroring BB.lhs's `L`. 1-based de Bruijn.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum LTerm {
    Var(u32),
    Lam(Rc<LTerm>),
    App(Rc<LTerm>, Rc<LTerm>),
    Bot,
}

use LTerm::*;

impl<'a> LView for &'a LTerm {
    fn node(self) -> NV<Self> {
        match self {
            Var(n) => NV::Var(*n),
            Lam(b) => NV::Lam(b),
            App(f, a) => NV::App(f, a),
            Bot => NV::Bot,
        }
    }
}

// The work meter lives in `oracle` and is shared: every node this engine
// allocates AND every oracle predicate step decrements it. It bounds TOTAL
// engine work — simplify cascades, substitution into huge bodies, oracle
// recursion on huge redexes — none of which the redex-size capacity sees.
// Armed by `normal_form`; i64::MAX (disarmed) outside it.
use crate::oracle::{spend_work, work_exhausted, WORK};

pub fn lam(t: LTerm) -> LTerm {
    spend_work();
    Lam(Rc::new(t))
}

pub fn app(f: LTerm, a: LTerm) -> LTerm {
    spend_work();
    App(Rc::new(f), Rc::new(a))
}

impl LTerm {
    pub fn from_term(t: &crate::term::Term) -> LTerm {
        use crate::term::Term;
        match t {
            Term::Var(n) => Var(*n),
            Term::Lam(b) => lam(LTerm::from_term(b)),
            Term::App(f, a) => app(LTerm::from_term(f), LTerm::from_term(a)),
        }
    }

    /// BLC bit-size; ⊥ counts 1, as in BB.lhs.
    pub fn bit_size(&self) -> u64 {
        match self {
            Var(n) => *n as u64 + 1,
            Lam(b) => 2 + b.bit_size(),
            App(f, a) => 2 + f.bit_size() + a.bit_size(),
            Bot => 1,
        }
    }
}

fn shift(t: &LTerm, d: i64, cutoff: u32) -> LTerm {
    match t {
        Var(n) => {
            if *n >= cutoff {
                Var((*n as i64 + d) as u32)
            } else {
                Var(*n)
            }
        }
        Lam(b) => lam(shift(b, d, cutoff + 1)),
        App(f, a) => app(shift(f, d, cutoff), shift(a, d, cutoff)),
        Bot => Bot,
    }
}

fn subst(t: &LTerm, j: u32, s: &LTerm) -> LTerm {
    match t {
        Var(n) => {
            if *n == j {
                s.clone()
            } else {
                Var(*n)
            }
        }
        Lam(b) => lam(subst(b, j + 1, &shift(s, 1, 1))),
        App(f, a) => app(subst(f, j, s), subst(a, j, s)),
        Bot => Bot,
    }
}

fn beta(body: &LTerm, arg: &LTerm) -> LTerm {
    shift(&subst(body, 1, &shift(arg, 1, 1)), -1, 1)
}

fn noccur(i: u32, t: &LTerm) -> u32 {
    match t {
        Var(n) => (*n == i) as u32,
        Lam(b) => noccur(i + 1, b),
        App(f, a) => noccur(i, f) + noccur(i, a),
        Bot => 0,
    }
}

/// BB.lhs `simplify`: semantics-preserving argument canonicalization.
pub fn simplify(t: &LTerm) -> LTerm {
    match t {
        Lam(a) => lam(simplify(a)),
        App(a_, b_) => {
            let a = simplify(a_);
            if let Lam(body) = &a {
                // Variable argument: contract, no duplication possible.
                if matches!(&**b_, Var(_)) {
                    return simplify(&beta(body, b_));
                }
                // Specialize the body against the argument, then contract
                // if the bound variable is used at most once.
                let body2 = simp_a(body, b_);
                if noccur(1, &body2) <= 1 {
                    return simplify(&beta(&body2, b_));
                }
            }
            app(a, simplify(b_))
        }
        _ => t.clone(),
    }
}

/// Refine `body` knowing its argument: erasing-λ arguments ⊥ their own
/// arguments; identity arguments collapse their applications.
fn simp_a(body: &LTerm, arg: &LTerm) -> LTerm {
    if let Lam(b) = arg {
        if noccur(1, b) == 0 {
            return simp_e(1, body);
        }
        if **b == Var(1) {
            return simp_i(1, body);
        }
    }
    body.clone()
}

/// Var i will be bound to an erasing function: its arguments are dead.
fn simp_e(i: u32, t: &LTerm) -> LTerm {
    match t {
        App(a, b) => {
            if **a == Var(i) {
                app(Var(i), Bot)
            } else {
                app(simp_e(i, a), simp_e(i, b))
            }
        }
        Lam(a) => lam(simp_e(i + 1, a)),
        _ => t.clone(),
    }
}

/// Var i will be bound to the identity: its applications collapse.
fn simp_i(i: u32, t: &LTerm) -> LTerm {
    match t {
        App(a, b) => {
            if **a == Var(i) {
                simp_i(i, b)
            } else {
                app(simp_i(i, a), simp_i(i, b))
            }
        }
        Lam(a) => lam(simp_i(i + 1, a)),
        _ => t.clone(),
    }
}

/// Replace variables free at depth `d` by ⊥ (BB.lhs `botFree`).
fn bot_free(d: u32, t: &LTerm) -> LTerm {
    match t {
        Var(n) => {
            if *n > d {
                Bot
            } else {
                Var(*n)
            }
        }
        Lam(b) => lam(bot_free(d + 1, b)),
        App(f, a) => app(bot_free(d, f), bot_free(d, a)),
        Bot => Bot,
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum NoNf {
    /// Proven: oracle hit or redex reoccurrence.
    Diverge,
    /// Capacity budget exhausted before a verdict.
    Unknown,
}

// Persistent set with O(1) clone — the same structural sharing BB.lhs gets
// from Data.Set; a std HashSet clone at every history fork is quadratic on
// long escalation runs.
type Hist = im_rc::HashSet<LTerm>;

fn bb_nf(
    weak: bool,
    f: u32,
    seen: &Hist,
    cap: &mut i64,
    t: &LTerm,
) -> Result<LTerm, NoNf> {
    match t {
        App(a_, b_) => {
            if work_exhausted() {
                return Err(NoNf::Unknown);
            }
            let empty;
            let sub_seen = if weak {
                seen
            } else {
                empty = Hist::new();
                &empty
            };
            let a = bb_nf(true, f, sub_seen, cap, a_)?;
            let b = simplify(b_);
            let ab = app(a.clone(), b.clone());
            let r = bot_free(0, &ab);
            let App(ra, _) = &r else { unreachable!() };
            *cap -= r.bit_size() as i64;
            if *cap < 0 {
                return Err(NoNf::Unknown);
            }
            if no_nf(f, &ab) || seen.contains(&**ra) {
                return Err(NoNf::Diverge);
            }
            match &a {
                Lam(body) => {
                    if seen.contains(&r) {
                        return Err(NoNf::Diverge);
                    }
                    let mut seen2 = seen.clone();
                    seen2.insert(r);
                    bb_nf(weak, f, &seen2, cap, &beta(body, &b))
                }
                _ if weak => Ok(ab),
                _ => {
                    let mut seen2 = seen.clone();
                    seen2.insert(r);
                    let a2 = bb_nf(false, f, &seen2, cap, &a)?;
                    let b2 = bb_nf(false, f, &seen2, cap, &b)?;
                    Ok(app(a2, b2))
                }
            }
        }
        Lam(a) if !weak => Ok(lam(bb_nf(weak, f + 1, seen, cap, a)?)),
        _ => Ok(t.clone()),
    }
}

/// BB.lhs `normalForm`: peel leading lambdas (they are never applied, so
/// the free threshold stays 0), then reduce with oracle + history.
/// The work meter is armed at 16 nodes per capacity bit — generous for
/// honest reductions, a hard wall for substitution/simplify blowups.
/// `BLC_WORK_MULT` overrides the 16 (diagnostic: distinguishes
/// meter-starved Unknowns from capacity-out Unknowns — Tromp's lazy
/// graph reduction shares subst work our eager engine pays in full,
/// so his capacity stretches further at equal cap).
pub fn normal_form(cap_bits: i64, t: &LTerm) -> Result<LTerm, NoNf> {
    use std::sync::OnceLock;
    static WORK_MULT: OnceLock<i64> = OnceLock::new();
    let mult = *WORK_MULT.get_or_init(|| {
        std::env::var("BLC_WORK_MULT")
            .ok()
            .and_then(|s| s.parse().ok())
            .unwrap_or(16)
    });
    let mut cap = cap_bits;
    fn nf0(cap: &mut i64, t: &LTerm) -> Result<LTerm, NoNf> {
        match t {
            Lam(a) => Ok(lam(nf0(cap, a)?)),
            _ => bb_nf(false, 0, &Hist::new(), cap, t),
        }
    }
    WORK.with(|w| w.set(cap_bits.saturating_mul(mult)));
    let out = nf0(&mut cap, t);
    WORK.with(|w| w.set(i64::MAX));
    out
}

#[cfg(test)]
mod tests {
    use super::*;

    fn v(n: u32) -> LTerm {
        Var(n)
    }

    #[test]
    fn halts_on_normalizers() {
        // (\x. x x)(\y. y) -> \y. y
        let t = app(lam(app(v(1), v(1))), lam(v(1)));
        assert_eq!(normal_form(100_000, &t), Ok(lam(v(1))));
    }

    #[test]
    fn omega_diverges() {
        let w = lam(app(v(1), v(1)));
        let t = app(w.clone(), w);
        assert_eq!(normal_form(100_000, &t), Err(NoNf::Diverge));
    }

    #[test]
    fn y_combinator_diverges() {
        // Y = \f.(\x. f (x x))(\x. f (x x)); Y alone has no nf.
        let inner = lam(app(v(2), app(v(1), v(1))));
        let y = lam(app(inner.clone(), inner));
        assert_eq!(normal_form(1_000_000, &y), Err(NoNf::Diverge));
    }

    #[test]
    fn history_reset_example() {
        // BB.lhs:89-102 — (\x. x x) (\x\y. y (x x (\_. y))) HALTS at
        // \y. y y: the W W redex recorded in strong mode reoccurs inside a
        // weak-mode spine argument where an erasing lambda discards it.
        // Without the history reset on the strong→weak switch this is a
        // false Diverge; with it, the true normal form comes out.
        let w = lam(lam(app(
            v(1),
            app(app(v(2), v(2)), lam(v(2))),
        )));
        let t = app(lam(app(v(1), v(1))), w);
        assert_eq!(
            normal_form(10_000_000, &t),
            Ok(lam(app(v(1), v(1))))
        );
    }

    #[test]
    fn growing_wrapper_diverger_caught() {
        // (λx. x x)(λx. x (I x)) — census n=24's former Unknown: redexes
        // grow an I-wrapper per cycle, defeating raw history matching.
        // simplify collapses I W' → W', making the loop key recur.
        let wp = lam(app(v(1), app(lam(v(1)), v(1))));
        let t = app(lam(app(v(1), v(1))), wp);
        assert_eq!(normal_form(1_000_000, &t), Err(NoNf::Diverge));
    }

    #[test]
    fn church_tower_halts() {
        // C2 C2 C2 = C16: deep but convergent.
        let c2 = lam(lam(app(v(2), app(v(2), v(1)))));
        let t = app(app(c2.clone(), c2.clone()), c2);
        let nf = normal_form(10_000_000, &t).unwrap();
        assert_eq!(nf.bit_size(), 6 + 5 * 16);
    }
}
