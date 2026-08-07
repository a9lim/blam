//! Checkpoint contract, end to end through the real `blam` binary.
//!
//! The promise `--checkpoint` makes is exact: a run that dies partway
//! and is restarted must produce the SAME table a single uninterrupted
//! run would have. That rests on two things the unit tests cannot reach
//! — the group framing surviving a real kill (a torn tail is discarded
//! down to the last `E` marker) and `Stats::merge` being order- and
//! partition-independent — so both are checked here against a live
//! process, not a simulation.
//!
//! The second test is the fence: a checkpoint whose config differs from
//! the invoking run must be REFUSED, loudly. Silently merging two
//! measurements into one row is the failure mode this file exists to
//! make impossible.
#![cfg(feature = "cli")]

use std::path::{Path, PathBuf};
use std::process::{Command, Stdio};

/// Range chosen to cover the whole ladder — n=24 is where escalation,
/// the redloop certificate, and transition-bound rung-2 attempts all
/// first appear — while staying well under a second per run.
const RANGE: [&str; 2] = ["16", "26"];

fn blam() -> Command {
    Command::new(env!("CARGO_BIN_EXE_blam"))
}

fn tmpdir(tag: &str) -> PathBuf {
    let d = std::env::temp_dir().join(format!("blam-ckpt-{tag}-{}", std::process::id()));
    let _ = std::fs::remove_dir_all(&d);
    std::fs::create_dir_all(&d).expect("create temp dir");
    d
}

/// Census stdout with everything run-dependent removed: the two timing
/// columns of each table row, and the `redloop:` telemetry line (process
/// atomics — a resumed run only re-runs the groups it lost, so it
/// legitimately counts fewer fires). What survives is the measurement.
fn normalize(out: &str) -> String {
    let mut s = String::new();
    for line in out.lines() {
        if line.starts_with("redloop:") {
            continue;
        }
        let f: Vec<&str> = line.split_whitespace().collect();
        if f.len() >= 10 && f[0].parse::<u32>().is_ok() {
            s.push_str(&f[..8].join(" "));
        } else {
            s.push_str(line);
        }
        s.push('\n');
    }
    s
}

fn census(args: &[&str]) -> (String, String, bool) {
    let out = blam()
        .arg("census")
        .args(RANGE)
        .args(args)
        .output()
        .expect("run blam census");
    (
        String::from_utf8_lossy(&out.stdout).into_owned(),
        String::from_utf8_lossy(&out.stderr).into_owned(),
        out.status.success(),
    )
}

/// Cut the file down to `frac` of its length — byte-for-byte the state a
/// SIGKILL mid-append leaves behind, but at a chosen point instead of a
/// raced one.
fn truncate_to(path: &Path, frac: f64) {
    let len = std::fs::metadata(path).expect("stat checkpoint").len();
    let keep = (len as f64 * frac) as u64;
    let f = std::fs::OpenOptions::new()
        .write(true)
        .open(path)
        .expect("open checkpoint for truncation");
    f.set_len(keep).expect("truncate checkpoint");
    assert!(keep < len, "truncation must actually remove bytes");
}

#[test]
fn resume_reproduces_the_monolithic_table() {
    let dir = tmpdir("resume");
    let ck = dir.join("census.ckpt");
    let ckp = ck.to_str().unwrap();

    let (mono, _, ok) = census(&[]);
    assert!(ok, "monolithic run failed");
    let want = normalize(&mono);

    // Leg 1 — a REAL kill. Spawn, wait until the file shows a committed
    // group (so the kill lands mid-sweep rather than before the first
    // write), SIGKILL, resume. Whatever the kill actually caught —
    // nothing, some groups, or a half-written one — the resumed run must
    // land on the same table, so the poll is a way to make the test
    // INTERESTING, never a thing it depends on.
    let mut child = blam()
        .arg("census")
        .args(RANGE)
        .args(["--checkpoint", ckp, "--groups", "8"])
        .stdout(Stdio::null())
        .stderr(Stdio::null())
        .spawn()
        .expect("spawn checkpointed census");
    for _ in 0..500 {
        let committed = std::fs::read_to_string(&ck)
            .map(|s| s.lines().any(|l| l.starts_with("E ")))
            .unwrap_or(false);
        let exited = child.try_wait().expect("poll child").is_some();
        if committed || exited {
            break;
        }
        std::thread::sleep(std::time::Duration::from_millis(2));
    }
    let _ = child.kill(); // SIGKILL on unix — no unwinding, no flush
    let _ = child.wait();

    let (killed_resume, err, ok) = census(&["--checkpoint", ckp, "--groups", "8"]);
    assert!(ok, "resume after kill failed: {err}");
    assert_eq!(normalize(&killed_resume), want, "resume after SIGKILL");

    // Leg 2 — a torn tail, deterministically. Run the checkpointed
    // census to completion, cut the file mid-record, and resume: the
    // partial group must be discarded and recomputed, not half-counted.
    let ck2 = dir.join("torn.ckpt");
    let ckp2 = ck2.to_str().unwrap();
    let (_, _, ok) = census(&["--checkpoint", ckp2, "--groups", "8"]);
    assert!(ok, "checkpointed run failed");
    truncate_to(&ck2, 0.55);

    let (torn_resume, err, ok) = census(&["--checkpoint", ckp2, "--groups", "8"]);
    assert!(ok, "resume after truncation failed: {err}");
    assert!(
        err.contains("discarding torn tail"),
        "the tear should be announced: {err}"
    );
    assert_eq!(normalize(&torn_resume), want, "resume after a torn tail");

    // And the completed file resumes to the same place with no work.
    let (again, err, ok) = census(&["--checkpoint", ckp2, "--groups", "8"]);
    assert!(ok, "second resume failed: {err}");
    assert_eq!(normalize(&again), want, "idempotent resume");

    let _ = std::fs::remove_dir_all(&dir);
}

/// Partition invariance, the property every other guarantee here rests
/// on. The census schedules a size in two phases per checkpoint group —
/// a range-split parallel generation pass, then a dynamic one-term queue
/// over the survivors — so three things move the partition: the thread
/// count (it sets the task-split target and the number of phase-B
/// consumers), the group count (it slices the task list), and which
/// terms happen to land together. None of them may move a measurement.
#[test]
fn thread_and_group_partitions_all_agree() {
    let dir = tmpdir("partition");
    let (mono, _, ok) = census(&[]);
    assert!(ok, "monolithic run failed");
    let want = normalize(&mono);

    for threads in ["1", "2", "18"] {
        for groups in ["1", "7", "64"] {
            let ck = dir.join(format!("t{threads}g{groups}.ckpt"));
            let (out, err, ok) = census(&[
                "--threads",
                threads,
                "--checkpoint",
                ck.to_str().unwrap(),
                "--groups",
                groups,
            ]);
            assert!(ok, "threads={threads} groups={groups} failed: {err}");
            assert_eq!(normalize(&out), want, "threads={threads} groups={groups}");
        }
    }
    // And without a checkpoint, where the split target is threads × 64.
    for threads in ["1", "2", "18"] {
        let (out, err, ok) = census(&["--threads", threads]);
        assert!(ok, "unchecked threads={threads} failed: {err}");
        assert_eq!(normalize(&out), want, "unchecked threads={threads}");
    }
    let _ = std::fs::remove_dir_all(&dir);
}

#[test]
fn config_mismatch_is_refused_loudly() {
    let dir = tmpdir("mismatch");
    let ck = dir.join("census.ckpt");
    let ckp = ck.to_str().unwrap();
    let (_, _, ok) = census(&["--checkpoint", ckp, "--groups", "4"]);
    assert!(ok, "seed run failed");

    // Every field the header pins must be a fence. A ladder budget, an
    // engine tunable that changes verdicts, and the identity of a seeded
    // memo file are three different ways to get different records.
    let memo = dir.join("seed.memo");
    std::fs::write(&memo, "D 1 4\n").expect("write memo seed");
    for flags in [
        vec!["--budget1", "128"],
        vec!["--rescue-trans-mult", "64"],
        vec!["--work-mult", "2"],
        vec!["--probe-fuel", "8192"],
        vec!["--no-oracle"],
        vec!["--memo-in", memo.to_str().unwrap()],
    ] {
        let mut args = vec!["--checkpoint", ckp, "--groups", "4"];
        args.extend_from_slice(&flags);
        let (_, err, ok) = census(&args);
        assert!(!ok, "{flags:?} was accepted onto a foreign checkpoint");
        assert!(
            err.contains("checkpoint config mismatch"),
            "{flags:?}: refusal must name the reason, got: {err}"
        );
        assert!(
            err.contains("this run:"),
            "{flags:?}: refusal must show both configs, got: {err}"
        );
    }

    // The unchanged invocation still resumes.
    let (_, err, ok) = census(&["--checkpoint", ckp, "--groups", "4"]);
    assert!(ok, "matching config was refused: {err}");

    let _ = std::fs::remove_dir_all(&dir);
}
