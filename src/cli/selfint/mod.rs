//! Searches below the 168-bit BLC self-interpreter (lab).
//!
//! `docs/classical/self-interpreter/design.md` records why the 168 resists
//! single moves; these instruments run the three follow-up searches named
//! there. Every candidate they report is a hypothesis until
//! `tools/self-interpreter/battery.py` passes it.

mod component;
mod ctx;
mod letopt;
mod term;

use crate::args::{self, R};

const USAGE: &str = "\
blam selfint — searches below the 168-bit self-interpreter (lab)

usage: blam selfint <search> [flags]   (`blam selfint <search> --help`)

  letopt    exact enumeration of let structures over the let-free core
  ctx       contextual slot search: splice into the 168, check the contract
  component βη component search under a size ceiling (Rust beta_search)";

pub fn run(argv: &[String]) -> R<()> {
    match argv.first().map(String::as_str) {
        None | Some("--help") | Some("-h") => {
            println!("{USAGE}");
            Ok(())
        }
        Some("letopt") => letopt::run(&argv[1..]),
        Some("ctx") => ctx::run(&argv[1..]),
        Some("component") => component::run(&argv[1..]),
        Some(other) => Err(format!(
            "blam selfint: unknown search `{other}`\n{}",
            args::hint("selfint")
        )),
    }
}
