//! qALC phase-2 composed-machine battery — the count/Gram/inverse half
//! of the Gate-1 30-core differential. The byte-level column and trace
//! pins ride on the composed fixture files under `tests/qalc/composed/`
//! (exporter-generated); this suite proves the structural frame those
//! fixtures assume: every core's carrier closes at the reference's
//! exact state and tick-cut counts, every compressing edge's
//! predecessor inverse rebuilds its source (checked per edge inside the
//! carrier walk), the native Gram has zero defects, and evolution
//! reaches absorption.
//!
//! The per-core expectations were measured from the frozen Python
//! reference (`readback_certify.composed_carrier` at `tick_depth=2`)
//! on 2026-08-14; the aggregate is Gate 1's 7,507 states / 7,417
//! columns over 30 cores, with 90 tick-cut leaves.

use blam::qalc::readback::{evolve_nf_trace, nf_carrier_and_columns, nf_gram};
use blam::qalc::state::NfState;
use blam::qalc::term::{GateName, Term};
use blam::qalc::wire::{parse_fixtures, CertEntries};

fn lam(t: Term) -> Term {
    Term::Lam(Box::new(t))
}

fn app(f: Term, a: Term) -> Term {
    Term::App(Box::new(f), Box::new(a))
}

fn invoke(p: Term) -> Term {
    app(app(p, Term::Gate(GateName::H)), Term::Gate(GateName::T))
}

fn zero() -> Term {
    lam(lam(Term::Var(2)))
}

fn one() -> Term {
    lam(lam(Term::Var(1)))
}

fn under_inputs(body: Term) -> Term {
    invoke(lam(lam(lam(body))))
}

/// The ten Gate-1 sectors beyond the kernel suite
/// (`qalc/gate1_programs.py`), all with the `None` certificate.
fn extra_cores() -> Vec<(&'static str, Term)> {
    let h = || Term::Var(3);
    let t = || Term::Var(2);
    let x = || Term::Var(1);
    let h0 = || app(h(), zero());
    let h1 = || app(h(), one());
    let t1 = || app(t(), one());
    vec![
        (
            "mixed-H-arg",
            invoke(lam(lam(lam(app(Term::Var(1), app(Term::Var(3), zero())))))),
        ),
        (
            "mixed-T-arg",
            invoke(lam(lam(lam(app(Term::Var(1), app(Term::Var(2), one())))))),
        ),
        (
            "stress-spine3",
            under_inputs(app(app(app(x(), h0()), t1()), h1())),
        ),
        ("stress-nested-H", under_inputs(app(x(), app(h(), h0())))),
        (
            "stress-beta-H",
            under_inputs(app(
                x(),
                app(lam(app(Term::Var(1), Term::Var(1))), h0()),
            )),
        ),
        (
            "stress-nested-scope",
            under_inputs(app(
                app(x(), h0()),
                lam(app(Term::Var(1), app(Term::Var(4), zero()))),
            )),
        ),
        ("stress-two-H", under_inputs(app(app(x(), h0()), h0()))),
        ("neutral-bare-t", invoke(lam(lam(Term::Var(1))))),
        (
            "neutral-H1",
            invoke(lam(lam(lam(app(Term::Var(3), Term::Var(1)))))),
        ),
        (
            "neutral-H2",
            invoke(lam(lam(lam(lam(app(
                app(Term::Var(4), Term::Var(2)),
                Term::Var(1),
            )))))),
        ),
    ]
}

/// `(name, states, tick-cut)` measured from the frozen reference.
const EXPECTED: &[(&str, usize, usize)] = &[
    ("HH", 82, 2),
    ("HNH", 104, 2),
    ("negative", 89, 2),
    ("selector", 113, 2),
    ("lone", 53, 2),
    ("pstar", 242, 4),
    ("3coin", 180, 4),
    ("q", 218, 2),
    ("qprime", 246, 2),
    ("q2", 115, 2),
    ("dup", 142, 3),
    ("Ccoll", 143, 4),
    ("buried", 446, 4),
    ("weave", 290, 4),
    ("hweave", 225, 4),
    ("qq", 2220, 8),
    ("palpha", 278, 3),
    ("dupcall", 639, 4),
    ("B", 189, 3),
    ("W", 504, 6),
    ("mixed-H-arg", 63, 2),
    ("mixed-T-arg", 51, 1),
    ("stress-spine3", 219, 4),
    ("stress-nested-H", 92, 2),
    ("stress-beta-H", 154, 3),
    ("stress-nested-scope", 172, 4),
    ("stress-two-H", 152, 4),
    ("neutral-bare-t", 22, 1),
    ("neutral-H1", 28, 1),
    ("neutral-H2", 36, 1),
];

/// All 30 cores: the kernel suite's 20 (terms and certificates from
/// the checked-in kernel fixtures) plus the 10 native Gate-1 sectors.
fn cores() -> Vec<(String, Term, Option<CertEntries>)> {
    let dir = concat!(env!("CARGO_MANIFEST_DIR"), "/tests/qalc");
    let mut out = Vec::new();
    let mut names: Vec<_> = std::fs::read_dir(dir)
        .expect("tests/qalc exists")
        .map(|e| e.unwrap().file_name().into_string().unwrap())
        .filter(|n| n.ends_with(".qfx") && n != "corpus.qfx")
        .collect();
    names.sort();
    for n in names {
        let text = std::fs::read_to_string(format!("{dir}/{n}")).unwrap();
        let fx = parse_fixtures(&text).unwrap_or_else(|e| panic!("{n}: {e}"));
        for p in fx.programs {
            // The three Dw-only T probes are kernel fixtures, not
            // Gate-1 cores.
            if matches!(p.name.as_str(), "T0" | "T1" | "HTH0") {
                continue;
            }
            out.push((p.name, p.term, p.cert));
        }
    }
    for (name, term) in extra_cores() {
        out.push((name.to_string(), term, None));
    }
    assert_eq!(out.len(), 30, "expected the 30 Gate-1 cores");
    out
}

#[test]
fn composed_carriers_match_the_reference_counts() {
    let mut total_states = 0;
    let mut total_columns = 0;
    let mut total_cut = 0;
    let mut rules: std::collections::BTreeSet<String> = std::collections::BTreeSet::new();
    for (name, term, cert) in cores() {
        let want = EXPECTED
            .iter()
            .find(|(n, _, _)| *n == name)
            .unwrap_or_else(|| panic!("no expectation for {name}"));
        let carrier = nf_carrier_and_columns(&term, cert.as_ref(), 2, 300_000)
            .unwrap_or_else(|e| panic!("{name}: carrier failed: {e:?}"));
        let states = carrier.order.len();
        let cut = states - carrier.columns.len();
        assert_eq!((states, cut), (want.1, want.2), "{name}: carrier counts");
        // Structural cut identity: the non-column states are exactly
        // the depth-2 ticks.
        let column_sources: std::collections::HashSet<usize> =
            carrier.columns.iter().map(|(src, _)| *src).collect();
        for (id, s) in carrier.order.iter().enumerate() {
            let is_cut = matches!(s, NfState::Done { tick, .. } if *tick >= 2);
            assert_eq!(
                !column_sources.contains(&id),
                is_cut,
                "{name}: cut/column split at state {id}"
            );
            assert!(
                !matches!(s, NfState::Done { tick, .. } if *tick > 2),
                "{name}: tick overrun at state {id}"
            );
        }
        for (_, rows) in &carrier.columns {
            assert!(!rows.is_empty(), "{name}: empty non-cut column");
            for (_, rule, _) in rows {
                rules.insert(rule.clone());
            }
        }
        total_states += states;
        total_columns += carrier.columns.len();
        total_cut += cut;
    }
    assert_eq!(
        (total_states, total_columns, total_cut),
        (7507, 7417, 90),
        "aggregate Gate-1 manifest"
    );
    let want_rules: std::collections::BTreeSet<String> = [
        "anshead",
        "arg",
        "b1",
        "b2",
        "b3",
        "b4",
        "bt1",
        "bt1g",
        "bt2",
        "call",
        "enter",
        "error-alien-ticket",
        "error-refire",
        "fire-h",
        "fire-t1",
        "halt",
        "head",
        "head-gate",
        "head-neutral-gate",
        "recall",
        "replay",
        "return",
        "rootdone",
        "tick",
        "var",
        "vb2",
        "vlam",
        "vvar",
    ]
    .into_iter()
    .map(str::to_string)
    .collect();
    assert_eq!(rules, want_rules, "aggregate rule inventory");
}

#[test]
fn composed_gram_has_zero_defects_on_every_core() {
    for (name, term, cert) in cores() {
        let report = nf_gram(&term, cert.as_ref(), 2, 300_000)
            .unwrap_or_else(|e| panic!("{name}: gram failed: {e:?}"));
        assert_eq!(report.nonunit, 0, "{name}: nonunit columns");
        assert_eq!(report.nonorthogonal, 0, "{name}: nonorthogonal pairs");
        let want = EXPECTED.iter().find(|(n, _, _)| *n == name).unwrap();
        assert_eq!(report.basis, want.1, "{name}: gram basis");
    }
}

#[test]
fn composed_evolution_reaches_absorption() {
    for (name, term, cert) in cores() {
        let maps = evolve_nf_trace(&term, cert.as_ref(), 10_000)
            .unwrap_or_else(|e| panic!("{name}: evolution failed: {e:?}"));
        assert!(!maps.is_empty(), "{name}: empty trace");
        let last = maps.last().unwrap();
        assert!(
            last.iter().all(|(s, _)| matches!(s, NfState::Done { .. })),
            "{name}: final support not absorbed"
        );
    }
}
