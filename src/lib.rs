//! Binary lambda calculus engine for algorithmic information theory experiments.
//!
//! The `term`/`parse`/`eval` modules form the *reference core*: a naive,
//! textbook-faithful implementation that serves as the executable spec;
//! `vm` is the fast abstract machine differential-tested against it.
//! The quantum pillar mirrors the layout with a `q` prefix: `qeval` is
//! the naive reference evaluator, `qvm` the lockstep-verified fast path.

pub mod bb;
pub mod cert;
pub mod dw;
pub mod enumerate;
pub mod eval;
pub mod odd;
pub mod oracle;
pub mod parse;
pub mod qeval;
pub mod qvm;
pub mod radical;
pub mod term;
pub mod vm;

pub use eval::{normalize, Budget, OutOfFuel};
pub use parse::{parse_all, parse_prefix, ParseError};
pub use term::Term;
