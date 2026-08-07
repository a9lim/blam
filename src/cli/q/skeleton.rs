//! `blam q skeleton FILE` — the trusted-checker sweep over a terms
//! file.
//!
//! No qvm run at all: the whole point is that a skeleton kill is orders
//! of magnitude cheaper than paying the quantum Unknown budget per
//! program. The classical skeleton is the program applied to one rigid
//! placeholder per signature slot; where that reduction settles, the
//! quantum fate follows. One streamed line per program.
//!
//! The ladder itself lives in `quantum::certificate` beside the transfer
//! theorems that license it (`adjudicate_with_transfer`); this file is the
//! driver — parse, fan out, render, tally.

use crate::args::{self, Args, R};
use blam::quantum::certificate::{
    adjudicate_with_transfer, CapReason, SkelCaps, Transfer, TransferCaps, TransferScratch, Via,
};
use blam::quantum::sig::FROZEN;
use rayon::prelude::*;
use std::sync::atomic::{AtomicU64, Ordering};
use std::time::Instant;

const USAGE: &str = "\
blam q skeleton FILE — trusted skeleton sweep over a terms file

usage: blam q skeleton FILE [flags]

  --sig LIST      comma-separated signature order (default the frozen five);
                  only its LENGTH matters here — one hole per slot
  --steps N       skeleton reduction steps per program (default 256)
  --size N        skeleton size ceiling in bits (default 16384)
  --threads N     rayon threads (0 = ambient, the default)
  --work-mult N   escalation work-meter multiplier (default 16;
                  BLC_WORK_MULT honored as fallback)
  --probe-fuel N  redloop probe fuel (default 4096; BLC_PROBE_FUEL
                  honored as fallback)

Prints `<bits> skel2=<verdict>` per program: loop, halt-inert,
holedemanded, capout, halt, div, or residual-unknown.";

/// The verdict labels, in the order the summary prints them (sorted, as
/// the old `HashMap` + `sort` produced). Index = `Kind as usize`.
const KINDS: [&str; 7] = [
    "capout",
    "div",
    "halt",
    "halt-inert",
    "holedemanded",
    "loop",
    "residual-unknown",
];

#[derive(Clone, Copy)]
enum Kind {
    CapOut = 0,
    Div = 1,
    Halt = 2,
    HaltInert = 3,
    HoleDemanded = 4,
    Loop = 5,
    ResidualUnknown = 6,
}

/// One result line: the label and the trailing detail the ladder earned.
fn render(t: &Transfer) -> (Kind, String) {
    match *t {
        Transfer::Loop { steps } => (Kind::Loop, format!(" steps={steps}")),
        Transfer::HaltInert { steps } => (Kind::HaltInert, format!(" steps={steps}")),
        Transfer::HoleDemanded { steps } => (Kind::HoleDemanded, format!(" steps={steps}")),
        Transfer::CapOut(_) => (Kind::CapOut, String::new()),
        Transfer::Halt { steps, nf_bits, .. } => {
            (Kind::Halt, format!(" steps={steps} nf={nf_bits}"))
        }
        // KN can only ever prove a HALT, so `via=kn` is unreachable on a
        // Div — the two divergence provers are the oracle and the
        // escalation engine.
        Transfer::Div { steps, via } => (
            Kind::Div,
            format!(
                " steps={steps} via={}",
                match via {
                    Via::Oracle => "oracle",
                    Via::Bb | Via::Kn => "bb",
                }
            ),
        ),
        Transfer::ResidualUnknown { .. } => (Kind::ResidualUnknown, String::new()),
    }
}

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut caps = SkelCaps::default();
    let mut threads = 0usize;
    let mut work_mult: Option<i64> = None;
    let mut probe_fuel: Option<u64> = None;
    // Only the arity of the signature reaches the checker — one hole per
    // slot — but `--sig` is spelled the same as everywhere else so an
    // alternate universe's frontier can be swept with its own slot count.
    let mut slots = FROZEN.len() as u32;
    let mut p = Args::new("q skeleton", argv);
    while let Some(tok) = p.next() {
        match tok {
            "--sig" => slots = super::run::parse_sig("q skeleton", p.value(tok)?)?.len() as u32,
            "--steps" => caps.steps = p.num(tok)?,
            "--size" => caps.size_bits = p.num(tok)?,
            "--threads" => threads = p.num(tok)?,
            "--work-mult" => work_mult = Some(p.num(tok)?),
            "--probe-fuel" => probe_fuel = Some(p.num(tok)?),
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    p.at_most(1)?;
    let Some(path) = p.positional().first().copied() else {
        return Err(format!(
            "blam q skeleton: missing FILE\n{}",
            args::hint("q skeleton")
        ));
    };
    let engine = args::engine_cfg("q skeleton", work_mult, probe_fuel)?;
    // The file is validated line by line here, sequentially, BEFORE the
    // pool exists: an open program used to reach `adjudicate_with_
    // transfer` on a worker and panic there, mid-sweep.
    let owned = args::read_terms_file(path)?;
    // Big worker stacks: the skeleton reducer and Term drops recurse
    // over term depth (the size cap bounds it at thousands of frames).
    args::build_pool(threads)?;

    let programs: Vec<&str> = owned.iter().map(String::as_str).collect();
    let transfer = TransferCaps {
        engine,
        ..TransferCaps::default()
    };
    let t0 = Instant::now();
    // Lock-free tallying: one counter per verdict, one progress counter.
    // The old per-item Mutex serialised every worker on a HashMap update
    // that only ever incremented one of seven fixed slots.
    let counts: [AtomicU64; KINDS.len()] = std::array::from_fn(|_| AtomicU64::new(0));
    let cap_steps = AtomicU64::new(0);
    let cap_size = AtomicU64::new(0);
    let done = AtomicU64::new(0);
    programs
        .par_iter()
        .for_each_init(TransferScratch::new, |scratch, bits| {
            // Both unreachable: the preflight above parsed every line and
            // proved it closed.
            let p = blam::parse_all(bits).expect("preflighted program line");
            let verdict = adjudicate_with_transfer(&p, slots, &caps, &transfer, scratch)
                .unwrap_or_else(|e| panic!("{bits}: {e}"));
            if let Transfer::CapOut(c) = verdict {
                match c.reason {
                    CapReason::Steps => &cap_steps,
                    CapReason::Size => &cap_size,
                }
                .fetch_add(1, Ordering::Relaxed);
            }
            let (kind, detail) = render(&verdict);
            println!("{bits} skel2={}{detail}", KINDS[kind as usize]);
            counts[kind as usize].fetch_add(1, Ordering::Relaxed);
            let d = done.fetch_add(1, Ordering::Relaxed) + 1;
            if d.is_multiple_of(50000) {
                eprintln!(
                    "progress: {d}/{} ({:.0}s)",
                    programs.len(),
                    t0.elapsed().as_secs_f64()
                );
            }
        });
    eprintln!(
        "skeleton sweep: {} programs in {:.1}s — {}",
        programs.len(),
        t0.elapsed().as_secs_f64(),
        KINDS
            .iter()
            .zip(&counts)
            .map(|(k, v)| (k, v.load(Ordering::Relaxed)))
            .filter(|(_, v)| *v > 0)
            .map(|(k, v)| format!("{k}={v}"))
            .collect::<Vec<_>>()
            .join(" ")
    );
    // Rung-3's stratification input (escalation.md): size-bound monotone
    // growers go to pattern discovery, step-bound bounded-size terms
    // justify another exact-cycle tier. Additive — the verdict stream on
    // stdout is unchanged.
    let (cs, cz) = (
        cap_steps.load(Ordering::Relaxed),
        cap_size.load(Ordering::Relaxed),
    );
    if cs + cz > 0 {
        eprintln!("capout split: steps-bound {cs}  size-bound {cz}");
    }
    Ok(())
}
