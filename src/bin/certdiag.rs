//! certdiag: instrument the ratchet discovery pipeline over a term
//! list and report, per term, exactly where the pipeline drops it.
//! Pure diagnostics — nothing here is trusted, nothing is a kill.
//!
//! Stages (last one reached wins):
//!   no-family     no lam-headed application state ever seen
//!   family        families exist, none collected 3 milestones
//!   window        3-windows exist, none strictly growing
//!   growth        growing window, but x1 never occurs in x2
//!   occur         wrapper extracted, but plug(w, x2) != x3
//!   plug          consistent candidate offered; verify failed (stage says which)
//!   KILL          verify accepted (would be a certsearch regression)
//!
//! Extra columns: milestone count of the best family, arity spread of
//! the most-recurrent head (spine-growth evidence for the v3 lane),
//! whether the window base is closed, and wrapper drift
//! (generalize(x3,x2) vs generalize(x2,x1) — a level-dependent W).
//!
//! Usage: certdiag <terms-file> [--steps N] [--nodes N] [--threads N]

use blc::cert::{
    generalize, head_step, match_wrapper, plug, spine, strip_lams, verify, verify_htr,
    CertFail, CheckFail, HeadTowerRatchet, HtrFail, PTerm, Ratchet, Step,
};
use blc::parse::parse_all;
use blc::term::Term;
use rayon::prelude::*;
use std::collections::HashMap;
use std::rc::Rc;

#[derive(Default)]
struct Diag {
    stage: &'static str,
    best_milestones: usize,
    head_arities: usize,
    max_arity: usize,
    x1_closed: bool,
    drift: &'static str,
    verify_fail: String,
}

/// Decode a verify failure into `Obligation:Kind[@step][:spine=...]`.
/// For a MetaHead abort, replay the symbolic trace to the abort state
/// and fingerprint its spine: which certificate objects the opaque
/// head is applied to (`Z`, `W[Z]`, `C0`, `A`, or a size).
fn describe_fail(e: &CertFail, cand: &Ratchet, max_nodes: u64) -> String {
    let (tag, check, start) = match e {
        CertFail::Open(c) => (
            "Open",
            c,
            Some(PTerm::App(
                PTerm::from_term(&cand.a).into(),
                PTerm::Meta(0).into(),
            )),
        ),
        CertFail::Desc(c) => (
            "Desc",
            c,
            Some(PTerm::App(cand.w.clone().into(), cand.w.clone().into())),
        ),
        CertFail::Base(c) => ("Base", c, None),
        CertFail::Init => return "Init".into(),
        CertFail::Shape(s) => return format!("Shape:{s}"),
    };
    match check {
        CheckFail::MetaHead(s) => {
            let mut out = format!("{tag}:MetaHead@{s}");
            if let Some(mut cur) = start {
                for _ in 0..*s {
                    match head_step(&cur, max_nodes) {
                        Step::Did(next, _) => cur = next,
                        _ => break,
                    }
                }
                let (lams, body) = strip_lams(&cur);
                let a = PTerm::from_term(&cand.a);
                let c0 = PTerm::from_term(&cand.c0);
                let name = |p: &PTerm| -> String {
                    if *p == PTerm::Meta(0) {
                        "Z".into()
                    } else if *p == cand.w {
                        "W[Z]".into()
                    } else if *p == a {
                        "A".into()
                    } else if *p == c0 {
                        "C0".into()
                    } else {
                        format!("s{}", p.nodes())
                    }
                };
                match spine(body) {
                    Some((h, args)) if **h == PTerm::Meta(0) => {
                        let fp: Vec<String> =
                            args.iter().take(4).map(|p| name(p)).collect();
                        out.push_str(&format!(
                            ":lam{lams}:Z·{}{}",
                            fp.join("·"),
                            if args.len() > 4 { "·…" } else { "" }
                        ));
                    }
                    _ => out.push_str(":odd"),
                }
            }
            out
        }
        CheckFail::ReachedNf(s) => format!("{tag}:Nf@{s}"),
        CheckFail::BadIntermediate(s) => format!("{tag}:BadSrc@{s}"),
        CheckFail::Budget => format!("{tag}:Budget"),
        CheckFail::TooBig(s) => format!("{tag}:TooBig@{s}"),
        CheckFail::Shape(s) => format!("{tag}:Shape:{s}"),
    }
}

/// Local copy of try_htr's candidate pool (closed_subterms is private
/// to cert.rs — this is a diagnostic, keep the trusted surface small).
fn closed_subterms_local(t: &PTerm, max_nodes: u64, out: &mut Vec<PTerm>) {
    if !t.contains_meta() && t.max_free(0) == 0 && t.nodes() <= max_nodes {
        out.push(t.clone());
    }
    match t {
        PTerm::Lam(b) => closed_subterms_local(b, max_nodes, out),
        PTerm::App(f, a) => {
            closed_subterms_local(f, max_nodes, out);
            closed_subterms_local(a, max_nodes, out);
        }
        _ => {}
    }
}

/// Replay try_htr's eraser loop, recording the DEEPEST obligation any
/// eraser reaches before failing (Base=0 … Erase=5, Init=6) and that
/// failure's kind. `HTR-KILL` would be a certsearch regression.
fn htr_probe(t: &Term, cand: &Ratchet, max_nodes: u64) -> String {
    let mut bottom = PTerm::from_term(&cand.c0);
    while let Some(inner) = match_wrapper(&cand.w, &bottom) {
        bottom = inner;
    }
    let Some(c0) = bottom.to_term() else {
        return "htr:no-bottom".into();
    };
    let mut cands: Vec<Term> = vec![Term::Lam(std::rc::Rc::new(Term::Var(1)))];
    let mut pool = Vec::new();
    closed_subterms_local(&PTerm::from_term(&cand.a), 9, &mut pool);
    closed_subterms_local(&cand.w, 9, &mut pool);
    for p in pool {
        if let Some(ct) = p.to_term() {
            if !cands.contains(&ct) {
                cands.push(ct);
            }
        }
    }
    let n_erasers = cands.len();
    let mut best: (i32, String) = (-1, "htr:none".into());
    for i in cands {
        let htr = HeadTowerRatchet {
            a: cand.a.clone(),
            w: cand.w.clone(),
            c0: c0.clone(),
            i,
        };
        let (depth, desc) = match verify_htr(t, &htr, 2000, 2000, max_nodes) {
            Ok(_) => return "HTR-KILL".into(),
            Err(HtrFail::Base(c)) => (0, format!("Base:{c:?}")),
            Err(HtrFail::Open(c)) => (1, format!("Open:{c:?}")),
            Err(HtrFail::Spread(c)) => (2, format!("Spread:{c:?}")),
            Err(HtrFail::Peel(c)) => (3, format!("Peel:{c:?}")),
            Err(HtrFail::Bounce(c)) => (4, format!("Bounce:{c:?}")),
            Err(HtrFail::Erase(c)) => (5, format!("Erase:{c:?}")),
            Err(HtrFail::Init) => (6, "Init".into()),
            Err(HtrFail::Shape(s)) => (-1, format!("Shape:{s}")),
        };
        if depth > best.0 {
            best = (depth, desc);
        }
    }
    format!(
        "htr[{n_erasers}]:{}",
        best.1
            .replace(|c: char| c == ',' || c == ' ', ";")
    )
}

fn diagnose(t: &Term, max_steps: u32, max_nodes: u64) -> Diag {
    let mut d = Diag {
        stage: "no-family",
        drift: "",
        ..Default::default()
    };
    let mut cur = PTerm::from_term(t);
    let mut size = cur.nodes() as i64;
    // Some(_) = collecting; None = retired after one verify rejection
    // (mirrors discover_stream — re-verifying every window of a family
    // is what made the first cut of this instrument grind).
    let mut families: HashMap<(Rc<PTerm>, usize), Option<Vec<PTerm>>> = HashMap::new();
    // arity spread per head (ignoring arity in the key)
    let mut arities: HashMap<Rc<PTerm>, Vec<usize>> = HashMap::new();

    let rank = |s: &str| match s {
        "no-family" => 0,
        "family" => 1,
        "window" => 2,
        "growth" => 3,
        "occur" => 4,
        "plug" => 5,
        _ => 6,
    };
    macro_rules! bump {
        ($s:expr) => {
            if rank($s) > rank(d.stage) {
                d.stage = $s;
            }
        };
    }

    for _ in 0..max_steps {
        let (_, body) = strip_lams(&cur);
        if let Some((h, spine_args)) = spine(body) {
            if matches!(**h, PTerm::Lam(_)) && h.nodes() <= 4096 {
                let x = spine_args[0];
                let ar = arities.entry(h.clone()).or_default();
                if !ar.contains(&spine_args.len()) {
                    ar.push(spine_args.len());
                }
                bump!("family");
                let key = (h.clone(), spine_args.len());
                let mut retire = false;
                let entry = families
                    .entry(key.clone())
                    .or_insert_with(|| Some(Vec::new()));
                let Some(args) = entry else {
                    // family retired
                    if size > max_nodes as i64 {
                        break;
                    }
                    cur = match head_step(&cur, max_nodes) {
                        Step::Did(next, delta) => {
                            size += delta;
                            next
                        }
                        _ => break,
                    };
                    continue;
                };
                if args.len() == 3 {
                    args.remove(0);
                }
                args.push((**x).clone());
                let k = args.len();
                if k > d.best_milestones {
                    d.best_milestones = k;
                }
                if k >= 3 {
                    bump!("window");
                    let (x1, x2, x3) = (&args[k - 3], &args[k - 2], &args[k - 1]);
                    if x1.nodes() < x2.nodes() && x2.nodes() < x3.nodes() {
                        bump!("growth");
                        d.x1_closed = x1.max_free(0) == 0 && !x1.contains_meta();
                        let w = generalize(x2, x1);
                        if w != PTerm::Meta(0) && w.contains_meta() {
                            bump!("occur");
                            if plug(&w, x2) == *x3 {
                                bump!("plug");
                                if let (Some(a), Some(c0)) = (h.to_term(), x1.to_term()) {
                                    let cand = Ratchet { a, w: w.clone(), c0 };
                                    match verify(t, &cand, 2000, 2000, max_nodes) {
                                        Ok(_) => {
                                            d.stage = "KILL";
                                            return d;
                                        }
                                        Err(e) => {
                                            if d.verify_fail.is_empty() {
                                                d.verify_fail = format!(
                                                    "{}|{}",
                                                    describe_fail(&e, &cand, max_nodes),
                                                    htr_probe(t, &cand, max_nodes)
                                                );
                                            }
                                            retire = true;
                                        }
                                    }
                                }
                            } else {
                                // wrapper drift probe: does the NEXT level use
                                // a different wrapper around x2?
                                let w2 = generalize(x3, x2);
                                d.drift = if w2 != PTerm::Meta(0) && w2.contains_meta() {
                                    if w2 == w { "consistent" } else { "drift" }
                                } else {
                                    "no-nest"
                                };
                            }
                        }
                    }
                }
                if retire {
                    families.insert(key, None);
                }
            }
        }
        if size > max_nodes as i64 {
            break;
        }
        cur = match head_step(&cur, max_nodes) {
            Step::Did(next, delta) => {
                size += delta;
                next
            }
            _ => break,
        };
    }
    for (_, ar) in arities {
        if ar.len() > d.head_arities {
            d.head_arities = ar.len();
        }
        let m = ar.into_iter().max().unwrap_or(0);
        if m > d.max_arity {
            d.max_arity = m;
        }
    }
    d
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    if args.len() < 2 {
        eprintln!("usage: certdiag <terms-file> [--steps N] [--nodes N] [--threads N]");
        std::process::exit(2);
    }
    let mut steps: u32 = 1000;
    let mut nodes: u64 = 100_000;
    let mut threads = 0usize;
    let mut i = 2;
    while i < args.len() {
        match args[i].as_str() {
            "--steps" => {
                i += 1;
                steps = args[i].parse().unwrap();
            }
            "--nodes" => {
                i += 1;
                nodes = args[i].parse().unwrap();
            }
            "--threads" => {
                i += 1;
                threads = args[i].parse().unwrap();
            }
            other => panic!("unknown flag {other}"),
        }
        i += 1;
    }
    if threads > 0 {
        rayon::ThreadPoolBuilder::new()
            .num_threads(threads)
            .build_global()
            .unwrap();
    }
    let text = std::fs::read_to_string(&args[1]).expect("terms file");
    let terms: Vec<&str> = text
        .lines()
        .map(str::trim)
        .filter(|l| !l.is_empty() && l.chars().all(|c| c == '0' || c == '1'))
        .collect();

    println!("bits,n,stage,best_milestones,head_arities,max_arity,x1_closed,drift,verify_fail");
    let rows: Vec<String> = terms
        .par_iter()
        .map(|bits| {
            let t = parse_all(bits).expect("parse");
            let d = diagnose(&t, steps, nodes);
            format!(
                "{bits},{},{},{},{},{},{},{},{}",
                bits.len(),
                d.stage,
                d.best_milestones,
                d.head_arities,
                d.max_arity,
                d.x1_closed as u8,
                d.drift,
                d.verify_fail
            )
        })
        .collect();
    for r in rows {
        println!("{r}");
    }
}
