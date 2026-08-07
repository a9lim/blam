//! `blam q skeleton FILE` — the trusted-checker sweep, extracted from
//! `qcensus --skeleton-only`.
//!
//! No qvm run at all: the whole point is that a skeleton kill is orders
//! of magnitude cheaper than paying the quantum Unknown budget per
//! program. The classical skeleton is the program applied to one rigid
//! placeholder per signature slot; where that reduction settles, the
//! quantum fate follows. One streamed line per program.
//!
//! It never touched `Pool`, `QMachine`, or `Tally`, so it was never
//! really a census mode — and sharing `--terms-file` with `q census`'s
//! batch re-adjudication meant one flag selected two unrelated engines.

use crate::args::{self, Args, R};
use blam::quantum::certificate::SkelCaps;
use blam::quantum::sig::FROZEN;
use rayon::prelude::*;
use std::time::Instant;

const USAGE: &str = "\
blam q skeleton FILE — trusted skeleton sweep over a terms file

usage: blam q skeleton FILE [flags]

  --steps N       skeleton reduction steps per program (default 256)
  --size N        skeleton size ceiling in bits (default 16384)
  --threads N     rayon threads (0 = ambient, the default)
  --work-mult N   BLC_WORK_MULT for this run (default 16)
  --probe-fuel N  BLC_PROBE_FUEL for this run (default 4096)

Prints `<bits> skel2=<verdict>` per program: loop, halt-inert,
holedemanded, capout, halt, div, or residual-unknown.";

/// The classical residual's escalation capacity — the census default.
const RESIDUAL_CAP: i64 = 2_000_000;

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut caps = SkelCaps::default();
    let mut threads = 0usize;
    let mut work_mult: Option<u64> = None;
    let mut probe_fuel: Option<u64> = None;
    let mut p = Args::new("q skeleton", argv);
    while let Some(tok) = p.next() {
        match tok {
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
    // Phase 3: becomes explicit library config.
    args::apply_engine_env(work_mult, probe_fuel);
    // Big worker stacks: the skeleton reducer and Term drops recurse
    // over term depth (the size cap bounds it at thousands of frames).
    args::build_pool(threads)?;

    let owned = args::read_terms_file(path)?;
    let programs: Vec<&str> = owned.iter().map(String::as_str).collect();
    let slots = FROZEN.len() as u32;
    let t0 = Instant::now();
    let counts = std::sync::Mutex::new(std::collections::HashMap::<&'static str, u64>::new());
    programs.par_iter().for_each(|bits| {
        use blam::classical::escalation::{normal_form, LTerm, NoNf};
        use blam::classical::machine::{Machine, Pool, SizeSink};
        use blam::quantum::certificate::{adjudicate, SkelVerdict};
        let p = blam::parse_all(bits).expect("parse program line");
        let (kind, detail) = match adjudicate(&p, slots, &caps) {
            SkelVerdict::Loop { steps } => ("loop", format!(" steps={steps}")),
            SkelVerdict::NormalWithHoles { steps } => ("halt-inert", format!(" steps={steps}")),
            SkelVerdict::HoleDemanded { steps } => ("holedemanded", format!(" steps={steps}")),
            SkelVerdict::CapOut => ("capout", String::new()),
            SkelVerdict::HoleFree { residual, steps } => {
                // Classical semantic ladder on the closed residual;
                // Halt AND proven no-NF both transfer.
                let lt = LTerm::from_term(&residual);
                if blam::classical::oracle::no_nf(0, &lt) {
                    ("div", format!(" steps={steps} via=oracle"))
                } else {
                    let mut pool = Pool::new();
                    let root = pool.decode_str(&residual.to_bits()).expect("residual bits");
                    let mut sink = SizeSink::default();
                    match Machine::new().normalize(&pool, root, 65_536, &mut sink) {
                        Ok(_) => ("halt", format!(" steps={steps} nf={}", sink.0)),
                        Err(_) => match normal_form(RESIDUAL_CAP, &lt) {
                            Ok(nf) => ("halt", format!(" steps={steps} nf={}", nf.bit_size())),
                            Err(NoNf::Diverge) => ("div", format!(" steps={steps} via=bb")),
                            Err(NoNf::Unknown(_)) => ("residual-unknown", String::new()),
                        },
                    }
                }
            }
        };
        println!("{bits} skel2={kind}{detail}");
        let mut c = counts.lock().unwrap();
        *c.entry(kind).or_insert(0) += 1;
        let done: u64 = c.values().sum();
        if done.is_multiple_of(50000) {
            eprintln!(
                "progress: {done}/{} ({:.0}s)",
                programs.len(),
                t0.elapsed().as_secs_f64()
            );
        }
    });
    let c = counts.lock().unwrap();
    let mut ks: Vec<_> = c.iter().collect();
    ks.sort();
    eprintln!(
        "skeleton sweep: {} programs in {:.1}s — {}",
        programs.len(),
        t0.elapsed().as_secs_f64(),
        ks.iter()
            .map(|(k, v)| format!("{k}={v}"))
            .collect::<Vec<_>>()
            .join(" ")
    );
    Ok(())
}
