//! The quantum pillar's subcommands. `q run` and `q census` are the
//! engine and the measurement; `q skeleton` is the trusted classical
//! checker used as the quantum escalation ladder's cheap rung; `q
//! selfint` measures self-interpretation. `q galois` and `q oddmin` are
//! research instruments behind the `lab` feature.
//!
//! `sweep` is the per-program step (run plus the mass-conservation
//! battery) that every measurement here shares — measurement plumbing,
//! so it lives beside the measurements rather than in the library.

use crate::args::R;

mod census;
mod run;
mod selfint;
mod skeleton;
mod sweep;

#[cfg(feature = "lab")]
mod galois;
#[cfg(feature = "lab")]
mod oddmin;

/// Pack a wire string MSB-first, for the fixed program vectors the
/// tests here name in bits. One helper: three copies of it used to sit
/// in `sweep` and twice in `galois`.
#[cfg(test)]
pub fn pack(bits: &str) -> (u64, u8) {
    let mut enc = 0u64;
    for c in bits.bytes() {
        enc = enc << 1 | u64::from(c == b'1');
    }
    (enc, bits.len() as u8)
}

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
        // `blam q help census` is `blam q census --help`.
        "help" if !rest.is_empty() => run(&[rest, &["--help".to_string()][..]].concat()),
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
