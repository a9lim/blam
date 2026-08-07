//! Targeted halting adjudication: the census ladder run on named terms
//! instead of a whole size class. Extracted verbatim from `census
//! --term` (the verbose single-term report) and `census --terms-file`
//! (the streaming batch sweep).
//!
//! Phase 3 note: the two paths do NOT run identical budgets. The single-
//! term report calls `Machine::normalize`, which applies the machine's
//! own transition floor (`1 << 22`) rather than the census's measured
//! `64x beta` rung caps, and the batch path does the same on rungs 1 and
//! 2 before switching to `normalize_capped` for the rescue. Both are
//! looser than the sweep's ladder and were kept bit-for-bit on the move,
//! because tightening them here would change published verdict lines.
//! The Phase 3 ladder unification makes all three modes identical by
//! construction; until then this is a deliberate, documented divergence.

use crate::args::{self, Args, R};
use crate::census::{default_cfg, lterm_of};
use blam::classical::escalation::{normal_form, NoNf};
use blam::classical::machine::{Machine, Pool, SizeSink};
use blam::classical::oracle::no_nf;
use rayon::prelude::*;
use std::time::Instant;

const USAGE: &str = "\
blam adjudicate — run the halting ladder on named terms

usage: blam adjudicate BITS [flags]          verbose single-term report
       blam adjudicate --file FILE [flags]   one streamed verdict per line

ladder (defaults are the census ladder's)
  --budget1 N            rung-1 beta budget (default 64)
  --budget2 N            rung-2 beta budget (default 4096)
  --bb-cap N             escalation-engine capacity (default 2000000)
  --rescue N             KN rescue beta budget (default 10000000)
  --rescue-trans-mult N  rescue transition cap = rescue x N (default 32)
  --no-prescan           skip the redex-free pre-scan (--file mode)
  --no-oracle            skip the divergence-oracle prefilter (--file mode)
  --work-mult N          BLC_WORK_MULT for this run (default 16)
  --probe-fuel N         BLC_PROBE_FUEL for this run (default 4096)

run
  --file FILE            terms to adjudicate, one bit string per line
  --threads N            rayon threads for --file mode (0 = ambient)
  -v, --verbose          echo the ladder budgets to stderr before running";

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut cfg = default_cfg();
    let mut file: Option<String> = None;
    let mut threads = 0usize;
    let mut verbose = false;
    let mut work_mult: Option<u64> = None;
    let mut probe_fuel: Option<u64> = None;
    let mut p = Args::new("adjudicate", argv);
    while let Some(tok) = p.next() {
        match tok {
            "--budget1" => cfg.budget1 = p.num(tok)?,
            "--budget2" => cfg.budget2 = p.num(tok)?,
            "--bb-cap" => cfg.bb_cap = p.num(tok)?,
            "--rescue" => cfg.rescue = p.num(tok)?,
            "--rescue-trans-mult" => cfg.rescue_trans_mult = p.num(tok)?,
            "--threads" => threads = p.num(tok)?,
            "--work-mult" => work_mult = Some(p.num(tok)?),
            "--probe-fuel" => probe_fuel = Some(p.num(tok)?),
            "--file" => file = Some(p.value(tok)?.to_string()),
            "--no-prescan" => {
                p.flag(tok)?;
                cfg.prescan = false;
            }
            "--no-oracle" => {
                p.flag(tok)?;
                cfg.oracle = false;
            }
            "-v" | "--verbose" => {
                p.flag("--verbose")?;
                verbose = true;
            }
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    p.at_most(1)?;
    let bits = p.positional().first().map(|s| s.to_string());
    match (&bits, &file) {
        (None, None) => {
            return Err(format!(
                "blam adjudicate: need BITS or --file FILE\n{}",
                args::hint("adjudicate")
            ))
        }
        (Some(_), Some(_)) => {
            return Err(format!(
                "blam adjudicate: BITS and --file are alternatives, not both\n{}",
                args::hint("adjudicate")
            ))
        }
        _ => {}
    }
    // Phase 3: becomes explicit library config.
    args::apply_engine_env(work_mult, probe_fuel);
    if verbose {
        eprintln!(
            "ladder: budget1={} budget2={} bb-cap={} rescue={} x{} trans; prescan={} oracle={}",
            cfg.budget1,
            cfg.budget2,
            cfg.bb_cap,
            cfg.rescue,
            cfg.rescue_trans_mult,
            cfg.prescan,
            cfg.oracle
        );
    }

    if let Some(bits) = bits {
        return single(&cfg, &bits);
    }
    // Escalation recursion can go deep on tower terms; give workers room.
    args::build_pool(threads)?;
    batch(&cfg, &file.expect("checked above"))
}

/// One-term adjudication: run the ladder verbosely on given bits.
fn single(cfg: &crate::census::Cfg, bits: &str) -> R<()> {
    let mut pool = Pool::new();
    let Some(root) = pool.decode_str(bits) else {
        return Err(format!(
            "blam adjudicate: `{bits}` is not a closed BLC term\n{}",
            args::hint("adjudicate")
        ));
    };
    println!(
        "term: {} bits, redex: {}",
        pool.bit_size(root),
        pool.has_redex(root)
    );
    println!("oracle prefilter no_nf: {}", no_nf(0, (&pool, root)));
    let mut vm = Machine::new();
    for budget in [cfg.budget1, cfg.budget2, cfg.rescue] {
        let mut sink = SizeSink::default();
        let t = Instant::now();
        match vm.normalize(&pool, root, budget, &mut sink) {
            Ok(steps) => {
                println!(
                    "KN budget {budget}: HALT |nf|={} in {} beta ({:.3}s)",
                    sink.0,
                    steps,
                    t.elapsed().as_secs_f64()
                );
                return Ok(());
            }
            Err(_) => println!(
                "KN budget {budget}: out of fuel ({:.3}s)",
                t.elapsed().as_secs_f64()
            ),
        }
    }
    let t = Instant::now();
    let verdict = normal_form(cfg.bb_cap, &lterm_of(&pool, root));
    println!(
        "BB engine cap {}: {:?} ({:.3}s)",
        cfg.bb_cap,
        verdict.as_ref().map(|nf| nf.bit_size()),
        t.elapsed().as_secs_f64()
    );
    Ok(())
}

/// Batch adjudication: run the full ladder on each bitstring in FILE
/// (one per line), in parallel, and print one verdict per line. Combine
/// with --bb-cap / --rescue to go beyond census defaults.
fn batch(cfg: &crate::census::Cfg, path: &str) -> R<()> {
    let owned = args::read_terms_file(path)?;
    let terms: Vec<&str> = owned.iter().map(String::as_str).collect();
    let t0 = Instant::now();
    // Verdicts stream as they land (stdout is line-buffered), so a
    // killed run keeps everything it finished. Order is completion
    // order; downstream analysis groups by content, not position.
    let counts = std::sync::Mutex::new((0u64, 0u64, 0u64));
    terms.par_iter().for_each_init(
        || (Pool::new(), Machine::new()),
        |(pool, vm), bits| {
            pool.clear();
            let root = pool.decode_str(bits).expect("parse term line");
            let line = 'v: {
                if cfg.prescan && !pool.has_redex(root) {
                    break 'v format!("{bits} HALT nf={} steps=0", pool.bit_size(root));
                }
                if cfg.oracle && no_nf(0, (&*pool, root)) {
                    break 'v format!("{bits} DIVERGE oracle");
                }
                for budget in [cfg.budget1, cfg.budget2] {
                    let mut sink = SizeSink::default();
                    if let Ok(steps) = vm.normalize(pool, root, budget, &mut sink) {
                        break 'v format!("{bits} HALT nf={} steps={steps}", sink.0);
                    }
                }
                match normal_form(cfg.bb_cap, &lterm_of(pool, root)) {
                    Ok(nf) => {
                        let mut sink = SizeSink::default();
                        match vm.normalize_capped(
                            pool,
                            root,
                            cfg.rescue,
                            cfg.rescue.saturating_mul(cfg.rescue_trans_mult),
                            &mut sink,
                        ) {
                            Ok(steps) => {
                                format!("{bits} HALT nf={} steps={steps}", sink.0)
                            }
                            Err(_) => format!("{bits} HALT nf={} steps=?", nf.bit_size()),
                        }
                    }
                    Err(NoNf::Diverge) => format!("{bits} DIVERGE bb-engine"),
                    Err(NoNf::Unknown(_)) => {
                        let mut sink = SizeSink::default();
                        match vm.normalize_capped(
                            pool,
                            root,
                            cfg.rescue,
                            cfg.rescue.saturating_mul(cfg.rescue_trans_mult),
                            &mut sink,
                        ) {
                            Ok(steps) => {
                                format!("{bits} HALT nf={} steps={steps}", sink.0)
                            }
                            Err(_) => format!("{bits} UNKNOWN"),
                        }
                    }
                }
            };
            let mut c = counts.lock().unwrap();
            if line.contains(" HALT ") {
                c.0 += 1;
            } else if line.contains(" DIVERGE") {
                c.1 += 1;
            } else {
                c.2 += 1;
            }
            let done = c.0 + c.1 + c.2;
            println!("{line}");
            if done.is_multiple_of(100) {
                eprintln!(
                    "progress: {done}/{} ({:.0}s)",
                    terms.len(),
                    t0.elapsed().as_secs_f64()
                );
            }
        },
    );
    let (h, d, u) = *counts.lock().unwrap();
    eprintln!(
        "adjudicated {} terms: {h} halt, {d} diverge, {u} unknown ({:.1}s)",
        terms.len(),
        t0.elapsed().as_secs_f64()
    );
    Ok(())
}
