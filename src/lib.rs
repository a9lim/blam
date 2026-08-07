#![cfg_attr(docsrs, feature(doc_cfg))]
#![warn(missing_debug_implementations)]
//! Binary lambda calculus engine for algorithmic information theory
//! experiments.
//!
//! Three layers:
//!
//! - [`blc`] — the substrate both pillars share: terms, the wire format,
//!   closed-term enumeration, and the reduction kernel.
//! - [`classical`] and [`quantum`] — the two pillars, each shaped the
//!   same way: a `reference` module that is the executable spec, a
//!   `machine` that is the fast path differential-tested against it, and
//!   a `certificate` layer of trusted checkers. The classical pillar
//!   additionally carries the divergence `oracle` and the `escalation`
//!   engine; the quantum pillar the exact `scalar` ring and the frozen
//!   signature order.
//! - `lab` — research instruments behind the `lab` feature, depended on
//!   by nothing in the pillars.
//!
//! One verb pair, semantic rather than cosmetic: classical terms
//! `normalize`, quantum programs `run`.
//!
//! Design documents referenced from doc comments (`docs/...`) live in
//! the repository <https://github.com/a9lim/blam>, not in the published
//! package.

pub mod blc;
pub mod classical;
pub mod quantum;

#[cfg(feature = "lab")]
#[cfg_attr(docsrs, doc(cfg(feature = "lab")))]
pub mod lab;

pub use blc::wire::{parse_all, parse_prefix, ParseError};
pub use blc::{app, lam, var, Term};
