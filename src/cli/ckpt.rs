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
//! Record format (v4):
//! ```text
//! blamckpt v4 <driver config ...> target=N groups=K
//! G <n> <gi> <secs as f64 bits>
//! <record body lines, driver-owned tags — anything but G/E>
//! E <n> <gi>
//! ```
//! Accumulator merging must be order-independent for chunked runs to
//! reproduce monolithic output; each driver owns that proof (the census
//! Stats witness tie-break, the exact Dw ring in `q census`).
//!
//! A torn tail is TRUNCATED, not merely skipped. Appending past the
//! poison bytes leaves them in the middle of the file, where the next
//! resume's parse stops again — so every group computed after the tear
//! is invisible to every later resume. The results stay correct and the
//! recomputation is unbounded, which is the worst shape a bug can take
//! in a kill-safe format. `open` therefore `set_len`s the file back to
//! the end of the last complete record before appending to it.
//!
//! The v3→v4 bump widened what the config string must pin: not just the
//! ladder budgets but the record format version, the engine tunables
//! that change verdicts (work multiplier, probe fuel), and the CONTENT
//! of any seeded memo file — a resume onto records computed with
//! different cross-size facts would merge two different measurements.

use crate::args::R;
use std::collections::HashMap;
use std::io::{BufRead, Write};

/// Format tag on the header line. Bump when a change makes existing
/// records unmergeable with new ones.
const VERSION: &str = "blamckpt v4";

/// A driver's per-group accumulator: how it serializes to and parses
/// from checkpoint body lines.
pub trait CkptRecord: Default {
    /// Append the record body: full lines (with trailing newlines), each
    /// starting with a driver-owned tag. `G`/`E` are reserved.
    fn write_body(&self, out: &mut String);
    /// Parse one body line (tag included). `None` = malformed (tear).
    fn parse_line(&mut self, line: &str) -> Option<()>;
}

/// Completed group records by (size, group index), each with the wall
/// seconds it cost — replayed from the file so a resume reports the same
/// totals the uninterrupted run would have.
type Restored<Rec> = HashMap<(u32, usize), (Rec, f64)>;

pub struct Ckpt<Rec> {
    file: std::fs::File,
    /// The path the handle came from, kept so a failed append can name
    /// the file the sweep was promised — the handle itself cannot.
    path: String,
    /// Task-split target pinned by the header.
    pub target: usize,
    pub groups: usize,
    restored: Restored<Rec>,
}

/// What an existing checkpoint file yielded: the pinned split, the
/// replayed records, and the byte offset just past the last COMPLETE
/// record (everything after it is a torn tail).
struct Existing<Rec> {
    target: usize,
    groups: usize,
    restored: Restored<Rec>,
    valid_len: u64,
}

impl<Rec: CkptRecord> Ckpt<Rec> {
    /// Open or create. On an existing file the config part of the header
    /// must match exactly; target/groups are adopted from the file. On a
    /// fresh file, `groups` defaults to 64 when the flag is 0 and
    /// `target` is `threads × 16 × groups` (every sequential group still
    /// load-balances internally across the pool). "Threads" is
    /// `available_parallelism`, which is what rayon sizes its default
    /// pool from — same number, without the library depending on rayon.
    ///
    /// A file that is not a checkpoint at all, or one written under
    /// different flags, is a user-facing refusal (exit 2), never a panic:
    /// pointing `--checkpoint` at the wrong path is a typo, not a bug.
    pub fn open(cmd: &'static str, path: &str, config: &str, groups_flag: usize) -> R<Ckpt<Rec>> {
        // Streamed, not slurped: a long sweep's checkpoint carries every
        // memo and frontier record it has produced, which for a 4..41 run
        // is far larger than the accumulators it rebuilds into.
        let existing = match std::fs::File::open(path) {
            Ok(f) => Self::read_existing(path, f, config, groups_flag)?,
            Err(_) => None,
        };
        let fresh = existing.is_none();
        let (target, groups, restored, valid_len) = match existing {
            Some(e) => (e.target, e.groups, e.restored, Some(e.valid_len)),
            None => {
                let groups = if groups_flag == 0 { 64 } else { groups_flag };
                let threads = std::thread::available_parallelism()
                    .map(|n| n.get())
                    .unwrap_or(16);
                // Every sequential group still load-balances internally
                // across the pool, so the split stays finer than the groups.
                (threads * 16 * groups, groups, HashMap::new(), None)
            }
        };
        let mut file = crate::out::append(cmd, "--checkpoint", path)?;
        if fresh {
            writeln!(file, "{VERSION} {config} target={target} groups={groups}")
                .and_then(|()| file.flush())
                .map_err(|e| format!("blam: cannot write the checkpoint header to {path}: {e}"))?;
        } else {
            // Cut the torn tail off the FILE, not just off this run's
            // view of it. Appending past poison bytes would hide every
            // later group from every later resume.
            if let Some(len) = valid_len {
                if len < std::fs::metadata(path).map(|m| m.len()).unwrap_or(len) {
                    file.set_len(len)
                        .map_err(|e| format!("blam: cannot trim the torn tail of {path}: {e}"))?;
                }
            }
            if !restored.is_empty() {
                eprintln!("    checkpoint: restored {} group records", restored.len());
            }
        }
        Ok(Ckpt {
            file,
            path: path.to_string(),
            target,
            groups,
            restored,
        })
    }

    /// Header check plus record replay for an existing file. `None` when
    /// the file carries no header line at all — a kill between `create`
    /// and the header's flush leaves exactly that, and an empty file has
    /// nothing to resume from, so it is treated as fresh.
    fn read_existing(
        path: &str,
        f: std::fs::File,
        config: &str,
        groups_flag: usize,
    ) -> R<Option<Existing<Rec>>> {
        let mut lines = std::io::BufReader::new(f).lines().map_while(Result::ok);
        let Some(head) = lines.next() else {
            return Ok(None);
        };
        let not_ours = || {
            format!(
                "blam: {path} is not a blam checkpoint (expected a `{VERSION}` header)\n\
                 file:     {head}\n\
                 Point --checkpoint at a fresh path, or remove that file."
            )
        };
        let get = |k: &str| -> R<usize> {
            head.split_whitespace()
                .find_map(|t| t.strip_prefix(&format!("{k}=")))
                .and_then(|v| v.parse().ok())
                .ok_or_else(not_ours)
        };
        if !head.starts_with(VERSION) {
            return Err(not_ours());
        }
        let target = get("target")?;
        let groups = get("groups")?;
        let expect = format!("{VERSION} {config} target={target} groups={groups}");
        if head != expect {
            // Loud and specific: the header is the only thing standing
            // between a resumed run and two different measurements
            // merged into one table row.
            return Err(format!(
                "blam: checkpoint config mismatch — this file was written by a different run.\n\
                 file:     {head}\n\
                 this run: {expect}\n\
                 Rerun with the flags it was created under, or point \
                 --checkpoint at a fresh path."
            ));
        }
        if groups_flag != 0 && groups_flag != groups {
            eprintln!("    checkpoint: --groups {groups_flag} ignored, file pins {groups}");
        }
        // The header line and its newline are the first valid bytes.
        let (restored, valid_len) = Self::parse_records(lines, head.len() as u64 + 1);
        Ok(Some(Existing {
            target,
            groups,
            restored,
            valid_len,
        }))
    }

    /// Replay records, returning them plus the byte offset just past the
    /// last complete one. `start` is the offset the records begin at.
    fn parse_records(lines: impl Iterator<Item = String>, start: u64) -> (Restored<Rec>, u64) {
        let mut done = HashMap::new();
        let mut pending: Option<((u32, usize), Rec, f64)> = None;
        let mut torn = false;
        let mut pos = start;
        let mut valid = start;
        for line in lines {
            let ok = (|| -> Option<()> {
                let mut it = line.split_whitespace();
                match it.next()? {
                    "G" => {
                        let n: u32 = it.next()?.parse().ok()?;
                        let gi: usize = it.next()?.parse().ok()?;
                        let secs = f64::from_bits(it.next()?.parse().ok()?);
                        pending = Some(((n, gi), Rec::default(), secs));
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
                    _ => pending.as_mut()?.1.parse_line(&line),
                }
            })();
            if ok.is_none() {
                torn = true;
                break;
            }
            // `lines()` strips exactly one '\n'; a record only ever
            // commits through `append`, which always writes one.
            pos += line.len() as u64 + 1;
            if pending.is_none() {
                valid = pos;
            }
        }
        if torn || pending.is_some() {
            eprintln!("    checkpoint: discarding torn tail, resuming after last complete group");
        }
        (done, valid)
    }

    pub fn take_restored(&mut self, n: u32, gi: usize) -> Option<(Rec, f64)> {
        self.restored.remove(&(n, gi))
    }

    /// Commit one group record. A disk that fills (or a handle that goes
    /// bad) mid-sweep is a refusal naming the file, the same shape the
    /// header write above takes — never a panic on a worker with hours of
    /// census in hand.
    pub fn append(&mut self, n: u32, gi: usize, secs: f64, r: &Rec) -> R<()> {
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
        self.file
            .write_all(out.as_bytes())
            .and_then(|()| self.file.flush())
            .map_err(|e| {
                format!(
                    "blam: cannot write the checkpoint record to {}: {e}",
                    self.path
                )
            })
    }
}

/// First 16 hex digits of the SHA-256 of a file's contents — the
/// checkpoint header's fingerprint for an input file whose *content*,
/// not its path, decides what the records mean (the census's `--memo-in`
/// facts change fates at App-rooted compositions). Unreadable file ⇒
/// `"unreadable"`, which mismatches every real digest and so refuses the
/// resume rather than silently resuming without the facts.
///
/// Sixty-four bits of a collision-resistant digest, not a fast hash:
/// this is a correctness fence, and the cost is one read per run.
pub fn sha256_16(path: &str) -> String {
    let Ok(bytes) = std::fs::read(path) else {
        return "unreadable".to_string();
    };
    let d = sha256(&bytes);
    let mut s = String::with_capacity(16);
    for b in &d[..8] {
        use std::fmt::Write as _;
        write!(s, "{b:02x}").unwrap();
    }
    s
}

/// Full 64-hex-digit SHA-256 of a byte string — the digest the skeleton
/// residual provenance rows carry (`docs/quantum/escalation.md`: residual
/// strings are not tracked, so the digest is the residual's identity).
pub fn sha256_hex(bytes: &[u8]) -> String {
    let d = sha256(bytes);
    let mut s = String::with_capacity(64);
    for b in &d {
        use std::fmt::Write as _;
        write!(s, "{b:02x}").unwrap();
    }
    s
}

/// SHA-256 (FIPS 180-4), the whole message in memory. Self-contained so
/// the checkpoint fence costs no dependency; the standard "abc" and
/// empty-string vectors are asserted in the tests below.
fn sha256(msg: &[u8]) -> [u8; 32] {
    const K: [u32; 64] = [
        0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5, 0x3956c25b, 0x59f111f1, 0x923f82a4,
        0xab1c5ed5, 0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3, 0x72be5d74, 0x80deb1fe,
        0x9bdc06a7, 0xc19bf174, 0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc, 0x2de92c6f,
        0x4a7484aa, 0x5cb0a9dc, 0x76f988da, 0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7,
        0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967, 0x27b70a85, 0x2e1b2138, 0x4d2c6dfc,
        0x53380d13, 0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85, 0xa2bfe8a1, 0xa81a664b,
        0xc24b8b70, 0xc76c51a3, 0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070, 0x19a4c116,
        0x1e376c08, 0x2748774c, 0x34b0bcb5, 0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
        0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208, 0x90befffa, 0xa4506ceb, 0xbef9a3f7,
        0xc67178f2,
    ];
    let mut h: [u32; 8] = [
        0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a, 0x510e527f, 0x9b05688c, 0x1f83d9ab,
        0x5be0cd19,
    ];
    // Message + 0x80 + zero padding to 56 mod 64 + 64-bit big-endian length.
    let mut m = msg.to_vec();
    let bits = (msg.len() as u64).wrapping_mul(8);
    m.push(0x80);
    while m.len() % 64 != 56 {
        m.push(0);
    }
    m.extend_from_slice(&bits.to_be_bytes());
    let mut w = [0u32; 64];
    for chunk in m.chunks_exact(64) {
        for (i, word) in chunk.chunks_exact(4).enumerate() {
            w[i] = u32::from_be_bytes([word[0], word[1], word[2], word[3]]);
        }
        for i in 16..64 {
            let s0 = w[i - 15].rotate_right(7) ^ w[i - 15].rotate_right(18) ^ (w[i - 15] >> 3);
            let s1 = w[i - 2].rotate_right(17) ^ w[i - 2].rotate_right(19) ^ (w[i - 2] >> 10);
            w[i] = w[i - 16]
                .wrapping_add(s0)
                .wrapping_add(w[i - 7])
                .wrapping_add(s1);
        }
        let [mut a, mut b, mut c, mut d, mut e, mut f, mut g, mut hh] = h;
        for i in 0..64 {
            let s1 = e.rotate_right(6) ^ e.rotate_right(11) ^ e.rotate_right(25);
            let ch = (e & f) ^ (!e & g);
            let t1 = hh
                .wrapping_add(s1)
                .wrapping_add(ch)
                .wrapping_add(K[i])
                .wrapping_add(w[i]);
            let s0 = a.rotate_right(2) ^ a.rotate_right(13) ^ a.rotate_right(22);
            let maj = (a & b) ^ (a & c) ^ (b & c);
            let t2 = s0.wrapping_add(maj);
            hh = g;
            g = f;
            f = e;
            e = d.wrapping_add(t1);
            d = c;
            c = b;
            b = a;
            a = t1.wrapping_add(t2);
        }
        for (dst, src) in h.iter_mut().zip([a, b, c, d, e, f, g, hh]) {
            *dst = dst.wrapping_add(src);
        }
    }
    let mut out = [0u8; 32];
    for (i, v) in h.iter().enumerate() {
        out[i * 4..i * 4 + 4].copy_from_slice(&v.to_be_bytes());
    }
    out
}

#[cfg(test)]
mod tests {
    use super::*;

    fn hex(d: &[u8]) -> String {
        d.iter().map(|b| format!("{b:02x}")).collect()
    }

    #[test]
    fn sha256_matches_the_published_vectors() {
        assert_eq!(
            hex(&sha256(b"")),
            "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
        );
        assert_eq!(
            hex(&sha256(b"abc")),
            "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad"
        );
        // Two blocks, exercising the multi-chunk path and the length
        // encoding past the one-block padding boundary.
        assert_eq!(
            hex(&sha256(
                b"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq"
            )),
            "248d6a61d20638b8e5c026930c3e6039a33ce45964ff2167f6ecedd419db06c1"
        );
        // Exactly at the 56-byte boundary: padding must add a whole block.
        assert_eq!(
            hex(&sha256(&[b'a'; 56])),
            "b35439a4ac6f0948b6d6f9e3c6af0f5f590ce20f1bde7090ef7970686ec6738a"
        );
    }

    #[test]
    fn fingerprint_is_content_addressed_and_fails_loud() {
        let dir = std::env::temp_dir().join(format!("blam-ckpt-{}", std::process::id()));
        std::fs::create_dir_all(&dir).unwrap();
        let a = dir.join("a.txt");
        let b = dir.join("b.txt");
        std::fs::write(&a, "1 4 D\n").unwrap();
        std::fs::write(&b, "1 4 D\n").unwrap();
        let fa = sha256_16(a.to_str().unwrap());
        assert_eq!(fa.len(), 16);
        assert_eq!(fa, sha256_16(b.to_str().unwrap()), "same content, same fp");
        std::fs::write(&b, "1 4 H 4 0\n").unwrap();
        assert_ne!(fa, sha256_16(b.to_str().unwrap()), "content decides");
        assert_eq!(
            sha256_16(dir.join("nope.txt").to_str().unwrap()),
            "unreadable"
        );
        let _ = std::fs::remove_dir_all(&dir);
    }

    /// The smallest possible record: enough to drive `append`.
    #[derive(Default)]
    struct Unit;

    impl CkptRecord for Unit {
        fn write_body(&self, out: &mut String) {
            out.push_str("U\n");
        }
        fn parse_line(&mut self, _line: &str) -> Option<()> {
            Some(())
        }
    }

    /// A group record that cannot reach the disk is a user-facing
    /// refusal naming the checkpoint, not an `unwrap` panic on a worker
    /// holding a whole sweep's accumulator.
    #[test]
    fn a_failed_append_names_the_checkpoint_and_does_not_panic() {
        let dir = std::env::temp_dir().join(format!("blam-ckpt-ro-{}", std::process::id()));
        std::fs::create_dir_all(&dir).unwrap();
        let p = dir.join("ck.txt");
        std::fs::write(&p, "").unwrap();
        // A read-only handle stands in for the full disk / vanished
        // mount: `write_all` fails, and the message has to come back.
        let mut c: Ckpt<Unit> = Ckpt {
            file: std::fs::File::open(&p).unwrap(),
            path: p.to_string_lossy().into_owned(),
            target: 1,
            groups: 1,
            restored: HashMap::new(),
        };
        let e = c.append(4, 0, 0.0, &Unit).unwrap_err();
        assert!(e.contains("cannot write the checkpoint record"), "{e}");
        assert!(e.contains("ck.txt"), "{e}");
        let _ = std::fs::remove_dir_all(&dir);
    }
}
