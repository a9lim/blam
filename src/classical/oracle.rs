//! Faithful port of the syntactic divergence oracle from Tromp's
//! ref/AIT/BB/BB.lhs (`noNF`/`isW`/`isB`/`isB23` and helpers).
//!
//! The `is` bitset tracks which variables were bound by binders traversed
//! in W-position: bit (i) marks 0-based variable i (our vars are 1-based, so
//! variable n maps to bit n−1); the highest set bit is a sentinel seeded at
//! `1 << f` where f is the free-variable threshold. `istest` demands a
//! marked var strictly below the sentinel; `isF` detects a var at or above
//! it (free/rigid). Under a binder the set shifts left, marking the fresh
//! variable only in W-position (2·is+1 vs 2·is).
//!
//! Detects W-shapes where W W → H[W W] (isB) or W _ W → H[W _ W] (isB23)
//! for strict head contexts H — infinite head reduction, hence no normal
//! form. A `false` answer claims nothing. Shift overflows return `false`
//! (conservative, oracle silent).

use crate::classical::machine::{Node, Pool};

/// Read-only view of a lambda term, so the oracle runs on both the flat
/// pool (census prefilter) and the escalation engine's boxed terms.
#[derive(Debug, Clone, Copy)]
pub enum NV<T> {
    Var(u32),
    Lam(T),
    App(T, T),
    Bot,
}

pub trait LView: Copy {
    fn node(self) -> NV<Self>;
}

impl LView for (&Pool, u32) {
    fn node(self) -> NV<Self> {
        let (p, id) = self;
        match p.node(id) {
            Node::Var(n) => NV::Var(n),
            Node::Lam(b) => NV::Lam((p, b)),
            Node::App(f, a) => NV::App((p, f), (p, a)),
        }
    }
}

// Work meter shared with the escalation engine (armed by escalation::normal_form,
// i64::MAX = disarmed). The oracle allocates nothing, so charging its
// recursion here is what bounds it on the huge intermediate terms the
// escalation capacity admits — one no_nf call is otherwise quadratic in
// term size. Exhaustion makes every predicate answer `false` (no claim),
// which is always sound.
thread_local! {
    pub(crate) static WORK: std::cell::Cell<i64> = const { std::cell::Cell::new(i64::MAX) };
}

pub(crate) fn spend_work() {
    WORK.with(|w| w.set(w.get() - 1));
}

/// Charge `n` units in one step — used by the escalation engine's
/// structure-sharing fast paths to bill exactly the work the skipped
/// traversal would have charged (meter parity: exhaustion happens at
/// the same check sites as the pre-sharing engine). Saturating: a
/// logical-size overflow charges "everything", which is the verdict
/// an unbounded grind reaches.
pub(crate) fn spend_work_n(n: i64) {
    WORK.with(|w| w.set(w.get().saturating_sub(n)));
}

pub(crate) fn work_exhausted() -> bool {
    WORK.with(|w| w.get()) < 0
}

/// Bit budget guard: shifting past this loses soundness, so go silent.
const MAX_IS: u64 = 1 << 62;

/// var n (1-based) is marked and is not the sentinel. Index 0 is not a
/// legal de Bruijn variable under the crate's 1-based convention and is
/// never marked (the lower bound also keeps `n - 1` from underflowing on
/// hand-built `Var(0)` terms, which the wire format cannot produce).
fn istest(is: u64, n: u32) -> bool {
    (1..63).contains(&n) && is >> (n - 1) & 1 == 1 && is >= 1 << n
}

#[inline(always)]
fn charge<const METERED: bool>() {
    if METERED {
        spend_work();
    }
}

#[inline(always)]
fn exhausted<const METERED: bool>() -> bool {
    METERED && work_exhausted()
}

/// term's head variable is free (at or above the sentinel).
fn is_f<const METERED: bool, T: LView>(is: u64, t: T) -> bool {
    charge::<METERED>();
    match t.node() {
        NV::Var(n) => n >= 63 || 1u64 << n > is,
        NV::App(a, _) => is_f::<METERED, _>(is, a),
        _ => false,
    }
}

fn is_w<const METERED: bool, T: LView>(is: u64, t: T) -> bool {
    charge::<METERED>();
    if is >= MAX_IS || exhausted::<METERED>() {
        return false;
    }
    match t.node() {
        NV::Var(n) => istest(is, n),
        NV::Lam(a) => is_b::<METERED, _>(2 * is + 1, a),
        _ => false,
    }
}

fn is_b<const METERED: bool, T: LView>(is: u64, t: T) -> bool {
    charge::<METERED>();
    if is >= MAX_IS || exhausted::<METERED>() {
        return false;
    }
    match t.node() {
        NV::App(a, b) => {
            if is_f::<METERED, _>(is, a) {
                is_b::<METERED, _>(is, b)
            } else if matches!(a.node(), NV::App(..)) {
                is_b::<METERED, _>(is, a)
            } else {
                is_w::<METERED, _>(is, a)
                    && (is_w::<METERED, _>(is, b) || is_b::<METERED, _>(is, b))
            }
        }
        NV::Lam(a) => is_b::<METERED, _>(2 * is, a),
        _ => false,
    }
}

fn is_w3a<const METERED: bool, T: LView>(is: u64, t: T) -> bool {
    charge::<METERED>();
    if is >= MAX_IS || exhausted::<METERED>() {
        return false;
    }
    match t.node() {
        NV::Var(n) => istest(is, n),
        NV::Lam(a) => is_b3::<METERED, _>(2 * is + 1, a),
        _ => false,
    }
}

fn is_w3b<const METERED: bool, T: LView>(is: u64, t: T) -> bool {
    charge::<METERED>();
    if is >= MAX_IS || exhausted::<METERED>() {
        return false;
    }
    match t.node() {
        NV::Var(n) => istest(is, n),
        NV::Lam(a) => match a.node() {
            NV::Lam(b) => {
                if is >= MAX_IS / 2 {
                    false
                } else {
                    is_b3::<METERED, _>(4 * is + 1, b)
                }
            }
            _ => false,
        },
        _ => false,
    }
}

fn is_b3<const METERED: bool, T: LView>(is: u64, t: T) -> bool {
    charge::<METERED>();
    if is >= MAX_IS || exhausted::<METERED>() {
        return false;
    }
    match t.node() {
        NV::App(a, b) => {
            if is_f::<METERED, _>(is, a) {
                is_b3::<METERED, _>(is, b)
            } else if matches!(a.node(), NV::App(f, _) if matches!(f.node(), NV::App(..))) {
                is_b3::<METERED, _>(is, a)
            } else if let NV::App(af, _) = a.node() {
                is_w3b::<METERED, _>(is, af)
                    && (is_w3b::<METERED, _>(is, b) || is_b3::<METERED, _>(is, b))
            } else {
                false
            }
        }
        NV::Lam(a) => is_b3::<METERED, _>(2 * is, a),
        _ => false,
    }
}

fn is_b23<const METERED: bool, T: LView>(is: u64, t: T) -> bool {
    match t.node() {
        NV::App(a, b) => {
            is_w3a::<METERED, _>(is, a)
                && (is_w3b::<METERED, _>(is, b) || is_b3::<METERED, _>(is, b))
        }
        _ => false,
    }
}

fn no_nf_with<const METERED: bool, T: LView>(f: u32, t: T) -> bool {
    if f >= 62 {
        return false;
    }
    let is = 1u64 << f;
    is_b::<METERED, _>(is, t) || is_b23::<METERED, _>(is, t)
}

/// `true` ⇒ the term (at free-variable threshold `f` binders) has no
/// normal form. `false` claims nothing.
///
/// THE ANSWER IS CONTEXT-DEPENDENT IN ONE DIRECTION. The thread-local
/// (private) `WORK` meter above is armed for the duration of an
/// `escalation::normal_form*` call (by an RAII guard, so it is disarmed
/// again on every exit including a panic). Called from inside one — the
/// per-App prefilter — an exhausted meter forces every predicate here to
/// answer `false`, so this function can decline on a thread where the
/// same term would be flagged outside. That asymmetry is the whole
/// safety argument: exhaustion only ever loses a `true`, never invents
/// one, and a lost `true` costs an escalation path, not a verdict. The
/// census prefilter runs with the meter disarmed (`i64::MAX`) and so
/// sees the predicate's full strength.
pub fn no_nf<T: LView>(f: u32, t: T) -> bool {
    no_nf_with::<true, _>(f, t)
}

/// Full-strength oracle for callers definitionally outside an escalation
/// meter scope. Monomorphization deletes every TLS access; the predicate and
/// traversal order are otherwise identical to [`no_nf`].
pub(crate) fn no_nf_unmetered<T: LView>(f: u32, t: T) -> bool {
    no_nf_with::<false, _>(f, t)
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::classical::machine::Pool;

    fn check(bits: &str) -> bool {
        let mut p = Pool::new();
        let root = p.decode_str(bits).unwrap();
        no_nf(0, (&p, root))
    }

    #[test]
    fn omega_flagged() {
        // (\x. x x)(\x. x x)
        assert!(check("010001101000011010"));
        // (\x. x x x)(\x. x x x)
        assert!(check("01000101101010000101101010"));
    }

    #[test]
    fn normalizers_not_flagged() {
        // I, K, and (\x. x x)(\y. y) — self-application shape that halts.
        assert!(!check("0010"));
        assert!(!check("0000110"));
        assert!(!check("01000110100010"));
    }
}
