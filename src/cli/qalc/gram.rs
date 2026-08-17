//! `blam qalc gram` — finite exact Gram audit over the machine selected by
//! the Phase-4 public semantics.

use crate::args::{self, Args, R};
use blam::qalc::semantics::{gram, select};

const USAGE: &str = "\
blam qalc gram — finite exact Gram audit

usage: blam qalc gram TERM [flags]
       blam qalc gram --file FILE [--program NAME] [flags]

  --tick-depth N  positive terminal tick cut (qfx pin, otherwise 2)
  --state-cap N   maximum discovered carrier states (default 300000)
  --file FILE     one canonical TERM line, or a qfx file (`-` = stdin)
  --program NAME  named program when the qfx file is not a singleton

For conservative selection this reports the underlying live Gate-1 Gram;
public U additionally carries exact predecessor history and remains isometric.";

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut tick_depth = None;
    let mut state_cap = 300_000usize;
    let mut file = None;
    let mut program = None;
    let mut p = Args::new("qalc gram", argv);
    while let Some(tok) = p.next() {
        match tok {
            "--tick-depth" => tick_depth = Some(p.num(tok)?),
            "--state-cap" => state_cap = p.num(tok)?,
            "--file" => file = Some(p.value(tok)?),
            "--program" => program = Some(p.value(tok)?),
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    if state_cap == 0 {
        return Err(format!(
            "blam qalc gram: --state-cap must be at least 1\n{}",
            args::hint("qalc gram")
        ));
    }
    let loaded = super::load_term("qalc gram", p.positional(), file, program)?;
    let tick_depth = tick_depth
        .or_else(|| loaded.fixture.as_ref().map(|source| source.tick_depth))
        .unwrap_or(2);
    if tick_depth == 0 {
        return Err(format!(
            "blam qalc gram: --tick-depth must be at least 1\n{}",
            args::hint("qalc gram")
        ));
    }
    let sector = select(loaded.term.clone());
    super::check_fixture_selection("qalc gram", &loaded, &sector)?;
    let report = gram(&sector, tick_depth, state_cap).map_err(|e| {
        format!(
            "blam qalc gram: finite audit failed: {e:?}\n{}",
            args::hint("qalc gram")
        )
    })?;
    println!(
        "selection {} admitted={}",
        super::selection_label(sector.selection_kind()),
        sector.is_admitted()
    );
    println!(
        "tick-depth {tick_depth} basis {} nonunit {} nonorthogonal {}",
        report.basis, report.nonunit, report.nonorthogonal
    );
    if report.nonunit != 0 || report.nonorthogonal != 0 {
        return Err(format!(
            "blam qalc gram: Gram defects found: nonunit={} nonorthogonal={}\n{}",
            report.nonunit,
            report.nonorthogonal,
            args::hint("qalc gram")
        ));
    }
    Ok(())
}
