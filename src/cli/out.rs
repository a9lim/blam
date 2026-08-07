//! User-named output files, opened at STARTUP.
//!
//! Every path a flag names is a promise the run will keep, and the only
//! honest time to find out it cannot is before the work happens: a bad
//! `--out` used to panic after a whole sweep, and `--table` after a whole
//! Solomonoff pass. So each helper here creates, truncates, or opens for
//! append at argument-handling time and hands back the live handle, which
//! the driver writes through at the end.
//!
//! Truncation is part of the contract, not a side effect. A run's
//! declared output file is THAT run's output: a zero-unknown census must
//! leave an empty dump, not last week's frontier, because the consumers
//! downstream (`scripts/census-regen.sh`'s subtraction identity, `q
//! skeleton`'s tallies) read the file as a measurement.

use crate::args::{hint, R};
use blam::blc::wire::enc_to_string;
use std::fs::{File, OpenOptions};
use std::io::Write;

fn fail(cmd: &str, flag: &str, path: &str, e: std::io::Error) -> String {
    format!("blam {cmd}: cannot open {flag} {path}: {e}\n{}", hint(cmd))
}

/// Create-or-truncate a full-run product. The handle is the proof the
/// path is writable; the content arrives later.
pub fn create(cmd: &str, flag: &str, path: &str) -> R<File> {
    File::create(path).map_err(|e| fail(cmd, flag, path, e))
}

/// Open an append-mode output (a file whose contract is accumulation
/// across runs, like `--memo-out`) at startup, creating it if absent.
pub fn append(cmd: &str, flag: &str, path: &str) -> R<File> {
    OpenOptions::new()
        .create(true)
        .append(true)
        .open(path)
        .map_err(|e| fail(cmd, flag, path, e))
}

/// A directory the run will write into.
pub fn create_dir(cmd: &str, flag: &str, path: &str) -> R<()> {
    std::fs::create_dir_all(path).map_err(|e| fail(cmd, flag, path, e))
}

/// Write a whole product to a handle opened earlier.
pub fn write_all(cmd: &str, path: &str, f: &mut File, body: &[u8]) -> R<()> {
    f.write_all(body)
        .map_err(|e| format!("blam {cmd}: cannot write {path}: {e}"))
}

/// The `--dump-unknowns` sink, shared by both censuses.
///
/// Created and truncated when the flag is parsed, appended to as sizes
/// complete. Truncate-at-first-write was the old shape and it had two
/// holes: a run with no unknowns at all never wrote, so the stale file
/// survived, and the quantum census (which never had the guard) DOUBLED
/// its file on every rerun — a mixed-size frontier that then fed `q
/// skeleton` inflated tallies.
pub struct Dump {
    file: File,
    path: String,
    cmd: &'static str,
}

impl Dump {
    /// Create-and-truncate now; the file exists and is empty from here
    /// on, whatever the run finds.
    pub fn create(cmd: &'static str, path: &str) -> R<Dump> {
        Ok(Dump {
            file: create(cmd, "--dump-unknowns", path)?,
            path: path.to_string(),
            cmd,
        })
    }

    /// Append one size's (already sorted) unknown frontier.
    pub fn append(&mut self, unknowns: &[(u64, u8)]) -> R<()> {
        let mut out = String::new();
        for (enc, len) in unknowns {
            out.push_str(&enc_to_string(*enc, *len));
            out.push('\n');
        }
        write_all(self.cmd, &self.path, &mut self.file, out.as_bytes())
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    fn tmp(tag: &str) -> std::path::PathBuf {
        let d = std::env::temp_dir().join(format!("blam-out-{tag}-{}", std::process::id()));
        let _ = std::fs::remove_dir_all(&d);
        std::fs::create_dir_all(&d).expect("temp dir");
        d
    }

    /// The whole point: the file a run declares is that run's output, so
    /// a second run with nothing to say leaves nothing behind — never the
    /// first run's frontier read as if it were the second's.
    #[test]
    fn a_dump_is_this_runs_frontier_not_an_accumulation() {
        let dir = tmp("dump");
        let p = dir.join("unknowns.txt");
        let ps = p.to_str().unwrap();

        let mut d = Dump::create("census", ps).expect("create");
        d.append(&[(0b0010, 4), (0b010010, 6)]).expect("append");
        d.append(&[(0b00100010, 8)]).expect("append");
        drop(d);
        let first = std::fs::read_to_string(&p).expect("read");
        assert_eq!(first.lines().count(), 3);

        // Same paths, same lines: a rerun replaces, never doubles.
        let mut d = Dump::create("census", ps).expect("recreate");
        d.append(&[(0b0010, 4), (0b010010, 6)]).expect("append");
        d.append(&[(0b00100010, 8)]).expect("append");
        drop(d);
        assert_eq!(std::fs::read_to_string(&p).expect("read"), first);

        // And a run that finds nothing leaves an EMPTY file, which is a
        // different claim from "the last run's file is still here".
        let d = Dump::create("census", ps).expect("recreate");
        drop(d);
        assert_eq!(std::fs::read_to_string(&p).expect("read"), "");

        let _ = std::fs::remove_dir_all(&dir);
    }

    #[test]
    fn an_uncreatable_path_fails_at_open_time_naming_the_flag() {
        let dir = tmp("bad");
        // A directory that does not exist: the classic mistyped --out.
        let p = dir.join("no-such-dir").join("x.txt");
        let e = create("q census", "--out", p.to_str().unwrap()).unwrap_err();
        assert!(e.contains("--out"), "{e}");
        assert!(e.contains("cannot open"), "{e}");
        let e = match Dump::create("census", p.to_str().unwrap()) {
            Err(e) => e,
            Ok(_) => panic!("an uncreatable dump path must fail"),
        };
        assert!(e.contains("--dump-unknowns"), "{e}");
        let e = append("census", "--memo-out", p.to_str().unwrap()).unwrap_err();
        assert!(e.contains("--memo-out"), "{e}");
        let _ = std::fs::remove_dir_all(&dir);
    }
}
