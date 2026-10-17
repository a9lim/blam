//! The universal machine's wiring: every closed context around the parser.
//!
//! Tromp's universal machines are the 168's parser body `B` plus *wiring*:
//! the fixpoint that supplies `intL`, the top-level continuation, and any
//! sharing between them.
//!
//! ```text
//! 178 (non-strict):  (\a. a (\x. (\intL. B) (x x)) a) (\a. a a)
//! 190 (strict):      (\a. a (\x. (\intL. B) (x x)) (\b. b (a a))) (\a. a a)
//! ```
//!
//! `B` (`\cont. …`, 146 bits) has exactly one free variable, `intL`, which
//! occurs twice. This search holds `B` fixed and enumerates every closed
//! context `C[·]` with one hole. At the hole, `intL` may be bound to any
//! enclosing binder: binding it to the k-th costs 2k bits, since both
//! occurrences shift. Each `C[B]` must meet the universal machine's contract
//! on every probe program `M`:
//!
//! ```text
//! \n. C[B] (⌜M⌝ ++ n)   has the same normal form as   \n. M n
//! ```
//!
//! The 178's context is 32 bits, so a context of 31 bits or fewer that
//! survives would be a smaller universal machine. Survivors are hypotheses
//! until `battery.py --uni` passes them. `--strict` adds Tromp's strict
//! contract, "any attempt to apply free indices diverges", as a filter: open
//! programs terminated by nil must not halt within budget. That is necessary,
//! not sufficient, so strict survivors are hypotheses twice over.

use super::ctx::{programs, Golden, Probe};
use crate::args::{self, Args, R};
use crate::golf::term::T;
use crate::q::selfint::INT168;
use blam::classical::machine::{Machine, Pool, SizeSink, StringSink};
use blam::classical::OutOfFuel;
use rayon::prelude::*;
use std::time::Instant;

const USAGE: &str = "\
blam selfint wiring — every closed context around the 168's parser body

usage: blam selfint wiring [--max-size N] [--min-size N] [--programs N]
                           [--counts-only] [--threads N]

  --max-size N    largest context, in bits excluding the parser body
                  (default 31: strictly below the 178)
  --min-size N    smallest context (default 0)
  --programs N    probe programs (default: all, about 90)
  --counts-only   print the per-size context counts and stop
  --dump FILE     write every survivor and unknown (spliced bits) to FILE
  --check BITS    judge one machine containing the parser body and stop
  --strict        also require no halt within 2^16 beta on open programs
                  terminated by nil whose free variable is used (Tromp's
                  strict contract); the 190 is context 44

The 178's context is 32 bits and the strict 190's is 44.";

/// One context: its bits before and after the hole, and the binder (k-th
/// enclosing, 0 = innermost) that the parser's free `intL` is bound to.
#[derive(Clone, Copy)]
struct Ctx {
    before: u64,
    blen: u8,
    after: u64,
    alen: u8,
    k: u8,
}

const MAXD: usize = 24;

/// cnt[n][d][h]: closed-at-depth-d terms of size n with h ∈ {0,1} holes.
struct Counts {
    t: Vec<[[u64; 2]; MAXD + 1]>,
}

impl Counts {
    fn new(max: usize) -> Counts {
        let mut t = vec![[[0u64; 2]; MAXD + 1]; max + 1];
        for n in 0..=max {
            for d in (0..=MAXD).rev() {
                for h in 0..2 {
                    let mut tot = 0u64;
                    if h == 0 {
                        if n >= 2 && n - 2 < d {
                            tot += 1;
                        }
                    } else if n % 2 == 0 && n / 2 < d {
                        tot += 1;
                    }
                    if n >= 2 && d < MAXD {
                        tot = tot.saturating_add(t[n - 2][d + 1][h]);
                    }
                    if n >= 2 {
                        let m = n - 2;
                        for a in 0..=m {
                            let b = m - a;
                            let x = if h == 0 {
                                t[a][d][0].saturating_mul(t[b][d][0])
                            } else {
                                t[a][d][1]
                                    .saturating_mul(t[b][d][0])
                                    .saturating_add(t[a][d][0].saturating_mul(t[b][d][1]))
                            };
                            tot = tot.saturating_add(x);
                        }
                    }
                    t[n][d][h] = tot;
                }
            }
        }
        Counts { t }
    }
    fn get(&self, n: usize, d: usize, h: usize) -> u64 {
        if d > MAXD {
            return 0;
        }
        self.t[n][d][h]
    }
}

#[derive(Clone, Copy)]
struct Pend {
    n: u8,
    d: u8,
    h: u8,
}

/// Enumerate every context of size n (hole contributes 2k bits).
fn gen(
    c: &Counts,
    pend: &mut Vec<Pend>,
    acc: u64,
    len: u8,
    hole: Option<(u8, u8)>,
    f: &mut impl FnMut(Ctx),
) {
    let Some(p) = pend.pop() else {
        let (at, k) = hole.expect("one hole");
        let alen = len - at;
        f(Ctx {
            before: if at == 0 { 0 } else { acc >> alen },
            blen: at,
            after: acc & ((1u64 << alen) - 1),
            alen,
            k,
        });
        return;
    };
    let (n, d, h) = (p.n as usize, p.d as usize, p.h as usize);
    // leaf
    if h == 0 && n >= 2 && n - 2 < d {
        let bits = ((1u64 << (n - 1)) - 1) << 1;
        gen(c, pend, acc << n | bits, len + n as u8, hole, f);
    }
    if h == 1 && n % 2 == 0 && n / 2 < d {
        gen(c, pend, acc, len, Some((len, (n / 2) as u8)), f);
    }
    // λ
    if n >= 2 && c.get(n - 2, d + 1, h) > 0 {
        pend.push(Pend {
            n: (n - 2) as u8,
            d: (d + 1) as u8,
            h: h as u8,
        });
        gen(c, pend, acc << 2, len + 2, hole, f);
        pend.pop();
    }
    // application
    if n >= 2 {
        let m = n - 2;
        for a in 0..=m {
            let b = m - a;
            let splits: &[(usize, usize)] = if h == 0 { &[(0, 0)] } else { &[(1, 0), (0, 1)] };
            for &(ha, hb) in splits {
                if c.get(a, d, ha) == 0 || c.get(b, d, hb) == 0 {
                    continue;
                }
                pend.push(Pend {
                    n: b as u8,
                    d: d as u8,
                    h: hb as u8,
                });
                pend.push(Pend {
                    n: a as u8,
                    d: d as u8,
                    h: ha as u8,
                });
                gen(c, pend, acc << 2 | 1, len + 2, hole, f);
                pend.pop();
                pend.pop();
            }
        }
    }
    pend.push(p);
}

fn bits_of(x: u64, len: u8) -> impl Iterator<Item = bool> {
    (0..len).rev().map(move |i| x >> i & 1 == 1)
}

#[derive(Clone, Copy, PartialEq, Eq, Debug)]
enum Verdict {
    Pass,
    Fail,
    Unknown,
}

struct Judge<'a> {
    /// The parser body with intL bound k binders up, as wire bits.
    bodies: &'a [Vec<bool>],
    probes: &'a [Probe],
    /// Strict mode: open programs whose free variable is used must not halt.
    open: &'a [Probe],
}

impl Judge<'_> {
    fn assemble(&self, buf: &mut Vec<bool>, p: &Probe, c: &Ctx) {
        buf.clear();
        buf.extend_from_slice(&p.head);
        buf.extend(bits_of(c.before, c.blen));
        buf.extend_from_slice(&self.bodies[c.k as usize]);
        buf.extend(bits_of(c.after, c.alen));
        buf.extend_from_slice(&p.tail);
    }

    fn judge(
        &self,
        pool: &mut Pool,
        vm: &mut Machine,
        buf: &mut Vec<bool>,
        c: &Ctx,
        mult: u64,
    ) -> Verdict {
        let mut verdict = Verdict::Pass;
        let mut open = 0;
        for p in self.probes {
            self.assemble(buf, p, c);
            pool.clear();
            let Some(root) = pool.decode(&mut buf.iter().copied()) else {
                return Verdict::Fail;
            };
            let beta = mult * p.beta + 64 * mult;
            let mut sink = Golden {
                g: &p.golden,
                pos: 0,
                bad: false,
            };
            match vm.normalize_capped(pool, root, beta, 64 * beta, &mut sink) {
                Ok(_) if !sink.bad && sink.pos == p.golden.len() => {}
                Ok(_) | Err(OutOfFuel::Aborted) => return Verdict::Fail,
                Err(_) => {
                    verdict = Verdict::Unknown;
                    open += 1;
                    if open == 3 {
                        return verdict;
                    }
                }
            }
        }
        if verdict == Verdict::Pass {
            // A strict machine has no normal form on these; halting refutes it.
            for p in self.open {
                self.assemble(buf, p, c);
                pool.clear();
                let Some(root) = pool.decode(&mut buf.iter().copied()) else {
                    return Verdict::Fail;
                };
                let mut sink = SizeSink(0);
                if vm
                    .normalize_capped(pool, root, 1 << 16, 1 << 22, &mut sink)
                    .is_ok()
                {
                    return Verdict::Fail;
                }
            }
        }
        verdict
    }
}

/// Render a context with `H_k` at the hole.
fn show(c: &Ctx, body_size: u32) -> String {
    let mut s = String::new();
    s.extend(bits_of(c.before, c.blen).map(|b| if b { '1' } else { '0' }));
    s.push_str(&format!("[B{}:{}]", c.k, body_size + 2 * c.k as u32));
    s.extend(bits_of(c.after, c.alen).map(|b| if b { '1' } else { '0' }));
    s
}

fn spliced(c: &Ctx, bodies: &[Vec<bool>]) -> String {
    let mut s = String::new();
    s.extend(bits_of(c.before, c.blen).map(|b| if b { '1' } else { '0' }));
    s.extend(
        bodies[c.k as usize]
            .iter()
            .map(|&b| if b { '1' } else { '0' }),
    );
    s.extend(bits_of(c.after, c.alen).map(|b| if b { '1' } else { '0' }));
    s
}

/// The parser body `B` of the 168 (`\cont. …`), free in `intL`.
fn parser_body() -> T {
    let t = T::parse(INT168).expect("168");
    // (\x. x x) (\x. (\intL. B) (x x))
    let T::A(_, f) = &t else { unreachable!() };
    let T::L(fb) = &**f else { unreachable!() };
    let T::A(let_, _) = &**fb else { unreachable!() };
    let T::L(b) = &**let_ else { unreachable!() };
    (**b).clone()
}

/// Bodies, goldens, and probes shared by a run and the tests.
struct Setup {
    bodies: Vec<Vec<bool>>,
    body_bits: String,
    body_size: u32,
    reference: Ctx,
    probes: Vec<Probe>,
    open_probes: Vec<Probe>,
}

/// A machine containing the parser body (k = 0), as a context.
fn context_of(u: &str, body_bits: &str) -> Option<Ctx> {
    let at = u.find(body_bits)?;
    let (pre, post) = (&u[..at], &u[at + body_bits.len()..]);
    if pre.len() > 63 || post.len() > 63 {
        return None;
    }
    let num = |x: &str| {
        if x.is_empty() {
            0
        } else {
            u64::from_str_radix(x, 2).unwrap()
        }
    };
    Some(Ctx {
        before: num(pre),
        blen: pre.len() as u8,
        after: num(post),
        alen: post.len() as u8,
        k: 0,
    })
}

fn setup(n_programs: usize, strict: bool) -> Setup {
    let b = parser_body();
    let body_size = b.size();
    let bodies: Vec<Vec<bool>> = (0..MAXD as i64)
        .map(|k| b.shift(k, 0).bits().bytes().map(|c| c == b'1').collect())
        .collect();
    // The 178 = intL dbl = ((\x. x x) (\x. (\intL. B) (x x))) (\x. x x),
    // as a context around B (k = 0).
    let u178 = format!("01{INT168}00011010");
    let bbits = b.bits();
    let at = u178.find(&bbits).expect("B occurs in the 178");
    let pre178 = &u178[..at];
    let post178 = &u178[at + bbits.len()..];
    let _ = (pre178, post178);
    let reference = context_of(&u178, &bbits).expect("the 178 is a context around B");
    assert_eq!(spliced(&reference, &bodies).len(), 178);

    // Probes and goldens from the 178 itself.
    let mut pool = Pool::new();
    let mut vm = Machine::new();
    let mut buf = Vec::new();
    let mut probes = Vec::new();
    for m in programs(n_programs) {
        let mut pr = Probe::new_uni(&m);
        let j = Judge {
            bodies: &bodies,
            probes: &[],
            open: &[],
        };
        j.assemble(&mut buf, &pr, &reference);
        pool.clear();
        let root = pool
            .decode(&mut buf.iter().copied())
            .expect("probe decodes");
        let mut s = StringSink(String::new());
        if let Ok(beta) = vm.normalize_capped(&pool, root, 1 << 20, 1 << 26, &mut s) {
            pr.golden = s.0.bytes().map(|c| c - b'0').collect();
            pr.beta = beta;
            probes.push(pr);
        }
    }
    probes.sort_by_key(|p| p.beta);
    // Open programs whose free variable is applied or returned, terminated
    // by nil (Tromp's KS convention): a strict machine has no normal form on
    // them. A symbolic tail is not enough: a machine that re-parses leftover
    // input on a free variable gets stuck on it and only looks strict.
    let open_probes: Vec<Probe> = if strict {
        ["10", "110", "00110", "011010", "01101010", "000011110"]
            .iter()
            .map(|m| {
                let mut p = Probe::new_uni(m);
                p.head = vec![false, true]; // U S, no outer binder
                let n = p.tail.len();
                p.tail.truncate(n - (2 + m.len())); // drop the rigid tail variable
                super::ctx::push_bits(&mut p.tail, "000010"); // nil
                p
            })
            .collect()
    } else {
        Vec::new()
    };
    Setup {
        bodies,
        body_bits: bbits,
        body_size,
        reference,
        probes,
        open_probes,
    }
}

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut max_size = 31usize;
    let mut min_size = 0usize;
    let mut n_programs = usize::MAX;
    let mut counts_only = false;
    let mut threads = 0usize;
    let mut dump: Option<String> = None;
    let mut strict = false;
    let mut check: Option<String> = None;
    let mut p = Args::new("selfint wiring", argv);
    while let Some(tok) = p.next() {
        match tok {
            "--max-size" => max_size = p.num(tok)?,
            "--min-size" => min_size = p.num(tok)?,
            "--programs" => n_programs = p.num(tok)?,
            "--threads" => threads = p.num(tok)?,
            "--dump" => dump = Some(p.value(tok)?.to_string()),
            "--check" => check = Some(p.value(tok)?.to_string()),
            "--strict" => {
                p.flag(tok)?;
                strict = true
            }
            "--counts-only" => {
                p.flag(tok)?;
                counts_only = true;
            }
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    p.at_most(0)?;
    if max_size > 60 {
        return Err("blam selfint wiring: --max-size must be at most 60".into());
    }
    args::build_pool(threads)?;
    let Setup {
        bodies,
        body_bits,
        body_size,
        reference,
        probes,
        open_probes,
    } = setup(n_programs, strict);
    let mut pool = Pool::new();
    let mut vm = Machine::new();
    let mut buf = Vec::new();
    let judge = Judge {
        bodies: &bodies,
        probes: &probes,
        open: &open_probes,
    };
    let canary = judge.judge(&mut pool, &mut vm, &mut buf, &reference, 8);
    assert_eq!(
        canary,
        if strict { Verdict::Fail } else { Verdict::Pass },
        "the 178 passes the non-strict contract and fails the strict one"
    );
    println!(
        "parser body {body_size} bits; {} probe programs; the 178 is context {} (32 bits)",
        probes.len(),
        show(&reference, body_size)
    );
    if let Some(u) = check {
        let c = context_of(&u, &body_bits).ok_or("blam selfint wiring: --check: the parser body (k = 0) must occur, with at most 63 bits on each side")?;
        println!(
            "{} bits, context {} bits: {:?}",
            u.len(),
            c.blen as usize + c.alen as usize,
            judge.judge(&mut pool, &mut vm, &mut buf, &c, 8)
        );
        return Ok(());
    }
    let counts = Counts::new(max_size);
    println!(
        "{:>4} {:>14} {:>10} {:>9} {:>8}",
        "size", "contexts", "unknown", "survivors", "time_s"
    );
    let mut total = 0u64;
    let mut survivors_all = 0usize;
    let mut dumped = String::new();
    for n in min_size..=max_size {
        let want = counts.get(n, 0, 1);
        if want == 0 {
            continue;
        }
        if counts_only {
            println!("{n:>4} {want:>14}");
            continue;
        }
        let t0 = Instant::now();
        let mut batch: Vec<Ctx> = Vec::with_capacity(1 << 20);
        let mut seen = 0u64;
        let mut unknown: Vec<Ctx> = Vec::new();
        let mut pass: Vec<Ctx> = Vec::new();
        let flush = |batch: &mut Vec<Ctx>, unknown: &mut Vec<Ctx>, pass: &mut Vec<Ctx>| {
            let res: Vec<(Verdict, Ctx)> = batch
                .par_iter()
                .map_init(
                    || (Pool::new(), Machine::new(), Vec::new()),
                    |(pool, vm, buf), c| (judge.judge(pool, vm, buf, c, 8), *c),
                )
                .filter(|(v, _)| *v != Verdict::Fail)
                .collect();
            for (v, c) in res {
                match v {
                    Verdict::Pass => pass.push(c),
                    Verdict::Unknown => unknown.push(c),
                    Verdict::Fail => {}
                }
            }
            batch.clear();
        };
        let mut pend = vec![Pend {
            n: n as u8,
            d: 0,
            h: 1,
        }];
        gen(&counts, &mut pend, 0, 0, None, &mut |c| {
            seen += 1;
            batch.push(c);
            if batch.len() == 1 << 20 {
                flush(&mut batch, &mut unknown, &mut pass);
            }
        });
        flush(&mut batch, &mut unknown, &mut pass);
        assert_eq!(
            seen, want,
            "enumeration disagrees with the count at size {n}"
        );
        // escalate budget-capped contexts
        let esc: Vec<(Verdict, Ctx)> = unknown
            .par_iter()
            .map_init(
                || (Pool::new(), Machine::new(), Vec::new()),
                |(pool, vm, buf), c| (judge.judge(pool, vm, buf, c, 512), *c),
            )
            .collect();
        let mut still = Vec::new();
        for (v, c) in esc {
            match v {
                Verdict::Pass => pass.push(c),
                Verdict::Unknown => still.push(c),
                Verdict::Fail => {}
            }
        }
        println!(
            "{n:>4} {seen:>14} {:>10} {:>9} {:>8.1}",
            still.len(),
            pass.len(),
            t0.elapsed().as_secs_f64()
        );
        for c in pass.iter().take(20) {
            println!(
                "     SURVIVOR {}  total {} bits",
                show(c, body_size),
                spliced(c, &bodies).len()
            );
            println!("       {}", spliced(c, &bodies));
        }
        for c in still.iter().take(5) {
            println!("     UNKNOWN  {}", show(c, body_size));
        }
        for c in &pass {
            dumped.push_str(&format!(
                "PASS {n} {} {}\n",
                show(c, body_size),
                spliced(c, &bodies)
            ));
        }
        for c in &still {
            dumped.push_str(&format!(
                "UNKNOWN {n} {} {}\n",
                show(c, body_size),
                spliced(c, &bodies)
            ));
        }
        total += seen;
        survivors_all += pass.len();
    }
    if !counts_only {
        println!("total {total} contexts: {survivors_all} survivors");
    }
    if let Some(path) = dump {
        std::fs::write(&path, dumped)
            .map_err(|e| format!("blam selfint wiring: --dump {path}: {e}"))?;
    }
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;

    /// Context counts agree with an independent count (the Python DP used
    /// to size the search): cumulative 188,474 through 24 bits.
    #[test]
    fn context_counts() {
        let c = Counts::new(32);
        let cum: u64 = (0..=24).map(|n| c.get(n, 0, 1)).sum();
        assert_eq!(cum, 188_474);
        assert_eq!(c.get(31, 0, 1), 6_842_642);
        assert_eq!(c.get(32, 0, 1), 13_517_348);
        let mut seen = 0u64;
        let mut pend = vec![Pend { n: 20, d: 0, h: 1 }];
        gen(&c, &mut pend, 0, 0, None, &mut |_| seen += 1);
        assert_eq!(seen, c.get(20, 0, 1));
    }

    /// Strict controls: the 178 is non-strict, the 190 strict, and the
    /// 182-bit `intL (intL intL)` only looks strict with a symbolic tail.
    #[test]
    fn strict_controls() {
        // (\a. a (a a)) ((\x. x x) F) = intL (intL intL), from the first strict run
        let u182 = "01000110011010010001101000010000010000011000000101110011011110010111111010010110101000011110000101110011110000001111000000101110111001101111001111100001111100001011110100111010011010";
        let u178 = format!("01{INT168}00011010");
        let u190 = "0100010110000100000100000110000001011100110111100101111110100101101010000111100001011100111100000011110000001011101110011011110011111000011111000010111101001110100110100001100111011000011010";
        let (mut pool, mut vm, mut buf) = (Pool::new(), Machine::new(), Vec::new());
        for strict in [false, true] {
            let st = setup(30, strict);
            let judge = Judge {
                bodies: &st.bodies,
                probes: &st.probes,
                open: &st.open_probes,
            };
            let mut verdict = |u: &str| {
                let c = context_of(u, &st.body_bits).expect("context");
                judge.judge(&mut pool, &mut vm, &mut buf, &c, 8)
            };
            assert_eq!(
                verdict(&u178),
                if strict { Verdict::Fail } else { Verdict::Pass }
            );
            assert_eq!(verdict(u190), Verdict::Pass);
            assert_eq!(
                verdict(u182),
                if strict { Verdict::Fail } else { Verdict::Pass }
            );
        }
    }
}
