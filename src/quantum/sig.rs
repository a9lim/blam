//! The frozen signature order.
//!
//! A qBLC program is applied to its primitives in a fixed order, so the
//! order is part of the measured universe: every canonical number in
//! `data/quantum/` is relative to it. `docs/quantum/architecture.md`
//! records why this ordering was frozen; THIS is its single home in
//! code. Alternate universes (`qcensus --sig`) pass their own slice and
//! produce non-canonical data by construction.

use super::Prim;

/// The frozen five, in signature order.
pub const FROZEN: [Prim; 5] = [Prim::H, Prim::Meas, Prim::New, Prim::Cnot, Prim::T];

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
}
