//! The quantum pillar's subcommands. `q run` and `q census` are the
//! engine and the measurement; `q skeleton` is the trusted classical
//! checker used as the quantum escalation ladder's cheap rung; `q
//! selfint` measures self-interpretation. `q galois` and `q oddmin` are
//! research instruments behind the `lab` feature.

use crate::args::R;

mod census;
mod run;
mod selfint;
mod skeleton;

#[cfg(feature = "lab")]
mod galois;
#[cfg(feature = "lab")]
mod oddmin;

const USAGE: &str = "\
blam q — the quantum pillar (qBLC)

usage: blam q <subcommand> [args]

  run BITS               run one qBLC program, one line per leaf
  census [MIN] MAX       the M^(1) operator census
  skeleton FILE          trusted skeleton sweep over a terms file
  selfint [MAX_N] [PH]   self-interpretation measurement
  galois idiom|complement   the dyadicity campaign       (lab feature)
  oddmin [W]             gated reference DP for the CNOT-free lane
                                                         (lab feature)";

pub fn run(argv: &[String]) -> R<()> {
    let Some(sub) = argv.first() else {
        println!("{USAGE}");
        return Ok(());
    };
    let rest = &argv[1..];
    match sub.as_str() {
        "--help" | "-h" | "help" => {
            println!("{USAGE}");
            Ok(())
        }
        "run" => run::run(rest),
        "census" => census::run(rest),
        "skeleton" => skeleton::run(rest),
        "selfint" => selfint::run(rest),
        #[cfg(feature = "lab")]
        "galois" => galois::run(rest),
        #[cfg(not(feature = "lab"))]
        "galois" => Err(crate::no_lab("q galois")),
        #[cfg(feature = "lab")]
        "oddmin" => oddmin::run(rest),
        #[cfg(not(feature = "lab"))]
        "oddmin" => Err(crate::no_lab("q oddmin")),
        other => Err(format!(
            "blam q: unknown subcommand `{other}`\ntry `blam q --help`"
        )),
    }
}
