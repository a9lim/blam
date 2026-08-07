//! The shared substrate: untyped binary lambda calculus.
//!
//! Terms, the wire format, and closed-term enumeration. The reduction
//! kernel (`shift`/`subst`/`beta`) lives in the crate-private
//! `reduction` submodule: both pillars contract redexes with the same
//! textbook rules — the classical reference normalizer directly, the
//! quantum reference evaluator via a transplanted copy over `QTerm`,
//! the quantum skeleton checker directly — but the reducer internals
//! are not public surface. `term` is private for the same reason: the
//! types it defines ARE public, through the re-exports below and through
//! `blam::{Term, app, lam, var}`, but there is one path to them rather
//! than two.

pub mod enumerate;
pub(crate) mod reduction;
pub(crate) mod term;
pub mod wire;

pub use term::{app, lam, var, Term};
