//! `blam qalc run` — exact finite-time evolution under the total Phase-4
//! selector and public `U`.

use crate::args::{self, Args, R};
use blam::hash::sha256_hex;
use blam::qalc::semantics::{
    error_mass, halt_mass, initial_vector, running_mass, select, u, BasisState, SemanticsError,
};
use blam::qalc::wire::{amp_bytes, nf_state_bytes};

const USAGE: &str = "\
blam qalc run — exact finite-time qALC evolution

usage: blam qalc run TERM [flags]
       blam qalc run --file FILE [--program NAME] [flags]

  --steps N       applications of U (default 256)
  --support N     maximum retained basis support (default 100000)
  --file FILE     one canonical TERM line, or a qfx file (`-` = stdin)
  --program NAME  named program when the qfx file is not a singleton

Prints selection, exact halt/error/running masses, then one deterministic line
per basis state. Conservative histories are committed by exact SHA-256.";

fn semantic(cmd: &str, error: SemanticsError) -> String {
    format!(
        "blam {cmd}: semantic failure: {error:?}\n{}",
        args::hint(cmd)
    )
}

fn basis_line(basis: &BasisState) -> String {
    match basis {
        BasisState::Admitted(state) => format!("admitted live {}", nf_state_bytes(state)),
        BasisState::Conservative(state) => {
            let history = state.history();
            let mut payload = b"qalc-conservative-history v1\n".to_vec();
            for source in &history {
                let wire = nf_state_bytes(source);
                payload.extend_from_slice(&(wire.len() as u64).to_be_bytes());
                payload.extend_from_slice(wire.as_bytes());
            }
            format!(
                "conservative history={} sha256={} live {}",
                history.len(),
                sha256_hex(&payload),
                nf_state_bytes(state.live())
            )
        }
    }
}

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut steps = 256u64;
    let mut support_cap = 100_000usize;
    let mut file = None;
    let mut program = None;
    let mut p = Args::new("qalc run", argv);
    while let Some(tok) = p.next() {
        match tok {
            "--steps" => steps = p.num(tok)?,
            "--support" => support_cap = p.num(tok)?,
            "--file" => file = Some(p.value(tok)?),
            "--program" => program = Some(p.value(tok)?),
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    if support_cap == 0 {
        return Err(format!(
            "blam qalc run: --support must be at least 1\n{}",
            args::hint("qalc run")
        ));
    }
    let loaded = super::load_term("qalc run", p.positional(), file, program)?;
    let sector = select(loaded.term.clone());
    super::check_fixture_selection("qalc run", &loaded, &sector)?;
    let mut vector = initial_vector(&sector);
    for time in 0..steps {
        vector = u(&sector, &vector).map_err(|e| semantic("qalc run", e))?;
        if vector.len() > support_cap {
            return Err(format!(
                "blam qalc run: support {} exceeds --support {support_cap} after step {}\n{}",
                vector.len(),
                time + 1,
                args::hint("qalc run")
            ));
        }
    }
    println!(
        "selection {} admitted={}",
        super::selection_label(sector.selection_kind()),
        sector.is_admitted()
    );
    println!(
        "steps {steps} support {} halt {} error {} running {}",
        vector.len(),
        amp_bytes(&halt_mass(&vector).map_err(|e| semantic("qalc run", e))?),
        amp_bytes(&error_mass(&vector).map_err(|e| semantic("qalc run", e))?),
        amp_bytes(&running_mass(&vector).map_err(|e| semantic("qalc run", e))?)
    );
    let mut rows: Vec<String> = vector
        .iter()
        .map(|(basis, amplitude)| format!("basis {} {}", amp_bytes(amplitude), basis_line(basis)))
        .collect();
    rows.sort_unstable();
    for row in rows {
        println!("{row}");
    }
    Ok(())
}
