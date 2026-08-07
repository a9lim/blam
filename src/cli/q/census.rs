//! The M^(1) operator census. Sweep every closed program of size
//! 4..=N under the frozen signature `p h meas new cnot t`, through the
//! KN-store fast path (`qvm`, lockstep-verified against `qeval`), and
//! accumulate exactly:
//!
//! - Ω_{success,≤N} (total halt mass) and its bracket (+ Unknown/Capacity
//!   mass; Err mass is excluded by construction and reported as a column);
//! - per-live-qubit-count sector masses (number superselection is by
//!   construction: sectors are keyed by live count, no cross terms exist);
//! - the k=1 sector operator M^(1)|≤N = Σ_p 2^(−|p|) v_p v_p† as an exact
//!   2×2 Hermitian matrix over `Z[ω]/√2^k`, with state rankings;
//! - dyadicity and fate-divergence witnesses (where the pilot's mirror-tie
//!   phenomenon first breaks);
//! - budget-headroom telemetry (max β, max transitions, max branches).
//!
//! Soundness battery, free: every program's leaf masses must sum to
//! exactly 1 (CP instruments conserve mass); asserted per program across
//! the entire sweep.
//!
//! Output convention: the leaf output is the whole live store at Halt
//! (M_Fock's definition). A designated-output alternative would define a
//! different Object B experiment, not change this census.
//!
//! Usage: `blam q census [MIN] MAX [flags]` — see `USAGE` below.
//!
//! `--cond-k K` switches to Object B mode: every program runs as
//! `p K-bar <sig>` (dimension handed as a Church numeral before the
//! signature) — the G_K approximant sweep.
//!
//! The trusted-checker sweep that used to ride along as
//! `--skeleton-only` is its own subcommand now (`blam q skeleton`): it
//! never touched Pool/QMachine/Tally, and sharing `--terms-file` with
//! the batch re-adjudication mode meant one flag selected two
//! unrelated engines.

use crate::args::{self, Args, R};
use blam::blc::enumerate::{interleave_tasks, run_task, split_tasks};
use blam::blc::wire::enc_to_string as enc_str;
use blam::quantum::machine::{Machine as QMachine, Pool};
use blam::quantum::scalar::Dw;
use blam::quantum::sig::FROZEN;
use blam::quantum::{Budget as QBudget, Capacity, ErrKind, Fate, Prim};
use rayon::prelude::*;
use std::fmt::Write as _;
use std::time::Instant;

/// Exact accumulator with f64 mirror; `ok` false once any exact op
/// overflowed (the mirror is then display-grade only).
#[derive(Clone, Copy)]
struct Ex {
    v: Dw,
    ok: bool,
    re: f64,
    im: f64,
}

impl Ex {
    const ZERO: Ex = Ex {
        v: Dw::ZERO,
        ok: true,
        re: 0.0,
        im: 0.0,
    };

    fn add(&mut self, d: Option<Dw>) {
        match d {
            Some(x) => {
                if self.ok {
                    match self.v.add(x) {
                        Some(s) => self.v = s,
                        None => self.ok = false,
                    }
                }
                self.re += x.to_f64_re();
                self.im += x.to_f64_im();
            }
            None => self.ok = false,
        }
    }

    fn merge(&mut self, o: &Ex) {
        if self.ok && o.ok {
            match self.v.add(o.v) {
                Some(s) => self.v = s,
                None => self.ok = false,
            }
        } else {
            self.ok = false;
        }
        self.re += o.re;
        self.im += o.im;
    }

    fn exact_str(&self) -> String {
        if self.ok {
            let r = self.v.reduce();
            format!("({},{},{},{},{})", r.a, r.b, r.c, r.d, r.k)
        } else {
            "OVERFLOW".into()
        }
    }

    /// Display real part: derived from the exact value while it holds
    /// (correctly rounded and independent of accumulation grouping — the
    /// running f64 mirror's rounding is merge-order dependent, which
    /// would make checkpointed runs differ from monolithic in display
    /// low bits); the mirror only ever surfaces for OVERFLOW rows.
    fn re(&self) -> f64 {
        if self.ok {
            self.v.reduce().to_f64_re()
        } else {
            self.re
        }
    }

    fn im(&self) -> f64 {
        if self.ok {
            self.v.reduce().to_f64_im()
        } else {
            self.im
        }
    }

    fn write_ckpt(&self, out: &mut String) {
        use std::fmt::Write as _;
        let r = self.v;
        write!(
            out,
            " {} {} {} {} {} {} {} {}",
            self.ok as u8,
            r.a,
            r.b,
            r.c,
            r.d,
            r.k,
            self.re.to_bits(),
            self.im.to_bits()
        )
        .unwrap();
    }

    fn parse_ckpt(it: &mut std::str::SplitWhitespace) -> Option<Ex> {
        let ok = it.next()?.parse::<u8>().ok()? != 0;
        let a = it.next()?.parse().ok()?;
        let b = it.next()?.parse().ok()?;
        let c = it.next()?.parse().ok()?;
        let d = it.next()?.parse().ok()?;
        let k = it.next()?.parse().ok()?;
        let re = f64::from_bits(it.next()?.parse().ok()?);
        let im = f64::from_bits(it.next()?.parse().ok()?);
        Some(Ex {
            v: Dw { a, b, c, d, k },
            ok,
            re,
            im,
        })
    }
}

/// Is an exact real mass a dyadic rational?
fn is_dyadic(m: Dw) -> bool {
    let r = m.reduce();
    r.b == 0 && r.c == 0 && r.d == 0 && r.k.is_multiple_of(2)
}

const SECT: usize = 5; // sectors 0,1,2,3, and 4 = "≥4"

#[derive(Clone)]
struct Tally {
    programs: u64,
    leaves: u64,
    halt_n: u64,
    err_n: [u64; 5], // by ErrKind
    unk_n: u64,
    unk_by_trans: u64,
    cap_n: [u64; 3], // by Capacity kind
    none_mass_n: u64,
    omega: Ex,
    err_mass: Ex,
    unk_mass: Ex,
    cap_mass: Ex,
    sect_mass: [Ex; SECT],
    sect_n: [u64; SECT],
    /// M^(1) row-major: [00, 01, 10, 11].
    m1: [Ex; 4],
    /// M^(2) row-major 4×4 (basis |q1 q0⟩, first-allocated qubit = low bit).
    m2: [Ex; 16],
    forked: u64,
    fate_div: u64,
    first_fate_div: Option<(u8, u64)>,
    nondyadic: u64,
    first_nondyadic: Option<(u8, u64)>,
    max_steps: u64,
    max_trans: u64,
    max_leaves: u64,
    max_live: usize,
    /// Programs with at least one Unknown leaf (--dump-unknowns feed).
    unknowns: Vec<(u64, u8)>,
}

impl Tally {
    fn new() -> Tally {
        Tally {
            programs: 0,
            leaves: 0,
            halt_n: 0,
            err_n: [0; 5],
            unk_n: 0,
            unk_by_trans: 0,
            cap_n: [0; 3],
            none_mass_n: 0,
            omega: Ex::ZERO,
            err_mass: Ex::ZERO,
            unk_mass: Ex::ZERO,
            cap_mass: Ex::ZERO,
            sect_mass: [Ex::ZERO; SECT],
            sect_n: [0; SECT],
            m1: [Ex::ZERO; 4],
            m2: [Ex::ZERO; 16],
            forked: 0,
            fate_div: 0,
            first_fate_div: None,
            nondyadic: 0,
            first_nondyadic: None,
            max_steps: 0,
            max_trans: 0,
            max_leaves: 0,
            max_live: 0,
            unknowns: Vec::new(),
        }
    }

    fn merge(mut self, o: Tally) -> Tally {
        self.programs += o.programs;
        self.leaves += o.leaves;
        self.halt_n += o.halt_n;
        for i in 0..5 {
            self.err_n[i] += o.err_n[i];
        }
        self.unk_n += o.unk_n;
        self.unk_by_trans += o.unk_by_trans;
        for i in 0..3 {
            self.cap_n[i] += o.cap_n[i];
        }
        self.none_mass_n += o.none_mass_n;
        self.omega.merge(&o.omega);
        self.err_mass.merge(&o.err_mass);
        self.unk_mass.merge(&o.unk_mass);
        self.cap_mass.merge(&o.cap_mass);
        for i in 0..SECT {
            self.sect_mass[i].merge(&o.sect_mass[i]);
            self.sect_n[i] += o.sect_n[i];
        }
        for i in 0..4 {
            self.m1[i].merge(&o.m1[i]);
        }
        for i in 0..16 {
            self.m2[i].merge(&o.m2[i]);
        }
        self.forked += o.forked;
        self.fate_div += o.fate_div;
        self.first_fate_div = match (self.first_fate_div, o.first_fate_div) {
            (Some(a), Some(b)) => Some(a.min(b)),
            (a, b) => a.or(b),
        };
        self.nondyadic += o.nondyadic;
        self.first_nondyadic = match (self.first_nondyadic, o.first_nondyadic) {
            (Some(a), Some(b)) => Some(a.min(b)),
            (a, b) => a.or(b),
        };
        self.max_steps = self.max_steps.max(o.max_steps);
        self.max_trans = self.max_trans.max(o.max_trans);
        self.max_leaves = self.max_leaves.max(o.max_leaves);
        self.max_live = self.max_live.max(o.max_live);
        self.unknowns.extend(o.unknowns);
        self
    }
}

impl Default for Tally {
    fn default() -> Tally {
        Tally::new()
    }
}

impl crate::ckpt::CkptRecord for Tally {
    fn write_body(&self, out: &mut String) {
        use std::fmt::Write as _;
        out.push('S');
        for v in [
            self.programs,
            self.leaves,
            self.halt_n,
            self.err_n[0],
            self.err_n[1],
            self.err_n[2],
            self.err_n[3],
            self.err_n[4],
            self.unk_n,
            self.unk_by_trans,
            self.cap_n[0],
            self.cap_n[1],
            self.cap_n[2],
            self.none_mass_n,
            self.sect_n[0],
            self.sect_n[1],
            self.sect_n[2],
            self.sect_n[3],
            self.sect_n[4],
            self.forked,
            self.fate_div,
            self.nondyadic,
            self.max_steps,
            self.max_trans,
            self.max_leaves,
            self.max_live as u64,
        ] {
            write!(out, " {v}").unwrap();
        }
        for o in [self.first_fate_div, self.first_nondyadic] {
            match o {
                Some((l, e)) => write!(out, " {l} {e}").unwrap(),
                None => write!(out, " - -").unwrap(),
            }
        }
        self.omega.write_ckpt(out);
        self.err_mass.write_ckpt(out);
        self.unk_mass.write_ckpt(out);
        self.cap_mass.write_ckpt(out);
        for e in &self.sect_mass {
            e.write_ckpt(out);
        }
        for e in &self.m1 {
            e.write_ckpt(out);
        }
        for e in &self.m2 {
            e.write_ckpt(out);
        }
        out.push('\n');
        for (enc, len) in &self.unknowns {
            writeln!(out, "U {enc} {len}").unwrap();
        }
    }

    fn parse_line(&mut self, line: &str) -> Option<()> {
        let mut it = line.split_whitespace();
        match it.next()? {
            "S" => {
                let mut num = || -> Option<u64> { it.next()?.parse().ok() };
                self.programs = num()?;
                self.leaves = num()?;
                self.halt_n = num()?;
                for i in 0..5 {
                    self.err_n[i] = num()?;
                }
                self.unk_n = num()?;
                self.unk_by_trans = num()?;
                for i in 0..3 {
                    self.cap_n[i] = num()?;
                }
                self.none_mass_n = num()?;
                for i in 0..SECT {
                    self.sect_n[i] = num()?;
                }
                self.forked = num()?;
                self.fate_div = num()?;
                self.nondyadic = num()?;
                self.max_steps = num()?;
                self.max_trans = num()?;
                self.max_leaves = num()?;
                self.max_live = num()? as usize;
                for slot in [&mut self.first_fate_div, &mut self.first_nondyadic] {
                    let l = it.next()?;
                    let e = it.next()?;
                    *slot = if l == "-" {
                        None
                    } else {
                        Some((l.parse().ok()?, e.parse().ok()?))
                    };
                }
                self.omega = Ex::parse_ckpt(&mut it)?;
                self.err_mass = Ex::parse_ckpt(&mut it)?;
                self.unk_mass = Ex::parse_ckpt(&mut it)?;
                self.cap_mass = Ex::parse_ckpt(&mut it)?;
                for i in 0..SECT {
                    self.sect_mass[i] = Ex::parse_ckpt(&mut it)?;
                }
                for i in 0..4 {
                    self.m1[i] = Ex::parse_ckpt(&mut it)?;
                }
                for i in 0..16 {
                    self.m2[i] = Ex::parse_ckpt(&mut it)?;
                }
                Some(())
            }
            "U" => {
                let enc: u64 = it.next()?.parse().ok()?;
                let len: u8 = it.next()?.parse().ok()?;
                self.unknowns.push((enc, len));
                Some(())
            }
            _ => None,
        }
    }
}

fn err_idx(k: ErrKind) -> usize {
    match k {
        ErrKind::Species => 0,
        ErrKind::HandleApplied => 1,
        ErrKind::StaleEpoch => 2,
        ErrKind::Retired => 3,
        ErrKind::SameQubit => 4,
    }
}

fn cap_idx(c: Capacity) -> usize {
    match c {
        Capacity::Qubits => 0,
        Capacity::Amplitude => 1,
        Capacity::Branches => 2,
    }
}

#[allow(clippy::too_many_arguments)]
fn sweep_one(
    pool: &mut Pool,
    m: &mut QMachine,
    leaves: &mut Vec<blam::quantum::Leaf>,
    enc: u64,
    len: u8,
    cond: Option<u32>,
    sig: &[Prim],
    budget: &QBudget,
    t: &mut Tally,
) {
    leaves.clear();
    m.run_conditioned_into(pool, enc, len, cond, sig, budget, leaves);
    let n = len as u32;
    t.programs += 1;
    t.leaves += leaves.len() as u64;
    t.max_leaves = t.max_leaves.max(leaves.len() as u64);
    t.max_trans = t.max_trans.max(m.max_trans);

    // Mass conservation: Σ leaf masses = 1 exactly (skip if any overflowed).
    let mut msum = Some(Dw::ZERO);
    let mut kinds = [false; 4]; // halt, err, unk, cap seen
    for leaf in leaves.iter() {
        t.max_steps = t.max_steps.max(leaf.steps);
        msum = msum.and_then(|s| leaf.mass.and_then(|x| s.add(x)));
        let w = leaf.mass.and_then(|x| x.div_pow2(n));
        if leaf.mass.is_none() {
            t.none_mass_n += 1;
        }
        match &leaf.fate {
            Fate::Halt(store) => {
                kinds[0] = true;
                t.halt_n += 1;
                t.omega.add(w);
                let live = store.live_count();
                t.max_live = t.max_live.max(live);
                let s = live.min(SECT - 1);
                t.sect_n[s] += 1;
                t.sect_mass[s].add(w);
                // Sector operator accumulation: M^(k) += v v† / 2^n, exact.
                if live == 1 || live == 2 {
                    let dim = 1 << live;
                    let acc: &mut [Ex] = if live == 1 { &mut t.m1 } else { &mut t.m2 };
                    for i in 0..dim {
                        for j in 0..dim {
                            let x = store.amps[i]
                                .mul(store.amps[j].conj())
                                .and_then(|y| y.div_pow2(n));
                            acc[i * dim + j].add(x);
                        }
                    }
                }
                if let Some(mv) = leaf.mass {
                    if !is_dyadic(mv) {
                        t.nondyadic += 1;
                        if t.first_nondyadic.is_none() {
                            t.first_nondyadic = Some((len, enc));
                        }
                    }
                }
            }
            Fate::Err(k) => {
                kinds[1] = true;
                t.err_n[err_idx(*k)] += 1;
                t.err_mass.add(w);
            }
            Fate::Unknown => {
                kinds[2] = true;
                t.unk_n += 1;
                if leaf.steps < budget.beta {
                    t.unk_by_trans += 1;
                }
                t.unk_mass.add(w);
            }
            Fate::Capacity(c) => {
                kinds[3] = true;
                t.cap_n[cap_idx(*c)] += 1;
                t.cap_mass.add(w);
            }
        }
    }
    if let Some(s) = msum {
        assert_eq!(
            s.reduce(),
            Dw::ONE,
            "mass conservation violated at program ({enc:#x},{len})"
        );
    }
    if kinds[2] {
        t.unknowns.push((enc, len));
    }
    if leaves.len() > 1 {
        t.forked += 1;
        if kinds.iter().filter(|&&k| k).count() > 1 {
            t.fate_div += 1;
            if t.first_fate_div.is_none() {
                t.first_fate_div = Some((len, enc));
            }
        }
    }
}

/// ⟨ψ|M|ψ⟩ for unnormalized ψ; the caller divides by ‖ψ‖² afterwards.
fn expect(m: &[Ex], psi: &[Dw]) -> Option<Dw> {
    if !m.iter().all(|e| e.ok) {
        return None;
    }
    let dim = psi.len();
    // ψ† M ψ = Σ_ij conj(c_i) M_ij c_j
    let mut acc = Dw::ZERO;
    for (i, ci) in psi.iter().enumerate() {
        for (j, cj) in psi.iter().enumerate() {
            acc = acc.add(ci.conj().mul(m[i * dim + j].v)?.mul(*cj)?)?;
        }
    }
    Some(acc.reduce())
}

/// Ranked ⟨ψ|M|ψ⟩ table for named (unnormalized) states; `halvings` is
/// log₂‖ψ‖².
fn rank_states(r: &mut String, label: &str, m: &[Ex], states: &[(&str, Vec<Dw>, u32)]) {
    let mut ranked: Vec<(String, f64, String)> = Vec::new();
    for (name, psi, halvings) in states {
        if let Some(v) = expect(m, psi) {
            if let Some(v) = v.div_pow2(*halvings) {
                let v = v.reduce();
                ranked.push((
                    name.to_string(),
                    v.to_f64_re(),
                    format!("({},{},{},{},{})", v.a, v.b, v.c, v.d, v.k),
                ));
            }
        }
    }
    ranked.sort_by(|a, b| b.1.partial_cmp(&a.1).unwrap());
    let _ = writeln!(r, "state ranking <psi|{label}|psi>:");
    for (name, f, e) in &ranked {
        let _ = writeln!(r, "  {:<16} {}  = {:.15}", name, e, f);
    }
}

const USAGE: &str = "\
blam q census [MIN] MAX — the M^(1) operator census

usage: blam q census [MIN] MAX [flags]        (MIN defaults to 4)
       blam q census --terms-file FILE [flags]   batch re-adjudication

budgets
  --beta B        beta-steps per branch (default 4096)
  --trans T       transitions per branch (default 4194304)
  --qubits Q      live qubits per branch (default 12)
  --branches K    branches per program (default 4096)

universe
  --sig LIST      comma-separated signature order (default the frozen five;
                  alternate universes produce non-canonical data)
  --cond-k K      Object B mode: run `p K-bar <sig>` (the G_K sweep)

run
  --threads J     rayon threads (0 = ambient, the default)
  --out FILE      write the report to FILE as well as stdout
  --dump-unknowns FILE   programs with an Unknown leaf
  --checkpoint FILE      kill-safe group-level resume
  --groups K             groups per size for --checkpoint (default 64)
  --work-mult N   BLC_WORK_MULT for this run (default 16)
  --probe-fuel N  BLC_PROBE_FUEL for this run (default 4096)

batch re-adjudication (--terms-file)
  --terms-file FILE      one program per line; one verdict line per program
  --skeleton CAP         add the classical skeleton column at capacity CAP";

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut cond_k: Option<u32> = None;
    let mut budget = QBudget {
        trans: 1 << 22,
        ..QBudget::default()
    };
    let mut threads = 0usize;
    let mut out: Option<String> = None;
    let mut dump_unknowns: Option<String> = None;
    let mut terms_file: Option<String> = None;
    let mut skeleton_cap: Option<i64> = None;
    let mut ckpt_path: Option<String> = None;
    let mut groups_flag = 0usize;
    let mut work_mult: Option<u64> = None;
    let mut probe_fuel: Option<u64> = None;
    // The canonical universe unless --sig overrides (alternate universes
    // are deliberately-labeled siblings; canonical data stays frozen).
    let mut sig: Vec<Prim> = FROZEN.to_vec();
    let mut p = Args::new("q census", argv);
    while let Some(tok) = p.next() {
        match tok {
            "--cond-k" => cond_k = Some(p.num(tok)?),
            "--beta" => budget.beta = p.num(tok)?,
            "--trans" => budget.trans = p.num(tok)?,
            "--qubits" => budget.max_qubits = p.num(tok)?,
            "--branches" => budget.max_branches = p.num(tok)?,
            "--threads" => threads = p.num(tok)?,
            "--work-mult" => work_mult = Some(p.num(tok)?),
            "--probe-fuel" => probe_fuel = Some(p.num(tok)?),
            "--out" => out = Some(p.value(tok)?.to_string()),
            "--sig" => sig = super::run::parse_sig("q census", p.value(tok)?)?,
            "--dump-unknowns" => dump_unknowns = Some(p.value(tok)?.to_string()),
            "--checkpoint" => ckpt_path = Some(p.value(tok)?.to_string()),
            "--groups" => groups_flag = p.num(tok)?,
            "--terms-file" => terms_file = Some(p.value(tok)?.to_string()),
            "--skeleton" => skeleton_cap = Some(p.num(tok)?),
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    // The sweep needs a size range; batch re-adjudication reads its
    // population from the file and takes none.
    let (min_n, max_n) = if terms_file.is_some() && p.positional().is_empty() {
        (0, 0)
    } else {
        p.range(4)?
    };
    // Phase 3: becomes explicit library config.
    args::apply_engine_env(work_mult, probe_fuel);
    // Big worker stacks: the skeleton reducer and Term drops recurse
    // over term depth, which the size cap bounds at thousands of frames
    // (same lesson as the census escalation pool).
    args::build_pool(threads)?;
    let nthreads = rayon::current_num_threads();

    // Batch re-adjudication: run every program in FILE (one bit-string per
    // line) under the given budget/signature and print one line per
    // program with leaf-fate counts and its summed exact halt mass —
    // the escalation rung for census Unknowns. Streams in completion
    // order; a killed run keeps everything finished.
    if let Some(path) = terms_file {
        let owned = args::read_terms_file(&path)?;
        let programs: Vec<&str> = owned.iter().map(String::as_str).collect();
        let t0 = Instant::now();
        let done = std::sync::atomic::AtomicU64::new(0);
        programs.par_iter().for_each_init(
            || (Pool::new(), QMachine::new(), Vec::new()),
            |(pool, m, leaves), bits| {
                let t = blam::parse_all(bits).expect("parse program line");
                let mut enc = 0u64;
                for c in bits.chars() {
                    enc = enc << 1 | (c == '1') as u64;
                }
                assert_eq!(t.bit_size() as usize, bits.len(), "u64-packable");
                leaves.clear();
                m.run_conditioned_into(
                    pool,
                    enc,
                    bits.len() as u8,
                    cond_k,
                    &sig,
                    &budget,
                    leaves,
                );
                let (mut h, mut e, mut u, mut c) = (0u64, 0u64, 0u64, 0u64);
                let mut halt_mass = Ex::ZERO;
                let mut max_steps = 0u64;
                for leaf in leaves.iter() {
                    max_steps = max_steps.max(leaf.steps);
                    match &leaf.fate {
                        Fate::Halt(_) => {
                            h += 1;
                            halt_mass.add(leaf.mass);
                        }
                        Fate::Err(_) => e += 1,
                        Fate::Unknown => u += 1,
                        Fate::Capacity(_) => c += 1,
                    }
                }
                // Classical skeleton: the program applied to one free rigid
                // variable per signature slot (numeral first in cond mode),
                // adjudicated oracle-free so a Diverge is spine-attributable.
                // Only `skel=nowhnf` transfers to the quantum run: the head
                // chain never terminates, so no primitive is ever demanded,
                // the chains are isomorphic under the substitution, and no
                // branch can Halt — a proven diverger. Off-spine skeleton
                // divergence lives in argument positions where a measurement
                // outcome could still erase it; skeleton halts say nothing
                // (δ-rules continue where the rigid form stopped).
                let skel = skeleton_cap.map(|cap| {
                    use blam::classical::escalation::{normal_form_spine, LTerm, NoNf};
                    use blam::blc::term::{app, var};
                    let mut sk = t.clone();
                    if let Some(k) = cond_k {
                        // Church numeral k̄ = λf.λx. f^k x, matching
                        // qvm::Pool::numeral.
                        let mut body = var(1);
                        for _ in 0..k {
                            body = app(var(2), body);
                        }
                        sk = app(sk, blam::blc::term::lam(blam::blc::term::lam(body)));
                    }
                    for i in 0..sig.len() as u32 {
                        sk = app(sk, var(i + 1));
                    }
                    match normal_form_spine(cap, &LTerm::from_term(&sk)) {
                        (Err(NoNf::Diverge), true) => "nowhnf",
                        (Err(NoNf::Diverge), false) => "offspine-div",
                        (Ok(_), _) => "halt",
                        (Err(NoNf::Unknown(_)), _) => "unknown",
                    }
                });
                let skel_col = skel.map(|s| format!(" skel={s}")).unwrap_or_default();
                println!(
                    "{bits} halt={h} err={e} unk={u} cap={c} steps={max_steps} trans={} mass={}{skel_col}",
                    m.max_trans,
                    halt_mass.exact_str()
                );
                let d = done.fetch_add(1, std::sync::atomic::Ordering::Relaxed) + 1;
                if d.is_multiple_of(10000) {
                    eprintln!(
                        "progress: {d}/{} ({:.0}s)",
                        programs.len(),
                        t0.elapsed().as_secs_f64()
                    );
                }
            },
        );
        eprintln!(
            "adjudicated {} programs in {:.1}s",
            programs.len(),
            t0.elapsed().as_secs_f64()
        );
        return Ok(());
    }

    let mode = match cond_k {
        None => "M_Fock".to_string(),
        Some(k) => format!("G_{k} (p k-bar sig)"),
    };
    let sig_str = sig.iter().map(|p| p.name()).collect::<Vec<_>>().join(" ");
    eprintln!(
        "qcensus [{mode}]: sizes {min_n}..={max_n}, order [{sig_str}], beta={} trans={} qubits={} branches={}, {} threads",
        budget.beta, budget.trans, budget.max_qubits, budget.max_branches, nthreads
    );

    let t0 = Instant::now();
    // Group checkpointing (crate::ckpt): config pins everything verdict-
    // relevant — range, budgets, mode, and the signature universe.
    let ckpt_config = format!(
        "qcensus min={min_n} max={max_n} beta={} trans={} qubits={} branches={} cond={} sig={}",
        budget.beta,
        budget.trans,
        budget.max_qubits,
        budget.max_branches,
        cond_k.map_or("-".into(), |k| k.to_string()),
        sig.iter().map(|p| p.name()).collect::<Vec<_>>().join(",")
    );
    let mut ckpt = ckpt_path
        .as_ref()
        .map(|p| crate::ckpt::Ckpt::<Tally>::open(p, &ckpt_config, groups_flag));
    // Per-size unknown dumping would duplicate lines across resumed
    // runs; under a checkpoint, collect and rewrite the file at the end.
    let mut deferred_unknowns: Vec<(u64, u8)> = Vec::new();

    let mut rows: Vec<(u32, Tally)> = Vec::new();
    let mut total = Tally::new();
    for n in min_n..=max_n {
        let target = match &ckpt {
            Some(c) => c.target,
            None => nthreads * 32,
        };
        let tasks = interleave_tasks(split_tasks(n, target));
        let run_slice = |slice: &[blam::blc::enumerate::GenTask]| -> Tally {
            slice
                .par_iter()
                .fold(
                    || (Pool::new(), QMachine::new(), Vec::new(), Tally::new()),
                    |(mut pool, mut m, mut leaves, mut t), task| {
                        run_task(task, &mut |enc, len| {
                            sweep_one(
                                &mut pool,
                                &mut m,
                                &mut leaves,
                                enc,
                                len,
                                cond_k,
                                &sig,
                                &budget,
                                &mut t,
                            );
                        });
                        (pool, m, leaves, t)
                    },
                )
                .map(|(_, _, _, t)| t)
                .reduce(Tally::new, Tally::merge)
        };
        let (mut tally, secs) = match &mut ckpt {
            Some(c) => {
                let per = tasks.len().div_ceil(c.groups).max(1);
                let mut acc = Tally::new();
                let mut secs = 0.0;
                for gi in 0..c.groups {
                    if let Some((t, gsecs)) = c.take_restored(n, gi) {
                        acc = acc.merge(t);
                        secs += gsecs;
                        continue;
                    }
                    let lo = (gi * per).min(tasks.len());
                    let hi = ((gi + 1) * per).min(tasks.len());
                    let tg0 = Instant::now();
                    let gt = run_slice(&tasks[lo..hi]);
                    let gsecs = tg0.elapsed().as_secs_f64();
                    c.append(n, gi, gsecs, &gt);
                    acc = acc.merge(gt);
                    secs += gsecs;
                }
                (acc, secs)
            }
            None => {
                let tn = Instant::now();
                let t = run_slice(&tasks);
                (t, tn.elapsed().as_secs_f64())
            }
        };
        eprintln!(
            "n={n:>2}: {:>9} programs  halt {:>8}  err {:>8}  unk {:>6}  cap {:>4}  omega+={:.3e}  ({secs:.2}s)",
            tally.programs,
            tally.halt_n,
            tally.err_n.iter().sum::<u64>(),
            tally.unk_n,
            tally.cap_n.iter().sum::<u64>(),
            tally.omega.re(),
        );
        // Sorted per size: accumulation order is task order (split- and
        // thread-count dependent); sorted output is machine-independent.
        tally.unknowns.sort_unstable();
        if dump_unknowns.is_some() && ckpt.is_some() {
            deferred_unknowns.extend(tally.unknowns.iter().copied());
        } else if let Some(path) = &dump_unknowns {
            use std::io::Write;
            let mut u = tally.unknowns.clone();
            u.sort_unstable();
            let mut f = std::fs::OpenOptions::new()
                .create(true)
                .append(true)
                .open(path)
                .expect("open dump file");
            let mut s = String::new();
            for (enc, len) in u {
                s.push_str(&enc_str(enc, len));
                s.push('\n');
            }
            f.write_all(s.as_bytes()).unwrap();
        }
        total = total.merge(tally.clone());
        rows.push((n, tally));
    }
    if ckpt.is_some() {
        if let Some(path) = &dump_unknowns {
            use std::io::Write;
            let mut f = std::fs::File::create(path).expect("create dump file");
            let mut s = String::new();
            for (enc, len) in &deferred_unknowns {
                s.push_str(&enc_str(*enc, *len));
                s.push('\n');
            }
            f.write_all(s.as_bytes()).unwrap();
        }
    }
    let wall = t0.elapsed();
    eprintln!(
        "sweep: {} programs, {} leaves in {:.2?} ({:.0} programs/s)",
        total.programs,
        total.leaves,
        wall,
        total.programs as f64 / wall.as_secs_f64()
    );

    // ---- report -----------------------------------------------------------
    let mut r = String::new();
    let _ = writeln!(
        r,
        "# qcensus [{mode}] — operator census, spec v0 (output = live store at Halt)"
    );
    let _ = writeln!(
        r,
        "# sizes {min_n}..={max_n}  order [{sig_str}]  beta={} trans={} qubits={} branches={}",
        budget.beta, budget.trans, budget.max_qubits, budget.max_branches
    );
    let _ = writeln!(
        r,
        "# exact values are (a,b,c,d,k): (a + b*w + c*w^2 + d*w^3)/sqrt(2)^k, w = e^(i pi/4)"
    );
    let _ = writeln!(r, "#");
    let _ = writeln!(
        r,
        "# n    programs      halt       err       unk   cap   omega_n(exact)  omega_n(f64)"
    );
    for (n, t) in &rows {
        let _ = writeln!(
            r,
            "{:>4} {:>11} {:>9} {:>9} {:>9} {:>5}   {}  {:.12e}",
            n,
            t.programs,
            t.halt_n,
            t.err_n.iter().sum::<u64>(),
            t.unk_n,
            t.cap_n.iter().sum::<u64>(),
            t.omega.exact_str(),
            t.omega.re(),
        );
    }
    let _ = writeln!(r, "#");
    let _ = writeln!(
        r,
        "## Totals ({} programs, {} leaves)",
        total.programs, total.leaves
    );
    let _ = writeln!(
        r,
        "halt {}  err {:?} (species/handle-applied/stale/retired/same-qubit)  unk {} (by-trans {})  cap {:?} (qubits/amplitude/branches)  none-mass {}",
        total.halt_n, total.err_n, total.unk_n, total.unk_by_trans, total.cap_n, total.none_mass_n
    );
    let _ = writeln!(
        r,
        "Omega_success  = {}  = {:.15}",
        total.omega.exact_str(),
        total.omega.re()
    );
    let upper = {
        let mut u = total.omega;
        u.merge(&total.unk_mass);
        u.merge(&total.cap_mass);
        u
    };
    let _ = writeln!(
        r,
        "bracket upper  = {}  = {:.15}   (success + unknown + capacity mass)",
        upper.exact_str(),
        upper.re()
    );
    let _ = writeln!(
        r,
        "err mass       = {}  = {:.15}   (excluded by construction)",
        total.err_mass.exact_str(),
        total.err_mass.re()
    );
    let _ = writeln!(
        r,
        "unk mass       = {}  = {:.15}",
        total.unk_mass.exact_str(),
        total.unk_mass.re()
    );
    let _ = writeln!(r, "#");
    let _ = writeln!(
        r,
        "## Sectors (live qubits at Halt; number superselection by construction)"
    );
    for s in 0..SECT {
        let label = if s == SECT - 1 {
            format!("{}+", s)
        } else {
            s.to_string()
        };
        let _ = writeln!(
            r,
            "k={:<3} halts {:>9}  Tr M^({}) = {}  = {:.15}",
            label,
            total.sect_n[s],
            label,
            total.sect_mass[s].exact_str(),
            total.sect_mass[s].re()
        );
    }
    let _ = writeln!(r, "#");
    let _ = writeln!(r, "## M^(1) (basis |0>, |1>; allocation-rank tensor order)");
    for i in 0..2 {
        for j in 0..2 {
            let e = &total.m1[i * 2 + j];
            let _ = writeln!(
                r,
                "M1[{i}][{j}] = {}  = {:.15} {:+.15}i",
                e.exact_str(),
                e.re(),
                e.im()
            );
        }
    }
    if total.m1.iter().all(|e| e.ok) {
        let m00 = total.m1[0].v.reduce();
        let m01 = total.m1[1].v.reduce();
        let m10 = total.m1[2].v.reduce();
        let m11 = total.m1[3].v.reduce();
        let _ = writeln!(
            r,
            "hermitian: {}   diagonals real: {}",
            m01 == m10.conj().reduce(),
            m00.is_real() && m11.is_real()
        );
        if let Some(tr) = m00.add(m11).map(|x| x.reduce()) {
            let _ = writeln!(
                r,
                "Tr = ({},{},{},{},{})  = {:.15}",
                tr.a,
                tr.b,
                tr.c,
                tr.d,
                tr.k,
                tr.to_f64_re()
            );
        }
        // det = m00·m11 − m01·m10. The full product's denominator exponent
        // exceeds K_CAP at census sizes, but the *sign* is exact: compare
        // numerator products, √2-aligning the (tiny) k mismatch.
        let det_sign = {
            let num = |x: Dw| Dw { k: 0, ..x };
            let sqrt2 = Dw {
                a: 0,
                b: 1,
                c: 0,
                d: -1,
                k: 0,
            };
            let mut p = num(m00).mul(num(m11)).expect("numerator product");
            let mut q = num(m01).mul(num(m10)).expect("numerator product");
            let (kp, kq) = (m00.k + m11.k, m01.k + m10.k);
            for _ in 0..kq.saturating_sub(kp) {
                p = p.mul(sqrt2).expect("sqrt2 align");
            }
            for _ in 0..kp.saturating_sub(kq) {
                q = q.mul(sqrt2).expect("sqrt2 align");
            }
            p.sub(q).expect("det numerator").sign_real()
        };
        let (trf, detf) = (
            m00.to_f64_re() + m11.to_f64_re(),
            m00.to_f64_re() * m11.to_f64_re()
                - (m01.to_f64_re() * m10.to_f64_re() - m01.to_f64_im() * m10.to_f64_im()),
        );
        let disc = (trf * trf - 4.0 * detf).max(0.0).sqrt();
        let _ = writeln!(
            r,
            "det = {:.6e} (f64; exact sign {det_sign})   eigenvalues (f64 display) = {:.15}, {:.15}",
            detf,
            (trf + disc) / 2.0,
            (trf - disc) / 2.0
        );
        // Canonical single-qubit states, unnormalized; halvings = log2 |psi|^2.
        let one = Dw::ONE;
        let zero = Dw::ZERO;
        let states: Vec<(&str, Vec<Dw>, u32)> = vec![
            ("|0>", vec![one, zero], 0),
            ("|1>", vec![zero, one], 0),
            ("|+>", vec![one, one], 1),
            ("|->", vec![one, one.neg()], 1),
            ("T|+>", vec![one, Dw::OMEGA], 1),
            ("TH-> (1,-w)", vec![one, Dw::OMEGA.neg()], 1),
        ];
        rank_states(&mut r, "M1", &total.m1, &states);
    }
    let _ = writeln!(r, "#");
    let _ = writeln!(
        r,
        "## M^(2) (basis |q1 q0>, first-allocated qubit = low bit)"
    );
    {
        let mut nonzero = 0usize;
        for i in 0..4 {
            for j in 0..4 {
                let e = &total.m2[i * 4 + j];
                if e.ok && e.v.is_zero() {
                    continue;
                }
                nonzero += 1;
                let _ = writeln!(
                    r,
                    "M2[{i}][{j}] = {}  = {:.15} {:+.15}i",
                    e.exact_str(),
                    e.re(),
                    e.im()
                );
            }
        }
        let _ = writeln!(r, "({nonzero} nonzero of 16 entries)");
        if total.m2.iter().all(|e| e.ok) {
            let herm = (0..4).all(|i| {
                (0..4).all(|j| {
                    total.m2[i * 4 + j].v.reduce() == total.m2[j * 4 + i].v.conj().reduce()
                })
            });
            let _ = writeln!(r, "hermitian: {herm}");
            let one = Dw::ONE;
            let zero = Dw::ZERO;
            // Bell states unnormalized: |Phi+> = (1,0,0,1), |Psi+> = (0,1,1,0).
            let states2: Vec<(&str, Vec<Dw>, u32)> = vec![
                ("|00>", vec![one, zero, zero, zero], 0),
                ("|01> (q0=1)", vec![zero, one, zero, zero], 0),
                ("|10> (q1=1)", vec![zero, zero, one, zero], 0),
                ("|11>", vec![zero, zero, zero, one], 0),
                ("|++>", vec![one, one, one, one], 2),
                ("Bell Phi+", vec![one, zero, zero, one], 1),
                ("Bell Phi-", vec![one, zero, zero, one.neg()], 1),
                ("Bell Psi+", vec![zero, one, one, zero], 1),
            ];
            rank_states(&mut r, "M2", &total.m2, &states2);
        }
    }
    let _ = writeln!(r, "#");
    let _ = writeln!(r, "## Structure witnesses");
    let _ = writeln!(
        r,
        "forked programs {}   fate-divergent {}   first fate-divergent: {}",
        total.forked,
        total.fate_div,
        total
            .first_fate_div
            .map(|(l, e)| format!("{} ({} bits)", enc_str(e, l), l))
            .unwrap_or_else(|| "none".into())
    );
    let _ = writeln!(
        r,
        "non-dyadic halt leaves {}   first: {}",
        total.nondyadic,
        total
            .first_nondyadic
            .map(|(l, e)| format!("{} ({} bits)", enc_str(e, l), l))
            .unwrap_or_else(|| "none".into())
    );
    let _ = writeln!(r, "#");
    let _ = writeln!(
        r,
        "## Budget headroom (raise caps before trusting a larger N)"
    );
    let _ = writeln!(
        r,
        "max steps {} / beta {}   max trans {} / cap {}   max leaves {} / branches {}   max live {} / qubits {}",
        total.max_steps,
        budget.beta,
        total.max_trans,
        budget.trans,
        total.max_leaves,
        budget.max_branches,
        total.max_live,
        budget.max_qubits
    );

    print!("{r}");
    if let Some(path) = out {
        std::fs::write(&path, &r).expect("write output file");
        eprintln!("wrote {path}");
    }
    Ok(())
}
