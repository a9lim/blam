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
}

/// The one reader for every file-of-terms flag. Strict: a line that is
/// not blank and not entirely `0`/`1` is an error naming the line number,
/// never a silently-parsed prose digit (AGENTS.md, Ops lessons).
pub fn read_terms_file(path: &str) -> R<Vec<String>> {
    let text =
        std::fs::read_to_string(path).map_err(|e| format!("blam: cannot read {path}: {e}"))?;
    let mut out = Vec::new();
    for (k, line) in text.lines().enumerate() {
        let t = line.trim();
        if t.is_empty() {
            continue;
        }
        if !t.bytes().all(|b| b == b'0' || b == b'1') {
            return Err(format!(
                "blam: {path}:{}: not a 0/1 bit string: `{t}`",
                k + 1
            ));
        }
        out.push(t.to_string());
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

/// Phase 3: becomes explicit library config. Until then the escalation
/// engine reads its work-meter multiplier and probe fuel from the
/// environment through a `OnceLock`, so the CLI writes the variables
/// before any compute starts. A flag wins over a pre-set environment
/// variable; leaving the flag off leaves the environment alone.
pub fn apply_engine_env(work_mult: Option<u64>, probe_fuel: Option<u64>) {
    if let Some(v) = work_mult {
        std::env::set_var("BLC_WORK_MULT", v.to_string());
    }
    if let Some(v) = probe_fuel {
        std::env::set_var("BLC_PROBE_FUEL", v.to_string());
    }
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

    #[test]
    fn terms_file_rejects_non_bit_lines() {
        let dir = std::env::temp_dir().join(format!("blam-args-{}", std::process::id()));
        std::fs::create_dir_all(&dir).unwrap();
        let good = dir.join("good.txt");
        std::fs::write(&good, "0010\n\n  1101 \n").unwrap();
        assert_eq!(
            read_terms_file(good.to_str().unwrap()).unwrap(),
            vec!["0010".to_string(), "1101".to_string()]
        );
        let bad = dir.join("bad.txt");
        std::fs::write(&bad, "0010\nTODO: 42 things\n").unwrap();
        let e = read_terms_file(bad.to_str().unwrap()).unwrap_err();
        assert!(e.contains(":2:"), "{e}");
        assert!(e.contains("not a 0/1 bit string"), "{e}");
        let e = read_terms_file(dir.join("missing.txt").to_str().unwrap()).unwrap_err();
        assert!(e.contains("cannot read"), "{e}");
        let _ = std::fs::remove_dir_all(&dir);
    }
}
