//! qALC phase-0 codec battery: the checked-in fixtures are the contract
//! between `qalc/export_rust_fixtures.py` and `src/qalc/wire.rs`.
//!
//! Round-trip is byte-exact per file; the `PyReprKey` renderer is pinned
//! against the exporter's real Python `repr` output; column commitments
//! recompute; and every state in every fixture holds the reference's
//! canonical-order discipline (RS by frame repr, KD-bundle keys by key
//! repr) under the RUST comparator — which is exactly the cross-language
//! ordering agreement phase 1 will lean on.

use blam::qalc::mark::{frame_repr, kd_is_canonical, kd_key_repr, rs_is_canonical, KsHead};
use blam::qalc::state::{KState, Residue, RunCore};
use blam::qalc::wire::{
    column_commitment, parse_fixtures, serialize_fixtures, state_bytes, CorpusValue, Fixtures,
};

fn fixture_files() -> Vec<(String, String)> {
    // Both fixture trees: the kernel exporter's flat files and the
    // composed exporter's `composed/` subdirectory (whose corpus grows
    // the PyReprKey pins with RBL-carrying frames and bundle keys).
    let dir = concat!(env!("CARGO_MANIFEST_DIR"), "/tests/qalc");
    let mut names: Vec<String> = std::fs::read_dir(dir)
        .expect("tests/qalc exists — regenerate with python qalc/export_rust_fixtures.py")
        .map(|e| e.unwrap().file_name().into_string().unwrap())
        .filter(|n| n.ends_with(".qfx"))
        .collect();
    names.extend(
        std::fs::read_dir(format!("{dir}/composed"))
            .expect("tests/qalc/composed exists — regenerate with python qalc/export_composed_fixtures.py")
            .map(|e| format!("composed/{}", e.unwrap().file_name().into_string().unwrap()))
            .filter(|n| n.ends_with(".qfx")),
    );
    names.sort();
    assert!(!names.is_empty(), "no fixtures found");
    names
        .into_iter()
        .map(|n| {
            let text = std::fs::read_to_string(format!("{dir}/{n}")).unwrap();
            (n, text)
        })
        .collect()
}

fn parsed() -> Vec<(String, Fixtures)> {
    fixture_files()
        .into_iter()
        .map(|(n, text)| {
            let fx = parse_fixtures(&text).unwrap_or_else(|e| panic!("{n}: {e}"));
            (n, fx)
        })
        .collect()
}

#[test]
fn round_trip_is_byte_exact() {
    for (name, text) in fixture_files() {
        let fx = parse_fixtures(&text).unwrap_or_else(|e| panic!("{name}: {e}"));
        assert_eq!(
            serialize_fixtures(&fx),
            text,
            "{name}: serialize(parse(file)) drifted"
        );
    }
}

#[test]
fn pyrepr_matches_the_exporter_corpus() {
    let mut pairs = 0;
    for (name, fx) in parsed() {
        for p in &fx.corpus {
            let rendered = match &p.value {
                CorpusValue::Frame(f) => frame_repr(f),
                CorpusValue::KdKey(k) => kd_key_repr(k),
            };
            assert_eq!(
                rendered.as_bytes(),
                &p.repr_bytes[..],
                "{name}: PyReprKey drifted from Python repr"
            );
            pairs += 1;
        }
    }
    // The corpus must actually cover both kinds; a silently empty corpus
    // would pass everything above.
    assert!(pairs > 50, "suspiciously small corpus: {pairs}");
}

#[test]
fn duplicate_cert_positions_are_rejected() {
    // The reference certificate is a dict — one entry per fire
    // position. A wire cert with a repeated position corresponds to no
    // Python certificate and must fail to parse, not fall back to
    // first-match lookup.
    let (name, text) = fixture_files()
        .into_iter()
        .find(|(_, t)| t.contains("centry"))
        .expect("no fixture carries a cert");
    let dup_line = text
        .lines()
        .find(|l| l.starts_with("centry"))
        .unwrap()
        .to_string();
    let broken = text.replace(&dup_line, &format!("{dup_line}\n{dup_line}"));
    let err = parse_fixtures(&broken).expect_err(&format!("{name}: duplicate cert parsed"));
    assert!(
        err.to_string().contains("duplicate cert position"),
        "{name}: wrong error: {err}"
    );
}

#[test]
fn column_commitments_recompute() {
    for (name, fx) in parsed() {
        let all: Vec<(&str, &_, &str)> = fx
            .programs
            .iter()
            .map(|p| (p.name.as_str(), &p.columns, p.commitment.as_str()))
            .chain(
                fx.composed
                    .iter()
                    .map(|p| (p.name.as_str(), &p.columns, p.commitment.as_str())),
            )
            .collect();
        for (pname, columns, commitment) in all {
            assert_eq!(
                column_commitment(columns),
                commitment,
                "{name}/{pname}: column commitment mismatch"
            );
            assert!(!columns.is_empty(), "{pname}: no columns");
            for (_, rows) in columns.iter() {
                assert!(!rows.is_empty(), "{pname}: empty column");
            }
        }
    }
}

/// Every RS and every KD bundle a state carries, residues included.
fn registers(s: &KState) -> Vec<(&[blam::qalc::mark::Frame], &[KsHead])> {
    fn core(c: &RunCore) -> (&[blam::qalc::mark::Frame], &[KsHead]) {
        (&c.rs, &c.ks)
    }
    fn residue(r: &Residue) -> (&[blam::qalc::mark::Frame], &[KsHead]) {
        match r {
            Residue::Full(c) => core(c),
            Residue::Root { rs, ks, .. } => (rs, ks),
        }
    }
    match s {
        KState::Run(c) => vec![core(c)],
        KState::RunDone { residue: r, .. } | KState::Done { residue: r, .. } => vec![residue(r)],
    }
}

#[test]
fn canonical_orders_hold_under_the_rust_comparator() {
    let mut rs_seen = 0u64;
    let mut kd_seen = 0u64;
    for (name, fx) in parsed() {
        for p in &fx.programs {
            for s in p.carrier.iter().chain(p.finals.iter().map(|(s, _)| s)) {
                for (rs, ks) in registers(s) {
                    assert!(rs_is_canonical(rs), "{}/{}: rs order", name, p.name);
                    if !rs.is_empty() {
                        rs_seen += 1;
                    }
                    for h in ks {
                        if let KsHead::DeadBundle(keys) = h {
                            assert!(kd_is_canonical(keys), "{}/{}: kd order", name, p.name);
                            kd_seen += 1;
                        }
                    }
                }
            }
            if let Some(entries) = &p.cert {
                for (_pos, keys) in entries {
                    // Cert popkeys use wire-byte order (cert-specific
                    // canonical order, not PyReprKey).
                    for w in keys.windows(2) {
                        assert!(
                            blam::qalc::wire::kd_key_bytes(&w[0]).as_bytes()
                                <= blam::qalc::wire::kd_key_bytes(&w[1]).as_bytes(),
                            "{}: cert key order",
                            p.name
                        );
                    }
                }
            }
        }
    }
    // Real multi-frame RS states and real KD bundles must be present, or
    // the ordering assertions above tested nothing.
    assert!(rs_seen > 100, "too few RS-bearing states: {rs_seen}");
    assert!(kd_seen > 100, "too few KD bundles: {kd_seen}");
}

#[test]
fn structural_pins_hold() {
    let mut programs = 0;
    for (name, fx) in parsed() {
        for p in &fx.programs {
            programs += 1;
            // The init state is carrier id 0, encoded exactly as pinned.
            assert_eq!(
                state_bytes(&p.carrier[0]),
                "( run ( ) d ( ) ( bu bu rho ) n ( ) ( ) )",
                "{}: init state drifted",
                p.name
            );
            // Carrier states are pairwise distinct.
            let mut seen = std::collections::HashSet::new();
            for s in &p.carrier {
                assert!(
                    seen.insert(state_bytes(s)),
                    "{}: duplicate carrier state",
                    p.name
                );
            }
            // Finals are sorted by state wire bytes and nonempty.
            assert!(!p.finals.is_empty(), "{}: no finals", p.name);
            for w in p.finals.windows(2) {
                assert!(
                    state_bytes(&w[0].0).as_bytes() < state_bytes(&w[1].0).as_bytes(),
                    "{}: finals order",
                    p.name
                );
            }
            // Finals are all Done (absorption) and the trace chain is a
            // contiguous 1..=N with positive support.
            for (s, _) in &p.finals {
                assert!(
                    matches!(s, KState::Done { .. }),
                    "{}: non-Done final",
                    p.name
                );
            }
            for (i, (step, support, _)) in p.trace.iter().enumerate() {
                assert_eq!(*step, i as u64 + 1, "{}: trace step numbering", p.name);
                assert!(*support >= 1, "{}: empty support", p.name);
            }
            assert!(!p.trace.is_empty(), "{}: empty trace", p.name);
        }
        let _ = name;
    }
    // The twenty-program suite plus the three Dw-only T-phase probes.
    assert_eq!(programs, 23, "expected the 20 + 3 program families");
}
