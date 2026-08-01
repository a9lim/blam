//! tracescan — classify frontier terms by the *shape* of their normal-order
//! reduction behaviour.
//!
//! Reduction discipline is a from-scratch re-implementation of
//! `tools/cert/loop32_trace.py` (leftmost-outermost, contract the head redex,
//! reduce under lambdas, 1-indexed de Bruijn). The node type here is a hash-
//! consing-free `Rc` tree that caches, per node: tree size, max free index,
//! "is normal form", and a 128-bit structural hash. Those caches are what make
//! a 20k-step trace over 2k terms tractable:
//!
//!  * `maxfree` lets shift/subst share unaffected subtrees (closed subterms are
//!    free), so a beta step costs O(paths to the substituted variable);
//!  * `normal` lets the leftmost-outermost search skip normal subtrees in O(1),
//!    so finding the next redex costs O(path) not O(size);
//!  * `hash` gives O(1) state- and head-identity for the recurrence detectors.
//!
//! Every loop is bounded by an allocation meter (the repo's standing ops
//! lesson): a per-step cap so one substitution cannot blow live memory, and a
//! per-term cap so one term cannot eat the sweep.
//!
//! Usage:
//!   tracescan --file unknowns_v2.txt --out tools/cert/classify.csv [--threads N]
//!   tracescan --single <bits>                 # detailed single-term report
//!   tracescan --verify-loop32                 # the reference-agreement gate
//!   tracescan --dump <bits> --steps 10,100,1000   # cross-check state sizes

use blc::{parse_all, Term};
use rayon::prelude::*;
use std::cell::Cell;
use std::collections::{HashMap, HashSet};
use std::fs;
use std::rc::Rc;
use std::sync::atomic::{AtomicUsize, Ordering};

// ---------------------------------------------------------------- term nodes

enum K {
    Var(u32),
    Lam(T),
    App(T, T),
}

struct N {
    k: K,
    /// Tree size in nodes (saturating; sharing is an implementation detail).
    size: u64,
    /// Largest de Bruijn index escaping this subterm's own binders; 0 = closed.
    maxfree: u32,
    /// No redex anywhere inside.
    normal: bool,
    hash: u128,
}

type T = Rc<N>;

thread_local! {
    static ALLOC: Cell<u64> = const { Cell::new(0) };
}

#[inline]
fn bump() {
    ALLOC.with(|c| c.set(c.get() + 1));
}
#[inline]
fn allocs() -> u64 {
    ALLOC.with(|c| c.get())
}

const M1: u128 = 0xff51afd7ed558ccd_9e3779b97f4a7c15;
const M2: u128 = 0xc4ceb9fe1a85ec53_c2b2ae3d27d4eb4f;

#[inline]
fn mix128(mut x: u128) -> u128 {
    x ^= x >> 59;
    x = x.wrapping_mul(M1);
    x ^= x >> 71;
    x = x.wrapping_mul(M2);
    x ^= x >> 53;
    x
}

fn mk_var(n: u32) -> T {
    bump();
    Rc::new(N {
        size: 1,
        maxfree: n,
        normal: true,
        hash: mix128(0x11 ^ ((n as u128) << 8)),
        k: K::Var(n),
    })
}

fn mk_lam(b: T) -> T {
    bump();
    Rc::new(N {
        size: b.size.saturating_add(1),
        maxfree: b.maxfree.saturating_sub(1),
        normal: b.normal,
        hash: mix128(0x22 ^ b.hash.rotate_left(17)),
        k: K::Lam(b),
    })
}

fn mk_app(f: T, a: T) -> T {
    bump();
    let normal = !matches!(f.k, K::Lam(_)) && f.normal && a.normal;
    Rc::new(N {
        size: f.size.saturating_add(a.size).saturating_add(1),
        maxfree: f.maxfree.max(a.maxfree),
        normal,
        hash: mix128(0x33 ^ f.hash.wrapping_mul(M1).rotate_left(31) ^ a.hash.rotate_left(7)),
        k: K::App(f, a),
    })
}

fn conv(t: &Term) -> T {
    match t {
        Term::Var(n) => mk_var(*n),
        Term::Lam(b) => mk_lam(conv(b)),
        Term::App(f, a) => mk_app(conv(f), conv(a)),
    }
}

fn to_bits(t: &T, out: &mut String, cap: usize) {
    if out.len() > cap {
        return;
    }
    match &t.k {
        K::Var(n) => {
            for _ in 0..*n {
                out.push('1');
            }
            out.push('0');
        }
        K::Lam(b) => {
            out.push_str("00");
            to_bits(b, out, cap);
        }
        K::App(f, a) => {
            out.push_str("01");
            to_bits(f, out, cap);
            to_bits(a, out, cap);
        }
    }
}

fn head_bits_of(t: &T) -> String {
    let mut s = String::new();
    to_bits(t, &mut s, 512);
    if s.len() > 512 {
        s.truncate(512);
        s.push_str("...TRUNC");
    }
    s
}

// ------------------------------------------------------------------ stepping

struct Abort;

/// Add `d` to every free variable with index > `cutoff` (mirrors the reference
/// `shift(t, d, cutoff)`; `maxfree <= cutoff` means nothing is affected).
fn shift(t: &T, d: i64, cutoff: u32, limit: u64) -> Result<T, Abort> {
    if allocs() > limit {
        return Err(Abort);
    }
    if t.maxfree <= cutoff {
        return Ok(t.clone());
    }
    Ok(match &t.k {
        K::Var(n) => mk_var((*n as i64 + d) as u32),
        K::Lam(b) => mk_lam(shift(b, d, cutoff + 1, limit)?),
        K::App(f, a) => mk_app(shift(f, d, cutoff, limit)?, shift(a, d, cutoff, limit)?),
    })
}

/// Replace Var `j` by `s`, decrementing free vars > j (reference `subst`).
fn subst(t: &T, j: u32, s: &T, limit: u64) -> Result<T, Abort> {
    if allocs() > limit {
        return Err(Abort);
    }
    if t.maxfree < j {
        return Ok(t.clone());
    }
    Ok(match &t.k {
        K::Var(n) => {
            if *n == j {
                s.clone()
            } else if *n > j {
                mk_var(*n - 1)
            } else {
                t.clone()
            }
        }
        K::Lam(b) => mk_lam(subst(b, j + 1, &shift(s, 1, 0, limit)?, limit)?),
        K::App(f, a) => mk_app(subst(f, j, s, limit)?, subst(a, j, s, limit)?),
    })
}

/// One normal-order (leftmost-outermost) beta step; `Ok(None)` = normal form.
fn step(t: &T, limit: u64) -> Result<Option<T>, Abort> {
    if allocs() > limit {
        return Err(Abort);
    }
    if t.normal {
        return Ok(None);
    }
    Ok(match &t.k {
        K::Var(_) => None,
        K::Lam(b) => step(b, limit)?.map(mk_lam),
        K::App(f, a) => {
            if let K::Lam(body) = &f.k {
                return Ok(Some(subst(body, 1, a, limit)?));
            }
            if let Some(fs) = step(f, limit)? {
                Some(mk_app(fs, a.clone()))
            } else {
                step(a, limit)?.map(|x| mk_app(f.clone(), x))
            }
        }
    })
}

// -------------------------------------------------------------------- spines

struct Spine {
    head: T,
    k: usize,
    arg1: Option<T>,
    arg_sizes: Vec<u64>,
}

fn spine(t: &T) -> Spine {
    let mut args: Vec<T> = Vec::new();
    let mut h = t.clone();
    while let K::App(f, a) = &h.k {
        args.push(a.clone());
        let f = f.clone();
        h = f;
    }
    args.reverse();
    let arg1 = args.first().cloned();
    let arg_sizes = args.iter().map(|a| a.size).collect();
    Spine {
        head: h,
        k: args.len(),
        arg1,
        arg_sizes,
    }
}

/// Is a node with hash `target` (and tree size `tsize`) present inside `root`?
/// Pointer-memoised, size-pruned, budgeted.
fn contains_hash(root: &T, target: u128, tsize: u64, budget: &mut u64) -> bool {
    let mut seen: HashSet<usize> = HashSet::new();
    let mut stack: Vec<T> = vec![root.clone()];
    while let Some(n) = stack.pop() {
        if *budget == 0 {
            return false;
        }
        *budget -= 1;
        if n.size < tsize {
            continue;
        }
        if !seen.insert(Rc::as_ptr(&n) as usize) {
            continue;
        }
        if n.hash == target {
            return true;
        }
        match &n.k {
            K::Lam(b) => stack.push(b.clone()),
            K::App(f, a) => {
                stack.push(f.clone());
                stack.push(a.clone());
            }
            K::Var(_) => {}
        }
    }
    false
}

// ------------------------------------------------------------------- records

#[derive(Clone)]
struct Occ {
    step: u64,
    arg_size: u64,
    arg_hash: u128,
}

struct HeadRec {
    head: Option<T>,
    head_size: u64,
    count: u32,
    first_step: u64,
    last_step: u64,
    first_arg_size: u64,
    last_arg_size: u64,
    first_state_size: u64,
    last_state_size: u64,
    chain: Vec<Occ>,
    best: Vec<Occ>,
}

#[derive(Default, Clone)]
struct Rec {
    bits: String,
    size_bits: u64,
    class: String,
    steps_run: u64,
    size0: u64,
    final_size: u64,
    max_size: u64,
    pos_frac: f64,
    hit_cap: bool,
    period: u64,
    first_recur: u64,
    head_bits: String,
    head_k: usize,
    head_count: u32,
    chain_len: usize,
    milestone_steps: String,
    milestone_arg_sizes: String,
    growth: String,
    ckpt: String,
    /// Fraction of observed states whose spine arity is 0 — i.e. the state is a
    /// bare abstraction and all reduction is happening under a leading lambda,
    /// where both the state-hash and spine-head detectors are structurally blind.
    k0_frac: f64,
    max_k: usize,
    final_k: usize,
    notes: String,
}

struct Cfg {
    max_steps: u64,
    node_cap: u64,
    step_alloc_cap: u64,
    term_alloc_cap: u64,
    walk_budget: u64,
    max_keys: usize,
    chain_cap: usize,
    verbose: bool,
}

impl Default for Cfg {
    fn default() -> Self {
        Cfg {
            max_steps: 20_000,
            node_cap: 500_000,
            step_alloc_cap: 1_000_000,
            // 8e9 is the level at which no frontier term truncates: at 4e8 exactly
            // 71 of the 2,032 ran out of meter between steps 8k and 13k, and all
            // 71 complete their 20,000 steps here (all land in `opaque`).
            term_alloc_cap: 8_000_000_000,
            walk_budget: 40_000_000,
            max_keys: 256,
            chain_cap: 64,
            verbose: false,
        }
    }
}

fn fit_label(series: &[(f64, f64)]) -> String {
    if series.len() < 3 {
        return "n/a".into();
    }
    let r2 = |xs: &[(f64, f64)]| -> f64 {
        let n = xs.len() as f64;
        let sx: f64 = xs.iter().map(|p| p.0).sum();
        let sy: f64 = xs.iter().map(|p| p.1).sum();
        let mx = sx / n;
        let my = sy / n;
        let sxy: f64 = xs.iter().map(|p| (p.0 - mx) * (p.1 - my)).sum();
        let sxx: f64 = xs.iter().map(|p| (p.0 - mx) * (p.0 - mx)).sum();
        let syy: f64 = xs.iter().map(|p| (p.1 - my) * (p.1 - my)).sum();
        if sxx <= 0.0 || syy <= 0.0 {
            return 0.0;
        }
        (sxy * sxy) / (sxx * syy)
    };
    let lin = r2(series);
    let logs: Vec<(f64, f64)> = series
        .iter()
        .map(|(x, y)| (*x, (y.max(1.0)).ln()))
        .collect();
    let exp = r2(&logs);
    let first = series.first().unwrap().1;
    let last = series.last().unwrap().1;
    if last <= first {
        return format!("flat/shrink(r2lin={lin:.3})");
    }
    if exp > lin + 0.02 {
        format!("exp(r2={exp:.3})")
    } else {
        format!("linear(r2={lin:.3})")
    }
}

// ------------------------------------------------------------------ analysis

fn analyze(bits: &str, cfg: &Cfg) -> Rec {
    ALLOC.with(|c| c.set(0));
    let mut r = Rec {
        bits: bits.to_string(),
        size_bits: bits.len() as u64,
        ..Default::default()
    };
    let parsed = match parse_all(bits) {
        Ok(t) => t,
        Err(e) => {
            r.class = "PARSE-ERROR".into();
            r.notes = format!("{e:?}");
            return r;
        }
    };
    let mut t = conv(&parsed);
    r.size0 = t.size;

    let mut seen: HashMap<u128, u64> = HashMap::new();
    let mut heads: HashMap<u128, u32> = HashMap::new();
    let mut keys: HashMap<(u128, usize), HeadRec> = HashMap::new();
    let mut series: Vec<(f64, f64)> = Vec::new();
    let mut ck: HashMap<u64, u64> = HashMap::new();
    let mut walk_budget = cfg.walk_budget;

    let mut pos = 0u64;
    let mut deltas = 0u64;
    let mut max_size = t.size;
    let mut periodic = false;
    let mut nf = false;
    let mut blowup = false;
    let mut i: u64 = 0;
    let mut states_seen: u64 = 0;
    let mut k0: u64 = 0;
    let mut max_k: usize = 0;
    let mut final_k: usize = 0;

    loop {
        // ---- observe state i
        max_size = max_size.max(t.size);
        if i % 1000 == 0 {
            series.push((i as f64, t.size as f64));
            ck.insert(i, t.size);
        }
        if let Some(&p) = seen.get(&t.hash) {
            periodic = true;
            r.first_recur = p;
            r.period = i - p;
            break;
        }
        seen.insert(t.hash, i);

        let sp = spine(&t);
        *heads.entry(sp.head.hash).or_insert(0) += 1;
        states_seen += 1;
        if sp.k == 0 {
            k0 += 1;
        }
        max_k = max_k.max(sp.k);
        final_k = sp.k;

        if sp.k >= 1 && matches!(sp.head.k, K::Lam(_)) {
            let key = (sp.head.hash, sp.k);
            let arg = sp.arg1.as_ref().unwrap();
            let exists = keys.contains_key(&key);
            if exists || keys.len() < cfg.max_keys {
                let e = keys.entry(key).or_insert_with(|| HeadRec {
                    head: if sp.head.size <= 2048 {
                        Some(sp.head.clone())
                    } else {
                        None
                    },
                    head_size: sp.head.size,
                    count: 0,
                    first_step: i,
                    last_step: i,
                    first_arg_size: arg.size,
                    last_arg_size: arg.size,
                    first_state_size: t.size,
                    last_state_size: t.size,
                    chain: Vec::new(),
                    best: Vec::new(),
                });
                e.count += 1;
                e.last_step = i;
                e.last_arg_size = arg.size;
                e.last_state_size = t.size;
                let occ = Occ {
                    step: i,
                    arg_size: arg.size,
                    arg_hash: arg.hash,
                };
                let extend = match e.chain.last() {
                    None => true,
                    Some(prev) => {
                        arg.size > prev.arg_size
                            && walk_budget > 0
                            && contains_hash(arg, prev.arg_hash, prev.arg_size, &mut walk_budget)
                    }
                };
                if extend {
                    if e.chain.len() < cfg.chain_cap {
                        e.chain.push(occ);
                    }
                } else {
                    if e.chain.len() > e.best.len() {
                        e.best = std::mem::take(&mut e.chain);
                    } else {
                        e.chain.clear();
                    }
                    e.chain.push(occ);
                }
            }
        }

        if i >= cfg.max_steps {
            break;
        }

        // ---- advance
        let limit = (allocs() + cfg.step_alloc_cap).min(cfg.term_alloc_cap);
        let prev = t.size;
        match step(&t, limit) {
            Err(_) => {
                if allocs() >= cfg.term_alloc_cap {
                    r.notes = push_note(&r.notes, "term-alloc-cap");
                } else {
                    r.notes = push_note(&r.notes, "step-alloc-cap");
                    blowup = true;
                }
                break;
            }
            Ok(None) => {
                nf = true;
                break;
            }
            Ok(Some(t2)) => {
                deltas += 1;
                if t2.size > prev {
                    pos += 1;
                }
                t = t2;
                i += 1;
                if t.size > cfg.node_cap {
                    blowup = true;
                    max_size = max_size.max(t.size);
                    break;
                }
            }
        }
    }

    r.steps_run = i;
    r.final_size = t.size;
    r.max_size = max_size;
    r.pos_frac = if deltas > 0 {
        pos as f64 / deltas as f64
    } else {
        0.0
    };
    r.hit_cap = blowup;
    r.k0_frac = if states_seen > 0 {
        k0 as f64 / states_seen as f64
    } else {
        0.0
    };
    r.max_k = max_k;
    r.final_k = final_k;
    r.growth = fit_label(&series);
    let g = |s: u64| ck.get(&s).copied().unwrap_or(0);
    r.ckpt = format!(
        "{}|{}|{}|{}|{}",
        r.size0,
        g(1000),
        g(5000),
        g(10000),
        g(20000)
    );

    // ---- classify: first match wins
    if nf {
        r.class = "ANOMALY-nf".into();
        return r;
    }
    if periodic {
        r.class = "periodic".into();
        return r;
    }

    // Best nested-growth chain over all tracked (head, k) keys. Ties are broken
    // on the key itself, never on HashMap iteration order — that order is
    // randomised per process and would make the reported evidence irreproducible
    // even though the class is stable.
    let mut best_key: Option<((u128, usize), Vec<Occ>)> = None;
    for (k, v) in keys.iter() {
        let c = if v.chain.len() >= v.best.len() {
            &v.chain
        } else {
            &v.best
        };
        let better = match &best_key {
            None => true,
            Some((bk, bc)) => (c.len(), k.0, k.1) > (bc.len(), bk.0, bk.1),
        };
        if better {
            best_key = Some((*k, c.clone()));
        }
    }
    if let Some((k, c)) = &best_key {
        if c.len() >= 4 {
            let hr = &keys[k];
            r.class = "ratchet-candidate".into();
            r.head_k = k.1;
            r.head_count = hr.count;
            r.chain_len = c.len();
            r.head_bits = match &hr.head {
                Some(h) => head_bits_of(h),
                None => format!("BIG:{}", hr.head_size),
            };
            r.milestone_steps = c
                .iter()
                .take(12)
                .map(|o| o.step.to_string())
                .collect::<Vec<_>>()
                .join(";");
            r.milestone_arg_sizes = c
                .iter()
                .take(12)
                .map(|o| o.arg_size.to_string())
                .collect::<Vec<_>>()
                .join(";");
            return r;
        }
    }

    // recurring spine head (>= 4 occurrences), any head kind
    let mut top: Option<(u128, u32)> = None;
    for (h, c) in heads.iter() {
        let better = match top {
            None => true,
            Some((bh, bc)) => (*c, *h) > (bc, bh),
        };
        if better {
            top = Some((*h, *c));
        }
    }
    if let Some((h, c)) = top {
        if c >= 4 {
            r.class = "head-recurrent-other".into();
            r.head_count = c;
            // best evidence available for this head hash across k-buckets
            let mut chosen: Option<(&(u128, usize), &HeadRec)> = None;
            for (k, v) in keys.iter() {
                if k.0 != h {
                    continue;
                }
                let better = match chosen {
                    None => true,
                    Some((bk, bv)) => (v.count, k.1) > (bv.count, bk.1),
                };
                if better {
                    chosen = Some((k, v));
                }
            }
            if let Some((k, v)) = chosen {
                r.head_k = k.1;
                r.head_bits = match &v.head {
                    Some(hh) => head_bits_of(hh),
                    None => format!("BIG:{}", v.head_size),
                };
                r.chain_len = v.chain.len().max(v.best.len());
                r.milestone_steps = format!("{};{}", v.first_step, v.last_step);
                r.milestone_arg_sizes = format!("{};{}", v.first_arg_size, v.last_arg_size);
                r.notes = push_note(
                    &r.notes,
                    &format!(
                        "argsz{}->{}/statesz{}->{}",
                        v.first_arg_size, v.last_arg_size, v.first_state_size, v.last_state_size
                    ),
                );
            } else {
                r.notes = push_note(&r.notes, "head-not-lam");
            }
            return r;
        }
    }

    if deltas > 0 && r.pos_frac >= 0.9 {
        r.class = "monotone-growth".into();
        return r;
    }
    if blowup {
        r.class = "blowup".into();
        return r;
    }
    if r.steps_run < cfg.max_steps {
        r.class = "truncated".into();
        return r;
    }
    r.class = "opaque".into();
    if cfg.verbose {
        eprintln!("opaque {bits}");
    }
    r
}

fn push_note(cur: &str, add: &str) -> String {
    if cur.is_empty() {
        add.to_string()
    } else {
        format!("{cur} {add}")
    }
}

// ------------------------------------------------------------------ printing

fn single_report(bits: &str, cfg: &Cfg) {
    let r = analyze(bits, cfg);
    println!("term         {}", r.bits);
    println!("size_bits    {}", r.size_bits);
    println!("class        {}", r.class);
    println!("steps_run    {}", r.steps_run);
    println!("size0/final/max  {} / {} / {}", r.size0, r.final_size, r.max_size);
    println!("pos_delta_frac   {:.4}", r.pos_frac);
    println!("hit_node_cap {}", r.hit_cap);
    println!("period       {} (first recur at {})", r.period, r.first_recur);
    println!("head_bits    {}", r.head_bits);
    println!("head_k       {}", r.head_k);
    println!("head_count   {}", r.head_count);
    println!("chain_len    {}", r.chain_len);
    println!("milestones   {}", r.milestone_steps);
    println!("arg_sizes    {}", r.milestone_arg_sizes);
    let steps: Vec<u64> = r
        .milestone_steps
        .split(';')
        .filter_map(|s| s.parse().ok())
        .collect();
    let gaps: Vec<u64> = steps.windows(2).map(|w| w[1] - w[0]).collect();
    println!("cycle_gaps   {gaps:?}");
    let pred: Vec<u64> = (0..gaps.len() as u64).map(|n| 2 * n + 2).collect();
    println!("pred 2n+2    {pred:?}");
    println!("gaps==2n+2   {}", gaps == pred);
    println!("growth       {}", r.growth);
    println!("ckpt         {}", r.ckpt);
    println!("notes        {}", r.notes);
}

fn dump(bits: &str, at: &[u64], cfg: &Cfg) {
    ALLOC.with(|c| c.set(0));
    let mut t = conv(&parse_all(bits).expect("parse"));
    let want: HashSet<u64> = at.iter().copied().collect();
    let maxi = at.iter().copied().max().unwrap_or(0);
    let mut i = 0u64;
    loop {
        if want.contains(&i) {
            let sp = spine(&t);
            let hk = match &sp.head.k {
                K::Var(n) => format!("Var({n})"),
                K::Lam(_) => "Lam".to_string(),
                K::App(..) => "App".to_string(),
            };
            let mut hb = String::new();
            to_bits(&sp.head, &mut hb, 64);
            println!(
                "step={i} size={} k={} head={hk} head_size={} head_hash={:016x} head_bits={} args={:?}",
                t.size,
                sp.k,
                sp.head.size,
                (sp.head.hash >> 64) as u64,
                if hb.len() <= 64 { hb } else { "..".into() },
                sp.arg_sizes.iter().take(6).collect::<Vec<_>>()
            );
        }
        if i >= maxi {
            break;
        }
        let limit = (allocs() + cfg.step_alloc_cap).min(cfg.term_alloc_cap);
        match step(&t, limit) {
            Ok(Some(t2)) => {
                t = t2;
                i += 1;
            }
            Ok(None) => {
                println!("NORMAL FORM at step {i}");
                break;
            }
            Err(_) => {
                println!("ABORT (alloc cap) at step {i}");
                break;
            }
        }
        if t.size > cfg.node_cap {
            println!("NODE CAP at step {i} size={}", t.size);
            break;
        }
    }
}

const LOOP32: &str = "01000110001100001011010000110110";
const A_BITS: &str = "0001011010000110110";

fn verify_loop32(cfg: &Cfg) -> bool {
    let r = analyze(LOOP32, cfg);
    let steps: Vec<u64> = r
        .milestone_steps
        .split(';')
        .filter_map(|s| s.parse().ok())
        .collect();
    let gaps: Vec<u64> = steps.windows(2).map(|w| w[1] - w[0]).collect();
    let pred: Vec<u64> = (0..gaps.len() as u64).map(|n| 2 * n + 2).collect();
    let ok_class = r.class == "ratchet-candidate";
    let ok_head = r.head_bits == A_BITS;
    let ok_gaps = !gaps.is_empty() && gaps == pred;
    println!("loop32 class      = {} (want ratchet-candidate) {}", r.class, ok_class);
    println!("loop32 head_bits  = {} {}", r.head_bits, ok_head);
    println!("loop32 head_k     = {}", r.head_k);
    println!("loop32 chain_len  = {}", r.chain_len);
    println!("loop32 milestones = {}", r.milestone_steps);
    println!("loop32 arg sizes  = {}", r.milestone_arg_sizes);
    println!("loop32 gaps       = {gaps:?}");
    println!("loop32 gaps==2n+2 = {ok_gaps}");
    ok_class && ok_head && ok_gaps
}

fn csv_line(r: &Rec) -> String {
    format!(
        "{},{},{},{},{},{},{},{:.4},{},{},{},{},{},{},{},{},{},{},{},{:.4},{},{},{}",
        r.bits,
        r.size_bits,
        r.class,
        r.steps_run,
        r.size0,
        r.final_size,
        r.max_size,
        r.pos_frac,
        if r.hit_cap { 1 } else { 0 },
        r.period,
        r.first_recur,
        r.head_bits,
        r.head_k,
        r.head_count,
        r.chain_len,
        r.milestone_steps,
        r.milestone_arg_sizes,
        r.growth,
        r.ckpt,
        r.k0_frac,
        r.max_k,
        r.final_k,
        r.notes.replace(',', ";")
    )
}

const CSV_HEADER: &str = "term_bits,size_bits,class,steps_run,size0,final_size,max_size,pos_delta_frac,hit_node_cap,period,first_recur_step,head_bits,head_k,head_count,chain_len,milestone_steps,milestone_arg_sizes,growth,ckpt_0_1k_5k_10k_20k,k0_frac,max_k,final_k,notes";

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let mut cfg = Cfg::default();
    let mut file: Option<String> = None;
    let mut out = "tools/cert/classify.csv".to_string();
    let mut single: Option<String> = None;
    let mut dump_bits: Option<String> = None;
    let mut dump_steps: Vec<u64> = vec![10, 100, 1000];
    let mut threads = 6usize;
    let mut verify = false;
    let mut limit: Option<usize> = None;

    let mut i = 1;
    while i < args.len() {
        match args[i].as_str() {
            "--file" => {
                i += 1;
                file = Some(args[i].clone());
            }
            "--out" => {
                i += 1;
                out = args[i].clone();
            }
            "--single" => {
                i += 1;
                single = Some(args[i].clone());
            }
            "--dump" => {
                i += 1;
                dump_bits = Some(args[i].clone());
            }
            "--steps" => {
                i += 1;
                dump_steps = args[i].split(',').filter_map(|s| s.parse().ok()).collect();
            }
            "--max-steps" => {
                i += 1;
                cfg.max_steps = args[i].parse().unwrap();
            }
            "--node-cap" => {
                i += 1;
                cfg.node_cap = args[i].parse().unwrap();
            }
            "--term-alloc-cap" => {
                i += 1;
                cfg.term_alloc_cap = args[i].parse().unwrap();
            }
            "--threads" => {
                i += 1;
                threads = args[i].parse().unwrap();
            }
            "--limit" => {
                i += 1;
                limit = Some(args[i].parse().unwrap());
            }
            "--verify-loop32" => verify = true,
            "--verbose" => cfg.verbose = true,
            a => panic!("unknown arg {a}"),
        }
        i += 1;
    }

    if verify {
        let ok = verify_loop32(&cfg);
        println!("VERIFY {}", if ok { "PASS" } else { "FAIL" });
        std::process::exit(if ok { 0 } else { 1 });
    }
    if let Some(b) = dump_bits {
        dump(&b, &dump_steps, &cfg);
        return;
    }
    if let Some(b) = single {
        single_report(&b, &cfg);
        return;
    }
    let Some(file) = file else {
        eprintln!("need --file or --single or --dump or --verify-loop32");
        std::process::exit(2);
    };

    let text = fs::read_to_string(&file).expect("read terms file");
    let mut terms: Vec<String> = text
        .lines()
        .map(|l| l.trim().to_string())
        .filter(|l| !l.is_empty())
        .collect();
    if let Some(n) = limit {
        terms.truncate(n);
    }
    eprintln!("terms: {} threads: {threads}", terms.len());

    let pool = rayon::ThreadPoolBuilder::new()
        .num_threads(threads)
        .stack_size(256 * 1024 * 1024)
        .build()
        .unwrap();
    let done = AtomicUsize::new(0);
    let total = terms.len();
    let recs: Vec<Rec> = pool.install(|| {
        terms
            .par_iter()
            .map(|b| {
                let r = analyze(b, &cfg);
                let d = done.fetch_add(1, Ordering::Relaxed) + 1;
                if d % 100 == 0 {
                    eprintln!("  {d}/{total}");
                }
                r
            })
            .collect()
    });

    let mut s = String::from(CSV_HEADER);
    s.push('\n');
    for r in &recs {
        s.push_str(&csv_line(r));
        s.push('\n');
    }
    if let Some(dir) = std::path::Path::new(&out).parent() {
        let _ = fs::create_dir_all(dir);
    }
    fs::write(&out, s).expect("write csv");

    let mut by_class: HashMap<&str, usize> = HashMap::new();
    for r in &recs {
        *by_class.entry(r.class.as_str()).or_insert(0) += 1;
    }
    let mut v: Vec<_> = by_class.into_iter().collect();
    v.sort_by_key(|(_, c)| std::cmp::Reverse(*c));
    println!("\nclass counts ({} terms):", recs.len());
    for (c, n) in v {
        println!("  {c:22} {n}");
    }
    println!("wrote {out}");
}
