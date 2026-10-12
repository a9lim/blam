//! Independent confirmation that a golfed program is the original.
//!
//! Two checks, either of which a candidate can pass on its own:
//!
//! - **β-certificate.** Inline every let of both terms (normal order, knots
//!   kept; `T::inline_bounded`). Each result is a β-reduct of its input, so
//!   equal results prove the two terms β-convertible: equal normal forms, or
//!   equal divergence, under every argument. When a program's fixpoint is not
//!   a `(\x. x x)` knot, inlining the whole term never ends; then the
//!   certificate inlines only the smallest subterm that contains every
//!   difference between the two, which suffices because β is a congruence.
//!   A multi-move result is certified pair by pair along its move path
//!   (`--path`), each pair differing in one place.
//! - **Differential.** Normalize the program applied to concrete inputs and
//!   compare normal-form bits exactly. `none` normalizes the terms
//!   themselves. `bits` applies each to every bit stream of length 0..=N
//!   ending in a rigid tail `n` (`\n. P (s ++ n)`). `progs` restricts the
//!   streams to a closed program of 4..=N bits followed by every data string
//!   of up to three bits, for machines whose contract covers closed programs
//!   only; `pairs` to two closed programs totalling at most N bits followed
//!   by one data bit, for machines that read two. `bytes` does the same
//!   with BLC8 byte lists: every closed program of 4..=N bits padded to
//!   bytes, with and without a trailing data byte, then every single byte
//!   and a fixed sample of random two- to four-byte inputs. Runs that exhaust the budget are
//!   tallied, not compared; one side halting where the other did not is
//!   reported separately.

use super::term::T;
use crate::args::{self, Args, R};
use blam::classical::machine::{Machine, Pool, StringSink};
use rayon::prelude::*;

const USAGE: &str = "\
blam golf check — β-certificate and normal-form differential of two terms

usage: blam golf check ORIG_BITS CAND_BITS
                       [--io none|bits|progs|pairs|bytes]
                       [--max-bits N] [--beta B] [--threads N]
       blam golf check --path FILE

  --path FILE     certify a move path: one term per line, each line
                  β-convertible to the previous one (no differential)
  --io MODE       inputs for the differential (default none: the terms'
                  own normal forms); bits = every bit stream of length
                  0..=N, progs = every closed program of 4..=N bits then
                  0..=3 data bits, pairs = two closed programs of at most
                  N bits together then one data bit, bytes = BLC8 byte
                  lists (module docs)
  --max-bits N    stream length for bits, program size for bytes
                  (default 12)
  --beta B        β budget per run (default 262144; transitions 64x)

Prints the certificate verdict and the differential tally. Exits nonzero
when a differential input gives different normal forms.";

#[derive(Clone, Copy, PartialEq)]
enum Io {
    None,
    Bits,
    Progs,
    Pairs,
    Bytes,
}

const TRUE: &str = "0000110";
const FALSE: &str = "000010";

fn push(v: &mut Vec<bool>, s: &str) {
    v.extend(s.bytes().map(|c| c == b'1'));
}

/// `\f. f x rest` cells for closed `items`, ending in the rigid tail (the
/// variable bound just outside the list) or nil.
fn list(out: &mut Vec<bool>, items: &[Vec<bool>], rigid: bool) {
    for it in items {
        push(out, "00010110");
        out.extend_from_slice(it);
    }
    if rigid {
        out.extend(std::iter::repeat_n(true, items.len() + 1));
        out.push(false);
    } else {
        push(out, FALSE);
    }
}

fn bit_items(bits: &str) -> Vec<Vec<bool>> {
    bits.bytes()
        .map(|c| {
            let mut v = Vec::new();
            push(&mut v, if c == b'0' { TRUE } else { FALSE });
            v
        })
        .collect()
}

/// Every closed term of exactly `n` bits, as wire strings.
fn closed(n: usize, free: usize, out: &mut Vec<String>) {
    if n >= 2 && n - 2 < free {
        out.push(format!("{}0", "1".repeat(n - 1)));
    }
    if n >= 4 {
        let mut bodies = Vec::new();
        closed(n - 2, free + 1, &mut bodies);
        out.extend(bodies.into_iter().map(|b| format!("00{b}")));
        for i in 2..n - 3 {
            let (mut fs, mut xs) = (Vec::new(), Vec::new());
            closed(i, free, &mut fs);
            closed(n - 2 - i, free, &mut xs);
            for f in &fs {
                for x in &xs {
                    out.push(format!("01{f}{x}"));
                }
            }
        }
    }
}

/// The differential's inputs: a label and the probe-term builder's stream.
fn inputs(io: Io, max_bits: usize) -> Vec<(String, Vec<bool>)> {
    let mut out = Vec::new();
    match io {
        Io::None => out.push((String::new(), Vec::new())),
        Io::Bits => {
            for len in 0..=max_bits {
                for i in 0..1u64 << len {
                    let s: String = (0..len)
                        .rev()
                        .map(|j| if i >> j & 1 == 1 { '1' } else { '0' })
                        .collect();
                    let mut v = Vec::new();
                    list(&mut v, &bit_items(&s), true);
                    out.push((s, v));
                }
            }
        }
        Io::Progs => {
            for n in 4..=max_bits {
                let mut progs = Vec::new();
                closed(n, 0, &mut progs);
                for p in progs {
                    for len in 0..=3 {
                        for i in 0..1u64 << len {
                            let d: String = (0..len)
                                .rev()
                                .map(|j| if i >> j & 1 == 1 { '1' } else { '0' })
                                .collect();
                            let s = format!("{p}{d}");
                            let mut v = Vec::new();
                            list(&mut v, &bit_items(&s), true);
                            out.push((format!("{p}|{d}"), v));
                        }
                    }
                }
            }
        }
        Io::Pairs => {
            let mut progs = Vec::new();
            for n in 4..=max_bits.saturating_sub(4) {
                closed(n, 0, &mut progs);
            }
            for p in &progs {
                for q in &progs {
                    if p.len() + q.len() > max_bits {
                        continue;
                    }
                    for d in ["0", "1"] {
                        let mut v = Vec::new();
                        list(&mut v, &bit_items(&format!("{p}{q}{d}")), true);
                        out.push((format!("{p}|{q}|{d}"), v));
                    }
                }
            }
        }
        Io::Bytes => {
            let byte = |b: &str| {
                let mut v = Vec::new();
                list(&mut v, &bit_items(b), false);
                v
            };
            let mut seed = 0x9e3779b97f4a7c15u64;
            let mut rnd = move || {
                seed ^= seed << 13;
                seed ^= seed >> 7;
                seed ^= seed << 17;
                seed
            };
            let push_bytes = |label: String, bs: &[String], out: &mut Vec<(String, Vec<bool>)>| {
                let items: Vec<Vec<bool>> = bs.iter().map(|b| byte(b)).collect();
                let mut v = Vec::new();
                list(&mut v, &items, true);
                out.push((label, v));
            };
            for n in 4..=max_bits {
                let mut progs = Vec::new();
                closed(n, 0, &mut progs);
                for p in progs {
                    let mut padded = p.clone();
                    while padded.len() % 8 != 0 {
                        padded.push('0');
                    }
                    let mut bs: Vec<String> = (0..padded.len() / 8)
                        .map(|i| padded[8 * i..8 * i + 8].to_string())
                        .collect();
                    push_bytes(format!("P {}", bs.join("|")), &bs, &mut out);
                    bs.push(format!("{:08b}", rnd() & 0xff));
                    push_bytes(format!("P {}", bs.join("|")), &bs, &mut out);
                }
            }
            for v in 0..256u64 {
                let bs = vec![format!("{v:08b}")];
                push_bytes(bs[0].clone(), &bs, &mut out);
            }
            for _ in 0..2000 {
                let k = 2 + (rnd() % 3) as usize;
                let bs: Vec<String> = (0..k).map(|_| format!("{:08b}", rnd() & 0xff)).collect();
                push_bytes(bs.join("|"), &bs, &mut out);
            }
        }
    }
    out
}

/// Normal form of `P` (io none) or `\n. P stream` (bits, bytes).
fn run_one(
    pool: &mut Pool,
    vm: &mut Machine,
    prog: &[bool],
    io: Io,
    stream: &[bool],
    beta: u64,
) -> Option<String> {
    let mut buf = Vec::with_capacity(prog.len() + stream.len() + 4);
    if io != Io::None {
        push(&mut buf, "0001");
    }
    buf.extend_from_slice(prog);
    buf.extend_from_slice(stream);
    pool.clear();
    let root = pool.decode(&mut buf.iter().copied())?;
    let mut s = StringSink(String::new());
    vm.normalize_capped(pool, root, beta, 64 * beta, &mut s)
        .ok()
        .map(|_| s.0)
}

#[derive(Default, Debug)]
struct Tally {
    same: u64,
    differ: u64,
    capped_both: u64,
    capped_one: u64,
    first_differ: Option<String>,
    first_capped_one: Option<String>,
}

impl Tally {
    fn merge(mut self, o: Tally) -> Tally {
        self.same += o.same;
        self.differ += o.differ;
        self.capped_both += o.capped_both;
        self.capped_one += o.capped_one;
        self.first_differ = self.first_differ.or(o.first_differ);
        self.first_capped_one = self.first_capped_one.or(o.first_capped_one);
        self
    }
}

/// β-certificate: both terms inline to the same reduct.
pub(crate) fn common_reduct(a: &T, b: &T) -> Option<u32> {
    let mut fa = 5_000_000;
    let mut fb = 5_000_000;
    let ra = a.inline_bounded(&mut fa)?;
    let rb = b.inline_bounded(&mut fb)?;
    (ra == rb).then(|| ra.size())
}

/// The pairs of subterms of `a` and `b` along the path from the root to the
/// deepest position that contains every difference, outermost first (empty
/// when they are equal).
fn diff_chain<'t>(a: &'t T, b: &'t T, out: &mut Vec<(&'t T, &'t T)>) {
    if a == b {
        return;
    }
    out.push((a, b));
    match (a, b) {
        (T::L(x), T::L(y)) => diff_chain(x, y, out),
        (T::A(f, x), T::A(g, y)) if f == g => diff_chain(x, y, out),
        (T::A(f, x), T::A(g, y)) if x == y => diff_chain(f, g, out),
        _ => {}
    }
}

/// Every term one β-contraction away from `t`.
fn one_step(t: &T, out: &mut Vec<T>) {
    use super::term::{a, l};
    match t {
        T::V(_) => {}
        T::L(b) => {
            let mut v = Vec::new();
            one_step(b, &mut v);
            out.extend(v.into_iter().map(l));
        }
        T::A(f, x) => {
            if let T::L(body) = &**f {
                out.push(T::beta(body, x));
            }
            let mut v = Vec::new();
            one_step(f, &mut v);
            out.extend(v.into_iter().map(|r| a(r, (**x).clone())));
            let mut v = Vec::new();
            one_step(x, &mut v);
            out.extend(v.into_iter().map(|r| a((**f).clone(), r)));
        }
    }
}

/// `to` is reachable from `from` in at most `depth` β-contractions
/// (breadth first, at most `cap` terms per layer).
fn reaches(from: &T, to: &T, depth: usize, cap: usize) -> Option<usize> {
    let mut seen: std::collections::HashSet<T> = std::collections::HashSet::new();
    let mut layer = vec![from.clone()];
    for d in 1..=depth {
        let mut next = Vec::new();
        for t in &layer {
            let mut v = Vec::new();
            one_step(t, &mut v);
            for r in v {
                if r == *to {
                    return Some(d);
                }
                if next.len() < cap && seen.insert(r.clone()) {
                    next.push(r);
                }
            }
        }
        layer = next;
    }
    None
}

/// A certificate that `a` and `b` are β-convertible. Along the path from the
/// root to the deepest position that contains every difference, innermost
/// pair first (the deepest pair alone can split a redex a move created from
/// its argument), look for one subterm reducing to the other in a few
/// contractions, then for a common reduct by inlining; β is a congruence, so
/// either at any enclosing pair suffices.
pub(crate) fn certify(a: &T, b: &T) -> Option<String> {
    if a == b {
        return Some("identical".into());
    }
    let mut chain = Vec::new();
    diff_chain(a, b, &mut chain);
    for (ra, rb) in chain.iter().rev() {
        if let Some(d) = reaches(ra, rb, 3, 2000) {
            return Some(format!(
                "the {}-bit subterm reduces to the other in {d} step(s)",
                ra.size()
            ));
        }
        if let Some(d) = reaches(rb, ra, 3, 2000) {
            return Some(format!(
                "the {}-bit subterm reduces to the other in {d} step(s)",
                rb.size()
            ));
        }
    }
    for (ra, rb) in chain.iter().rev() {
        if let Some(n) = common_reduct(ra, rb) {
            return Some(if ra.size() == a.size() && *ra == a {
                format!("common reduct ({n} bits)")
            } else {
                format!(
                    "common reduct of the differing {}/{}-bit subterms ({n} bits)",
                    ra.size(),
                    rb.size()
                )
            });
        }
    }
    None
}

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut io = Io::None;
    let mut max_bits = 12usize;
    let mut beta = 1u64 << 18;
    let mut threads = 0usize;
    let mut path: Option<String> = None;
    let mut p = Args::new("golf check", argv);
    while let Some(tok) = p.next() {
        match tok {
            "--io" => {
                io = match p.value(tok)? {
                    "none" => Io::None,
                    "bits" => Io::Bits,
                    "progs" => Io::Progs,
                    "pairs" => Io::Pairs,
                    "bytes" => Io::Bytes,
                    other => return Err(format!("blam golf check: unknown --io `{other}`")),
                }
            }
            "--max-bits" => max_bits = p.num(tok)?,
            "--beta" => beta = p.num(tok)?,
            "--threads" => threads = p.num(tok)?,
            "--path" => path = Some(p.value(tok)?.to_string()),
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    if let Some(path) = path {
        let text =
            std::fs::read_to_string(&path).map_err(|e| format!("blam golf check: {path}: {e}"))?;
        let terms: Vec<T> = text
            .lines()
            .filter(|l| !l.trim().is_empty())
            .map(|l| {
                T::parse(l.trim())
                    .ok_or_else(|| format!("blam golf check: {path}: not a closed BLC term: {l}"))
            })
            .collect::<R<_>>()?;
        for (i, w) in terms.windows(2).enumerate() {
            match certify(&w[0], &w[1]) {
                Some(why) => println!(
                    "step {}: {} -> {} bits: {why}",
                    i + 1,
                    w[0].size(),
                    w[1].size()
                ),
                None => {
                    return Err(format!(
                    "blam golf check: step {} ({} -> {} bits) has no common reduct within budget",
                    i + 1,
                    w[0].size(),
                    w[1].size()
                ))
                }
            }
        }
        println!(
            "path: {} terms, {} -> {} bits, beta-convertible",
            terms.len(),
            terms[0].size(),
            terms[terms.len() - 1].size()
        );
        return Ok(());
    }
    let pos = p.positional();
    if pos.len() != 2 {
        return Err(format!(
            "blam golf check: expected ORIG_BITS CAND_BITS\n{}",
            args::hint("golf check")
        ));
    }
    args::build_pool(threads)?;
    let orig = T::parse(pos[0]).ok_or("blam golf check: ORIG_BITS is not a closed BLC term")?;
    let cand = T::parse(pos[1]).ok_or("blam golf check: CAND_BITS is not a closed BLC term")?;
    println!("orig {} bits, cand {} bits", orig.size(), cand.size());
    match certify(&orig, &cand) {
        Some(why) => println!("beta: {why}: beta-convertible"),
        None => println!("beta: no common reduct within the inlining budget"),
    }
    let bits = |t: &T| t.bits().bytes().map(|c| c == b'1').collect::<Vec<bool>>();
    let (ob, cb) = (bits(&orig), bits(&cand));
    let ins = inputs(io, max_bits);
    let t = ins
        .par_iter()
        .fold(
            || (Pool::new(), Machine::new(), Tally::default()),
            |(mut pool, mut vm, mut t), (label, stream)| {
                let o = run_one(&mut pool, &mut vm, &ob, io, stream, beta);
                let c = run_one(&mut pool, &mut vm, &cb, io, stream, beta);
                match (o, c) {
                    (Some(o), Some(c)) if o == c => t.same += 1,
                    (Some(_), Some(_)) => {
                        t.differ += 1;
                        t.first_differ.get_or_insert_with(|| label.clone());
                    }
                    (None, None) => t.capped_both += 1,
                    _ => {
                        t.capped_one += 1;
                        t.first_capped_one.get_or_insert_with(|| label.clone());
                    }
                }
                (pool, vm, t)
            },
        )
        .map(|(_, _, t)| t)
        .reduce(Tally::default, Tally::merge);
    println!(
        "differential: {} inputs, {} same, {} differ, {} capped both, {} capped one",
        ins.len(),
        t.same,
        t.differ,
        t.capped_both,
        t.capped_one
    );
    if let Some(l) = &t.first_capped_one {
        println!("  first capped-one input: {l:?}");
    }
    if let Some(l) = t.first_differ {
        return Err(format!(
            "blam golf check: normal forms differ, first on input {l:?}"
        ));
    }
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn closed_term_counts() {
        // OEIS A114852: closed terms of size n
        let counts: Vec<usize> = (0..=12)
            .map(|n| {
                let mut v = Vec::new();
                closed(n, 0, &mut v);
                v.len()
            })
            .collect();
        assert_eq!(counts, vec![0, 0, 0, 0, 1, 0, 1, 1, 2, 1, 6, 5, 13]);
    }

    /// The 168 and its core are β-convertible; the 168 and a variant with
    /// APP's arguments swapped are not, and the differential tells them
    /// apart on the self-interpreter contract's stream.
    #[test]
    fn certificate_and_differential_controls() {
        use super::super::term::INT168;
        let t = T::parse(INT168).unwrap();
        let core = t.inline_lets();
        assert_eq!(common_reduct(&t, &core), Some(179));
        // `exp args (exp2 args)` -> `exp2 args (exp args)` in the 168
        let app = "01011110100111010";
        let swapped = "01011101001111010";
        assert_eq!(INT168.matches(app).count(), 1);
        let bad = T::parse(&INT168.replace(app, swapped)).unwrap();
        assert_eq!(common_reduct(&t, &bad), None);
        let (mut pool, mut vm) = (Pool::new(), Machine::new());
        let b = |t: &T| t.bits().bytes().map(|c| c == b'1').collect::<Vec<bool>>();
        // E (\c. c) applied to ⌜(\1 1)(\\1)⌝: the identity continuation
        // makes the difference visible in the normal form.
        let mut differ = 0;
        for (_, stream) in inputs(Io::Bits, 10) {
            let wrap = |x: &T| {
                let mut v = Vec::new();
                push(&mut v, "01");
                v.extend(b(x));
                push(&mut v, "0010");
                v
            };
            let o = run_one(&mut pool, &mut vm, &wrap(&t), Io::Bits, &stream, 1 << 16);
            let c = run_one(&mut pool, &mut vm, &wrap(&bad), Io::Bits, &stream, 1 << 16);
            if o.is_some() && c.is_some() && o != c {
                differ += 1;
            }
        }
        assert!(differ > 0, "the swapped APP is indistinguishable");
    }
}
