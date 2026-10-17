//! Sketch search: any interpreter template, every fill of one or two holes.
//!
//! `ctx` splices candidates into the 168 at its six fixed slots. This takes
//! an arbitrary template instead: the wire bits of a candidate interpreter
//! with a `_` where a term goes, and optionally a second hole `~`. That lets
//! a hand-made protocol change in one place (say, a different variable
//! value) be paired with an exhaustive search for the compensating fragment
//! somewhere else (say, the cell), and two coupled slots be searched jointly.
//!
//! The frame at each hole is read off the template. Goldens and per-probe
//! budgets come from the reference (the 168, or with `--uni` the 178 `intL
//! dbl`), so the check is the same exact contract `ctx` uses: every probe
//! program's normal form must match. Survivors are hypotheses until
//! `tools/self-interpreter/battery.py` passes them.

use super::ctx::{programs, spliced, Ctx, Probe, Stats, Verdict};
use crate::args::{self, Args, R};
use crate::q::selfint::INT168;
use crate::slots::{go, split_tasks, Counts, Pending};
use blam::blc::wire::enc_to_string;
use blam::classical::escalation::EngineCfg;
use blam::classical::machine::{Machine, Pool, StringSink};
use rayon::prelude::*;
use std::time::Instant;

const USAGE: &str = "\
blam selfint hole — every fill of the holes in an interpreter template

usage: blam selfint hole TEMPLATE --max-size N [--min-size N] [--must I,J]
                         [--max2 N] [--must2 I,J] [--max-sum N]
                         [--uni] [--programs N] [--escalate N] [--threads N]

  TEMPLATE        wire bits with one `_` standing for a term, and
                  optionally one `~` for a second, jointly searched term
  --max-size N    largest `_` fill in bits
  --min-size N    smallest `_` fill (default 2)
  --must I,J      1-based de Bruijn indices (at the hole, at most 8) that
                  every `_` fill must mention
  --max2 N        largest `~` fill (required with `~`); --must2 as --must
  --max-sum N     largest total of the two fills (default: no limit)
  --uni           universal-machine contract (goldens from the 178)
  --programs N    probe programs (default: ctx's ~91)
  --escalate N    re-run a size's capped fills at 512x budget when there are
                  at most N (default 20000)

With `~`, every `~` fill is enumerated in turn and the `_` hole searched
under it. Reports each hole's frame depth and every surviving fill.";

/// Check `bits[i..]` is one term under `depth` binders; returns the end and
/// records the depth at each hole (`_` first, `~` second).
fn parse(b: &[u8], mut i: usize, depth: u32, hole: &mut [Option<u32>; 2]) -> R<usize> {
    match b.get(i..i + 1) {
        Some(c @ (b"_" | b"~")) => {
            let k = usize::from(c == b"~");
            if hole[k].is_some() {
                return Err("blam selfint hole: a hole occurs twice".into());
            }
            hole[k] = Some(depth);
            return Ok(i + 1);
        }
        None => return Err("blam selfint hole: template ends early".into()),
        _ => {}
    }
    match b.get(i..i + 2) {
        Some(b"00") => parse(b, i + 2, depth + 1, hole),
        Some(b"01") => {
            let j = parse(b, i + 2, depth, hole)?;
            parse(b, j, depth, hole)
        }
        _ => {
            let mut n = 0;
            while b.get(i) == Some(&b'1') {
                n += 1;
                i += 1;
            }
            if b.get(i) != Some(&b'0') || n == 0 {
                return Err(format!("blam selfint hole: bad bits at {i}"));
            }
            if n > depth {
                return Err(format!("blam selfint hole: free variable at {i}"));
            }
            Ok(i + 1)
        }
    }
}

fn must_mask(v: &str) -> R<u8> {
    let mut m = 0u8;
    for s in v.split(',') {
        let k: u32 = s
            .parse()
            .map_err(|_| format!("blam selfint hole: bad index list `{v}`"))?;
        if !(1..=8).contains(&k) {
            return Err("blam selfint hole: --must indices are 1..=8".into());
        }
        m |= 1 << (k - 1);
    }
    Ok(m)
}

/// Every fill of one hole, size by size; `verbose` prints the size table.
#[allow(clippy::too_many_arguments)]
fn search(
    ctx: &Ctx,
    counts: &Counts,
    must: u8,
    min: u8,
    max: u8,
    escalate: usize,
    base: usize,
    verbose: bool,
) -> Stats {
    let mut all = Stats::default();
    for n in min..=max {
        let root = Pending {
            depth: 0,
            size: n,
            must,
            forbid: 0,
        };
        let want = counts.get(root);
        if want == 0 {
            continue;
        }
        let t0 = Instant::now();
        let tasks = split_tasks(counts, root, rayon::current_num_threads() * 64);
        let mut st = tasks
            .par_iter()
            .map_init(
                || (Pool::new(), Machine::new(), Vec::new()),
                |(pool, vm, buf), task| {
                    let mut st = Stats::default();
                    let mut pending = task.pending.clone();
                    go(counts, &mut pending, task.acc, task.len, &mut |enc, len| {
                        st.total += 1;
                        match ctx.judge(pool, vm, buf, enc, len) {
                            Verdict::Pass => st.pass.push((enc, len)),
                            Verdict::Fail => st.fail += 1,
                            Verdict::Unknown => st.unknown.push((enc, len)),
                        }
                    });
                    st
                },
            )
            .reduce(Stats::default, Stats::merge);
        assert_eq!(st.total, want, "enumeration disagrees with the DP at {n}");
        let unknown = if st.unknown.len() <= escalate {
            std::mem::take(&mut st.unknown)
        } else {
            Vec::new()
        };
        let settled: Vec<(Verdict, (u64, u8))> = unknown
            .par_iter()
            .map_init(
                || (Pool::new(), Machine::new(), Vec::new()),
                |(pool, vm, buf), &(enc, len)| {
                    (ctx.judge_at(pool, vm, buf, enc, len, 512), (enc, len))
                },
            )
            .collect();
        for (v, c) in settled {
            match v {
                Verdict::Pass => st.pass.push(c),
                Verdict::Fail => st.fail += 1,
                Verdict::Unknown => st.unknown.push(c),
            }
        }
        if verbose {
            println!(
                "{n:>4} {:>6} {:>14} {:>9} {:>9} {:>8.1}",
                base + n as usize,
                st.total,
                st.unknown.len(),
                st.pass.len(),
                t0.elapsed().as_secs_f64()
            );
        }
        all = all.merge(st);
    }
    all
}

fn report(st: &Stats, pre: &[bool], post: &[bool], indent: &str) {
    for (enc, len) in st.pass.iter().take(20) {
        println!("{indent}SURVIVOR {len} bits  {}", enc_to_string(*enc, *len));
        println!("{indent}  spliced {}", spliced(pre, post, *enc, *len));
    }
    for (enc, len) in st.unknown.iter().take(5) {
        println!("{indent}UNKNOWN  {len} bits  {}", enc_to_string(*enc, *len));
    }
}

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut max_size: Option<u8> = None;
    let mut max2: Option<u8> = None;
    let mut max_sum: usize = usize::MAX;
    let mut min_size: u8 = 2;
    let (mut must, mut must2) = (0u8, 0u8);
    let mut uni = false;
    let mut n_programs = usize::MAX;
    let mut threads = 0usize;
    let mut escalate = 20_000usize;
    let mut p = Args::new("selfint hole", argv);
    while let Some(tok) = p.next() {
        match tok {
            "--max-size" => max_size = Some(p.num(tok)?),
            "--max2" => max2 = Some(p.num(tok)?),
            "--max-sum" => max_sum = p.num(tok)?,
            "--min-size" => min_size = p.num(tok)?,
            "--programs" => n_programs = p.num(tok)?,
            "--threads" => threads = p.num(tok)?,
            "--escalate" => escalate = p.num(tok)?,
            "--uni" => {
                p.flag(tok)?;
                uni = true;
            }
            "--must" => must = must_mask(p.value(tok)?)?,
            "--must2" => must2 = must_mask(p.value(tok)?)?,
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    p.at_most(1)?;
    let Some(template) = p.positional().first().copied() else {
        return Err(format!(
            "blam selfint hole: missing template\n{}",
            args::hint("selfint hole")
        ));
    };
    let max_size = max_size.ok_or("blam selfint hole: --max-size is required")?;
    if max_size > 60 || max2.is_some_and(|m| m > 60) {
        return Err("blam selfint hole: fills are at most 60 bits".into());
    }
    let tb = template.as_bytes();
    let mut holes = [None, None];
    let end = parse(tb, 0, 0, &mut holes)?;
    if end != tb.len() {
        return Err("blam selfint hole: trailing bits after the term".into());
    }
    let frame = holes[0].ok_or("blam selfint hole: no `_` in the template")?;
    let two = holes[1].is_some();
    if two != max2.is_some() {
        return Err("blam selfint hole: --max2 goes with a `~` hole, and only then".into());
    }
    let frame2 = holes[1].unwrap_or(0);
    if frame > 64 || frame2 > 64 {
        return Err("blam selfint hole: hole too deep".into());
    }
    let (frame, frame2) = (frame as u8, frame2 as u8);
    if must >> frame.min(8) != 0 || must2 >> frame2.min(8) != 0 {
        return Err("blam selfint hole: --must index beyond the frame".into());
    }
    let bits = |s: &str| s.bytes().map(|c| c == b'1').collect::<Vec<bool>>();
    let at2 = template.find('~');

    args::build_pool(threads)?;
    let cfg = args::engine_cfg("selfint hole", None, None)?;
    let probes = make_probes(cfg, uni, n_programs);
    let fixed = template.len() - 1 - usize::from(two);
    println!(
        "template {fixed} bits + fills; `_` frame {frame} must {must:#010b}{}; {} probes ({})",
        if two {
            format!(", `~` frame {frame2} must {must2:#010b}")
        } else {
            String::new()
        },
        probes.len(),
        if uni {
            "universal machine"
        } else {
            "self-interpreter"
        },
    );
    let counts = Counts::new(frame, must, max_size);
    let t_all = Instant::now();

    let Some(at2) = at2 else {
        let at = template.find('_').expect("hole");
        let (pre, post) = (bits(&template[..at]), bits(&template[at + 1..]));
        let ctx = Ctx {
            cfg,
            pre: &pre,
            post: &post,
            probes: &probes,
        };
        println!(
            "{:>4} {:>6} {:>14} {:>9} {:>9} {:>8}",
            "fill", "total", "candidates", "unknown", "survivors", "time_s"
        );
        let st = search(
            &ctx, &counts, must, min_size, max_size, escalate, fixed, true,
        );
        report(&st, &pre, &post, "     ");
        println!(
            "total {} fills in {:.1}s: {} survivors, {} unknown",
            st.total,
            t_all.elapsed().as_secs_f64(),
            st.pass.len(),
            st.unknown.len()
        );
        return Ok(());
    };

    // Two holes: every `~` fill in turn, then the `_` search under it.
    let max2 = max2.expect("checked");
    let counts2 = Counts::new(frame2, must2, max2);
    let mut fills2 = Vec::new();
    for n in 2..=max2 {
        let mut pending = vec![Pending {
            depth: 0,
            size: n,
            must: must2,
            forbid: 0,
        }];
        go(&counts2, &mut pending, 0, 0, &mut |enc, len| {
            fills2.push((enc, len))
        });
    }
    println!("{} `~` fills up to {max2} bits", fills2.len());
    let (mut total, mut pass, mut unknown) = (0u64, 0usize, 0usize);
    let mut last_len = 0u8;
    for &(e2, l2) in &fills2 {
        if (l2 as usize + min_size as usize) > max_sum {
            continue;
        }
        if l2 != last_len {
            if last_len != 0 {
                println!(
                    "  `~` size {last_len} done: {total} pairs so far, {:.1}s",
                    t_all.elapsed().as_secs_f64()
                );
            }
            last_len = l2;
        }
        let fill2 = enc_to_string(e2, l2);
        let full = format!("{}{}{}", &template[..at2], fill2, &template[at2 + 1..]);
        let at = full.find('_').expect("hole");
        let (pre, post) = (bits(&full[..at]), bits(&full[at + 1..]));
        let ctx = Ctx {
            cfg,
            pre: &pre,
            post: &post,
            probes: &probes,
        };
        let max1 = max_size.min((max_sum - l2 as usize).min(60) as u8);
        let st = search(&ctx, &counts, must, min_size, max1, escalate, fixed, false);
        total += st.total;
        pass += st.pass.len();
        unknown += st.unknown.len();
        if !st.pass.is_empty() || !st.unknown.is_empty() {
            println!("  `~` = {fill2} ({l2} bits)");
            report(&st, &pre, &post, "     ");
        }
    }
    println!(
        "total {total} fill pairs in {:.1}s: {pass} survivors, {unknown} unknown",
        t_all.elapsed().as_secs_f64()
    );
    Ok(())
}

/// Probe programs with goldens and budgets from the reference.
fn make_probes(cfg: EngineCfg, uni: bool, n_programs: usize) -> Vec<Probe> {
    let _ = cfg;
    let reference = if uni {
        format!("01{INT168}00011010")
    } else {
        INT168.to_string()
    };
    let rb: Vec<bool> = reference.bytes().map(|c| c == b'1').collect();
    let mut probes = Vec::new();
    let mut pool = Pool::new();
    let mut vm = Machine::new();
    let mut buf: Vec<bool> = Vec::new();
    for m in programs(n_programs) {
        let mut pr = if uni {
            Probe::new_uni(&m)
        } else {
            Probe::new(&m)
        };
        buf.clear();
        buf.extend_from_slice(&pr.head);
        buf.extend_from_slice(&rb);
        buf.extend_from_slice(&pr.tail);
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
    probes
}

#[cfg(test)]
mod tests {
    use super::*;

    /// The 168 with its cons' cell as the hole: the frame is read off the
    /// template, and exactly the 24-bit cell fills it at 24 bits or fewer.
    #[test]
    fn the_cell_control() {
        let cell = "000001011101110011011110";
        let template = INT168.replacen(cell, "_", 1);
        let mut holes = [None, None];
        let end = parse(template.as_bytes(), 0, 0, &mut holes).expect("parses");
        assert_eq!((end, holes), (template.len(), [Some(7), None]));
        let at = template.find('_').expect("hole");
        let bits = |s: &str| s.bytes().map(|c| c == b'1').collect::<Vec<bool>>();
        let (pre, post) = (bits(&template[..at]), bits(&template[at + 1..]));
        let probes = make_probes(EngineCfg::default(), false, usize::MAX);
        let ctx = Ctx {
            cfg: EngineCfg::default(),
            pre: &pre,
            post: &post,
            probes: &probes,
        };
        let st = search(&ctx, &Counts::new(7, 0b11, 24), 0b11, 2, 24, 0, 144, false);
        let pass: Vec<String> = st.pass.iter().map(|&(e, l)| enc_to_string(e, l)).collect();
        assert_eq!(pass, [cell]);
        assert_eq!(st.total, 57_390);
    }

    #[test]
    fn templates_are_checked() {
        let mut holes = [None, None];
        assert!(parse(b"00_", 0, 0, &mut holes).is_ok());
        assert_eq!(holes, [Some(1), None]);
        for bad in ["0010_", "0110", "00~_"] {
            let mut holes = [None, None];
            let ok = parse(bad.as_bytes(), 0, 0, &mut holes)
                .is_ok_and(|end| end == bad.len() && holes[0].is_some());
            assert!(!ok, "{bad}");
        }
    }
}
