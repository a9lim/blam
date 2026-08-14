//! qALC — the quantum-algebraic third pillar: quantum *control*,
//! storeless, on an IAM-lineage token machine with runtime states in
//! ℓ² over token configurations.
//!
//! The accepted Python/Lean reference and proof surface live in `qalc/`
//! at the repository root; Architecture Gates 1 and 2 are closed and
//! this module is their differential Rust port, phased per
//! `docs/quantum-algebraic/rust-pillar.md` (ratified 2026-08-14). The
//! Python surface stays authoritative: frozen certificates and Gate-2
//! evidence enter as pinned fixture data under `tests/qalc/`, never as
//! re-derived output.
//!
//! **Isolation statement.** This pillar reads `quantum::scalar::Dw` and
//! `crate::hash` and touches nothing else outside its tree: no trait
//! impls on `Dw`, no shared mutable configuration, no classical or qBLC
//! code path. Classical census rows and qBLC operator rows are
//! bit-identical with this module present or deleted; the per-phase
//! verification bar checks both.
//!
//! Phase-0 surface (schema and codec): [`term`], [`mark`] (the typed
//! state grammar and the `PyReprKey` canonical-order renderer),
//! [`state`], [`amp`] (the canonical-invariant amplitude), and [`wire`]
//! (the fixture format). Phase 1 adds [`kernel`] — the step table and
//! the exact-Dw evolvers, pinned by the complete-carrier column
//! fixtures. The composed machine and everything above it arrive in
//! later phases.

pub mod amp;
pub mod kernel;
pub mod mark;
pub mod readback;
pub mod state;
pub mod term;
pub mod wire;
