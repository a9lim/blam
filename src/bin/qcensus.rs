//! S2: the M^(1) operator census. Sweep every closed program of size
//! 4..=N under the frozen signature `p h meas new cnot t`, through the
//! KN-store fast path (`qvm`, lockstep-verified against `qeval`), and
//! accumulate exactly:
//!
//! - Ω_{success,≤N} (total halt mass) and its bracket (+ Unknown/Capacity
//!   mass; Err mass is excluded by construction and reported as a column);
//! - per-live-qubit-count sector masses (number superselection is by
//!   construction: sectors are keyed by live count, no cross terms exist);
//! - the k=1 sector operator M^(1)|≤N = Σ_p 2^(−|p|) v_p v_p† as an exact
//!   2×2 Hermitian matrix over Z[ω]/√2^k, with state rankings;
//! - dyadicity and fate-divergence witnesses (where the pilot's mirror-tie
//!   phenomenon first breaks);
//! - budget-headroom telemetry (max β, max transitions, max branches).
//!
//! Soundness battery, free: every program's leaf masses must sum to
//! exactly 1 (CP instruments conserve mass); asserted per program across
//! the entire sweep.
//!
//! Output convention note: this is spec v0 — the leaf output is the whole
//! live store at Halt (M_Fock's definition). The designated-output
//! alternative (DESIGN-QBLC.md, Open questions) changes G_k, not this.
//!
//! Usage: qcensus [--max-n N] [--beta B] [--trans T] [--qubits Q]
//!                [--branches K] [--threads J] [--out FILE]

use blc::dw::Dw;
use blc::enumerate::{interleave_tasks, run_task, split_tasks};
use blc::qvm::{Pool, QMachine};
use blc::qeval::{Capacity, ErrKind, Fate, Prim, QBudget};
use rayon::prelude::*;
use std::fmt::Write as _;
use std::time::Instant;

/// The frozen signature order (DESIGN-QBLC.md, S1 pilot).
const FROZEN: [Prim; 5] = [Prim::H, Prim::Meas, Prim::New, Prim::Cnot, Prim::T];

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
    const ZERO: Ex = Ex { v: Dw::ZERO, ok: true, re: 0.0, im: 0.0 };

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
}

/// Is an exact real mass a dyadic rational?
fn is_dyadic(m: Dw) -> bool {
    let r = m.reduce();
    r.b == 0 && r.c == 0 && r.d == 0 && r.k % 2 == 0
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
    forked: u64,
    fate_div: u64,
    first_fate_div: Option<(u8, u64)>,
    nondyadic: u64,
    first_nondyadic: Option<(u8, u64)>,
    max_steps: u64,
    max_trans: u64,
    max_leaves: u64,
    max_live: usize,
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
            forked: 0,
            fate_div: 0,
            first_fate_div: None,
            nondyadic: 0,
            first_nondyadic: None,
            max_steps: 0,
            max_trans: 0,
            max_leaves: 0,
            max_live: 0,
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
        self
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

fn sweep_one(
    pool: &mut Pool,
    m: &mut QMachine,
    leaves: &mut Vec<blc::qeval::Leaf>,
    enc: u64,
    len: u8,
    budget: &QBudget,
    t: &mut Tally,
) {
    leaves.clear();
    m.run_program_into(pool, enc, len, &FROZEN, budget, leaves);
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
                if live == 1 {
                    // v v† / 2^n — exact complex entries.
                    let (v0, v1) = (store.amps[0], store.amps[1]);
                    let e = [
                        v0.mul(v0.conj()),
                        v0.mul(v1.conj()),
                        v1.mul(v0.conj()),
                        v1.mul(v1.conj()),
                    ];
                    for (acc, x) in t.m1.iter_mut().zip(e) {
                        acc.add(x.and_then(|y| y.div_pow2(n)));
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

fn enc_str(enc: u64, len: u8) -> String {
    blc::enumerate::enc_to_string(enc, len)
}

/// ⟨ψ|M|ψ⟩ for unnormalized ψ = (c0, c1), divided by ‖ψ‖² later by caller.
fn expect(m1: &[Ex; 4], c0: Dw, c1: Dw) -> Option<Dw> {
    if !m1.iter().all(|e| e.ok) {
        return None;
    }
    // ψ† M ψ = Σ_ij conj(c_i) M_ij c_j
    let mut acc = Dw::ZERO;
    for (i, ci) in [c0, c1].iter().enumerate() {
        for (j, cj) in [c0, c1].iter().enumerate() {
            acc = acc.add(ci.conj().mul(m1[i * 2 + j].v)?.mul(*cj)?)?;
        }
    }
    Some(acc.reduce())
}

fn main() {
    let mut max_n: u32 = 28;
    let mut budget = QBudget { trans: 1 << 22, ..QBudget::default() };
    let mut threads: Option<usize> = None;
    let mut out: Option<String> = None;
    let args: Vec<String> = std::env::args().skip(1).collect();
    let mut i = 0;
    while i < args.len() {
        match args[i].as_str() {
            "--max-n" => {
                max_n = args[i + 1].parse().unwrap();
                i += 2;
            }
            "--beta" => {
                budget.beta = args[i + 1].parse().unwrap();
                i += 2;
            }
            "--trans" => {
                budget.trans = args[i + 1].parse().unwrap();
                i += 2;
            }
            "--qubits" => {
                budget.max_qubits = args[i + 1].parse().unwrap();
                i += 2;
            }
            "--branches" => {
                budget.max_branches = args[i + 1].parse().unwrap();
                i += 2;
            }
            "--threads" => {
                threads = Some(args[i + 1].parse().unwrap());
                i += 2;
            }
            "--out" => {
                out = Some(args[i + 1].clone());
                i += 2;
            }
            other => panic!("unknown arg {other}"),
        }
    }
    if let Some(k) = threads {
        rayon::ThreadPoolBuilder::new().num_threads(k).build_global().unwrap();
    }
    let nthreads = rayon::current_num_threads();

    eprintln!(
        "qcensus: sizes 4..={max_n}, order [h meas new cnot t], beta={} trans={} qubits={} branches={}, {} threads",
        budget.beta, budget.trans, budget.max_qubits, budget.max_branches, nthreads
    );

    let t0 = Instant::now();
    let mut rows: Vec<(u32, Tally)> = Vec::new();
    let mut total = Tally::new();
    for n in 4..=max_n {
        let tn = Instant::now();
        let tasks = interleave_tasks(split_tasks(n, nthreads * 32));
        let tally = tasks
            .par_iter()
            .fold(
                || (Pool::new(), QMachine::new(), Vec::new(), Tally::new()),
                |(mut pool, mut m, mut leaves, mut t), task| {
                    run_task(task, &mut |enc, len| {
                        sweep_one(&mut pool, &mut m, &mut leaves, enc, len, &budget, &mut t);
                    });
                    (pool, m, leaves, t)
                },
            )
            .map(|(_, _, _, t)| t)
            .reduce(Tally::new, Tally::merge);
        eprintln!(
            "n={n:>2}: {:>9} programs  halt {:>8}  err {:>8}  unk {:>6}  cap {:>4}  omega+={:.3e}  ({:.2?})",
            tally.programs,
            tally.halt_n,
            tally.err_n.iter().sum::<u64>(),
            tally.unk_n,
            tally.cap_n.iter().sum::<u64>(),
            tally.omega.re,
            tn.elapsed()
        );
        total = total.merge(tally.clone());
        rows.push((n, tally));
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
    let _ = writeln!(r, "# qcensus S2 — M^(1) operator census, spec v0 (output = live store at Halt)");
    let _ = writeln!(
        r,
        "# sizes 4..={max_n}  order [h meas new cnot t]  beta={} trans={} qubits={} branches={}",
        budget.beta, budget.trans, budget.max_qubits, budget.max_branches
    );
    let _ = writeln!(r, "# exact values are (a,b,c,d,k): (a + b*w + c*w^2 + d*w^3)/sqrt(2)^k, w = e^(i pi/4)");
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
            t.omega.re,
        );
    }
    let _ = writeln!(r, "#");
    let _ = writeln!(r, "## Totals ({} programs, {} leaves)", total.programs, total.leaves);
    let _ = writeln!(
        r,
        "halt {}  err {:?} (species/handle-applied/stale/retired/same-qubit)  unk {} (by-trans {})  cap {:?} (qubits/amplitude/branches)  none-mass {}",
        total.halt_n, total.err_n, total.unk_n, total.unk_by_trans, total.cap_n, total.none_mass_n
    );
    let _ = writeln!(
        r,
        "Omega_success  = {}  = {:.15}",
        total.omega.exact_str(),
        total.omega.re
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
        upper.re
    );
    let _ = writeln!(
        r,
        "err mass       = {}  = {:.15}   (excluded by construction)",
        total.err_mass.exact_str(),
        total.err_mass.re
    );
    let _ = writeln!(
        r,
        "unk mass       = {}  = {:.15}",
        total.unk_mass.exact_str(),
        total.unk_mass.re
    );
    let _ = writeln!(r, "#");
    let _ = writeln!(r, "## Sectors (live qubits at Halt; number superselection by construction)");
    for s in 0..SECT {
        let label = if s == SECT - 1 { format!("{}+", s) } else { s.to_string() };
        let _ = writeln!(
            r,
            "k={:<3} halts {:>9}  Tr M^({}) = {}  = {:.15}",
            label,
            total.sect_n[s],
            label,
            total.sect_mass[s].exact_str(),
            total.sect_mass[s].re
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
                e.re,
                e.im
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
                tr.a, tr.b, tr.c, tr.d, tr.k, tr.to_f64_re()
            );
        }
        // det = m00·m11 − m01·m10. The full product's denominator exponent
        // exceeds K_CAP at census sizes, but the *sign* is exact: compare
        // numerator products, √2-aligning the (tiny) k mismatch.
        let det_sign = {
            let num = |x: Dw| Dw { k: 0, ..x };
            let sqrt2 = Dw { a: 0, b: 1, c: 0, d: -1, k: 0 };
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
        // State rankings: <psi|M|psi> for canonical single-qubit states,
        // each with ||psi||^2 = 1 (|0>,|1>) or 2 (unnormalized (1,±1),(1,w)).
        let one = Dw::ONE;
        let states: Vec<(&str, Dw, Dw, u32)> = vec![
            ("|0>", one, Dw::ZERO, 0),
            ("|1>", Dw::ZERO, one, 0),
            ("|+>", one, one, 1),
            ("|->", one, one.neg(), 1),
            ("T|+>", one, Dw::OMEGA, 1),
            ("TH-> (1,-w)", one, Dw::OMEGA.neg(), 1),
        ];
        let mut ranked: Vec<(String, f64, String)> = Vec::new();
        for (name, c0, c1, halvings) in states {
            if let Some(v) = expect(&total.m1, c0, c1) {
                // divide by ||psi||^2 = 2^halvings
                if let Some(v) = v.div_pow2(halvings) {
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
        let _ = writeln!(r, "state ranking <psi|M1|psi>:");
        for (name, f, e) in &ranked {
            let _ = writeln!(r, "  {:<14} {}  = {:.15}", name, e, f);
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
    let _ = writeln!(r, "## Budget headroom (raise caps before trusting a larger N)");
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
}
