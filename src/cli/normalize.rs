//! `blam normalize TERM` — the smallest thing the engine does: take a
//! closed term (wire bits, a program file, or λ-notation), reduce it to
//! normal form on the KN machine, and print the normal form's own wire
//! bits (or de Bruijn notation) plus the β-step count.
//!
//! No ladder, no oracle, no escalation: one budgeted run, and a typed
//! failure when the budget runs out. Anything that needs a verdict rather
//! than a normal form wants `blam adjudicate`.

use crate::args::{self, Args, R};
use blam::classical::machine::{Machine, Pool, StringSink};

const USAGE: &str = "\
blam normalize — normalize a closed BLC term on the KN machine

usage: blam normalize TERM [--beta N] [--db]

  TERM       wire bits (ASCII 0/1), a .lam / .blc / .blc8 file, or
             λ-notation: '(\\x.x x) (\\y.y)', or de Bruijn '(\\1 1) (\\1)'
  --beta N   beta-step budget (default 1048576)
  --db       print the normal form in de Bruijn notation, not wire bits

Prints the normal form and the beta-step count, or the typed out-of-fuel
variant that stopped the run. A .lam file is used as written, without
blc's size optimization (`blam blc nf` is the same normal form).";

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut beta: u64 = 1 << 20;
    let mut db = false;
    let mut p = Args::new("normalize", argv);
    while let Some(tok) = p.next() {
        match tok {
            "--beta" => beta = p.num(tok)?,
            "--db" => {
                p.flag(tok)?;
                db = true;
            }
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    p.at_most(1)?;
    let Some(arg) = p.positional().first().copied() else {
        return Err(format!(
            "blam normalize: missing TERM\n{}",
            args::hint("normalize")
        ));
    };
    // Validated before the arena sees it, so the ways a TERM argument can
    // be wrong — a stray character, an open term, a complete prefix of a
    // longer string, a syntax error — each name themselves. The decode
    // below is then the same one it always was, and cannot fail.
    let bits = crate::program::term_arg("normalize", arg)?.to_bits();
    let mut pool = Pool::new();
    let root = pool.decode_str(&bits).expect("validated above");
    let mut vm = Machine::new();
    let mut nf = StringSink::default();
    match vm.normalize(&pool, root, beta, &mut nf) {
        Ok(steps) => {
            if db {
                println!(
                    "{}",
                    blam::parse_all(&nf.0).expect("the machine emits one term")
                );
            } else {
                println!("{}", nf.0);
            }
            println!("|nf| = {} bits, {steps} beta", nf.0.len());
        }
        Err(e) => println!("no normal form within budget: {e}"),
    }
    Ok(())
}
