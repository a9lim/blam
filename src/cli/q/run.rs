//! `blam q run BITS` — the quantum pillar's smallest verb: decode one
//! qBLC program, apply the signature, run it on the fast machine, and
//! print one line per branch leaf with its fate, exact mass, and step
//! count. The census's per-program view, without the census.

use crate::args::{self, Args, R};
use blam::quantum::machine::{self, QProgram};
use blam::quantum::scalar::Dw;
use blam::quantum::sig::FROZEN;
use blam::quantum::{Budget, Fate, Prim};

const USAGE: &str = "\
blam q run BITS — run one qBLC program, one line per leaf

usage: blam q run BITS [flags]

  --sig LIST     comma-separated signature order (default: h,meas,new,cnot,t)
  --beta N       beta-steps per branch (default 4096)
  --trans N      transitions per branch (default 67108864)
  --qubits N     live qubits per branch (default 12)
  --branches N   branches per program (default 4096)

Masses are exact: (a,b,c,d,k) means (a + b*w + c*w^2 + d*w^3)/sqrt(2)^k
with w = e^(i pi/4).";

/// Parse a `--sig` list. Shared with `q census`, which takes the same
/// spelling; an unknown primitive names itself instead of panicking.
pub fn parse_sig(cmd: &'static str, list: &str) -> R<Vec<Prim>> {
    let mut out = Vec::new();
    for name in list.split(',') {
        let name = name.trim();
        match Prim::by_name(name) {
            Some(p) => out.push(p),
            None => {
                return Err(format!(
                    "blam {cmd}: unknown primitive `{name}` in --sig \
                     (new, meas, cnot, t, h, s, x, z)\n{}",
                    args::hint(cmd)
                ))
            }
        }
    }
    if out.is_empty() {
        return Err(format!(
            "blam {cmd}: --sig needs at least one primitive\n{}",
            args::hint(cmd)
        ));
    }
    Ok(out)
}

fn exact(m: Option<Dw>) -> String {
    match m {
        Some(v) => {
            let r = v.reduce();
            format!(
                "({},{},{},{},{})={:.15}",
                r.a,
                r.b,
                r.c,
                r.d,
                r.k,
                r.to_f64_re()
            )
        }
        None => "OVERFLOW".into(),
    }
}

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut budget = Budget {
        trans: 1 << 26,
        ..Budget::default()
    };
    let mut sig: Vec<Prim> = FROZEN.to_vec();
    let mut p = Args::new("q run", argv);
    while let Some(tok) = p.next() {
        match tok {
            "--beta" => budget.beta = p.num(tok)?,
            "--trans" => budget.trans = p.num(tok)?,
            "--qubits" => budget.max_qubits = p.num(tok)?,
            "--branches" => budget.max_branches = p.num(tok)?,
            "--sig" => sig = parse_sig("q run", p.value(tok)?)?,
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    p.at_most(1)?;
    let Some(bits) = p.positional().first().copied() else {
        return Err(format!("blam q run: missing BITS\n{}", args::hint("q run")));
    };
    if bits.is_empty() || bits.len() > 64 || !bits.bytes().all(|b| b == b'0' || b == b'1') {
        return Err(format!(
            "blam q run: `{bits}` is not a 1..64-bit 0/1 program\n{}",
            args::hint("q run")
        ));
    }
    let t = blam::parse_all(bits).map_err(|e| {
        format!(
            "blam q run: `{bits}` is not a closed BLC term: {e:?}\n{}",
            args::hint("q run")
        )
    })?;
    if t.bit_size() as usize != bits.len() {
        return Err(format!(
            "blam q run: `{bits}` has trailing bits past the term\n{}",
            args::hint("q run")
        ));
    }
    let mut enc = 0u64;
    for c in bits.bytes() {
        enc = enc << 1 | u64::from(c == b'1');
    }

    let order: Vec<&str> = sig.iter().map(|p| p.name()).collect();
    println!(
        "program {bits} ({} bits), order [{}], beta={} trans={} qubits={} branches={}",
        bits.len(),
        order.join(" "),
        budget.beta,
        budget.trans,
        budget.max_qubits,
        budget.max_branches
    );
    // One program, one call: the library owns the arenas here (sweeps
    // reuse theirs through `Machine::run_into_with` instead).
    let r = machine::run(&QProgram::new(enc, bits.len() as u8, &sig), &budget);
    for (i, leaf) in r.leaves.iter().enumerate() {
        let fate = match &leaf.fate {
            Fate::Halt(store) => format!("Halt(live={})", store.live_count()),
            Fate::Err(k) => format!("Err({k:?})"),
            Fate::Unknown => "Unknown".to_string(),
            Fate::Capacity(c) => format!("Capacity({c:?})"),
        };
        println!(
            "leaf {i}: {fate}  mass {}  steps {}",
            exact(leaf.mass),
            leaf.steps
        );
    }
    println!("{} leaves, max trans {}", r.leaves.len(), r.max_trans);
    Ok(())
}
