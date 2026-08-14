//! qALC phase-1 differential battery: the Rust kernel against the
//! checked-in fixtures and the register's reference trace.
//!
//! The primary pin regenerates every program fixture *in full* from the
//! engine — carrier, exact unmerged columns, commitment, dynamic trace
//! digest chain, absorption finals — given only the program (term,
//! certificate, tick depth) parsed from the file, and byte-compares the
//! serialized result with the file on disk: the cross-language analogue
//! of `python qalc/export_rust_fixtures.py --check`. Beside it: the
//! universal `Done → Done` tick row (the carrier is finite only through
//! the stated tick depth), the native Gram check, the Dw-only T-phase
//! pins from `qalc/dw_machine.py`, and the kernel.md §11 HH trace row
//! for row.

use blam::hash::sha256_hex;
use blam::qalc::amp::Amp;
use blam::qalc::kernel::{self, Psi};
use blam::qalc::mark::{LogEntry, TapeEntry};
use blam::qalc::state::{KState, RunCore, Vb, Vert};
use blam::qalc::term::{Dir, GateName, Term};
use blam::qalc::wire::{
    amp_bytes, parse_fixtures, serialize_fixtures, state_bytes, CertEntries, Fixtures,
    ProgramFixture,
};

const STATE_CAP: usize = 100_000;
const STEP_CAP: u64 = 100_000;

/// Every program fixture file (name, raw bytes) — `corpus.qfx` carries
/// no program and is pinned by the phase-0 codec battery instead.
fn program_files() -> Vec<(String, String)> {
    let dir = concat!(env!("CARGO_MANIFEST_DIR"), "/tests/qalc");
    let mut names: Vec<_> = std::fs::read_dir(dir)
        .expect("tests/qalc exists — regenerate with python qalc/export_rust_fixtures.py")
        .map(|e| e.unwrap().file_name().into_string().unwrap())
        .filter(|n| n.ends_with(".qfx") && n != "corpus.qfx")
        .collect();
    names.sort();
    assert!(!names.is_empty(), "no program fixtures found");
    names
        .into_iter()
        .map(|n| {
            let text = std::fs::read_to_string(format!("{dir}/{n}")).unwrap();
            (n, text)
        })
        .collect()
}

fn programs() -> Vec<(String, String, ProgramFixture)> {
    program_files()
        .into_iter()
        .map(|(n, text)| {
            let fx = parse_fixtures(&text).unwrap_or_else(|e| panic!("{n}: {e}"));
            assert_eq!(fx.programs.len(), 1, "{n}: expected one program");
            assert!(fx.corpus.is_empty(), "{n}: unexpected corpus section");
            let p = fx.programs.into_iter().next().unwrap();
            (n, text, p)
        })
        .collect()
}

/// The exporter's `trace_digest`, byte for byte: entries sorted by
/// `(state wire bytes, amp wire bytes)`.
fn trace_digest(name: &str, t: u64, prev: &str, psi: &Psi) -> String {
    let mut entries: Vec<(String, String)> = psi
        .iter()
        .map(|(s, a)| (state_bytes(s), amp_bytes(a)))
        .collect();
    entries.sort();
    let mut payload = format!("qalc-trace v1\n{name}\n{t}\n{prev}\n");
    for (s, a) in entries {
        payload.push_str(&s);
        payload.push(' ');
        payload.push_str(&a);
        payload.push('\n');
    }
    sha256_hex(payload.as_bytes())
}

/// Rebuild a complete program fixture from the engine, given only the
/// program identity parsed from the file.
fn regenerate(p: &ProgramFixture) -> ProgramFixture {
    let cert = p.cert.as_ref();
    let carrier = kernel::carrier_and_columns(&p.term, cert, p.tick_depth, STATE_CAP)
        .unwrap_or_else(|e| panic!("{}: carrier {:?}", p.name, e));
    let commitment = blam::qalc::wire::column_commitment(&carrier.columns);
    let maps = kernel::evolve_trace(&p.term, cert, STEP_CAP)
        .unwrap_or_else(|e| panic!("{}: evolve {:?}", p.name, e));
    let mut trace = Vec::with_capacity(maps.len());
    let mut prev = "0".repeat(64);
    for (at, psi) in maps.iter().enumerate() {
        prev = trace_digest(&p.name, at as u64 + 1, &prev, psi);
        trace.push((at as u64 + 1, psi.len() as u64, prev.clone()));
    }
    let mut finals = maps.last().expect("nonempty trace").clone();
    finals.sort_by_key(|(s, a)| (state_bytes(s), amp_bytes(a)));
    ProgramFixture {
        name: p.name.clone(),
        term: p.term.clone(),
        tick_depth: p.tick_depth,
        cert: p.cert.clone(),
        carrier: carrier.order,
        columns: carrier.columns,
        commitment,
        trace,
        finals,
    }
}

#[test]
fn fixtures_regenerate_byte_identically() {
    for (name, text, p) in programs() {
        let out = serialize_fixtures(&Fixtures {
            corpus: vec![],
            programs: vec![regenerate(&p)],
            composed: vec![],
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
fn done_ticks_forever() {
    // The universal `Done → Done` row, past the fixtures' tick cut: one
    // row, coefficient 1, kind and residue frozen, tick incrementing.
    let mut checked = 0usize;
    for (name, _, p) in programs() {
        for s in &p.carrier {
            if !matches!(s, KState::Done { .. }) {
                continue;
            }
            let mut cur = s.clone();
            for _ in 0..4 {
                let rows = kernel::step(&p.term, &cur, p.cert.as_ref())
                    .unwrap_or_else(|e| panic!("{name}: {e:?}"));
                assert_eq!(rows.len(), 1, "{name}: Done must have exactly one row");
                let row = rows.into_iter().next().unwrap();
                assert_eq!((row.sign, row.dk, row.rule), (1, 0, "tick"), "{name}");
                let (
                    KState::Done {
                        kind,
                        residue,
                        tick,
                    },
                    KState::Done {
                        kind: k2,
                        residue: r2,
                        tick: t2,
                    },
                ) = (&cur, &row.state)
                else {
                    panic!("{name}: tick left the Done stratum");
                };
                assert!(kind == k2 && residue == r2 && *t2 == tick + 1, "{name}");
                cur = row.state;
            }
            checked += 1;
        }
    }
    assert!(checked > 50, "too few Done states exercised: {checked}");
}

#[test]
fn gram_has_zero_defects_on_every_program() {
    for (name, _, p) in programs() {
        let g = kernel::gram(&p.term, p.cert.as_ref(), p.tick_depth, STATE_CAP)
            .unwrap_or_else(|e| panic!("{name}: {e:?}"));
        assert_eq!(g.nonunit, 0, "{name}: non-unit columns");
        assert_eq!(g.nonorthogonal, 0, "{name}: non-orthogonal column pairs");
        assert_eq!(g.basis, p.carrier.len(), "{name}: Gram basis vs carrier");
    }
}

fn lam(t: Term) -> Term {
    Term::Lam(Box::new(t))
}
fn app(f: Term, a: Term) -> Term {
    Term::App(Box::new(f), Box::new(a))
}
fn invoke(body: Term) -> Term {
    app(
        app(lam(lam(body)), Term::Gate(GateName::H)),
        Term::Gate(GateName::T),
    )
}

#[test]
fn t_probes_match_the_reference_pins() {
    // dw_machine.py's own T-phase assertions, natively: the exact
    // cyclotomic finals of T0, T1, and HTH0.
    let b0 = lam(lam(Term::Var(2)));
    let b1 = lam(lam(Term::Var(1)));
    let t0 = invoke(app(Term::Var(1), b0.clone()));
    let t1 = invoke(app(Term::Var(1), b1));
    let hth0 = invoke(app(Term::Var(2), app(Term::Var(1), app(Term::Var(2), b0))));
    let strict = |a, b, c, d, k| Amp::from_parts_strict(a, b, c, d, k).unwrap();
    type Finals<'a> = Vec<(&'a str, Amp)>;
    let pins: [(&str, &Term, Finals); 3] = [
        ("T0", &t0, vec![("halt0", Amp::ONE)]),
        ("T1", &t1, vec![("halt1", Amp::OMEGA)]),
        (
            "HTH0",
            &hth0,
            vec![
                ("halt0", strict(1, 1, 0, 0, 2)),
                ("halt1", strict(1, -1, 0, 0, 2)),
            ],
        ),
    ];
    for (name, term, want) in pins {
        let maps =
            kernel::evolve_trace(term, None, STEP_CAP).unwrap_or_else(|e| panic!("{name}: {e:?}"));
        let mut got: Vec<(&str, Amp)> = maps
            .last()
            .unwrap()
            .iter()
            .map(|(s, a)| {
                let KState::Done { kind, .. } = s else {
                    panic!("{name}: non-Done final")
                };
                (kind.token(), *a)
            })
            .collect();
        got.sort_by_key(|(k, _)| *k);
        assert_eq!(got, want, "{name}: exact T-phase final");
    }
}

// ---------------------------------------------------------------------------
// kernel.md §11: the reference HH step-indexed trace, row for row.

/// One expected branch at one step — exactly the fields the register's
/// table states (unstated fields are `None` and unchecked; `…`-elided
/// tapes match by prefix).
#[derive(Clone, Copy)]
struct Exp {
    amp: Option<&'static str>,
    path: Option<&'static str>,
    d: Option<Vert>,
    vb: Option<(u8, u8)>, // (b′, k); the gate is h throughout HH
    log: Option<&'static str>,
    tape: Option<&'static str>,
    tape_pre: Option<&'static str>,
    kind: Option<&'static str>,
    tick: Option<u64>,
}

const ANY: Exp = Exp {
    amp: None,
    path: None,
    d: None,
    vb: None,
    log: None,
    tape: None,
    tape_pre: None,
    kind: None,
    tick: None,
};

fn r_path(p: &[Dir]) -> String {
    p.iter().map(|d| d.ch()).collect()
}

fn r_log_entry(e: &LogEntry) -> String {
    match e {
        LogEntry::Lp(lp) => format!("L({}|{})", r_path(&lp.occ), lp.slice.len()),
        LogEntry::Gam(g) => format!("g{}", g.ch()),
        LogEntry::Alpha(a) => format!("a{}{}", a.gate.ch(), a.bit),
        LogEntry::Rbl(r) => format!("rbl({})", r_path(&r.output)),
    }
}

fn r_tape_entry(e: &TapeEntry) -> String {
    match e {
        TapeEntry::Bullet => "b".into(),
        TapeEntry::BulletBa => "ba".into(),
        TapeEntry::Rho => "R".into(),
        TapeEntry::Lp(lp) => format!("L({}|{})", r_path(&lp.occ), lp.slice.len()),
        TapeEntry::Gam(g) => format!("g{}", g.ch()),
        TapeEntry::Mu(g) => format!("m{}", g.ch()),
        TapeEntry::Ans(g, b) => format!("A{}{}", g.ch(), b),
        TapeEntry::Alpha(a) => format!("a{}{}", a.gate.ch(), a.bit),
        TapeEntry::Rb(r) => format!("RB({})", r.depth),
        TapeEntry::Rbl(r) => format!("rbl({})", r_path(&r.output)),
    }
}

fn bracket(items: Vec<String>) -> String {
    format!("[{}]", items.join(" "))
}

fn r_amp(a: Amp) -> String {
    match a.parts() {
        (1, 0, 0, 0, 0) => "1".into(),
        (1, 0, 0, 0, 1) => "1/r2".into(),
        parts => format!("{parts:?}"),
    }
}

fn matches_exp(e: &Exp, s: &KState, a: Amp) -> bool {
    if let Some(want) = e.amp {
        if r_amp(a) != want {
            return false;
        }
    }
    match s {
        KState::Run(c) => {
            if e.kind.is_some() || e.tick.is_some() {
                return false;
            }
            run_matches(e, c)
        }
        KState::RunDone { kind, .. } => {
            e.path.is_none() && e.tick.is_none() && e.kind == Some(kind.token())
        }
        KState::Done { kind, tick, .. } => {
            e.path.is_none() && e.kind == Some(kind.token()) && e.tick == Some(*tick)
        }
    }
}

fn run_matches(e: &Exp, c: &RunCore) -> bool {
    if let Some(want) = e.path {
        if r_path(&c.path) != want {
            return false;
        }
    }
    if let Some(want) = e.d {
        if c.d != want {
            return false;
        }
    }
    if let Some((bit, k)) = e.vb {
        if c.vb
            != Some(Vb {
                gate: GateName::H,
                bit,
                k,
            })
        {
            return false;
        }
    }
    if let Some(want) = e.log {
        if bracket(c.log.iter().map(r_log_entry).collect()) != want {
            return false;
        }
    }
    let tape = bracket(c.tape.iter().map(r_tape_entry).collect());
    if let Some(want) = e.tape {
        if tape != want {
            return false;
        }
    }
    if let Some(pre) = e.tape_pre {
        if !tape.starts_with(pre) {
            return false;
        }
    }
    true
}

/// One global step, mirroring the evolvers' merge, also reporting the
/// set of rules fired.
fn step_once(term: &Term, cert: Option<&CertEntries>, psi: &Psi) -> (Vec<&'static str>, Psi) {
    let mut rules: Vec<&'static str> = Vec::new();
    let mut out: Psi = Vec::new();
    let mut index = std::collections::HashMap::new();
    for (s, amp) in psi {
        for (coefficient, rule, target) in kernel::step_amp(term, s, cert).unwrap() {
            if !rules.contains(&rule) {
                rules.push(rule);
            }
            let contribution = amp.mul(coefficient).unwrap();
            if let Some(&at) = index.get(&target) {
                let held: &mut (KState, Amp) = &mut out[at];
                held.1 = held.1.add(contribution).unwrap();
            } else {
                index.insert(target.clone(), out.len());
                out.push((target, contribution));
            }
        }
    }
    (
        rules,
        out.into_iter().filter(|(_, a)| !a.is_zero()).collect(),
    )
}

#[test]
fn hh_trace_matches_kernel_md_section_11() {
    // The register labels t=23/t=34 "retrace"; the machine rule is bt1g.
    // t=49's separate-U-step entry is the halt rule; t=50 is tick.
    let table: Vec<(u64, &'static str, Vec<Exp>)> = vec![
        (
            1,
            "b1",
            vec![Exp {
                amp: Some("1"),
                path: Some("f"),
                d: Some(Vert::D),
                log: Some("[]"),
                tape: Some("[b b b R]"),
                ..ANY
            }],
        ),
        (
            2,
            "b1",
            vec![Exp {
                amp: Some("1"),
                path: Some("ff"),
                d: Some(Vert::D),
                log: Some("[]"),
                tape: Some("[b b b b R]"),
                ..ANY
            }],
        ),
        (
            3,
            "b2",
            vec![Exp {
                amp: Some("1"),
                path: Some("ffb"),
                d: Some(Vert::D),
                log: Some("[]"),
                tape: Some("[b b b R]"),
                ..ANY
            }],
        ),
        (
            4,
            "b2",
            vec![Exp {
                amp: Some("1"),
                path: Some("ffbb"),
                d: Some(Vert::D),
                log: Some("[]"),
                tape: Some("[b b R]"),
                ..ANY
            }],
        ),
        (
            5,
            "b1",
            vec![Exp {
                amp: Some("1"),
                path: Some("ffbbf"),
                d: Some(Vert::D),
                log: Some("[]"),
                tape: Some("[b b b R]"),
                ..ANY
            }],
        ),
        (
            6,
            "var",
            vec![Exp {
                amp: Some("1"),
                path: Some("ff"),
                d: Some(Vert::U),
                log: Some("[]"),
                tape: Some("[L(ffbbf|0) b b b R]"),
                ..ANY
            }],
        ),
        (
            7,
            "arg",
            vec![Exp {
                amp: Some("1"),
                path: Some("fa"),
                d: Some(Vert::D),
                log: Some("[L(ffbbf|0)]"),
                tape: Some("[b b b R]"),
                ..ANY
            }],
        ),
        (
            8,
            "call",
            vec![Exp {
                amp: Some("1"),
                path: Some("fa"),
                d: Some(Vert::U),
                log: Some("[L(ffbbf|0)]"),
                tape: Some("[gh b b mh b b R]"),
                ..ANY
            }],
        ),
        (
            9,
            "bt1",
            vec![Exp {
                amp: Some("1"),
                path: Some("ff"),
                d: Some(Vert::D),
                log: Some("[]"),
                tape: Some("[L(ffbbf|0) gh b b mh b b R]"),
                ..ANY
            }],
        ),
        (
            10,
            "bt2",
            vec![Exp {
                amp: Some("1"),
                path: Some("ffbbf"),
                d: Some(Vert::U),
                log: Some("[]"),
                tape: Some("[gh b b mh b b R]"),
                ..ANY
            }],
        ),
        (
            11,
            "arg",
            vec![Exp {
                amp: Some("1"),
                path: Some("ffbba"),
                d: Some(Vert::D),
                log: Some("[gh]"),
                tape: Some("[b b mh b b R]"),
                ..ANY
            }],
        ),
        (
            12,
            "b1",
            vec![Exp {
                amp: Some("1"),
                path: Some("ffbbaf"),
                d: Some(Vert::D),
                log: Some("[gh]"),
                tape: Some("[b b b mh b b R]"),
                ..ANY
            }],
        ),
        (
            13,
            "var",
            vec![Exp {
                amp: Some("1"),
                path: Some("ff"),
                d: Some(Vert::U),
                log: Some("[]"),
                tape: Some("[L(ffbbaf|1) b b b mh b b R]"),
                ..ANY
            }],
        ),
        (
            14,
            "arg",
            vec![Exp {
                amp: Some("1"),
                path: Some("fa"),
                d: Some(Vert::D),
                log: Some("[L(ffbbaf|1)]"),
                tape: Some("[b b b mh b b R]"),
                ..ANY
            }],
        ),
        (
            15,
            "call",
            vec![Exp {
                amp: Some("1"),
                path: Some("fa"),
                d: Some(Vert::U),
                log: Some("[L(ffbbaf|1)]"),
                tape: Some("[gh b b mh b b mh b b R]"),
                ..ANY
            }],
        ),
        (
            16,
            "bt1",
            vec![Exp {
                amp: Some("1"),
                path: Some("ff"),
                d: Some(Vert::D),
                log: Some("[]"),
                tape_pre: Some("[L(ffbbaf|1) gh"),
                ..ANY
            }],
        ),
        (
            17,
            "bt2",
            vec![Exp {
                amp: Some("1"),
                path: Some("ffbbaf"),
                d: Some(Vert::U),
                log: Some("[gh]"),
                tape: Some("[gh b b mh b b mh b b R]"),
                ..ANY
            }],
        ),
        (
            18,
            "arg",
            vec![Exp {
                amp: Some("1"),
                path: Some("ffbbaa"),
                d: Some(Vert::D),
                log: Some("[gh gh]"),
                tape: Some("[b b mh b b mh b b R]"),
                ..ANY
            }],
        ),
        (
            19,
            "b2",
            vec![Exp {
                amp: Some("1"),
                path: Some("ffbbaab"),
                d: Some(Vert::D),
                log: Some("[gh gh]"),
                tape: Some("[b mh b b mh b b R]"),
                ..ANY
            }],
        ),
        (
            20,
            "b2",
            vec![Exp {
                amp: Some("1"),
                path: Some("ffbbaabb"),
                d: Some(Vert::D),
                log: Some("[gh gh]"),
                tape: Some("[mh b b mh b b R]"),
                ..ANY
            }],
        ),
        (
            21,
            "var",
            vec![Exp {
                amp: Some("1"),
                path: Some("ffbbaa"),
                d: Some(Vert::U),
                log: Some("[gh gh]"),
                tape: Some("[L(ffbbaabb|0) mh b b mh b b R]"),
                ..ANY
            }],
        ),
        (
            22,
            "fire-h",
            vec![
                Exp {
                    amp: Some("1/r2"),
                    path: Some("ffbbaa"),
                    d: Some(Vert::U),
                    log: Some("[gh gh]"),
                    tape: Some("[Ah0 b b mh b b R]"),
                    ..ANY
                },
                Exp {
                    amp: Some("1/r2"),
                    path: Some("ffbbaa"),
                    d: Some(Vert::U),
                    log: Some("[gh gh]"),
                    tape: Some("[Ah1 b b mh b b R]"),
                    ..ANY
                },
            ],
        ),
        (
            23,
            "bt1g",
            vec![
                Exp {
                    path: Some("ffbbaf"),
                    d: Some(Vert::D),
                    tape_pre: Some("[gh Ah0"),
                    ..ANY
                },
                Exp {
                    path: Some("ffbbaf"),
                    d: Some(Vert::D),
                    tape_pre: Some("[gh Ah1"),
                    ..ANY
                },
            ],
        ),
        (
            24,
            "var",
            vec![
                Exp {
                    path: Some("ff"),
                    d: Some(Vert::U),
                    ..ANY
                },
                Exp {
                    path: Some("ff"),
                    d: Some(Vert::U),
                    ..ANY
                },
            ],
        ),
        (
            25,
            "arg",
            vec![
                Exp {
                    path: Some("fa"),
                    d: Some(Vert::D),
                    log: Some("[L(ffbbaf|1)]"),
                    tape: Some("[gh Ah0 b b mh b b R]"),
                    ..ANY
                },
                Exp {
                    path: Some("fa"),
                    d: Some(Vert::D),
                    log: Some("[L(ffbbaf|1)]"),
                    tape: Some("[gh Ah1 b b mh b b R]"),
                    ..ANY
                },
            ],
        ),
        (
            26,
            "anshead",
            vec![
                Exp {
                    path: Some("fa"),
                    vb: Some((0, 0)),
                    tape: Some("[b b mh b b R]"),
                    ..ANY
                },
                Exp {
                    path: Some("fa"),
                    vb: Some((1, 0)),
                    tape: Some("[b b mh b b R]"),
                    ..ANY
                },
            ],
        ),
        (
            27,
            "vb2",
            vec![
                Exp {
                    path: Some("fa"),
                    vb: Some((0, 1)),
                    tape: Some("[b mh b b R]"),
                    ..ANY
                },
                Exp {
                    path: Some("fa"),
                    vb: Some((1, 1)),
                    tape: Some("[b mh b b R]"),
                    ..ANY
                },
            ],
        ),
        (
            28,
            "vb2",
            vec![
                Exp {
                    path: Some("fa"),
                    vb: Some((0, 2)),
                    tape: Some("[mh b b R]"),
                    ..ANY
                },
                Exp {
                    path: Some("fa"),
                    vb: Some((1, 2)),
                    tape: Some("[mh b b R]"),
                    ..ANY
                },
            ],
        ),
        (
            29,
            "vvar",
            vec![
                Exp {
                    tape_pre: Some("[b ah0 mh"),
                    ..ANY
                },
                Exp {
                    tape_pre: Some("[b b ah1 mh"),
                    ..ANY
                },
            ],
        ),
        (
            30,
            "bt1",
            vec![
                Exp {
                    path: Some("ff"),
                    d: Some(Vert::D),
                    ..ANY
                },
                Exp {
                    path: Some("ff"),
                    d: Some(Vert::D),
                    ..ANY
                },
            ],
        ),
        (
            31,
            "bt2",
            vec![
                // The register printed this row's position as ffbbf; the
                // reference machine (and its own t=32 b3 landing at ffbba)
                // say ffbbaf — corrected 2026-08-14.
                Exp {
                    path: Some("ffbbaf"),
                    d: Some(Vert::U),
                    ..ANY
                },
                Exp {
                    path: Some("ffbbaf"),
                    d: Some(Vert::U),
                    ..ANY
                },
            ],
        ),
        (
            32,
            "b3",
            vec![
                Exp {
                    path: Some("ffbba"),
                    d: Some(Vert::U),
                    tape: Some("[ah0 mh b b R]"),
                    ..ANY
                },
                Exp {
                    path: Some("ffbba"),
                    d: Some(Vert::U),
                    tape: Some("[b ah1 mh b b R]"),
                    ..ANY
                },
            ],
        ),
        // The outer fire: the A_h(1) amplitudes cancel exactly and the
        // support returns to 1 — the interference row.
        (
            33,
            "fire-h",
            vec![Exp {
                amp: Some("1"),
                path: Some("ffbba"),
                d: Some(Vert::U),
                log: Some("[gh]"),
                tape: Some("[Ah0 b b R]"),
                ..ANY
            }],
        ),
        (
            34,
            "bt1g",
            vec![Exp {
                amp: Some("1"),
                path: Some("ffbbf"),
                d: Some(Vert::D),
                ..ANY
            }],
        ),
        (
            35,
            "var",
            vec![Exp {
                amp: Some("1"),
                path: Some("ff"),
                d: Some(Vert::U),
                ..ANY
            }],
        ),
        (
            36,
            "arg",
            vec![Exp {
                amp: Some("1"),
                path: Some("fa"),
                d: Some(Vert::D),
                tape: Some("[gh Ah0 b b R]"),
                ..ANY
            }],
        ),
        (
            37,
            "anshead",
            vec![Exp {
                amp: Some("1"),
                path: Some("fa"),
                vb: Some((0, 0)),
                tape: Some("[b b R]"),
                ..ANY
            }],
        ),
        (
            38,
            "vb2",
            vec![Exp {
                amp: Some("1"),
                path: Some("fa"),
                vb: Some((0, 1)),
                tape: Some("[b R]"),
                ..ANY
            }],
        ),
        (
            39,
            "vb2",
            vec![Exp {
                amp: Some("1"),
                path: Some("fa"),
                vb: Some((0, 2)),
                tape: Some("[R]"),
                ..ANY
            }],
        ),
        (
            40,
            "vvar",
            vec![Exp {
                amp: Some("1"),
                path: Some("fa"),
                d: Some(Vert::U),
                log: Some("[L(ffbbf|0)]"),
                tape: Some("[b ah0 R]"),
                ..ANY
            }],
        ),
        (
            41,
            "bt1",
            vec![Exp {
                amp: Some("1"),
                path: Some("ff"),
                d: Some(Vert::D),
                log: Some("[]"),
                tape: Some("[L(ffbbf|0) b ah0 R]"),
                ..ANY
            }],
        ),
        (
            42,
            "bt2",
            vec![Exp {
                amp: Some("1"),
                path: Some("ffbbf"),
                d: Some(Vert::U),
                log: Some("[]"),
                tape: Some("[b ah0 R]"),
                ..ANY
            }],
        ),
        (
            43,
            "b3",
            vec![Exp {
                amp: Some("1"),
                path: Some("ffbb"),
                d: Some(Vert::U),
                log: Some("[]"),
                tape: Some("[ah0 R]"),
                ..ANY
            }],
        ),
        (
            44,
            "b4",
            vec![Exp {
                amp: Some("1"),
                path: Some("ffb"),
                d: Some(Vert::U),
                log: Some("[]"),
                tape: Some("[b ah0 R]"),
                ..ANY
            }],
        ),
        (
            45,
            "b4",
            vec![Exp {
                amp: Some("1"),
                path: Some("ff"),
                d: Some(Vert::U),
                log: Some("[]"),
                tape: Some("[b b ah0 R]"),
                ..ANY
            }],
        ),
        (
            46,
            "b3",
            vec![Exp {
                amp: Some("1"),
                path: Some("f"),
                d: Some(Vert::U),
                log: Some("[]"),
                tape: Some("[b ah0 R]"),
                ..ANY
            }],
        ),
        (
            47,
            "b3",
            vec![Exp {
                amp: Some("1"),
                path: Some(""),
                d: Some(Vert::U),
                log: Some("[]"),
                tape: Some("[ah0 R]"),
                ..ANY
            }],
        ),
        (
            48,
            "rootdone",
            vec![Exp {
                amp: Some("1"),
                kind: Some("halt0"),
                ..ANY
            }],
        ),
        (
            49,
            "halt",
            vec![Exp {
                amp: Some("1"),
                kind: Some("halt0"),
                tick: Some(0),
                ..ANY
            }],
        ),
        (
            50,
            "tick",
            vec![Exp {
                amp: Some("1"),
                kind: Some("halt0"),
                tick: Some(1),
                ..ANY
            }],
        ),
    ];

    let (_, _, hh) = programs()
        .into_iter()
        .find(|(n, _, _)| n == "HH.qfx")
        .expect("HH fixture present");
    let mut psi: Psi = vec![(kernel::init_state(), Amp::ONE)];
    for (t, rule, exps) in table {
        let (rules, next) = step_once(&hh.term, hh.cert.as_ref(), &psi);
        assert_eq!(rules, vec![rule], "t={t}: rule");
        assert_eq!(next.len(), exps.len(), "t={t}: support");
        // Match expected branches to actual states injectively (the
        // support is at most 2, so try both assignments).
        let ok = if exps.len() == 1 {
            matches_exp(&exps[0], &next[0].0, next[0].1)
        } else {
            (matches_exp(&exps[0], &next[0].0, next[0].1)
                && matches_exp(&exps[1], &next[1].0, next[1].1))
                || (matches_exp(&exps[0], &next[1].0, next[1].1)
                    && matches_exp(&exps[1], &next[0].0, next[0].1))
        };
        assert!(
            ok,
            "t={t}: support mismatch — got {:?}",
            next.iter()
                .map(|(s, a)| format!("{} {}", r_amp(*a), state_bytes(s)))
                .collect::<Vec<_>>()
        );
        psi = next;
    }
    // §11's closing line: mass 1 on 0̂ exactly.
    assert_eq!(psi.len(), 1);
    assert_eq!(psi[0].1, Amp::ONE);
}
