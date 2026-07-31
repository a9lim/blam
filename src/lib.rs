//! Binary lambda calculus engine for algorithmic information theory experiments.
//!
//! The `term`/`parse`/`eval` modules form the *reference core*: a naive,
//! textbook-faithful implementation that serves as the executable spec.
//! The fast abstract machine (to come) is differential-tested against it.

pub mod bb;
pub mod enumerate;
pub mod eval;
pub mod oracle;
pub mod parse;
pub mod term;
pub mod vm;

pub use eval::{normalize, Budget, OutOfFuel};
pub use parse::{parse_all, parse_prefix, ParseError};
pub use term::Term;
