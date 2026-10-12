//! Searches below the 168-bit BLC self-interpreter (lab).
//!
//! `docs/classical/self-interpreter/design.md` records why the 168 resists
//! single moves. These instruments are the searches that only make sense for
//! the interpreter's own contract; the general size optimizers it also used
//! (`letopt`, `component`) live in `blam golf`. Every candidate they report
//! is a hypothesis until `tools/self-interpreter/battery.py` passes it.

mod ctx;
mod hole;
mod wiring;

use crate::args::{self, R};

const USAGE: &str = "\
blam selfint — searches below the 168-bit self-interpreter (lab)

usage: blam selfint <search> [flags]   (`blam selfint <search> --help`)

  ctx       contextual slot search: splice into the 168, check the contract
  hole      every fill of one `_` in any interpreter template
  wiring    every closed context around the parser body (universal machine)

`blam golf letopt` and `blam golf component` are the let-structure and βη
searches that design.md also reports.";

pub fn run(argv: &[String]) -> R<()> {
    match argv.first().map(String::as_str) {
        None | Some("--help") | Some("-h") => {
            println!("{USAGE}");
            Ok(())
        }
        Some("ctx") => ctx::run(&argv[1..]),
        Some("hole") => hole::run(&argv[1..]),
        Some("wiring") => wiring::run(&argv[1..]),
        Some(other) => Err(format!(
            "blam selfint: unknown search `{other}`\n{}",
            args::hint("selfint")
        )),
    }
}
