//! S1 signature pilot: sweep all 120 permutations of {new, meas, cnot, t, h}
//! over every closed term of size 4..=N, and rank them by the PREDECLARED
//! functional (DESIGN-QBLC.md, Staging): maximize Ω_{success,≤N}, ties broken
//! lexicographically on the permutation tuple. The functional and cutoff are
//! fixed before any results are seen; the winner froze the signature order
//! for all canonical data (S1, 2026-08-02, at ≤24 via the reference
//! evaluator). Now runs the lockstep-verified fast machine (`qvm`) — the
//! frozen result reproduces exactly; larger-N robustness reruns are
//! informational only, never a re-freeze.
//!
//! Usage: qpilot [--max-n N] [--beta B] [--trans T] [--threads K]

use blam::dw::Dw;
use blam::enumerate::for_each_closed;
use blam::qeval::{Fate, Prim, QBudget};
use blam::qvm::{Pool, QMachine};
use rayon::prelude::*;
use std::time::Instant;

#[derive(Clone, Copy, Default)]
struct Tally {
    /// Exact Ω_{success,≤N} accumulator; None once any exact op overflowed
    /// (f64 mirror still reported, marked inexact).
    succ: Option<Dw>,
    succ_f: f64,
    err_f: f64,
    unk_f: f64,
    halt_n: u64,
    err_n: u64,
    unk_n: u64,
    cap_n: u64,
}

impl Tally {
    fn new() -> Tally {
        Tally {
            succ: Some(Dw::ZERO),
            ..Default::default()
        }
    }

    fn merge(self, o: Tally) -> Tally {
        Tally {
            succ: match (self.succ, o.succ) {
                (Some(x), Some(y)) => x.add(y),
                _ => None,
            },
            succ_f: self.succ_f + o.succ_f,
            err_f: self.err_f + o.err_f,
            unk_f: self.unk_f + o.unk_f,
            halt_n: self.halt_n + o.halt_n,
            err_n: self.err_n + o.err_n,
            unk_n: self.unk_n + o.unk_n,
            cap_n: self.cap_n + o.cap_n,
        }
    }
}

fn eval_term(
    pool: &mut Pool,
    m: &mut QMachine,
    leaves: &mut Vec<blam::qeval::Leaf>,
    enc: u64,
    len: u8,
    n: u32,
    order: &[Prim; 5],
    budget: &QBudget,
) -> Tally {
    let mut tally = Tally::new();
    leaves.clear();
    m.run_program_into(pool, enc, len, order, budget, leaves);
    for leaf in leaves.iter() {
        let w_f = leaf.mass.map(|m| m.to_f64_re()).unwrap_or(0.0) / 2f64.powi(n as i32);
        match leaf.fate {
            Fate::Halt(_) => {
                tally.halt_n += 1;
                tally.succ_f += w_f;
                tally.succ = tally.succ.and_then(|acc| {
                    leaf.mass
                        .and_then(|m| m.div_pow2(n))
                        .and_then(|w| acc.add(w))
                });
            }
            Fate::Err(_) => {
                tally.err_n += 1;
                tally.err_f += w_f;
            }
            Fate::Unknown => {
                tally.unk_n += 1;
                tally.unk_f += w_f;
            }
            Fate::Capacity(_) => {
                tally.cap_n += 1;
                tally.unk_f += w_f;
            }
        }
    }
    tally
}

fn perms() -> Vec<[Prim; 5]> {
    // Heap's algorithm over Prim::ALL, emitted in a deterministic order;
    // the lexicographic tie-break refers to this enumeration of tuples.
    let mut out = Vec::with_capacity(120);
    let mut a = Prim::ALL;
    fn heap(k: usize, a: &mut [Prim; 5], out: &mut Vec<[Prim; 5]>) {
        if k == 1 {
            out.push(*a);
            return;
        }
        for i in 0..k {
            heap(k - 1, a, out);
            if k % 2 == 0 {
                a.swap(i, k - 1);
            } else {
                a.swap(0, k - 1);
            }
        }
    }
    heap(5, &mut a, &mut out);
    // Deterministic canonical order: sort tuples by name sequence so the
    // tie-break is the documented lexicographic one, not Heap's order.
    out.sort_by_key(|p| p.map(|x| x.name()));
    out
}

fn order_name(order: &[Prim; 5]) -> String {
    order.map(|p| p.name()).join(" ")
}

fn main() {
    let mut max_n: u32 = 24;
    // trans is the fast machine's metric (transitions, not redex searches).
    let mut budget = QBudget {
        trans: 1 << 26,
        ..QBudget::default()
    };
    let mut threads: Option<usize> = None;
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
            "--threads" => {
                threads = Some(args[i + 1].parse().unwrap());
                i += 2;
            }
            other => panic!("unknown arg {other}"),
        }
    }
    if let Some(k) = threads {
        rayon::ThreadPoolBuilder::new()
            .num_threads(k)
            .build_global()
            .unwrap();
    }

    // Materialize all programs once, packed (Term is Rc-based and not Send;
    // parsing inside the parallel closure is microseconds per term).
    let t0 = Instant::now();
    let mut programs: Vec<(u64, u8, u32)> = Vec::new();
    for n in 4..=max_n {
        for_each_closed(n, &mut |enc, len| {
            programs.push((enc, len, n));
        });
    }
    eprintln!(
        "qpilot: {} programs (4..={max_n} bits), budgets beta={} trans={} qubits={} branches={}, enumerated in {:.2?}",
        programs.len(),
        budget.beta,
        budget.trans,
        budget.max_qubits,
        budget.max_branches,
        t0.elapsed()
    );

    let sweep0 = Instant::now();
    let mut rows: Vec<([Prim; 5], Tally)> = Vec::with_capacity(120);
    for (pi, order) in perms().into_iter().enumerate() {
        let t1 = Instant::now();
        let tally = programs
            .par_iter()
            .fold(
                || (Pool::new(), QMachine::new(), Vec::new(), Tally::new()),
                |(mut pool, mut m, mut leaves, acc), &(enc, len, n)| {
                    let t = eval_term(&mut pool, &mut m, &mut leaves, enc, len, n, &order, &budget);
                    let acc = acc.merge(t);
                    (pool, m, leaves, acc)
                },
            )
            .map(|(_, _, _, t)| t)
            .reduce(Tally::new, Tally::merge);
        eprintln!(
            "[{:>3}/120] {}  omega_succ={:.9}  ({:.2?})",
            pi + 1,
            order_name(&order),
            tally.succ_f,
            t1.elapsed()
        );
        rows.push((order, tally));
    }
    eprintln!("sweep: {:.2?}", sweep0.elapsed());

    // Rank by the predeclared functional: exact Ω_success desc, then
    // lexicographic on the tuple (rows are already in lexicographic order,
    // and the sort below is stable).
    rows.sort_by(|(_, a), (_, b)| match (&a.succ, &b.succ) {
        (Some(x), Some(y)) => y.cmp_real(x),
        _ => b.succ_f.partial_cmp(&a.succ_f).unwrap(),
    });

    println!("# qpilot ranking — functional: max Omega_success,<= {max_n} (exact), lexicographic tie-break");
    println!("# rank  order  omega_success(f64)  exact(a,b,c,d,k)  halt err unk cap");
    for (rank, (order, t)) in rows.iter().enumerate() {
        let exact = t
            .succ
            .map(|d| {
                let r = d.reduce();
                format!("({},{},{},{},{})", r.a, r.b, r.c, r.d, r.k)
            })
            .unwrap_or_else(|| "OVERFLOW".into());
        println!(
            "{:>3}  [{}]  {:.12}  {}  {} {} {} {}",
            rank + 1,
            order_name(order),
            t.succ_f,
            exact,
            t.halt_n,
            t.err_n,
            t.unk_n,
            t.cap_n
        );
    }
    let (win, wt) = &rows[0];
    println!(
        "\nWINNER: [{}]  Omega_success,<= {max_n} = {:.12}  (halt {} / err {} / unk {} / cap {})",
        order_name(win),
        wt.succ_f,
        wt.halt_n,
        wt.err_n,
        wt.unk_n,
        wt.cap_n
    );
}
