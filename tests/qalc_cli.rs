//! End-to-end contract for the default-built `blam qalc` group.

use std::io::Write as _;
use std::path::Path;
use std::process::{Command, Output, Stdio};

fn command(args: &[&str]) -> Output {
    Command::new(env!("CARGO_BIN_EXE_blam"))
        .args(args)
        .current_dir(env!("CARGO_MANIFEST_DIR"))
        .output()
        .expect("run blam")
}

fn success(args: &[&str]) -> String {
    let output = command(args);
    assert!(
        output.status.success(),
        "{args:?}: {}",
        String::from_utf8_lossy(&output.stderr)
    );
    String::from_utf8(output.stdout).expect("UTF-8 stdout")
}

fn collect_qfx(path: &Path, files: &mut Vec<String>) {
    for entry in std::fs::read_dir(path).expect("read qfx directory") {
        let path = entry.expect("qfx directory entry").path();
        if path.is_dir() {
            collect_qfx(&path, files);
        } else if path.extension().and_then(|ext| ext.to_str()) == Some("qfx") {
            files.push(path.to_string_lossy().into_owned());
        }
    }
}

#[test]
fn compile_run_gram_and_fixture_paths_are_live() {
    let compiled = success(&["qalc", "compile", "2", "h:0", "cx:0:1"]);
    assert!(compiled.contains("selection structural-gate2 admitted=true"));
    assert!(compiled.contains("prepared-at=98 runtime=123 total=221"));
    let term = compiled
        .lines()
        .find_map(|line| line.strip_prefix("term "))
        .expect("compiled term");

    let run = success(&["qalc", "run", term, "--steps", "221"]);
    assert!(run.contains("selection structural-gate2 admitted=true"));
    assert!(run.contains("steps 221"));
    assert!(run.contains("running ( dw i:0 i:0 i:0 i:0 i:0 )"), "{run}");

    let gram = success(&[
        "qalc",
        "gram",
        term,
        "--tick-depth",
        "1",
        "--state-cap",
        "10000",
    ]);
    assert!(gram.contains("selection structural-gate2 admitted=true"));
    assert!(gram.contains("nonunit 0 nonorthogonal 0"));

    let fixture = success(&["qalc", "fixtures", "tests/qalc/HH.qfx"]);
    assert!(fixture.contains("PASS"));
    assert!(fixture.contains("kernel=1 composed=0"));

    let from_fixture = success(&["qalc", "run", "--file", "tests/qalc/HH.qfx", "--steps", "0"]);
    assert!(from_fixture.contains("selection validated-gate1 admitted=true"));

    let fixture_gram = success(&["qalc", "gram", "--file", "tests/qalc/HH.qfx"]);
    assert!(fixture_gram.contains("tick-depth 2"));

    let piped_term = success(&["qalc", "compile", "1", "h:0", "--term-only"]);
    let mut child = Command::new(env!("CARGO_BIN_EXE_blam"))
        .args(["qalc", "run", "--file", "-", "--steps", "0"])
        .stdin(Stdio::piped())
        .stdout(Stdio::piped())
        .stderr(Stdio::piped())
        .spawn()
        .expect("spawn piped qalc run");
    child
        .stdin
        .as_mut()
        .expect("piped stdin")
        .write_all(piped_term.as_bytes())
        .expect("write compiled term");
    let piped = child.wait_with_output().expect("wait for piped qalc run");
    assert!(
        piped.status.success(),
        "{}",
        String::from_utf8_lossy(&piped.stderr)
    );
}

#[test]
fn malformed_circuit_is_a_typed_cli_error() {
    let output = command(&["qalc", "compile", "2", "cx:0:0"]);
    assert_eq!(output.status.code(), Some(2));
    let stderr = String::from_utf8_lossy(&output.stderr);
    assert!(stderr.contains("invalid circuit"), "{stderr}");
    assert!(stderr.contains("MalformedCnot"), "{stderr}");

    let over_depth = command(&["qalc", "compile", "1023", "--term-only"]);
    assert_eq!(over_depth.status.code(), Some(2));
    assert!(
        String::from_utf8_lossy(&over_depth.stderr).contains("parser cap"),
        "{}",
        String::from_utf8_lossy(&over_depth.stderr)
    );

    let zero_tick = command(&[
        "qalc",
        "gram",
        "--file",
        "tests/qalc/HH.qfx",
        "--tick-depth",
        "0",
    ]);
    assert_eq!(zero_tick.status.code(), Some(2));
    assert!(
        String::from_utf8_lossy(&zero_tick.stderr).contains("at least 1"),
        "{}",
        String::from_utf8_lossy(&zero_tick.stderr)
    );
}

#[test]
fn fixture_drift_and_none_vs_empty_certificate_are_rejected() {
    let dir = std::env::temp_dir().join(format!("blam-qalc-cli-{}", std::process::id()));
    let _ = std::fs::remove_dir_all(&dir);
    std::fs::create_dir_all(&dir).expect("temp dir");

    let hh =
        std::fs::read_to_string(concat!(env!("CARGO_MANIFEST_DIR"), "/tests/qalc/HH.qfx")).unwrap();
    let commitment = hh
        .lines()
        .find(|line| line.starts_with("commitment "))
        .expect("commitment line");
    let mut changed = commitment.to_string();
    let last = changed.pop().expect("commitment hex");
    changed.push(if last == '0' { '1' } else { '0' });
    let drifted = hh.replacen(commitment, &changed, 1);
    let drift_path = dir.join("drift.qfx");
    std::fs::write(&drift_path, drifted).unwrap();
    let drift = command(&[
        "qalc",
        "fixtures",
        drift_path.to_str().expect("UTF-8 temp path"),
    ]);
    assert_eq!(drift.status.code(), Some(2));

    let neutral = std::fs::read_to_string(concat!(
        env!("CARGO_MANIFEST_DIR"),
        "/tests/qalc/composed/neutral-bare-t.qfx"
    ))
    .unwrap();
    let empty_cert = neutral.replacen("cert none", "begin cert\nend cert", 1);
    let cert_path = dir.join("empty-cert.qfx");
    std::fs::write(&cert_path, empty_cert).unwrap();
    let cert = command(&[
        "qalc",
        "fixtures",
        cert_path.to_str().expect("UTF-8 temp path"),
    ]);
    assert_eq!(cert.status.code(), Some(2));
    assert!(
        String::from_utf8_lossy(&cert.stderr).contains("certificate differs"),
        "{}",
        String::from_utf8_lossy(&cert.stderr)
    );

    let empty_path = dir.join("empty.qfx");
    std::fs::write(&empty_path, "qalc-fixtures v1\n").unwrap();
    let empty = command(&[
        "qalc",
        "fixtures",
        empty_path.to_str().expect("UTF-8 temp path"),
    ]);
    assert_eq!(empty.status.code(), Some(2));
    assert!(
        String::from_utf8_lossy(&empty.stderr).contains("contains no sections"),
        "{}",
        String::from_utf8_lossy(&empty.stderr)
    );

    let _ = std::fs::remove_dir_all(&dir);
}

#[test]
fn every_checked_in_qfx_is_regenerated_by_the_cli() {
    let root = Path::new(env!("CARGO_MANIFEST_DIR"));
    let mut files = Vec::new();
    collect_qfx(&root.join("tests/qalc"), &mut files);
    files.push(
        root.join("src/qalc/admission_pins.qfx")
            .to_string_lossy()
            .into_owned(),
    );
    files.sort();

    let mut args = vec!["qalc".to_string(), "fixtures".to_string()];
    args.extend(files);
    let output = Command::new(env!("CARGO_BIN_EXE_blam"))
        .args(&args)
        .current_dir(root)
        .output()
        .expect("run complete qfx regeneration");
    assert!(
        output.status.success(),
        "{}",
        String::from_utf8_lossy(&output.stderr)
    );
}

#[test]
fn census_is_thread_checkpoint_and_matrix_invariant() {
    let dir = std::env::temp_dir().join(format!("blam-qalc-census-{}", std::process::id()));
    let _ = std::fs::remove_dir_all(&dir);
    std::fs::create_dir_all(&dir).expect("temp dir");
    let mono_matrix = dir.join("mono-matrix.txt");
    let parallel_matrix = dir.join("parallel-matrix.txt");
    let checkpoint_matrix = dir.join("checkpoint-matrix.txt");
    let resumed_matrix = dir.join("resumed-matrix.txt");
    let checkpoint = dir.join("census.ckpt");

    let shared = [
        "qalc",
        "census",
        "4",
        "12",
        "--steps",
        "64",
        "--support",
        "256",
    ];
    let mut args = shared.to_vec();
    args.extend(["--threads", "1", "--matrix", mono_matrix.to_str().unwrap()]);
    let mono = success(&args);
    assert!(mono.contains("## Totals (30 programs)"), "{mono}");
    assert!(mono.contains("selection structural-gate2 0"), "{mono}");
    assert!(mono.contains("Tr M"), "{mono}");

    let mut args = shared.to_vec();
    args.extend([
        "--threads",
        "2",
        "--matrix",
        parallel_matrix.to_str().unwrap(),
    ]);
    let parallel = success(&args);
    assert_eq!(parallel, mono);
    assert_eq!(
        std::fs::read_to_string(&parallel_matrix).unwrap(),
        std::fs::read_to_string(&mono_matrix).unwrap()
    );

    let mut args = shared.to_vec();
    args.extend([
        "--threads",
        "2",
        "--checkpoint",
        checkpoint.to_str().unwrap(),
        "--groups",
        "3",
        "--matrix",
        checkpoint_matrix.to_str().unwrap(),
    ]);
    let checkpointed = success(&args);
    assert_eq!(checkpointed, mono);
    assert_eq!(
        std::fs::read_to_string(&checkpoint_matrix).unwrap(),
        std::fs::read_to_string(&mono_matrix).unwrap()
    );

    let mut args = shared.to_vec();
    args.extend([
        "--threads",
        "1",
        "--checkpoint",
        checkpoint.to_str().unwrap(),
        "--groups",
        "3",
        "--matrix",
        resumed_matrix.to_str().unwrap(),
    ]);
    let resumed = success(&args);
    assert_eq!(resumed, mono);
    assert_eq!(
        std::fs::read_to_string(&resumed_matrix).unwrap(),
        std::fs::read_to_string(&mono_matrix).unwrap()
    );

    let _ = std::fs::remove_dir_all(&dir);
}
