//! qALC — the quantum-algebraic third pillar: quantum *control*,
//! storeless, on an IAM-lineage token machine with runtime states in
//! ℓ² over token configurations.
//!
//! The accepted Python/Lean reference and proof surface live in `qalc/`
//! at the repository root; this module is its differential Rust port,
//! specified by `docs/quantum-algebraic/rust-pillar.md`. The Python
//! surface stays authoritative: frozen certificates and Gate-2
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
//! Schema and exact dynamics are split by responsibility: [`term`],
//! [`mark`], [`state`], [`amp`], and [`wire`] define identity and
//! interchange; [`kernel`] and [`readback`] define Gate-1 evolution;
//! [`compiler`], [`shadow`], and [`gate2check`] define the clean circuit
//! sector; [`admission`], [`wf`], and [`semantics`] make selection and the
//! public semantic objects total.

pub mod admission;
pub mod amp;
pub mod compiler;
pub mod gate2check;
pub mod kernel;
pub mod mark;
pub mod readback;
pub mod semantics;
pub mod shadow;
pub mod state;
pub mod term;
pub mod wf;
pub mod wire;
