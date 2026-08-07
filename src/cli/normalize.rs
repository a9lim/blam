//! `blam normalize BITS` — the smallest thing the engine does: decode a
//! closed BLC term, reduce it to normal form on the KN machine, and print
//! the normal form's own wire bits plus the β-step count.
//!
//! No ladder, no oracle, no escalation: one budgeted run, and a typed
//! failure when the budget runs out. Anything that needs a verdict rather
//! than a normal form wants `blam adjudicate`.

use crate::args::{self, Args, R};
use blam::classical::machine::{Machine, Pool, StringSink};
use blam::classical::OutOfFuel;

const USAGE: &str = "\
blam normalize — normalize a closed BLC term on the KN machine

usage: blam normalize BITS [--beta N]

  BITS       the term's wire encoding (ASCII 0/1)
  --beta N   beta-step budget (default 1048576)

Prints the normal form's wire bits and the beta-step count, or the typed
out-of-fuel variant that stopped the run.";

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut beta: u64 = 1 << 20;
    let mut p = Args::new("normalize", argv);
    while let Some(tok) = p.next() {
        match tok {
            "--beta" => beta = p.num(tok)?,
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    p.at_most(1)?;
    let Some(bits) = p.positional().first().copied() else {
        return Err(format!(
            "blam normalize: missing BITS\n{}",
            args::hint("normalize")
        ));
    };
    // Validated before the arena sees it, so the three ways a BITS
    // argument can be wrong — a stray character, an open term, and a
    // complete prefix of a longer string — each name themselves. The
    // decode below is then the same one it always was, and cannot fail.
    args::parse_program("normalize", bits)?;
    let mut pool = Pool::new();
    let root = pool.decode_str(bits).expect("validated above");
    let mut vm = Machine::new();
    let mut nf = StringSink::default();
    match vm.normalize(&pool, root, beta, &mut nf) {
        Ok(steps) => {
            println!("{}", nf.0);
            println!("|nf| = {} bits, {steps} beta", nf.0.len());
        }
        Err(e) => {
            let why = match e {
                OutOfFuel::Beta => "beta budget",
                OutOfFuel::Transitions => "transition cap",
                OutOfFuel::Aborted => "sink abort",
            };
            println!("no normal form within budget: out of fuel ({why})");
        }
    }
    Ok(())
}
