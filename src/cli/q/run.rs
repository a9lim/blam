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
    // One check for all four defects — stray character, truncated term,
    // trailing bits, OPEN term. The last used to reach the engine and
    // panic there, because a free index is indistinguishable from a
    // signature slot once the signature is applied.
    let (enc, len) = args::parse_packed("q run", bits)?;
    budget
        .validate()
        .map_err(|e| format!("blam q run: {e}\n{}", args::hint("q run")))?;
    if budget.max_qubits < 1 || budget.max_branches < 1 {
        return Err(format!(
            "blam q run: --qubits and --branches must be at least 1\n{}",
            args::hint("q run")
        ));
    }

    let order: Vec<&str> = sig.iter().map(|p| p.name()).collect();
    println!(
        "program {bits} ({len} bits), order [{}], beta={} trans={} qubits={} branches={}",
        order.join(" "),
        budget.beta,
        budget.trans,
        budget.max_qubits,
        budget.max_branches
    );
    // One program, one call: the library owns the arenas here (sweeps
    // reuse theirs through `Machine::run_into_with` instead).
    let prog = QProgram::new(enc, len, None, &sig)
        .map_err(|e| format!("blam q run: `{bits}`: {e}\n{}", args::hint("q run")))?;
    let r = machine::run(&prog, &budget);
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
