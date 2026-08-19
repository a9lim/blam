//! qALC phase-2 composed-machine battery — the Gate-1 30-core
//! differential. Two halves:
//!
//! - the structural frame: every core's carrier closes at the
//!   reference's exact state and tick-cut counts, every compressing
//!   edge's predecessor inverse rebuilds its source (checked per edge
//!   inside the carrier walk), the native Gram has zero defects, and
//!   evolution reaches absorption;
//! - the byte-level pins: every composed fixture under
//!   `tests/qalc/composed/` (written by
//!   `qalc/export_composed_fixtures.py`) regenerates *in full* from the
//!   engine — carrier order, exact unmerged columns, commitment,
//!   `qalc-ctrace v1` digest chain, absorption finals, and the
//!   totalization/fallback probe rows — and byte-compares with the file.
//!
//! The per-core expectations were measured from the frozen Python
//! reference (`readback_certify.composed_carrier` at `tick_depth=2`)
//! by the canonical fixture set; the aggregate is Gate 1's 7,507 states / 7,417
//! columns over 30 cores, with 90 tick-cut leaves.

use blam::hash::sha256_hex;
use blam::qalc::readback::{evolve_nf_trace, nf_carrier_and_columns, nf_gram, nf_step, NfPsi};
use blam::qalc::state::{NfState, NfTerminal};
use blam::qalc::term::{GateName, Term};
use blam::qalc::wire::{
    amp_bytes, column_commitment, nf_state_bytes, parse_fixtures, serialize_fixtures, CertEntries,
    ComposedFixture, Fixtures,
};

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
            under_inputs(app(x(), app(lam(app(Term::Var(1), Term::Var(1))), h0()))),
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
                rules.insert(rule.to_string());
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

// ---------------------------------------------------------------------------
// The byte-level half: full fixture regeneration from the engine.

/// Every composed fixture file `(name, raw bytes)` — the corpus file is
/// pinned by the phase-0 codec battery's widened enumeration instead.
fn composed_files() -> Vec<(String, String)> {
    let dir = concat!(env!("CARGO_MANIFEST_DIR"), "/tests/qalc/composed");
    let mut names: Vec<_> = std::fs::read_dir(dir)
        .expect(
            "tests/qalc/composed exists — regenerate with python qalc/export_composed_fixtures.py",
        )
        .map(|e| e.unwrap().file_name().into_string().unwrap())
        .filter(|n| n.ends_with(".qfx") && n != "corpus.qfx")
        .collect();
    names.sort();
    assert_eq!(names.len(), 30, "expected the 30 composed fixtures");
    names
        .into_iter()
        .map(|n| {
            let text = std::fs::read_to_string(format!("{dir}/{n}")).unwrap();
            (n, text)
        })
        .collect()
}

fn composed_fixtures() -> Vec<(String, String, ComposedFixture)> {
    composed_files()
        .into_iter()
        .map(|(n, text)| {
            let fx = parse_fixtures(&text).unwrap_or_else(|e| panic!("{n}: {e}"));
            assert_eq!(fx.composed.len(), 1, "{n}: expected one cprogram");
            assert!(
                fx.programs.is_empty() && fx.corpus.is_empty(),
                "{n}: unexpected kernel sections"
            );
            let p = fx.composed.into_iter().next().unwrap();
            (n, text, p)
        })
        .collect()
}

/// The composed exporter's `trace_digest`, byte for byte: a distinct
/// payload name from the kernel chain, entries sorted by
/// `(state wire bytes, amp wire bytes)`.
fn ctrace_digest(name: &str, t: u64, prev: &str, psi: &NfPsi) -> String {
    let mut entries: Vec<(String, String)> = psi
        .iter()
        .map(|(s, a)| (nf_state_bytes(s), amp_bytes(a)))
        .collect();
    entries.sort();
    let mut payload = format!("qalc-ctrace v1\n{name}\n{t}\n{prev}\n");
    for (s, a) in entries {
        payload.push_str(&s);
        payload.push(' ');
        payload.push_str(&a);
        payload.push('\n');
    }
    sha256_hex(payload.as_bytes())
}

/// Rebuild a complete composed fixture from the engine, given only the
/// program identity and the probe sources parsed from the file.
fn regenerate(p: &ComposedFixture) -> ComposedFixture {
    let cert = p.cert.as_ref();
    let carrier = nf_carrier_and_columns(&p.term, cert, p.tick_depth, 300_000)
        .unwrap_or_else(|e| panic!("{}: carrier {:?}", p.name, e));
    let commitment = column_commitment(&carrier.columns);
    let maps = evolve_nf_trace(&p.term, cert, 100_000)
        .unwrap_or_else(|e| panic!("{}: evolve {:?}", p.name, e));
    let mut trace = Vec::with_capacity(maps.len());
    let mut prev = "0".repeat(64);
    for (at, psi) in maps.iter().enumerate() {
        prev = ctrace_digest(&p.name, at as u64 + 1, &prev, psi);
        trace.push((at as u64 + 1, psi.len() as u64, prev.clone()));
    }
    let mut finals = maps.last().expect("nonempty trace").clone();
    finals.sort_by_key(|(s, a)| (nf_state_bytes(s), amp_bytes(a)));
    let probes = p
        .probes
        .iter()
        .map(|(src, _)| {
            let rows = nf_step(&p.term, src, cert)
                .into_iter()
                .map(|r| {
                    let a = blam::qalc::kernel::edge_coefficient(r.sign, r.dk, &r.rule)
                        .unwrap_or_else(|| panic!("{}: probe coefficient", p.name));
                    (a, r.rule, r.state)
                })
                .collect();
            (src.clone(), rows)
        })
        .collect();
    ComposedFixture {
        name: p.name.clone(),
        term: p.term.clone(),
        tick_depth: p.tick_depth,
        cert: p.cert.clone(),
        carrier: carrier.order,
        columns: carrier.columns,
        commitment,
        trace,
        finals,
        probes,
    }
}

#[test]
fn composed_fixtures_regenerate_byte_identically() {
    for (name, text, p) in composed_fixtures() {
        let out = serialize_fixtures(&Fixtures {
            corpus: vec![],
            programs: vec![],
            composed: vec![regenerate(&p)],
        });
        if out != text {
            for (at, (got, want)) in out.lines().zip(text.lines()).enumerate() {
                assert_eq!(
                    got,
                    want,
                    "{name}: first divergence at line {}",
                    at + 2 // 1-based, counting the header line
                );
            }
            panic!(
                "{name}: regenerated {} lines, fixture has {}",
                out.lines().count(),
                text.lines().count()
            );
        }
    }
}

#[test]
fn probe_rootdone_landings_invert() {
    // The noncanonical-rootdone fallback probe's landing must rebuild
    // its (off-carrier) source through the exact terminal inverse —
    // `readback_checks.terminal_battery`'s closing assertion, natively.
    let mut checked = 0;
    for (name, _, p) in composed_fixtures() {
        for (src, rows) in &p.probes {
            for (_, rule, target) in rows {
                if rule != "rootdone" {
                    continue;
                }
                let NfState::RunDone(NfTerminal::Halt { output, garbage }) = target else {
                    panic!("{name}: rootdone probe landing is not a halt");
                };
                let rebuilt = blam::qalc::readback::terminal_predecessor(output, garbage)
                    .unwrap_or_else(|e| panic!("{name}: probe inverse {e:?}"));
                assert!(
                    matches!(src, NfState::Run(s) if *s == rebuilt),
                    "{name}: probe inverse did not rebuild the source"
                );
                checked += 1;
            }
        }
    }
    assert!(checked >= 1, "no rootdone probe found");
}
