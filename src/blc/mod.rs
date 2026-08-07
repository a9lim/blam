//! The shared substrate: untyped binary lambda calculus.
//!
//! Terms, the wire format, and closed-term enumeration. The reduction
//! kernel (`shift`/`subst`/`beta`) lives in the crate-private
//! `reduction` submodule: both pillars contract redexes with the same
//! textbook rules — the classical reference normalizer directly, the
//! quantum reference evaluator via a transplanted copy over `QTerm`,
//! the quantum skeleton checker directly — but the reducer internals
//! are not public surface.

pub mod enumerate;
pub(crate) mod reduction;
pub mod term;
pub mod wire;

pub use term::{app, lam, var, Term};
