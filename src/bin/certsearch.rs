//! Ratchet-certificate sweep over a terms file (default: the live
//! unknown frontier). Spec: tools/cert/SPEC.md. Discovery is untrusted;
//! every reported RATCHET line has passed the trusted `verify`.
//!
//! Sound hnf descent (`--no-descend` disables): if the bounded head
//! reduction of a term reaches head normal form `λ…λ. v a₁ … aₖ`, the
//! term's normal form requires every `aᵢ` to normalize — so a *closed*
//! `aᵢ` with a ratchet certificate kills the whole term. Open arguments
//! are skipped (the v1 machinery assumes closed metavariables).

use blam::cert::{
    discover_stream, head_step, try_htr, try_selector, verify, HeadTowerRatchet, PTerm, Ratchet,
    SelectorRatchet, Step,
};
use blam::parse::parse_all;
use blam::term::Term;
use rayon::prelude::*;
use std::io::Write;
use std::sync::atomic::{AtomicU64, Ordering};

struct Cfg {
    steps: u32,
    nodes: u64,
    lemma_steps: u32,
    descend_depth: u32,
    threads: usize,
}

/// Where a certificate bit: at the top term or inside an hnf argument,
/// and which certificate class fired (v1 Ratchet or v2 HeadTowerRatchet).
enum Kill {
    Top(Ratchet),
    Arg { path: String, cert: Ratchet },
    Top2(HeadTowerRatchet),
    Arg2 { path: String, cert: HeadTowerRatchet },
    Top3(SelectorRatchet),
    Arg3 { path: String, cert: SelectorRatchet },
}

/// Bounded head reduction to hnf. Some(hnf) if reached, None otherwise.
fn head_normalize(t: &PTerm, steps: u32, nodes: u64) -> Option<PTerm> {
    let mut cur = t.clone();
    let mut size = cur.nodes() as i64;
    for _ in 0..steps {
        if size > nodes as i64 {
            return None;
        }
        cur = match head_step(&cur, nodes) {
            Step::Did(next, d) => {
                size += d;
                next
            }
            Step::Nf => return Some(cur),
            Step::MetaHead | Step::TooBig => return None,
        };
    }
    None
}

/// Strip leading lambdas, then split the spine: (depth, head var, args).
fn spine(t: &PTerm) -> (u32, &PTerm, Vec<&PTerm>) {
    let mut depth = 0;
    let mut cur = t;
    while let PTerm::Lam(b) = cur {
        depth += 1;
        cur = b;
    }
    let mut args = Vec::new();
    while let PTerm::App(f, a) = cur {
        args.push(&**a);
        cur = f;
    }
    args.reverse();
    (depth, cur, args)
}

fn try_kill(t: &Term, cfg: &Cfg, depth: u32, path: &str) -> Option<Kill> {
    // Streaming discovery: each candidate triple is tried against BOTH
    // trusted checkers; a rejection retires only that milestone family,
    // so later families still get their shot (Codex round three:
    // first-candidate masking was the main completeness gap).
    let mut found: Option<Kill> = None;
    discover_stream(t, cfg.steps, cfg.nodes, &mut |cand: &Ratchet| {
        if verify(t, cand, cfg.lemma_steps, cfg.steps, cfg.nodes).is_ok() {
            found = Some(if path.is_empty() {
                Kill::Top(cand.clone())
            } else {
                Kill::Arg {
                    path: path.to_string(),
                    cert: cand.clone(),
                }
            });
            return true;
        }
        // v2: same discovered triple, HeadTowerRatchet obligations
        if let Some((htr, _)) = try_htr(t, cand, cfg.lemma_steps, cfg.steps, cfg.nodes) {
            found = Some(if path.is_empty() {
                Kill::Top2(htr)
            } else {
                Kill::Arg2 {
                    path: path.to_string(),
                    cert: htr,
                }
            });
            return true;
        }
        // v3: same triple, SelectorRatchet obligations (Codex round nine)
        if let Some((sel, _)) = try_selector(t, cand, cfg.lemma_steps, cfg.steps, cfg.nodes) {
            found = Some(if path.is_empty() {
                Kill::Top3(sel)
            } else {
                Kill::Arg3 {
                    path: path.to_string(),
                    cert: sel,
                }
            });
            return true;
        }
        false
    });
    if found.is_some() {
        return found;
    }
    if depth >= cfg.descend_depth {
        return None;
    }
    // hnf descent: recurse into closed spine arguments
    let hnf = head_normalize(&PTerm::from_term(t), cfg.steps, cfg.nodes)?;
    let (_, _, args) = spine(&hnf);
    for (i, arg) in args.iter().enumerate() {
        // closed relative to nothing: v1 needs genuinely closed subterms
        if arg.max_free(0) == 0 {
            if let Some(at) = arg.to_term() {
                let sub_path = if path.is_empty() {
                    format!("{i}")
                } else {
                    format!("{path}.{i}")
                };
                if let Some(kill) = try_kill(&at, cfg, depth + 1, &sub_path) {
                    return Some(kill);
                }
            }
        }
    }
    None
}

fn main() {
    // Default budgets: 1000/100k is measured kill-equivalent to
    // 2000/200k over a full frontier sweep (byte-identical
    // certificates) at ~4× less wall. Raise via flags for thorough
    // runs; fuel controls run at 8000/800k.
    let mut cfg = Cfg {
        steps: 1000,
        nodes: 100_000,
        lemma_steps: 4096,
        descend_depth: 8,
        threads: 0, // 0 = rayon default (all cores)
    };
    let mut term_arg: Option<String> = None;
    let mut file_arg: Option<String> = None;

    let mut args = std::env::args().skip(1);
    while let Some(a) = args.next() {
        match a.as_str() {
            "--steps" => cfg.steps = args.next().unwrap().parse().unwrap(),
            "--nodes" => cfg.nodes = args.next().unwrap().parse().unwrap(),
            "--lemma-steps" => cfg.lemma_steps = args.next().unwrap().parse().unwrap(),
            "--no-descend" => cfg.descend_depth = 0,
            "--threads" => cfg.threads = args.next().unwrap().parse().unwrap(),
            "--term" => term_arg = Some(args.next().unwrap()),
            "--terms-file" => file_arg = Some(args.next().unwrap()),
            other => {
                eprintln!("unknown arg: {other}");
                std::process::exit(2);
            }
        }
    }

    let lines: Vec<String> = if let Some(bits) = term_arg {
        vec![bits]
    } else {
        let path = file_arg.unwrap_or_else(|| "unknowns_41.txt".to_string());
        std::fs::read_to_string(&path)
            .unwrap_or_else(|e| panic!("read {path}: {e}"))
            .lines()
            .map(|l| l.trim().to_string())
            .filter(|l| !l.is_empty())
            .collect()
    };

    if cfg.threads > 0 {
        rayon::ThreadPoolBuilder::new()
            .num_threads(cfg.threads)
            .build_global()
            .unwrap();
    }

    // Per-term parallel; each worker builds and drops its own Rc trees.
    // Output is streamed one self-describing line at a time (unordered —
    // kills lose nothing, per the ops ledger), counters are atomic.
    let (kills_top, kills_arg, kills_htr, kills_sel, none) = (
        AtomicU64::new(0),
        AtomicU64::new(0),
        AtomicU64::new(0),
        AtomicU64::new(0),
        AtomicU64::new(0),
    );
    lines.par_iter().for_each(|bits| {
        let t = match parse_all(bits) {
            Ok(t) => t,
            Err(e) => {
                eprintln!("parse error on {bits}: {e:?}");
                return;
            }
        };
        let line = match try_kill(&t, &cfg, 0, "") {
            Some(Kill::Top(cert)) => {
                kills_top.fetch_add(1, Ordering::Relaxed);
                format!(
                    "RATCHET\t{bits}\thead={}\tw={}\tc0={}",
                    cert.a.to_bits(),
                    cert.w,
                    cert.c0.to_bits()
                )
            }
            Some(Kill::Arg { path, cert }) => {
                kills_arg.fetch_add(1, Ordering::Relaxed);
                format!(
                    "RATCHET-ARG\t{bits}\tat={path}\thead={}\tw={}\tc0={}",
                    cert.a.to_bits(),
                    cert.w,
                    cert.c0.to_bits()
                )
            }
            Some(Kill::Top2(cert)) => {
                kills_htr.fetch_add(1, Ordering::Relaxed);
                format!(
                    "RATCHET2\t{bits}\thead={}\tw={}\tc0={}\ti={}",
                    cert.a.to_bits(),
                    cert.w,
                    cert.c0.to_bits(),
                    cert.i.to_bits()
                )
            }
            Some(Kill::Arg2 { path, cert }) => {
                kills_htr.fetch_add(1, Ordering::Relaxed);
                format!(
                    "RATCHET2-ARG\t{bits}\tat={path}\thead={}\tw={}\tc0={}\ti={}",
                    cert.a.to_bits(),
                    cert.w,
                    cert.c0.to_bits(),
                    cert.i.to_bits()
                )
            }
            Some(Kill::Top3(cert)) => {
                kills_sel.fetch_add(1, Ordering::Relaxed);
                format!(
                    "SELECTOR\t{bits}\thead={}\tw={}\tp={}\tc0={}",
                    cert.a.to_bits(),
                    cert.w,
                    cert.p,
                    cert.c0.to_bits()
                )
            }
            Some(Kill::Arg3 { path, cert }) => {
                kills_sel.fetch_add(1, Ordering::Relaxed);
                format!(
                    "SELECTOR-ARG\t{bits}\tat={path}\thead={}\tw={}\tp={}\tc0={}",
                    cert.a.to_bits(),
                    cert.w,
                    cert.p,
                    cert.c0.to_bits()
                )
            }
            None => {
                none.fetch_add(1, Ordering::Relaxed);
                format!("none\t{bits}")
            }
        };
        let stdout = std::io::stdout();
        let mut lock = stdout.lock();
        writeln!(lock, "{line}").unwrap();
    });
    eprintln!(
        "certsearch: {} terms; ratchet {} top + {} arg, htr {}, selector {}; total {}; unresolved {}",
        lines.len(),
        kills_top.load(Ordering::Relaxed),
        kills_arg.load(Ordering::Relaxed),
        kills_htr.load(Ordering::Relaxed),
        kills_sel.load(Ordering::Relaxed),
        kills_top.load(Ordering::Relaxed)
            + kills_arg.load(Ordering::Relaxed)
            + kills_htr.load(Ordering::Relaxed)
            + kills_sel.load(Ordering::Relaxed),
        none.load(Ordering::Relaxed)
    );
}
