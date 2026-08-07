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
