//! `blam` — one binary for every engine, measurement, certificate tool,
//! and research instrument in the repo.
//!
//! The command table is grouped by epistemic tier, not by typing depth:
//! ENGINES run a term, MEASUREMENTS sweep a population, CERTIFICATES
//! produce or check proofs, INSTRUMENTS are diagnostics that nothing
//! canonical depends on. Instruments (and the untrusted certificate
//! discovery surface) live behind the `lab` feature; a binary built
//! without it still *recognises* their names and says how to get them,
//! rather than pretending the commands do not exist.

mod adjudicate;
mod args;
mod census;
mod cert;
mod ckpt;
mod normalize;
mod q;
mod solomonoff;

#[cfg(feature = "lab")]
mod slots;
#[cfg(feature = "lab")]
mod trace;

const USAGE: &str = "\
blam — binary lambda calculus engine for algorithmic information theory

usage: blam <command> [args]        (`blam <command> --help` for details)

ENGINES
  normalize BITS               normalize a closed term on the KN machine
  adjudicate BITS | --file F   run the full halting ladder, verbosely
  q run BITS                   run a qBLC program, one line per leaf

MEASUREMENTS
  census [MIN] MAX             halt/diverge/unknown census by term size
  solomonoff [MIN] MAX         Solomonoff prior m(x), K(x), Omega bounds
  q census [MIN] MAX           the quantum operator census
  q skeleton FILE              trusted skeleton sweep over a terms file
  q selfint [MAX_N] [PHASE]    qBLC self-interpretation measurement

CERTIFICATES
  cert search                  divergence-certificate discovery  (lab feature)
  cert lean [KILLS] [OUTDIR]   emit the kills as Lean 4 modules
  cert diag FILE               where the discovery pipeline drops a term
                                                                 (lab feature)

INSTRUMENTS
  trace scan|single|dump|verify-loop32   reduction-shape classifier
                                                                 (lab feature)
  slots var|abs|app            self-interpreter slot search       (lab feature)
  q galois idiom|complement    the dyadicity campaign             (lab feature)
  q oddmin [W]                 gated reference DP for the CNOT-free lane
                                                                 (lab feature)

Engine knobs: --work-mult N / --probe-fuel N on the ladder subcommands
(BLC_WORK_MULT / BLC_PROBE_FUEL are honoured as fallbacks).";

/// What a lab-gated subcommand says when the feature is off.
#[cfg(not(feature = "lab"))]
fn no_lab(cmd: &str) -> String {
    format!("blam {cmd}: built without the lab feature — rebuild with --features lab")
}

fn dispatch(argv: &[String]) -> Result<(), String> {
    let Some(cmd) = argv.first() else {
        println!("{USAGE}");
        return Ok(());
    };
    if cmd == "--help" || cmd == "-h" || cmd == "help" {
        println!("{USAGE}");
        return Ok(());
    }
    let rest = &argv[1..];
    match cmd.as_str() {
        "normalize" => normalize::run(rest),
        "adjudicate" => adjudicate::run(rest),
        "census" => census::run(rest),
        "solomonoff" => solomonoff::run(rest),
        "cert" => cert::run(rest),
        "q" => q::run(rest),
        #[cfg(feature = "lab")]
        "trace" => trace::run(rest),
        #[cfg(not(feature = "lab"))]
        "trace" => Err(no_lab("trace")),
        #[cfg(feature = "lab")]
        "slots" => slots::run(rest),
        #[cfg(not(feature = "lab"))]
        "slots" => Err(no_lab("slots")),
        other => Err(format!(
            "blam: unknown command `{other}`\ntry `blam --help` for the command table"
        )),
    }
}

fn main() {
    let argv: Vec<String> = std::env::args().skip(1).collect();
    if let Err(e) = dispatch(&argv) {
        eprintln!("{e}");
        std::process::exit(2);
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    fn argv(xs: &[&str]) -> Vec<String> {
        xs.iter().map(|s| s.to_string()).collect()
    }

    /// Every subcommand answers `--help` — which is also the cheapest
    /// proof that the dispatcher reaches it at all.
    #[test]
    fn every_subcommand_is_reachable() {
        let always = [
            vec!["normalize"],
            vec!["adjudicate"],
            vec!["census"],
            vec!["solomonoff"],
            vec!["cert"],
            vec!["cert", "lean"],
            vec!["q"],
            vec!["q", "run"],
            vec!["q", "census"],
            vec!["q", "skeleton"],
            vec!["q", "selfint"],
        ];
        for mut path in always {
            path.push("--help");
            assert!(
                dispatch(&argv(&path)).is_ok(),
                "{path:?} did not answer --help"
            );
        }
    }

    #[test]
    fn top_level_help_lists_every_group() {
        assert!(dispatch(&argv(&["--help"])).is_ok());
        assert!(dispatch(&argv(&[])).is_ok());
        for group in ["ENGINES", "MEASUREMENTS", "CERTIFICATES", "INSTRUMENTS"] {
            assert!(USAGE.contains(group), "{group} missing from the help");
        }
    }

    #[test]
    fn unknown_command_names_it_and_points_at_help() {
        let e = dispatch(&argv(&["ceusus"])).unwrap_err();
        assert!(e.contains("unknown command `ceusus`"), "{e}");
        assert!(e.contains("blam --help"), "{e}");
        let e = dispatch(&argv(&["q", "sensus"])).unwrap_err();
        assert!(e.contains("unknown"), "{e}");
        let e = dispatch(&argv(&["cert", "serch"])).unwrap_err();
        assert!(e.contains("unknown"), "{e}");
    }

    /// The lab surface: reachable when the feature is on, and named with
    /// a rebuild instruction (never "unknown command") when it is off.
    #[test]
    fn lab_subcommands_are_named_either_way() {
        let paths = [
            vec!["trace"],
            vec!["slots"],
            vec!["cert", "search"],
            vec!["cert", "diag"],
            vec!["q", "galois"],
            vec!["q", "oddmin"],
        ];
        for mut path in paths {
            let name = path.join(" ");
            path.push("--help");
            let r = dispatch(&argv(&path));
            #[cfg(feature = "lab")]
            assert!(r.is_ok(), "{name} did not answer --help");
            #[cfg(not(feature = "lab"))]
            {
                let e = r.unwrap_err();
                assert!(e.contains("built without the lab feature"), "{name}: {e}");
                assert!(e.contains("--features lab"), "{name}: {e}");
                assert!(!e.contains("unknown"), "{name}: {e}");
            }
        }
    }

    #[test]
    fn missing_range_and_inverted_range_are_rejected() {
        let e = dispatch(&argv(&["census"])).unwrap_err();
        assert!(e.contains("missing size range"), "{e}");
        let e = dispatch(&argv(&["census", "30", "20"])).unwrap_err();
        assert!(e.contains("MIN 30 is above MAX 20"), "{e}");
        let e = dispatch(&argv(&["solomonoff", "30", "20"])).unwrap_err();
        assert!(e.contains("MIN 30 is above MAX 20"), "{e}");
        let e = dispatch(&argv(&["q", "census", "30", "20"])).unwrap_err();
        assert!(e.contains("MIN 30 is above MAX 20"), "{e}");
    }

    #[test]
    fn missing_values_and_unknown_flags_are_rejected() {
        let e = dispatch(&argv(&["census", "4", "20", "--budget1"])).unwrap_err();
        assert!(e.contains("needs a value"), "{e}");
        let e = dispatch(&argv(&["census", "4", "20", "--budjet1", "64"])).unwrap_err();
        assert!(e.contains("unknown argument `--budjet1`"), "{e}");
        let e = dispatch(&argv(&["normalize", "0010", "--beta", "lots"])).unwrap_err();
        assert!(e.contains("--beta lots"), "{e}");
    }
}
