//! The qALC reference pillar's default-built command group.  These are thin
//! drivers over the Phase-4 public API: exact finite-time evolution, finite
//! Gram audit, structural circuit compilation, and engine-backed qfx
//! verification.  Census remains a separate measured layer.

use crate::args::{self, R};
use blam::qalc::semantics::{Sector, SelectionKind};
use blam::qalc::term::{is_closed, Term};
use blam::qalc::wire::{parse_fixtures, parse_term, CertEntries, HEADER};
use std::io::Read as _;

mod compile;
mod fixtures;
mod gram;
mod run;

const USAGE: &str = "\
blam qalc — the quantum-algebraic reference pillar

usage: blam qalc <subcommand> [args]

  run TERM                 exact finite-time evolution under public U
  gram TERM                finite exact Gram audit of the selected machine
  compile WIDTH [GATE...]  compile typed H/T/CNOT linear-SSA source
  fixtures FILE...         regenerate and byte-check qfx evidence

TERM is the canonical one-line qALC wire expression. `run` and `gram` also
accept `--file FILE [--program NAME]`; a qfx file with one program needs no
name. Census is deliberately not part of this group yet.";

pub fn run(argv: &[String]) -> R<()> {
    let Some(sub) = argv.first() else {
        println!("{USAGE}");
        return Ok(());
    };
    let rest = &argv[1..];
    match sub.as_str() {
        "help" if !rest.is_empty() => run(&[rest, &["--help".to_string()][..]].concat()),
        "--help" | "-h" | "help" => {
            println!("{USAGE}");
            Ok(())
        }
        "run" => run::run(rest),
        "gram" => gram::run(rest),
        "compile" => compile::run(rest),
        "fixtures" => fixtures::run(rest),
        other => Err(format!(
            "blam qalc: unknown subcommand `{other}`\ntry `blam qalc --help`"
        )),
    }
}

pub(super) fn selection_label(kind: SelectionKind) -> &'static str {
    match kind {
        SelectionKind::StructuralGate2 => "structural-gate2",
        SelectionKind::ValidatedGate1 => "validated-gate1",
        SelectionKind::Conservative => "conservative",
    }
}

#[derive(Debug)]
pub(super) struct FixtureSource {
    pub name: String,
    pub tick_depth: u64,
    pub certificate: Option<CertEntries>,
}

#[derive(Debug)]
pub(super) struct LoadedTerm {
    pub term: Term,
    pub fixture: Option<FixtureSource>,
}

/// A qfx input is a provenance-bearing source, not merely a convenient term
/// container. Require its certificate spelling to be exactly what the public
/// selector chooses before `run` or `gram` proceeds.
pub(super) fn check_fixture_selection(
    cmd: &'static str,
    loaded: &LoadedTerm,
    sector: &Sector,
) -> R<()> {
    let Some(source) = &loaded.fixture else {
        return Ok(());
    };
    let selected = match sector.selection_kind() {
        SelectionKind::StructuralGate2 => Some(
            sector
                .structural_admission()
                .expect("structural selection")
                .certificate()
                .clone(),
        ),
        SelectionKind::ValidatedGate1 => sector
            .gate1_admission()
            .expect("Gate-1 selection")
            .certificate()
            .cloned(),
        SelectionKind::Conservative => None,
    };
    if selected != source.certificate {
        return Err(format!(
            "blam {cmd}: qfx program `{}` certificate differs from the public selector\n{}",
            source.name,
            args::hint(cmd)
        ));
    }
    Ok(())
}

/// Resolve one term from either a positional wire expression or `--file`.
/// A qfx file may contain many programs, in which case `--program` is the
/// required disambiguator. Plain term files contain exactly one trimmed line.
pub(super) fn load_term(
    cmd: &'static str,
    positional: &[&str],
    file: Option<&str>,
    program: Option<&str>,
) -> R<LoadedTerm> {
    let fail = |message: String| format!("blam {cmd}: {message}\n{}", args::hint(cmd));
    let closed = |term: Term, fixture: Option<FixtureSource>| {
        if is_closed(&term) {
            Ok(LoadedTerm { term, fixture })
        } else {
            Err(fail(
                "TERM is open: every de Bruijn variable must be bound".into(),
            ))
        }
    };
    if positional.len() > 1 {
        return Err(fail(format!(
            "unexpected argument `{}` (one TERM accepted)",
            positional[1]
        )));
    }
    if let Some(text) = positional.first() {
        if file.is_some() {
            return Err(fail("TERM and `--file` are mutually exclusive".into()));
        }
        if program.is_some() {
            return Err(fail("`--program` requires a qfx `--file`".into()));
        }
        return closed(
            parse_term(text).map_err(|e| fail(format!("invalid TERM: {e}")))?,
            None,
        );
    }
    let Some(path) = file else {
        return Err(fail("missing TERM or `--file FILE`".into()));
    };
    let text = if path == "-" {
        let mut text = String::new();
        std::io::stdin()
            .read_to_string(&mut text)
            .map_err(|e| fail(format!("cannot read --file - from stdin: {e}")))?;
        text
    } else {
        std::fs::read_to_string(path)
            .map_err(|e| fail(format!("cannot read --file {path}: {e}")))?
    };
    if text.lines().next() != Some(HEADER) {
        if program.is_some() {
            return Err(fail("`--program` applies only to a qfx `--file`".into()));
        }
        return closed(
            parse_term(text.trim()).map_err(|e| fail(format!("{path}: {e}")))?,
            None,
        );
    }
    let fixtures = parse_fixtures(&text).map_err(|e| fail(format!("{path}: {e}")))?;
    let mut terms: Vec<(String, Term, u64, Option<CertEntries>)> = fixtures
        .programs
        .into_iter()
        .map(|p| (p.name, p.term, p.tick_depth, p.cert))
        .chain(
            fixtures
                .composed
                .into_iter()
                .map(|p| (p.name, p.term, p.tick_depth, p.cert)),
        )
        .collect();
    if let Some(name) = program {
        let mut matching = terms.into_iter().filter(|(n, _, _, _)| n == name);
        let Some((name, term, tick_depth, certificate)) = matching.next() else {
            return Err(fail(format!("{path}: no program named `{name}`")));
        };
        if matching.next().is_some() {
            return Err(fail(format!("{path}: duplicate program name `{name}`")));
        }
        return closed(
            term,
            Some(FixtureSource {
                name,
                tick_depth,
                certificate,
            }),
        );
    }
    if terms.len() != 1 {
        let mut names: Vec<_> = terms.iter().map(|(name, _, _, _)| name.as_str()).collect();
        names.sort_unstable();
        return Err(fail(format!(
            "{path}: contains {} programs ({}) — select one with `--program NAME`",
            terms.len(),
            names.join(", ")
        )));
    }
    let (name, term, tick_depth, certificate) = terms.pop().expect("one term");
    closed(
        term,
        Some(FixtureSource {
            name,
            tick_depth,
            certificate,
        }),
    )
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn direct_term_source_is_complete_and_typed() {
        let direct = ["( l ( v i:1 ) )"];
        let loaded = load_term("qalc run", &direct, None, None).unwrap();
        assert_eq!(blam::qalc::wire::term_bytes(&loaded.term), direct[0]);
        let e = load_term("qalc run", &["( v i:1 )", "junk"], None, None).unwrap_err();
        assert!(e.contains("one TERM accepted"), "{e}");
        let e = load_term("qalc run", &["( v i:1 )"], None, None).unwrap_err();
        assert!(e.contains("TERM is open"), "{e}");
    }
}
