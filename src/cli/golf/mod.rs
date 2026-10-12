//! Size optimizers for BLC programs (lab).
//!
//! Every move these instruments make is a β-expansion or β-reduction unless
//! a flag says otherwise, so a smaller term they report is β-convertible to
//! its input: the same normal form, or the same divergence, under every
//! argument. `golf check` confirms that independently: it looks for a common
//! reduct and, when the program reads a stream, compares normal forms on
//! every input up to a length. `tools/golf/sweep.py` drives all three over
//! the programs in tromp/AIT; `docs/classical/golf.md` records the results.

pub(crate) mod check;
pub(crate) mod component;
pub(crate) mod letopt;
pub(crate) mod term;

use crate::args::{self, R};

const USAGE: &str = "\
blam golf — size optimizers for BLC programs (lab)

usage: blam golf <tool> [flags]   (`blam golf <tool> --help`)

  letopt     exact enumeration of let structures over a term's let-free core
  component  β(η) component search under a size ceiling, or descent
  check      β-certificate and exact normal-form differential of two terms";

/// The tools recurse on term structure, and inlining a term that grows (a
/// fixpoint that is not a knot unfolds until the budget stops it) builds deep
/// terms, so they run on a thread with a large stack.
pub fn run(argv: &[String]) -> R<()> {
    let argv = argv.to_vec();
    std::thread::Builder::new()
        .stack_size(1 << 30)
        .spawn(move || dispatch(&argv))
        .map_err(|e| format!("blam golf: cannot start the worker thread: {e}"))?
        .join()
        .map_err(|_| "blam golf: the worker thread panicked".to_string())?
}

fn dispatch(argv: &[String]) -> R<()> {
    match argv.first().map(String::as_str) {
        None | Some("--help") | Some("-h") => {
            println!("{USAGE}");
            Ok(())
        }
        Some("letopt") => letopt::run(&argv[1..]),
        Some("component") => component::run(&argv[1..]),
        Some("check") => check::run(&argv[1..]),
        Some(other) => Err(format!(
            "blam golf: unknown tool `{other}`\n{}",
            args::hint("golf")
        )),
    }
}
