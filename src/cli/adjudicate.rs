//! Targeted halting adjudication: the census ladder run on named terms
//! instead of a whole size class.
//!
//! Both modes run `classical::ladder::adjudicate` at the census's own
//! budgets, so a term's verdict here is by construction the verdict the
//! sweep gives it. That closes a documented Phase-3 divergence: these
//! paths used to call `Machine::normalize`, whose transition floor
//! (`1 << 22`) is LOOSER than the ladder's measured `64 × beta` rung
//! caps, and the single-term mode ran its big-budget KN attempt *before*
//! the escalation engine rather than after it. Both were verdict-
//! compatible — the loose rungs can only reach halts the ladder's far
//! larger rescue also reaches — but neither was the sweep's ladder, and
//! "what does the census say about this term?" is the whole question
//! this subcommand exists to answer.

use crate::args::{self, Args, R};
use blam::classical::ladder::{self, LadderCfg, Rung, Verdict};
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
  --no-prescan           skip the redex-free pre-scan
  --no-oracle            skip the divergence-oracle prefilter
  --work-mult N          escalation work meter per capacity bit (default 16)
  --probe-fuel N         redloop probe beta budget (default 4096)

run
  --file FILE            terms to adjudicate, one bit string per line
  --threads N            rayon threads for --file mode (0 = ambient)
  -v, --verbose          echo the ladder budgets to stderr before running";

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut cfg = LadderCfg::default();
    let mut file: Option<String> = None;
    let mut threads = 0usize;
    let mut verbose = false;
    let mut work_mult: Option<i64> = None;
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
    // `--threads` sizes the rayon pool for --file mode; on one term it
    // buys nothing, so accepting it silently would be a lie about what
    // the run did.
    if bits.is_some() && p.given("--threads") {
        return Err(p.incompatible(
            "--threads",
            "BITS",
            "single-term mode runs on this thread; --threads is for --file",
        ));
    }
    let engine = args::engine_cfg("adjudicate", work_mult, probe_fuel)?;
    cfg.work_mult = engine.work_mult;
    cfg.probe_fuel = engine.probe_fuel;
    if verbose {
        eprintln!("ladder: {}", describe(&cfg));
    }

    if let Some(bits) = bits {
        return single(&cfg, &bits);
    }
    // Escalation recursion can go deep on tower terms; give workers room.
    args::build_pool(threads)?;
    batch(&cfg, &file.expect("checked above"))
}

fn describe(cfg: &LadderCfg) -> String {
    format!(
        "budget1={} budget2={} bb-cap={} rescue={} x{} trans; prescan={} oracle={} \
         work-mult={} probe-fuel={}",
        cfg.budget1,
        cfg.budget2,
        cfg.bb_cap,
        cfg.rescue,
        cfg.rescue_trans_mult,
        cfg.prescan,
        cfg.oracle,
        cfg.work_mult,
        cfg.probe_fuel,
    )
}

/// The rung name as it appears in a report.
fn rung_name(r: Rung) -> &'static str {
    match r {
        Rung::Prescan => "prescan",
        Rung::Oracle => "oracle",
        Rung::Kn1 => "KN rung 1",
        Rung::Kn2 => "KN rung 2",
        Rung::Escalation => "escalation engine",
        Rung::Rescue => "KN rescue",
    }
}

/// One-term adjudication: run the ladder verbosely on given bits.
fn single(cfg: &LadderCfg, bits: &str) -> R<()> {
    // An open term used to be reported as a HALT here, and a term with
    // trailing bits as a verdict about a DIFFERENT (shorter) program.
    args::parse_program("adjudicate", bits)?;
    let mut pool = Pool::new();
    let root = pool.decode_str(bits).expect("validated above");
    println!(
        "term: {} bits, redex: {}",
        pool.bit_size(root),
        pool.has_redex(root)
    );
    // Reported unconditionally, even when --no-oracle keeps it out of
    // the ladder: it is the cheapest fact anyone asks this command for.
    println!("oracle prefilter no_nf: {}", no_nf(0, (&pool, root)));
    println!("ladder: {}", describe(cfg));

    let mut vm = Machine::new();
    let mut sink = SizeSink::default();
    let t = Instant::now();
    let o = ladder::adjudicate(cfg, &pool, &mut vm, root, &mut sink);
    let secs = t.elapsed().as_secs_f64();

    println!("decided at: {}", rung_name(o.rung));
    match o.verdict {
        Verdict::Halt {
            nf,
            steps,
            steps_exact,
        } => {
            let n = nf.resolve(sink.0);
            if steps_exact {
                println!("verdict: HALT |nf|={n} in {steps} beta ({secs:.3}s)");
            } else {
                // Proven halt without a canonical count: the engine's
                // simplify inlines betas, so it reports none, and the
                // rescue that would recover it ran out of fuel.
                println!("verdict: HALT |nf|={n}, beta count unrecovered ({secs:.3}s)");
            }
        }
        Verdict::Diverge => println!("verdict: DIVERGE ({secs:.3}s)"),
        Verdict::Unknown(why) => println!("verdict: UNKNOWN — {why:?} exhausted ({secs:.3}s)"),
    }
    if o.tel.head_diverge {
        println!("no whnf: the proof landed on the term's own head chain");
    }
    if let Some(e) = o.tel.kn2_stuck {
        println!("rung 2 out of fuel: {e:?}");
    }
    if let Some(e) = o.tel.rescue_stuck {
        println!("rescue out of fuel: {e:?}");
    }
    if o.tel.last_trans > 0 {
        println!("last KN run: {} transitions", o.tel.last_trans);
    }
    Ok(())
}

/// The verdict line for one term: the streamed batch format.
fn verdict_line(bits: &str, o: &ladder::LadderOutcome, nf_streamed: u64) -> String {
    match o.verdict {
        Verdict::Halt {
            nf,
            steps,
            steps_exact,
        } => {
            let n = nf.resolve(nf_streamed);
            if steps_exact {
                format!("{bits} HALT nf={n} steps={steps}")
            } else {
                format!("{bits} HALT nf={n} steps=?")
            }
        }
        Verdict::Diverge => {
            let by = if o.rung == Rung::Oracle {
                "oracle"
            } else {
                "bb-engine"
            };
            format!("{bits} DIVERGE {by}")
        }
        Verdict::Unknown(_) => format!("{bits} UNKNOWN"),
    }
}

/// Batch adjudication: run the full ladder on each bitstring in FILE
/// (one per line), in parallel, and print one verdict per line. Combine
/// with --bb-cap / --rescue to go beyond census defaults.
fn batch(cfg: &LadderCfg, path: &str) -> R<()> {
    let owned = args::read_terms_file(path)?;
    let terms: Vec<&str> = owned.iter().map(String::as_str).collect();
    let t0 = Instant::now();
    // Verdicts stream as they land (stdout is line-buffered), so a
    // killed run keeps everything it finished. Order is completion
    // order; downstream analysis groups by content, not position.
    let counts = std::sync::Mutex::new((0u64, 0u64, 0u64));
    terms.par_iter().for_each_init(
        || (Pool::new(), Machine::new(), SizeSink::default()),
        |(pool, vm, sink), bits| {
            pool.clear();
            // Unreachable: `read_terms_file` parsed every line before the
            // pool was built (args.rs, preflight).
            let root = pool.decode_str(bits).expect("preflighted term line");
            let o = ladder::adjudicate(cfg, pool, vm, root, sink);
            let line = verdict_line(bits, &o, sink.0);
            let mut c = counts.lock().unwrap();
            match o.verdict {
                Verdict::Halt { .. } => c.0 += 1,
                Verdict::Diverge => c.1 += 1,
                Verdict::Unknown(_) => c.2 += 1,
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
