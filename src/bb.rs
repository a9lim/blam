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
    /// Resource exhausted before a verdict — the reason says which.
    Unknown(Why),
}

/// Which resource died. Capacity (redex-history bits) smells like a
/// missed loop; the work meter (subst/simplify blowup) smells like a
/// big-growth halter that the KN rescue can still win.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Why {
    Capacity,
    WorkMeter,
}

fn has_bot(t: &LTerm) -> bool {
    match t {
        Bot => true,
        Var(_) => false,
        Lam(b) => has_bot(b),
        App(f, a) => has_bot(f) || has_bot(a),
    }
}

/// Largest free de Bruijn index (0 = closed).
fn max_free(t: &LTerm) -> u32 {
    match t {
        Var(n) => *n,
        Lam(b) => max_free(b).saturating_sub(1),
        App(f, a) => max_free(f).max(max_free(a)),
        Bot => 0,
    }
}

/// Render closed `t` as BLC bits (⊥-free by construction at call sites).
fn lterm_bits(t: &LTerm, out: &mut String) {
    match t {
        Var(n) => {
            for _ in 0..*n {
                out.push('1');
            }
            out.push('0');
        }
        Lam(b) => {
            out.push_str("00");
            lterm_bits(b, out);
        }
        App(f, a) => {
            out.push_str("01");
            lterm_bits(f, out);
            lterm_bits(a, out);
        }
        Bot => unreachable!("lterm_bits on a term containing ⊥"),
    }
}

/// Self-feedback divergence certificate — the semantic generalization of
/// BBold.lhs's `redloop` (designed across a 2026-07-31 gaslamp exchange
/// with Codex, soundness co-derived). For a self-application `A A` with
/// `A = λx.x Q(x) R̄(x)` CLOSED and ⊥-free (the displayed application
/// being B's left spine):
///
///   nf(A) = nf(Q(A))  ⇒  A A has no head normal form.
///
/// Equal normal forms witness Q(A) =β A. With T₀ = A, Tₙ₊₁ = Q(Tₙ),
/// congruence gives every Tₙ =β A; B's head is the RIGID bound variable,
/// so nf(A) necessarily has shape λx.x⋯ and every Tₙ shares that hnf
/// (Böhm invariance). Each configuration `Tₙ Tₙ₊₁ Γ` head-normalizes its
/// head to λx.x⋯ and re-demands Tₙ₊₁ at the head — unboundedly many head
/// contractions, never a rigid head or unapplied λ: no hnf, no nf.
/// Pending Γ arguments cannot interfere (normal order resolves the
/// function spine first, and the recurrence is uniform in Γ).
///
/// The exact-equality rule (nf(Q(A)) == A, requiring A normal) is the
/// special case that proves 4 of the 5 traced 32-bit loops; the
/// β-equivalence form additionally proves the 35-bit and 36-bit
/// residual unknowns (which reach `A A` and `(A A) A` respectively).
/// The fifth 32-bit loop (outer function not λx.x x, never reaching a
/// self-application of this shape) remains — hand-excluded in Tromp's
/// tree too; nobody proves it mechanically.
///
/// Probes run on the pure KN machine with a fixed small budget — never
/// re-entering this engine or the oracle — and any failure (no match,
/// ⊥, open term, fuel out, nf mismatch) claims nothing.
///
/// Completeness telemetry (per Codex's review): FIRES counts proofs,
/// FUEL_REJECTS counts shape-matches abandoned solely because a probe
/// ran out of fuel — a zero there over a full census certifies the
/// cutoff lost nothing at that range.
pub static REDLOOP_FIRES: std::sync::atomic::AtomicU64 =
    std::sync::atomic::AtomicU64::new(0);
pub static REDLOOP_FUEL_REJECTS: std::sync::atomic::AtomicU64 =
    std::sync::atomic::AtomicU64::new(0);

/// Bounded pure normalization of a closed ⊥-free LTerm on the KN
/// machine; `None` on fuel-out (recorded in REDLOOP_FUEL_REJECTS).
/// `BLC_PROBE_FUEL` tunes the β budget (default 4096); the telemetry
/// says whether the census result is fuel-sensitive at a given setting.
fn probe_nf(t: &LTerm) -> Option<String> {
    use std::sync::OnceLock;
    static FUEL: OnceLock<u64> = OnceLock::new();
    let fuel = *FUEL.get_or_init(|| {
        std::env::var("BLC_PROBE_FUEL")
            .ok()
            .and_then(|s| s.parse().ok())
            .unwrap_or(4096)
    });
    let mut bits = String::new();
    lterm_bits(t, &mut bits);
    let mut pool = crate::vm::TermPool::new();
    let root = pool.decode_str(&bits)?;
    let mut vm = crate::vm::Machine::new();
    let mut sink = crate::vm::StringSink::default();
    if vm.normalize(&pool, root, fuel, &mut sink).is_err() {
        REDLOOP_FUEL_REJECTS.fetch_add(1, std::sync::atomic::Ordering::Relaxed);
        return None;
    }
    Some(sink.0)
}

fn redloop(t: &LTerm) -> bool {
    spend_work();
    // Self-application A A, syntactically. (A redex D A with D = λx.x x
    // contracts to A A one step later, so this shape subsumes the D A
    // trigger of BBold's original rule.)
    let App(a1, a2) = t else { return false };
    if a1 != a2 {
        return false;
    }
    let a: &LTerm = a1;
    let Lam(body) = a else { return false };
    if max_free(a) != 0 || has_bot(a) {
        return false;
    }
    // Left spine of B: find the demanded application `x q`.
    let mut s: &LTerm = body;
    let q = loop {
        match s {
            App(f, q_) => {
                if matches!(&**f, Var(1)) {
                    break q_;
                }
                s = f;
            }
            _ => return false,
        }
    };
    // probe = q[A/x]; closed since free(q) ⊆ {x} and A is closed.
    let probe = beta(q, a);
    if max_free(&probe) != 0 {
        return false;
    }
    // Fire iff nf(A) and nf(Q(A)) both exist and coincide — equal normal
    // forms witness Q(A) =β A, which is all the recurrence needs.
    let (Some(na), Some(nq)) = (probe_nf(a), probe_nf(&probe)) else {
        return false;
    };
    if na == nq {
        REDLOOP_FIRES.fetch_add(1, std::sync::atomic::Ordering::Relaxed);
        true
    } else {
        false
    }
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
                return Err(NoNf::Unknown(Why::WorkMeter));
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
                return Err(NoNf::Unknown(Why::Capacity));
            }
            if no_nf(f, &ab) || seen.contains(&**ra) || redloop(&ab) {
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

    fn from_bits(s: &str) -> LTerm {
        LTerm::from_term(&crate::parse_all(s).unwrap())
    }

    #[test]
    fn redloop_proves_the_four_32bit_loops() {
        // The four D A loops BBold.lhs's redloop proves and current BB.lhs
        // cannot (identified in the 2026-07-31 conformance cross-match;
        // hand loop-analyses in ref/AIT/BB/BB.txt).
        for bits in [
            "01000110100001100110000110001110", // (\1 1)(\1 (1 (\1 (\3))))
            "01000110100001011001100011000110", // (\1 1)(\1 (1 (\2)) (\2))
            "01000110100001011001100000111010", // (\1 1)(\1 (1 (\\3)) 1)
            "01000110100001011001011000101010", // (\1 1)(\1 (1 (\1) 1) 1)
        ] {
            assert_eq!(
                normal_form(2_000_000, &from_bits(bits)),
                Err(NoNf::Diverge),
                "{bits}"
            );
        }
    }

    #[test]
    fn self_feedback_proves_the_residual_pair() {
        // The 35b/36b terms that resisted everything else tonight: A A
        // and (A A) A for A = λx.x (T (K x)) — provable only via the
        // β-equivalence form (A itself is not syntactically normal; its
        // dormant T(Kx) reduces to x(Kx)).
        for bits in [
            "01000110100001100100010110101000110",  // (\1 1)(\1 ((\1 1 1)(\2)))
            "010001100001100111000110000101101010", // (\1 (\1 (2 (\2))))(\1 1 1)
        ] {
            assert_eq!(
                normal_form(2_000_000, &from_bits(bits)),
                Err(NoNf::Diverge),
                "{bits}"
            );
        }
    }

    #[test]
    fn fifth_loop_stays_unknown() {
        // (\1 (\2))(\1 1 (\1 2)) — hand-excluded (`loop32`) even in
        // Tromp's tree; its outer function is not λx.x x, so redloop's
        // guard correctly refuses. Documents parity: nobody proves this
        // mechanically.
        let t = from_bits("01000110001100001011010000110110");
        assert!(matches!(normal_form(2_000_000, &t), Err(NoNf::Unknown(_))));
    }

    #[test]
    fn redloop_no_false_positive_on_halting_shape() {
        // D (λx. x I): spine matches x q with q = I, but the probe
        // nf(I[A/x]) = I ≠ A, so redloop stays silent — and the term
        // truly halts: D A → A A → A I → I I → I.
        let a = lam(app(v(1), lam(v(1))));
        let d = lam(app(v(1), v(1)));
        let t = app(d, a);
        assert_eq!(normal_form(2_000_000, &t), Ok(lam(v(1))));
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
