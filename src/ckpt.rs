//! Group-level run checkpointing, shared by the sweep drivers.
//!
//! A sweep splits each size into K sequential groups of parallel tasks
//! and appends each group's full accumulator record to a text file as it
//! completes; rerunning the same command resumes after the last complete
//! group. The header pins the driver's config string plus the task-split
//! target and group count (the default split is thread-count dependent),
//! and resume refuses a mismatched config. Records are one buffered
//! write each, committed by an `E n gi` end marker, so a kill can only
//! leave a truncated *suffix*: the first malformed line ends the valid
//! prefix and everything from there is discarded and recomputed.
//!
//! Record format (v3):
//! ```text
//! blamckpt v3 <driver config ...> target=N groups=K
//! G <n> <gi> <secs as f64 bits>
//! <record body lines, driver-owned tags — anything but G/E>
//! E <n> <gi>
//! ```
//! Accumulator merging must be order-independent for chunked runs to
//! reproduce monolithic output; each driver owns that proof (the census
//! Stats witness tie-break, the exact Dw ring in qcensus).

use std::collections::HashMap;
use std::io::Write;

/// A driver's per-group accumulator: how it serializes to and parses
/// from checkpoint body lines.
pub trait CkptRecord: Default {
    /// Append the record body: full lines (with trailing newlines), each
    /// starting with a driver-owned tag. `G`/`E` are reserved.
    fn write_body(&self, out: &mut String);
    /// Parse one body line (tag included). `None` = malformed (tear).
    fn parse_line(&mut self, line: &str) -> Option<()>;
}

pub struct Ckpt<R> {
    file: std::fs::File,
    /// Task-split target pinned by the header.
    pub target: usize,
    pub groups: usize,
    restored: HashMap<(u32, usize), (R, f64)>,
}

impl<R: CkptRecord> Ckpt<R> {
    /// Open or create. On an existing file the config part of the header
    /// must match exactly; target/groups are adopted from the file. On a
    /// fresh file, `groups` defaults to 64 when the flag is 0 and
    /// `target` is `threads × 16 × groups` (every sequential group still
    /// load-balances internally across the pool).
    pub fn open(path: &str, config: &str, groups_flag: usize) -> Ckpt<R> {
        use std::io::Read;
        let existing = std::fs::File::open(path).ok().map(|mut f| {
            let mut s = String::new();
            f.read_to_string(&mut s).expect("read checkpoint");
            s
        });
        let (target, groups, restored) = match &existing {
            Some(text) => {
                let head = text.lines().next().unwrap_or_default();
                let get = |k: &str| -> usize {
                    head.split_whitespace()
                        .find_map(|t| t.strip_prefix(&format!("{k}=")))
                        .unwrap_or_else(|| panic!("checkpoint header missing {k}: {head}"))
                        .parse()
                        .expect("checkpoint header field")
                };
                let target = get("target");
                let groups = get("groups");
                let expect = format!("blamckpt v3 {config} target={target} groups={groups}");
                assert_eq!(
                    head, expect,
                    "checkpoint config mismatch: rerun with the flags it was created under"
                );
                if groups_flag != 0 && groups_flag != groups {
                    eprintln!("    checkpoint: --groups {groups_flag} ignored, file pins {groups}");
                }
                (target, groups, Self::parse_records(text))
            }
            None => {
                let groups = if groups_flag == 0 { 64 } else { groups_flag };
                let target = rayon::current_num_threads() * 16 * groups;
                (target, groups, HashMap::new())
            }
        };
        let fresh = existing.is_none();
        let mut file = std::fs::OpenOptions::new()
            .create(true)
            .append(true)
            .open(path)
            .expect("open checkpoint");
        if fresh {
            writeln!(file, "blamckpt v3 {config} target={target} groups={groups}").unwrap();
            file.flush().unwrap();
        } else if !restored.is_empty() {
            eprintln!("    checkpoint: restored {} group records", restored.len());
        }
        Ckpt {
            file,
            target,
            groups,
            restored,
        }
    }

    fn parse_records(text: &str) -> HashMap<(u32, usize), (R, f64)> {
        let mut done = HashMap::new();
        let mut pending: Option<((u32, usize), R, f64)> = None;
        let mut torn = false;
        for line in text.lines().skip(1) {
            let ok = (|| -> Option<()> {
                let mut it = line.split_whitespace();
                match it.next()? {
                    "G" => {
                        let n: u32 = it.next()?.parse().ok()?;
                        let gi: usize = it.next()?.parse().ok()?;
                        let secs = f64::from_bits(it.next()?.parse().ok()?);
                        pending = Some(((n, gi), R::default(), secs));
                        Some(())
                    }
                    "E" => {
                        let ((n, gi), r, secs) = pending.take()?;
                        let en: u32 = it.next()?.parse().ok()?;
                        let egi: usize = it.next()?.parse().ok()?;
                        if (n, gi) != (en, egi) {
                            return None;
                        }
                        done.insert((n, gi), (r, secs));
                        Some(())
                    }
                    _ => pending.as_mut()?.1.parse_line(line),
                }
            })();
            if ok.is_none() {
                torn = true;
                break;
            }
        }
        if torn || pending.is_some() {
            eprintln!("    checkpoint: discarding torn tail, resuming after last complete group");
        }
        done
    }

    pub fn take_restored(&mut self, n: u32, gi: usize) -> Option<(R, f64)> {
        self.restored.remove(&(n, gi))
    }

    pub fn append(&mut self, n: u32, gi: usize, secs: f64, r: &R) {
        let mut out = String::new();
        {
            use std::fmt::Write as _;
            writeln!(out, "G {n} {gi} {}", secs.to_bits()).unwrap();
        }
        r.write_body(&mut out);
        {
            use std::fmt::Write as _;
            writeln!(out, "E {n} {gi}").unwrap();
        }
        self.file.write_all(out.as_bytes()).unwrap();
        self.file.flush().unwrap();
    }
}
