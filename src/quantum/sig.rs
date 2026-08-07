//! The frozen signature order.
//!
//! A qBLC program is applied to its primitives in a fixed order, so the
//! order is part of the measured universe: every canonical number in
//! `data/quantum/` is relative to it. `docs/quantum/architecture.md`
//! records why this ordering was frozen; THIS is its single home in
//! code. Alternate universes (`blam q census --sig`, `blam q skeleton
//! --sig`) pass their own slice and produce non-canonical data by
//! construction.

use super::Prim;
use crate::blc::term::{app, lam, var};
use crate::blc::Term;

/// The frozen five, in signature order.
pub const FROZEN: [Prim; 5] = [Prim::H, Prim::Meas, Prim::New, Prim::Cnot, Prim::T];

/// The classical skeleton of a program: `p x₁ … x_slots`, one rigid
/// placeholder per signature slot, innermost-first de Bruijn indices.
///
/// Both skeleton consumers build this shape — the trusted checker
/// (`quantum::certificate::adjudicate`) and the census's `--skeleton`
/// column — and their conclusions are only comparable if the shape is
/// literally the same term, so it is built here once. The placeholders are
/// deliberately root-free variables: `p` is closed, so index `i` at the
/// root escapes every binder and can never be captured.
pub fn with_holes(p: &Term, slots: u32) -> Term {
    let mut t = p.clone();
    for i in 1..=slots {
        t = app(t, var(i));
    }
    t
}

/// Church numeral k̄ = λf.λx. fᵏ x — Object B's dimension argument, on the
/// tree side. [`crate::quantum::machine::Pool::numeral`] is the arena-side
/// twin used by the engine; a test pins the two structurally equal, since
/// a skeleton built from a different numeral than the run would adjudicate
/// a different program.
pub fn church_numeral(k: u32) -> Term {
    let mut body = var(1);
    for _ in 0..k {
        body = app(var(2), body);
    }
    lam(lam(body))
}

#[cfg(test)]
mod tests {
    use super::*;

    /// The pilot's verdict, pinned in code.
    ///
    /// The signature-order campaign that produced this ordering ran as
    /// its own driver (`qpilot`) over the permutations of the canonical
    /// five; the campaign is in the ledger, the rationale in
    /// `docs/quantum/architecture.md`, and the *result* is this array —
    /// so the driver was retired and this test took over its job. Every
    /// canonical number under `data/quantum/` is relative to this order:
    /// a silent reordering would not fail any measurement, it would
    /// quietly re-define the universe they were measured in.
    #[test]
    fn frozen_order_is_pinned() {
        assert_eq!(
            FROZEN,
            [Prim::H, Prim::Meas, Prim::New, Prim::Cnot, Prim::T],
            "the frozen signature order changed; every number in data/quantum/ is relative to it"
        );
        assert_eq!(
            FROZEN.map(|p| p.name()),
            ["h", "meas", "new", "cnot", "t"],
            "the spelling `--sig` accepts changed"
        );
    }

    /// `FROZEN` is an ordering OF the canonical set, not a different
    /// alphabet: same five gates, permuted. The pilot only ever ranked
    /// orderings, so a drift in either direction is a drift in both.
    #[test]
    fn frozen_is_a_permutation_of_the_canonical_set() {
        let mut a = FROZEN.map(|p| p.name());
        let mut b = Prim::CANONICAL_SET.map(|p| p.name());
        a.sort_unstable();
        b.sort_unstable();
        assert_eq!(a, b, "FROZEN and CANONICAL_SET are no longer the same five");
    }

    #[test]
    fn holes_are_applied_innermost_first() {
        // λ.1 with two slots is ((λ.1) x₁) x₂ — order matters: slot i is
        // de Bruijn i, so the FIRST signature argument is the outermost.
        let p = lam(var(1));
        assert_eq!(with_holes(&p, 2), app(app(lam(var(1)), var(1)), var(2)));
        assert_eq!(with_holes(&p, 0), p);
        // |App(f,a)| = |f| + |a| + 2 and |var i| = i + 1, so five slots
        // cost Σ_{i=1..5} (i + 3) = 30 bits.
        assert_eq!(with_holes(&p, 5).bit_size(), p.bit_size() + 30);
    }

    #[test]
    fn church_numerals_are_the_expected_shape() {
        assert_eq!(church_numeral(0), lam(lam(var(1))));
        assert_eq!(church_numeral(1), lam(lam(app(var(2), var(1)))));
        assert_eq!(
            church_numeral(3),
            lam(lam(app(var(2), app(var(2), app(var(2), var(1))))))
        );
    }
}
