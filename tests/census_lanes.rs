//! The census's two-lane size pipeline, end to end through the binary.
//!
//! Without `--checkpoint` the census overlaps even and odd sizes (each
//! size needs only size n−2's λ-wrap memo and the no-whnf facts of sizes
//! ≤ n−6); with one it runs sizes strictly in order. Both must print the
//! same table, and the pipeline must finish whichever lane runs out of
//! sizes first — a lane that stopped its sibling on a normal exit once
//! hung the reporter waiting for a size nobody would compute. So every
//! run here is under a watchdog, and the ranges cover both parities of
//! endpoint, a two-size range, and a single thread.
#![cfg(feature = "cli")]

use std::process::{Command, Stdio};
use std::time::{Duration, Instant};

/// Census stdout reduced to the measurement: the two timing columns and
/// the `# redloop:` process-telemetry line removed.
fn normalize(out: &str) -> String {
    let mut s = String::new();
    for line in out.lines() {
        if line.starts_with("# redloop:") {
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

/// Run `blam census ARGS`, failing the test (and killing the child)
/// rather than hanging if it does not finish within `limit`.
fn census(args: &[&str], limit: Duration) -> String {
    let mut child = Command::new(env!("CARGO_BIN_EXE_blam"))
        .arg("census")
        .args(args)
        .stdout(Stdio::piped())
        .stderr(Stdio::null())
        .spawn()
        .expect("run blam census");
    let t0 = Instant::now();
    loop {
        if let Some(status) = child.try_wait().expect("poll blam census") {
            assert!(status.success(), "census {args:?} failed");
            break;
        }
        if t0.elapsed() > limit {
            let _ = child.kill();
            panic!("census {args:?} did not finish within {limit:?}");
        }
        std::thread::sleep(Duration::from_millis(20));
    }
    let mut out = String::new();
    std::io::Read::read_to_string(&mut child.stdout.take().unwrap(), &mut out)
        .expect("read census stdout");
    normalize(&out)
}

#[test]
fn pipelined_sizes_match_the_sequential_sweep() {
    let dir = std::env::temp_dir().join(format!("blam-lanes-{}", std::process::id()));
    std::fs::create_dir_all(&dir).expect("temp dir");
    let limit = Duration::from_secs(60);
    for (i, range) in [
        ["4", "26"],
        ["5", "26"],
        ["4", "27"],
        ["16", "26"],
        ["25", "26"],
    ]
    .iter()
    .enumerate()
    {
        let ck = dir.join(format!("ck{i}"));
        let ck = ck.to_str().expect("utf-8 temp path");
        let sequential = census(&[range[0], range[1], "--checkpoint", ck], limit);
        for threads in ["0", "1"] {
            let lanes = census(&[range[0], range[1], "--threads", threads], limit);
            // The checkpoint header line is the one legitimate difference.
            let strip = |s: &str| {
                s.lines()
                    .filter(|l| !l.starts_with("# checkpoint"))
                    .collect::<Vec<_>>()
                    .join("\n")
            };
            assert_eq!(
                strip(&lanes),
                strip(&sequential),
                "census {range:?} --threads {threads}"
            );
        }
    }
    let _ = std::fs::remove_dir_all(&dir);
}
