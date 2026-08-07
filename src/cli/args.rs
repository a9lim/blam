//! Shared argument-parsing helpers for the single `blam` binary.
//!
//! One hand-rolled parser, no dependencies. Every subcommand owns a
//! `static USAGE` string, builds an [`Args`] cursor over its own slice of
//! `argv`, and drives a `match` loop with the helpers here. The loop is
//! deliberately explicit — no macro magic — but the *failure* behaviour is
//! centralised so it is uniform: an unknown flag, a missing value, a
//! malformed number, a duplicate flag, or a leftover positional all
//! produce a message naming the offender plus a pointer to
//! `blam <cmd> --help`, and never an index panic or an `unwrap`.

use blam::classical::escalation::EngineCfg;
use blam::{ParseError, Term};
use std::collections::HashSet;
use std::str::FromStr;

/// A user-facing failure. `main` prints it to stderr and exits 2.
pub type Fail = String;
pub type R<T> = Result<T, Fail>;

/// `--help` / `-h` anywhere in a subcommand's argv wins over everything
/// else, so help is reachable at every node even with a broken tail.
pub fn wants_help(argv: &[String]) -> bool {
    argv.iter().any(|a| a == "--help" || a == "-h")
}

/// The pointer every error message ends with.
pub fn hint(cmd: &str) -> String {
    format!("try `blam {cmd} --help`")
}

/// A cursor over one subcommand's arguments.
pub struct Args<'a> {
    cmd: &'static str,
    argv: &'a [String],
    i: usize,
    seen: HashSet<&'a str>,
    pos: Vec<&'a str>,
}

impl<'a> Args<'a> {
    pub fn new(cmd: &'static str, argv: &'a [String]) -> Args<'a> {
        Args {
            cmd,
            argv,
            i: 0,
            seen: HashSet::new(),
            pos: Vec::new(),
        }
    }

    /// The next raw token, or `None` at the end.
    pub fn next(&mut self) -> Option<&'a str> {
        let t = self.argv.get(self.i)?;
        self.i += 1;
        Some(t.as_str())
    }

    fn err(&self, msg: String) -> Fail {
        format!("blam {}: {msg}\n{}", self.cmd, hint(self.cmd))
    }

    /// An unrecognised flag or token.
    pub fn unknown(&self, tok: &str) -> Fail {
        self.err(format!("unknown argument `{tok}`"))
    }

    /// Was `flag` supplied at all? The duplicate-detection set, read —
    /// which is what lets a subcommand reject a flag that belongs to a
    /// mode it is not in, rather than silently ignoring it.
    pub fn given(&self, flag: &str) -> bool {
        self.seen.contains(flag)
    }

    /// Reject `flag` as inapplicable in the mode `other` selects. Both
    /// flags are named, because "unknown argument" would be a lie and
    /// silence would be worse.
    pub fn incompatible(&self, flag: &str, other: &str, why: &str) -> Fail {
        self.err(format!("`{flag}` does not apply with `{other}`: {why}"))
    }

    /// Record a valueless flag, rejecting a second occurrence.
    pub fn flag(&mut self, flag: &'a str) -> R<()> {
        if !self.seen.insert(flag) {
            return Err(self.err(format!("`{flag}` given more than once")));
        }
        Ok(())
    }

    /// The value belonging to `flag`: bounds-checked (a flag at the end
    /// of argv is a message, not a panic) and duplicate-checked.
    pub fn value(&mut self, flag: &'a str) -> R<&'a str> {
        self.flag(flag)?;
        match self.next() {
            Some(v) => Ok(v),
            None => Err(self.err(format!("`{flag}` needs a value"))),
        }
    }

    /// The value belonging to `flag`, parsed. The error names both the
    /// flag and the input that failed.
    pub fn num<T: FromStr>(&mut self, flag: &'a str) -> R<T>
    where
        T::Err: std::fmt::Display,
    {
        let v = self.value(flag)?;
        v.parse::<T>()
            .map_err(|e| self.err(format!("`{flag} {v}`: {e}")))
    }

    /// Collect a non-flag token as a positional argument.
    pub fn push(&mut self, tok: &'a str) {
        self.pos.push(tok);
    }

    /// The positional arguments, in order.
    pub fn positional(&self) -> &[&'a str] {
        &self.pos
    }

    /// Reject anything past `n` positionals.
    pub fn at_most(&self, n: usize) -> R<()> {
        if self.pos.len() > n {
            return Err(self.err(format!(
                "unexpected argument `{}` ({n} positional argument(s) accepted)",
                self.pos[n]
            )));
        }
        Ok(())
    }

    /// Parse positional `k`, if present.
    pub fn pos_num<T: FromStr>(&self, k: usize) -> R<Option<T>>
    where
        T::Err: std::fmt::Display,
    {
        match self.pos.get(k) {
            None => Ok(None),
            Some(s) => s
                .parse::<T>()
                .map(Some)
                .map_err(|e| self.err(format!("bad value `{s}`: {e}"))),
        }
    }

    /// The one size-range grammar, `[MIN] MAX` (cli-spec, AMENDED): one
    /// positional is the upper bound with `default_min` below it, two are
    /// the closed interval. Shared verbatim by `census`, `solomonoff`,
    /// and `q census` so the three cannot drift.
    pub fn range(&self, default_min: u32) -> R<(u32, u32)> {
        let n = |s: &str| -> R<u32> {
            s.parse::<u32>()
                .map_err(|e| self.err(format!("bad size `{s}`: {e}")))
        };
        let (lo, hi) = match self.pos.as_slice() {
            [] => return Err(self.err("missing size range: expected [MIN] MAX".into())),
            [max] => (default_min, n(max)?),
            [min, max] => (n(min)?, n(max)?),
            _ => {
                return Err(self.err(format!(
                    "unexpected argument `{}`: the range is [MIN] MAX",
                    self.pos[2]
                )))
            }
        };
        if lo > hi {
            return Err(self.err(format!("empty range: MIN {lo} is above MAX {hi}")));
        }
        Ok((lo, hi))
    }

    /// [`Args::range`] plus the ceiling every sweep in the tree shares:
    /// closed terms are carried as a packed `(u64 bits, u8 length)` pair,
    /// so a size above 63 has no representation. Checked HERE, at parse
    /// time — `census 64` used to sweep 4..63 first and only then panic
    /// in the enumerator, throwing away the whole run.
    pub fn range_packed(&self, default_min: u32) -> R<(u32, u32)> {
        let (lo, hi) = self.range(default_min)?;
        if hi > 63 {
            return Err(self.err(format!(
                "MAX {hi} exceeds 63: closed terms are packed into a u64 \
                 (and Solomonoff masses into u128 units of 2^-64)"
            )));
        }
        Ok((lo, hi))
    }
}

/// Parse one end-user program: a CLOSED BLC term whose wire encoding is
/// exactly `bits`, no more and no less. The `Err` is the bare defect
/// phrase — callers wrap it in their own framing ([`parse_program`] for a
/// command-line argument, [`read_terms_file`] for a file line), so the
/// same three rejections read the same way everywhere.
///
/// The two failures worth naming: a *complete prefix* of a longer string
/// is a DIFFERENT program (the code is prefix-free), and an open term is
/// not a program at all — under the quantum signature its free index
/// would be silently reinterpreted as a signature slot.
fn program_of(bits: &str) -> Result<Term, String> {
    let t = blam::parse_all(bits).map_err(|e| match e {
        // `parse_all` already names the offending character and the
        // term's own end; only the framing is ours.
        ParseError::BadChar(_) | ParseError::UnexpectedEof | ParseError::TrailingBits { .. } => {
            e.to_string()
        }
    })?;
    let free = t.max_free(0);
    if free != 0 {
        return Err(format!("open term: free index {free}"));
    }
    Ok(t)
}

/// [`program_of`] framed as a subcommand argument failure.
pub fn parse_program(cmd: &str, bits: &str) -> R<Term> {
    program_of(bits).map_err(|d| format!("blam {cmd}: `{bits}`: {d}\n{}", hint(cmd)))
}

/// Bit count of a program string, whitespace excluded.
fn bit_len(bits: &str) -> usize {
    bits.chars().filter(|c| !c.is_whitespace()).count()
}

/// Pack a validated program string MSB-first.
fn pack(bits: &str) -> u64 {
    let mut enc = 0u64;
    for c in bits.chars().filter(|c| !c.is_whitespace()) {
        enc = enc << 1 | u64::from(c == '1');
    }
    enc
}

/// The packed-program defect, if any: [`program_of`] plus the 1..=64-bit
/// window a `(u64, u8)` pair can hold.
fn packed_of(bits: &str) -> Result<(u64, u8), String> {
    program_of(bits)?;
    let n = bit_len(bits);
    if n == 0 || n > 64 {
        return Err(format!("{n} bits, but a packed program must be 1..=64"));
    }
    Ok((pack(bits), n as u8))
}

/// [`parse_program`] for the paths that pack the term into a `(u64, u8)`
/// pair: the same checks plus the length window. Truncating a longer line
/// to 64 bits would silently adjudicate a DIFFERENT program.
pub fn parse_packed(cmd: &str, bits: &str) -> R<(u64, u8)> {
    packed_of(bits).map_err(|d| format!("blam {cmd}: `{bits}`: {d}\n{}", hint(cmd)))
}

/// The one reader for every file-of-terms flag, and the one PREFLIGHT:
/// every line is checked here, sequentially, before any driver fans out.
///
/// Strict about the alphabet — a line that is not blank and not entirely
/// `0`/`1` is an error naming the line number, never a silently-parsed
/// prose digit (AGENTS.md, Ops lessons) — and then strict about the term:
/// each line must be exactly one closed program ([`program_of`]). That
/// second pass is what makes every consumer's later `expect` unreachable
/// rather than a latent panic, and it happens BEFORE the rayon pool is
/// touched, so a bad file is exit 2 with a `file:line`, not a worker
/// panic somewhere in the middle of a sweep.
pub fn read_terms_file(path: &str) -> R<Vec<String>> {
    read_lines(path, |t| program_of(t).map(|_| t.to_string()))
}

/// [`read_terms_file`] for consumers that pack each line into a
/// `(u64, u8)` pair: the same preflight plus the 1..=64-bit window,
/// with the packing done once, here.
pub fn read_packed_terms_file(path: &str) -> R<Vec<(String, u64, u8)>> {
    read_lines(path, |t| {
        packed_of(t).map(|(enc, len)| (t.to_string(), enc, len))
    })
}

/// The shared line loop: skip blanks, enforce the 0/1 alphabet, then hand
/// each line to `of`, whose bare defect phrase gets the `file:line`.
fn read_lines<T>(path: &str, of: impl Fn(&str) -> Result<T, String>) -> R<Vec<T>> {
    let text =
        std::fs::read_to_string(path).map_err(|e| format!("blam: cannot read {path}: {e}"))?;
    let mut out = Vec::new();
    for (k, line) in text.lines().enumerate() {
        let t = line.trim();
        if t.is_empty() {
            continue;
        }
        let at = |d: String| format!("blam: {path}:{}: {d}", k + 1);
        if !t.bytes().all(|b| b == b'0' || b == b'1') {
            return Err(at(format!("not a 0/1 bit string: `{t}`")));
        }
        out.push(of(t).map_err(at)?);
    }
    Ok(out)
}

/// Build the global rayon pool for a sweep. `threads == 0` keeps the
/// ambient size. Every sweep worker gets a 256 MB stack: the escalation
/// engine and the skeleton reducer recurse over term depth.
pub fn build_pool(threads: usize) -> R<()> {
    let mut b = rayon::ThreadPoolBuilder::new().stack_size(256 << 20);
    if threads > 0 {
        b = b.num_threads(threads);
    }
    b.build_global()
        .map_err(|e| format!("blam: cannot build the thread pool: {e}"))
}

/// Pool setup for the certificate discovery tools, which run on default
/// stacks and only touch the global pool when a thread count is asked
/// for. Both callers (`cert search`, `cert diag`) are lab-gated.
#[cfg(feature = "lab")]
pub fn build_pool_plain(threads: usize) -> R<()> {
    if threads == 0 {
        return Ok(());
    }
    rayon::ThreadPoolBuilder::new()
        .num_threads(threads)
        .build_global()
        .map_err(|e| format!("blam: cannot build the thread pool: {e}"))
}

/// Resolve the escalation engine's tunables for one run: an explicit
/// flag wins, then the environment (`BLC_WORK_MULT` / `BLC_PROBE_FUEL`,
/// the pre-Phase-3 channel, kept as documented fallbacks), then the
/// engine's own measured defaults. The result is passed down as data —
/// nothing in the library reads the environment on this path.
///
/// Both knobs are multipliers on a budget, so both are checked against
/// their floor: `work-mult 0` arms a meter that is exhausted before the
/// first primitive, and `probe-fuel 0` gives the redloop certificate no
/// probe at all. Neither is "a tighter budget"; both are runs that
/// cannot mean what the flag says. Whichever channel supplied the value
/// is named in the refusal.
pub fn engine_cfg(cmd: &str, work_mult: Option<i64>, probe_fuel: Option<u64>) -> R<EngineCfg> {
    fn env<T: FromStr>(k: &str) -> Option<T> {
        std::env::var(k).ok().and_then(|s| s.parse().ok())
    }
    let d = EngineCfg::default();
    let source = |flagged: bool, flag: &str, var: &str| {
        if flagged {
            flag.to_string()
        } else {
            var.to_string()
        }
    };
    let cfg = EngineCfg {
        work_mult: work_mult
            .or_else(|| env("BLC_WORK_MULT"))
            .unwrap_or(d.work_mult),
        probe_fuel: probe_fuel
            .or_else(|| env("BLC_PROBE_FUEL"))
            .unwrap_or(d.probe_fuel),
    };
    if cfg.work_mult < 1 {
        return Err(format!(
            "blam {cmd}: {} {}: the work multiplier must be at least 1\n{}",
            source(work_mult.is_some(), "--work-mult", "BLC_WORK_MULT"),
            cfg.work_mult,
            hint(cmd)
        ));
    }
    if cfg.probe_fuel < 1 {
        return Err(format!(
            "blam {cmd}: {} 0: the redloop probe needs at least 1 beta\n{}",
            source(probe_fuel.is_some(), "--probe-fuel", "BLC_PROBE_FUEL"),
            hint(cmd)
        ));
    }
    Ok(cfg)
}

#[cfg(test)]
mod tests {
    use super::*;

    fn argv(xs: &[&str]) -> Vec<String> {
        xs.iter().map(|s| s.to_string()).collect()
    }

    /// Drive the cursor the way a subcommand does, so the tests exercise
    /// the real loop shape rather than the helpers in isolation.
    fn drive(xs: &[&str]) -> R<(Vec<String>, Vec<u64>, bool)> {
        let v = argv(xs);
        let mut p = Args::new("t", &v);
        let mut vals = Vec::new();
        let mut nums = Vec::new();
        let mut boolean = false;
        while let Some(tok) = p.next() {
            match tok {
                "--val" => vals.push(p.value(tok)?.to_string()),
                "--num" => nums.push(p.num::<u64>(tok)?),
                "--bool" => {
                    p.flag(tok)?;
                    boolean = true;
                }
                _ if tok.starts_with('-') => return Err(p.unknown(tok)),
                _ => p.push(tok),
            }
        }
        Ok((vals, nums, boolean))
    }

    #[test]
    fn help_is_detected_anywhere() {
        assert!(wants_help(&argv(&["--help"])));
        assert!(wants_help(&argv(&["4", "28", "--verify", "-h"])));
        assert!(!wants_help(&argv(&["4", "28"])));
    }

    #[test]
    fn values_and_numbers_parse() {
        let (vals, nums, b) = drive(&["--val", "x", "--num", "17", "--bool"]).unwrap();
        assert_eq!(vals, vec!["x".to_string()]);
        assert_eq!(nums, vec![17]);
        assert!(b);
    }

    #[test]
    fn missing_value_is_a_message_not_a_panic() {
        let e = drive(&["--val"]).unwrap_err();
        assert!(e.contains("`--val` needs a value"), "{e}");
        assert!(e.contains("blam t --help"), "{e}");
        let e = drive(&["--num"]).unwrap_err();
        assert!(e.contains("needs a value"), "{e}");
    }

    #[test]
    fn malformed_number_names_flag_and_input() {
        let e = drive(&["--num", "twelve"]).unwrap_err();
        assert!(e.contains("--num twelve"), "{e}");
    }

    #[test]
    fn duplicate_flags_are_rejected() {
        for a in [
            vec!["--val", "x", "--val", "y"],
            vec!["--num", "1", "--num", "2"],
            vec!["--bool", "--bool"],
        ] {
            let e = drive(&a).unwrap_err();
            assert!(e.contains("more than once"), "{a:?}: {e}");
        }
    }

    #[test]
    fn unknown_flag_names_the_flag() {
        let e = drive(&["--nope"]).unwrap_err();
        assert!(e.contains("unknown argument `--nope`"), "{e}");
    }

    #[test]
    fn leftover_positionals_are_rejected() {
        let v = argv(&["a", "b", "c"]);
        let mut p = Args::new("t", &v);
        while let Some(tok) = p.next() {
            p.push(tok);
        }
        assert!(p.at_most(3).is_ok());
        let e = p.at_most(2).unwrap_err();
        assert!(e.contains("unexpected argument `c`"), "{e}");
    }

    /// The identical range grammar for `census`, `solomonoff`, and
    /// `q census`: one parser, one set of tests.
    fn range_of(xs: &[&str]) -> R<(u32, u32)> {
        let v = argv(xs);
        let mut p = Args::new("t", &v);
        while let Some(tok) = p.next() {
            p.push(tok);
        }
        p.range(4)
    }

    #[test]
    fn range_grammar() {
        assert_eq!(range_of(&["28"]).unwrap(), (4, 28));
        assert_eq!(range_of(&["4", "28"]).unwrap(), (4, 28));
        assert_eq!(range_of(&["28", "28"]).unwrap(), (28, 28));
    }

    #[test]
    fn range_rejects_min_above_max() {
        let e = range_of(&["30", "20"]).unwrap_err();
        assert!(e.contains("MIN 30 is above MAX 20"), "{e}");
    }

    #[test]
    fn range_rejects_missing_empty_and_extra() {
        let e = range_of(&[]).unwrap_err();
        assert!(e.contains("missing size range"), "{e}");
        let e = range_of(&["4", "28", "30"]).unwrap_err();
        assert!(e.contains("unexpected argument `30`"), "{e}");
        let e = range_of(&["four", "28"]).unwrap_err();
        assert!(e.contains("bad size `four`"), "{e}");
    }

    /// The three ways a program string can be wrong, each naming itself.
    #[test]
    fn a_program_argument_names_its_own_defect() {
        assert!(parse_program("normalize", "0010").is_ok());
        // λ1 λ1 is two programs, and the code is prefix-free, so taking
        // the first would adjudicate something the user did not name.
        let e = parse_program("normalize", "00100010").unwrap_err();
        assert!(e.contains("trailing bits"), "{e}");
        // `10` is Var(1): parses, but a free index is not a program.
        let e = parse_program("normalize", "10").unwrap_err();
        assert!(e.contains("open term: free index 1"), "{e}");
        let e = parse_program("normalize", "00").unwrap_err();
        assert!(e.contains("ends mid-term"), "{e}");
        let e = parse_program("normalize", "0x10").unwrap_err();
        assert!(e.contains("not a 0/1 bit"), "{e}");
        // Every message names the command and points at its help.
        for bad in ["00100010", "10", "00", "0x10"] {
            let e = parse_program("q run", bad).unwrap_err();
            assert!(e.starts_with("blam q run: "), "{e}");
            assert!(e.contains("blam q run --help"), "{e}");
        }
    }

    /// The packed paths add exactly one rule: it has to fit in a u64.
    #[test]
    fn a_packed_program_argument_adds_the_64_bit_window() {
        assert_eq!(parse_packed("q run", "0010").unwrap(), (0b0010, 4));
        // 66 bits of λ-tower over Var(1): a perfectly good term, and not
        // a packable one. Truncating it used to yield a DIFFERENT program.
        let wide = format!("{}10", "00".repeat(32));
        assert_eq!(wide.len(), 66);
        assert!(parse_program("q run", &wide).is_ok(), "a valid term");
        let e = parse_packed("q run", &wide).unwrap_err();
        assert!(e.contains("66 bits"), "{e}");
        assert!(e.contains("1..=64"), "{e}");
    }

    #[test]
    fn terms_file_rejects_non_bit_lines_and_non_programs() {
        let dir = std::env::temp_dir().join(format!("blam-args-{}", std::process::id()));
        std::fs::create_dir_all(&dir).unwrap();
        let good = dir.join("good.txt");
        std::fs::write(&good, "0010\n\n  000010 \n").unwrap();
        assert_eq!(
            read_terms_file(good.to_str().unwrap()).unwrap(),
            vec!["0010".to_string(), "000010".to_string()]
        );
        let bad = dir.join("bad.txt");
        std::fs::write(&bad, "0010\nTODO: 42 things\n").unwrap();
        let e = read_terms_file(bad.to_str().unwrap()).unwrap_err();
        assert!(e.contains(":2:"), "{e}");
        assert!(e.contains("not a 0/1 bit string"), "{e}");
        // The preflight: a line that IS bits but is not a program is
        // located by line, not left for a worker to panic on.
        let open = dir.join("open.txt");
        std::fs::write(&open, "0010\n10\n").unwrap();
        let e = read_terms_file(open.to_str().unwrap()).unwrap_err();
        assert!(e.contains(":2:"), "{e}");
        assert!(e.contains("open term: free index 1"), "{e}");
        let trail = dir.join("trail.txt");
        std::fs::write(&trail, "00100010\n").unwrap();
        let e = read_terms_file(trail.to_str().unwrap()).unwrap_err();
        assert!(e.contains(":1:"), "{e}");
        assert!(e.contains("trailing bits"), "{e}");
        // And the packed reader adds the width rule, with the same framing.
        let wide = dir.join("wide.txt");
        let long = format!("{}10", "00".repeat(34));
        std::fs::write(&wide, format!("0010\n{long}\n")).unwrap();
        assert_eq!(read_terms_file(wide.to_str().unwrap()).unwrap().len(), 2);
        let e = read_packed_terms_file(wide.to_str().unwrap()).unwrap_err();
        assert!(e.contains(":2:"), "{e}");
        assert!(e.contains("1..=64"), "{e}");
        assert_eq!(
            read_packed_terms_file(good.to_str().unwrap()).unwrap(),
            vec![
                ("0010".to_string(), 0b0010, 4),
                ("000010".to_string(), 0b000010, 6)
            ]
        );
        let e = read_terms_file(dir.join("missing.txt").to_str().unwrap()).unwrap_err();
        assert!(e.contains("cannot read"), "{e}");
        let _ = std::fs::remove_dir_all(&dir);
    }

    /// The engine knobs are multipliers on a budget: zero is not a
    /// tighter run, it is a run that cannot mean what the flag says.
    #[test]
    fn engine_knobs_have_floors_and_the_refusal_names_the_channel() {
        assert!(engine_cfg("census", None, None).is_ok());
        assert!(engine_cfg("census", Some(1), Some(1)).is_ok());
        let e = engine_cfg("census", Some(0), None).unwrap_err();
        assert!(e.contains("--work-mult 0"), "{e}");
        let e = engine_cfg("census", Some(-4), None).unwrap_err();
        assert!(e.contains("--work-mult -4"), "{e}");
        let e = engine_cfg("q census", None, Some(0)).unwrap_err();
        assert!(e.contains("--probe-fuel 0"), "{e}");
        assert!(e.contains("blam q census"), "{e}");
    }

    /// The packed-u64 ceiling is checked at PARSE time: `census 64` used
    /// to sweep 4..63 first and only then die in the enumerator.
    #[test]
    fn the_size_range_is_capped_at_the_packed_width() {
        let of = |xs: &[&str]| -> R<(u32, u32)> {
            let v = argv(xs);
            let mut p = Args::new("census", &v);
            while let Some(tok) = p.next() {
                p.push(tok);
            }
            p.range_packed(4)
        };
        assert_eq!(of(&["63"]).unwrap(), (4, 63));
        let e = of(&["64"]).unwrap_err();
        assert!(e.contains("MAX 64 exceeds 63"), "{e}");
        let e = of(&["4", "200"]).unwrap_err();
        assert!(e.contains("MAX 200 exceeds 63"), "{e}");
    }
}
