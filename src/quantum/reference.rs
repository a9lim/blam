//! qBLC naive reference evaluator: the executable semantics of
//! `docs/quantum/architecture.md`.
//!
//! Small-step leftmost-outermost reduction over terms extended with primitive
//! constants and opaque qubit handles, a branch-local quantum store of
//! unnormalized `Z[ω]/√2^k` statevectors, and measurement branching with exact
//! weights (nothing is ever sampled). Deliberately favors obvious correctness
//! over speed, like `classical::reference`; the KN-store fast path is lockstep-tested
//! against this. Classical engines remain behaviorally isolated.
//!
//! Spec anchors, in order of the surprises they encode:
//! - `new M → #(q,0)` discards M *unevaluated* (species-blind, K-style);
//!   every other primitive takes its arguments strictly left-to-right to
//!   WHNF, stays neutral on rigid-variable heads, Errs on non-handle values
//!   *before* any effect, and consumes epochs atomically only when the full
//!   redex is assembled.
//! - A handle in operator position is Err, not a stuck normal form.
//! - Unnormalized branch vectors: a Halt leaf's sole mass is ‖v‖² = Tr vv†.
//! - Capacity (qubit count, denominator exponent, coefficient overflow,
//!   branch count) is a fate, never a panic or a wrong number.

use crate::blc::Term;
use crate::quantum::{Budget, Capacity, Effect, ErrKind, Fate, Leaf, Prim, Store};
use std::rc::Rc;

/// Term extended with primitives and handles. Both extensions are closed
/// constants: shift and substitution pass through them untouched. Handles
/// have no syntactic intro form — only `new` mints them at runtime.
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum QTerm {
    Var(u32),
    Lam(Rc<QTerm>),
    App(Rc<QTerm>, Rc<QTerm>),
    Prim(Prim),
    /// (qubit id, epoch)
    Handle(u32, u32),
}

pub fn qt_of_term(t: &Term) -> QTerm {
    match t {
        Term::Var(n) => QTerm::Var(*n),
        Term::Lam(b) => QTerm::Lam(Rc::new(qt_of_term(b))),
        Term::App(f, a) => QTerm::App(Rc::new(qt_of_term(f)), Rc::new(qt_of_term(a))),
    }
}

/// Church booleans under the classical polarity convention:
/// outcome 0 → true = λx.λy.x, outcome 1 → false = λx.λy.y.
fn church_bool(outcome_zero: bool) -> QTerm {
    let v = if outcome_zero { 2 } else { 1 };
    QTerm::Lam(Rc::new(QTerm::Lam(Rc::new(QTerm::Var(v)))))
}

// ---------------------------------------------------------------------------
// shift / subst / beta — the `blc::reduction` kernel transplanted to QTerm
// (Prim/Handle are closed constants, so they pass through untouched).

fn shift(t: &QTerm, d: i64, cutoff: u32) -> QTerm {
    match t {
        QTerm::Var(n) => {
            if *n >= cutoff {
                QTerm::Var((*n as i64 + d) as u32)
            } else {
                QTerm::Var(*n)
            }
        }
        QTerm::Lam(b) => QTerm::Lam(Rc::new(shift(b, d, cutoff + 1))),
        QTerm::App(f, a) => QTerm::App(Rc::new(shift(f, d, cutoff)), Rc::new(shift(a, d, cutoff))),
        leaf => leaf.clone(),
    }
}

fn subst(t: &QTerm, j: u32, s: &QTerm) -> QTerm {
    match t {
        QTerm::Var(n) => {
            if *n == j {
                s.clone()
            } else {
                QTerm::Var(*n)
            }
        }
        QTerm::Lam(b) => QTerm::Lam(Rc::new(subst(b, j + 1, &shift(s, 1, 1)))),
        QTerm::App(f, a) => QTerm::App(Rc::new(subst(f, j, s)), Rc::new(subst(a, j, s))),
        leaf => leaf.clone(),
    }
}

fn beta(body: &QTerm, arg: &QTerm) -> QTerm {
    shift(&subst(body, 1, &shift(arg, 1, 1)), -1, 1)
}

/// The trace event for a unary gate firing.
fn gate1_effect(p: Prim, q: u32, e: u32) -> Effect {
    match p {
        Prim::H => Effect::H(q, e),
        Prim::T => Effect::T(q, e),
        Prim::S => Effect::S(q, e),
        Prim::X => Effect::X(q, e),
        Prim::Z => Effect::Z(q, e),
        _ => unreachable!("gate1_effect on {:?}", p),
    }
}

// ---------------------------------------------------------------------------
// Small-step reduction.

enum Step {
    /// One reduction applied (possibly with store effect); keep going.
    Reduced(QTerm),
    /// meas fired on (qubit, epoch): two successor branches (outcome 0, 1).
    Forked(Box<(QTerm, Store, QTerm, Store)>, u32, u32),
    /// No redex anywhere: full normal form.
    Normal,
    /// Branch died.
    Died(Fate),
}

/// Outcome of searching a subterm for the leftmost-outermost redex.
enum Found {
    /// Redex found and contracted (β charged by caller via flag).
    Rewritten(QTerm, bool),
    /// Effectful contraction already applied to the store.
    RewrittenEffect(QTerm),
    /// meas redex on (qubit, epoch): replacement terms for both outcomes.
    Fork(QTerm, QTerm, u32, u32),
    /// Err fired.
    Fail(ErrKind),
    /// Capacity fired.
    Full(Capacity),
    /// No redex in this subterm (it is in normal form).
    None,
}

/// How a primitive treats an argument subterm.
enum ArgView {
    /// A handle value — the species the primitive wants.
    Handle(u32, u32),
    /// A canonical non-handle value (λ, bare/undersaturated prim, pair):
    /// species Err, fired before any effect and before the value's interior
    /// is normalized ("Err precedes effects", `docs/quantum/architecture.md`).
    Value,
    /// Anything else: search inside for the next redex. If the interior is
    /// already fully normal (rigid/neutral head), the search returns None
    /// and the primitive application simply stays symbolic in the NF.
    Search,
}

fn arg_view(t: &QTerm) -> ArgView {
    match t {
        QTerm::Handle(q, e) => ArgView::Handle(*q, *e),
        QTerm::Lam(_) => ArgView::Value,
        QTerm::Prim(_) => ArgView::Value,
        QTerm::Var(_) => ArgView::Search,
        QTerm::App(f, _) => {
            // Walk the spine: rigid head → neutral (search-inside, may stay
            // symbolic); undersaturated primitive head → a value (species
            // Err); saturated prim / Lam / Handle head → reducible (search
            // will find the redex or the Err).
            let mut head = f;
            let mut args = 1usize;
            loop {
                match &**head {
                    QTerm::App(g, _) => {
                        head = g;
                        args += 1;
                    }
                    QTerm::Var(_) => return ArgView::Search,
                    QTerm::Prim(p) if args < p.arity() => return ArgView::Value,
                    _ => return ArgView::Search,
                }
            }
        }
    }
}

struct Ctx<'a> {
    store: &'a mut Store,
    budget: &'a Budget,
    /// Effect path of the current branch; primitives append as they fire.
    /// `None` on the untraced path (`run`), which never materialises one —
    /// the trace was pure overhead there, a `Vec` push per primitive plus a
    /// full clone at every fork.
    trace: Option<&'a mut Vec<Effect>>,
}

impl Ctx<'_> {
    /// Record a fired effect. The event itself is only built when a trace
    /// is being kept.
    fn emit(&mut self, e: impl FnOnce() -> Effect) {
        if let Some(t) = self.trace.as_deref_mut() {
            t.push(e());
        }
    }
}

/// Find and contract the leftmost-outermost redex in `t`, normal order:
/// spine head first, then arguments left to right, then under binders.
fn search(t: &QTerm, cx: &mut Ctx) -> Found {
    match t {
        QTerm::Var(_) | QTerm::Prim(_) | QTerm::Handle(_, _) => Found::None,
        QTerm::Lam(b) => match search(b, cx) {
            Found::Rewritten(nb, chg) => Found::Rewritten(QTerm::Lam(Rc::new(nb)), chg),
            Found::RewrittenEffect(nb) => Found::RewrittenEffect(QTerm::Lam(Rc::new(nb))),
            Found::Fork(b0, b1, q, e) => {
                Found::Fork(QTerm::Lam(Rc::new(b0)), QTerm::Lam(Rc::new(b1)), q, e)
            }
            other => other,
        },
        QTerm::App(f, a) => {
            // Decompose the spine to find the head.
            match &**f {
                QTerm::Lam(body) => return Found::Rewritten(beta(body, a), true),
                QTerm::Handle(_, _) => return Found::Fail(ErrKind::HandleApplied),
                QTerm::Prim(Prim::New) => {
                    // new discards its argument unevaluated, species-blind.
                    return match cx.store.alloc(cx.budget.max_qubits) {
                        Ok(q) => {
                            cx.emit(|| Effect::New(q));
                            Found::RewrittenEffect(QTerm::Handle(q, 0))
                        }
                        Err(c) => Found::Full(c),
                    };
                }
                QTerm::Prim(p) if p.arity() == 1 => {
                    return unary_prim(*p, f, a, cx);
                }
                _ => {}
            }
            // cnot: spine App(App(cnot, a1), a2).
            if let QTerm::App(g, a1) = &**f {
                if let QTerm::Prim(Prim::Cnot) = &**g {
                    return cnot_prim(g, a1, a, f, cx);
                }
            }
            // Otherwise: reduce inside f first (head position), then a.
            match search(f, cx) {
                Found::Rewritten(nf, chg) => {
                    Found::Rewritten(QTerm::App(Rc::new(nf), a.clone()), chg)
                }
                Found::RewrittenEffect(nf) => {
                    Found::RewrittenEffect(QTerm::App(Rc::new(nf), a.clone()))
                }
                Found::Fork(f0, f1, q, e) => Found::Fork(
                    QTerm::App(Rc::new(f0), a.clone()),
                    QTerm::App(Rc::new(f1), a.clone()),
                    q,
                    e,
                ),
                Found::None => match search(a, cx) {
                    Found::Rewritten(na, chg) => {
                        Found::Rewritten(QTerm::App(f.clone(), Rc::new(na)), chg)
                    }
                    Found::RewrittenEffect(na) => {
                        Found::RewrittenEffect(QTerm::App(f.clone(), Rc::new(na)))
                    }
                    Found::Fork(a0, a1, q, e) => Found::Fork(
                        QTerm::App(f.clone(), Rc::new(a0)),
                        QTerm::App(f.clone(), Rc::new(a1)),
                        q,
                        e,
                    ),
                    other => other,
                },
                other => other,
            }
        }
    }
}

/// Wrap a search result of an argument back into the surrounding context.
fn wrap_arg(res: Found, rebuild: impl Fn(QTerm) -> QTerm) -> Found {
    match res {
        Found::Rewritten(n, chg) => Found::Rewritten(rebuild(n), chg),
        Found::RewrittenEffect(n) => Found::RewrittenEffect(rebuild(n)),
        Found::Fork(x0, x1, q, e) => Found::Fork(rebuild(x0), rebuild(x1), q, e),
        other => other,
    }
}

/// h/t/meas applied to one argument: argument to WHNF first (searching its
/// interior — a neutral argument leaves the primitive symbolic in the NF);
/// species Err on non-handle values precedes any effect.
fn unary_prim(p: Prim, f: &Rc<QTerm>, a: &Rc<QTerm>, cx: &mut Ctx) -> Found {
    match arg_view(a) {
        ArgView::Search => {
            let f2 = f.clone();
            wrap_arg(search(a, cx), move |n| QTerm::App(f2.clone(), Rc::new(n)))
        }
        ArgView::Value => Found::Fail(ErrKind::Species),
        ArgView::Handle(q, e) => match p {
            g if g.is_gate1() => match cx.store.consume(q, e) {
                Ok(()) => match cx.store.apply_gate1(g, q) {
                    Ok(()) => {
                        cx.emit(|| gate1_effect(g, q, e));
                        Found::RewrittenEffect(QTerm::Handle(q, e + 1))
                    }
                    Err(c) => Found::Full(c),
                },
                Err(k) => Found::Fail(k),
            },
            Prim::Meas => match cx.store.peek(q, e) {
                Ok(()) => Found::Fork(church_bool(true), church_bool(false), q, e),
                Err(k) => Found::Fail(k),
            },
            _ => unreachable!("unary_prim on {:?}", p),
        },
    }
}

/// cnot with both arguments present: strictly left-to-right WHNF, species
/// checks first, epoch consumption atomic once the full redex is assembled.
fn cnot_prim(g: &Rc<QTerm>, a1: &Rc<QTerm>, a2: &Rc<QTerm>, f: &Rc<QTerm>, cx: &mut Ctx) -> Found {
    // First argument.
    let (q1, e1) = match arg_view(a1) {
        ArgView::Search => {
            let (g2, a2c) = (g.clone(), (**a2).clone());
            let res = search(a1, cx);
            let wrapped = wrap_arg(res, move |n| {
                QTerm::App(
                    Rc::new(QTerm::App(g2.clone(), Rc::new(n))),
                    Rc::new(a2c.clone()),
                )
            });
            // A fully-normal neutral first argument leaves the whole
            // application symbolic, but the second argument's interior must
            // still normalize for the full NF.
            return match wrapped {
                Found::None => {
                    let f2 = f.clone();
                    wrap_arg(search(a2, cx), move |n| QTerm::App(f2.clone(), Rc::new(n)))
                }
                other => other,
            };
        }
        ArgView::Value => return Found::Fail(ErrKind::Species),
        ArgView::Handle(q, e) => (q, e),
    };
    // Second argument.
    let (q2v, e2v) = match arg_view(a2) {
        ArgView::Search => {
            let f2 = f.clone();
            return wrap_arg(search(a2, cx), move |n| QTerm::App(f2.clone(), Rc::new(n)));
        }
        ArgView::Value => return Found::Fail(ErrKind::Species),
        ArgView::Handle(q, e) => (q, e),
    };
    // Atomic consumption: epoch validity first (a stale handle is the more
    // informative diagnosis than coincidence), then the same-qubit check,
    // then both epochs bumped together.
    if let Err(k) = cx.store.peek(q1, e1) {
        return Found::Fail(k);
    }
    if let Err(k) = cx.store.peek(q2v, e2v) {
        return Found::Fail(k);
    }
    if q1 == q2v {
        return Found::Fail(ErrKind::SameQubit);
    }
    cx.store.consume(q1, e1).expect("peeked");
    cx.store.consume(q2v, e2v).expect("peeked");
    cx.store.apply_cnot(q1, q2v);
    cx.emit(|| Effect::Cnot(q1, e1, q2v, e2v));
    // Church pair of the fresh epochs: λz. z #(q1,e1+1) #(q2,e2+1).
    Found::RewrittenEffect(QTerm::Lam(Rc::new(QTerm::App(
        Rc::new(QTerm::App(
            Rc::new(QTerm::Var(1)),
            Rc::new(QTerm::Handle(q1, e1 + 1)),
        )),
        Rc::new(QTerm::Handle(q2v, e2v + 1)),
    ))))
}

fn step(t: &QTerm, store: &mut Store, trace: Option<&mut Vec<Effect>>, budget: &Budget) -> Step {
    let mut cx = Ctx {
        store,
        budget,
        trace,
    };
    match search(t, &mut cx) {
        Found::Rewritten(nt, _beta) => Step::Reduced(nt),
        Found::RewrittenEffect(nt) => Step::Reduced(nt),
        Found::Fork(t0, t1, q, e) => {
            let mut s0 = store.clone();
            let mut s1 = store.clone();
            s0.measure_project(q, false);
            s1.measure_project(q, true);
            Step::Forked(Box::new((t0, s0, t1, s1)), q, e)
        }
        Found::None => Step::Normal,
        Found::Fail(k) => Step::Died(Fate::Err(k)),
        Found::Full(c) => Step::Died(Fate::Capacity(c)),
    }
}

/// Run one program (already applied to its signature) to its truncated branch
/// tree. Exact, deterministic, never samples.
pub fn run(term: QTerm, budget: &Budget) -> Vec<Leaf> {
    run_impl::<false>(term, budget)
        .into_iter()
        .map(|(leaf, _)| leaf)
        .collect()
}

/// `run`, additionally returning each leaf's effect path (root to leaf,
/// `Meas` outcomes included). Two runs are effect-trace equivalent when the
/// leaf sequences pair up with identical paths, fates, and masses.
pub fn run_traced(term: QTerm, budget: &Budget) -> Vec<(Leaf, Vec<Effect>)> {
    run_impl::<true>(term, budget)
}

/// The one branch-tree driver, parameterised on whether effect paths are
/// kept. Under `TRACE = false` — the lockstep and census path — every
/// trace `Vec` stays empty and unallocated, and the per-fork clone the
/// traced form pays disappears with it.
fn run_impl<const TRACE: bool>(term: QTerm, budget: &Budget) -> Vec<(Leaf, Vec<Effect>)> {
    // Shared with the fast path: a degenerate budget is where the two
    // engines' β-check placement stops agreeing, so neither accepts one.
    budget.validate().expect("degenerate budget");
    let mut leaves = Vec::new();
    let mut work: Vec<(QTerm, Store, Vec<Effect>, u64, u64)> =
        vec![(term, Store::new(), Vec::new(), 0, 0)];
    let mut branches = 1usize;
    while let Some((mut t, mut store, mut trace, mut nbeta, mut ntrans)) = work.pop() {
        loop {
            if ntrans >= budget.trans || nbeta >= budget.beta {
                let mass = store.mass();
                leaves.push((
                    Leaf {
                        fate: Fate::Unknown,
                        mass,
                        steps: nbeta,
                    },
                    trace,
                ));
                break;
            }
            ntrans += 1;
            let tr = if TRACE { Some(&mut trace) } else { None };
            match step(&t, &mut store, tr, budget) {
                Step::Reduced(nt) => {
                    nbeta += 1; // β and primitive contractions share the count
                    t = nt;
                }
                Step::Forked(fork, q, e) => {
                    let (t0, s0, t1, s1) = *fork;
                    branches += 1;
                    if branches > budget.max_branches {
                        let mass = store.mass();
                        leaves.push((
                            Leaf {
                                fate: Fate::Capacity(Capacity::Branches),
                                mass,
                                steps: nbeta,
                            },
                            trace,
                        ));
                        break;
                    }
                    let mut trace1 = Vec::new();
                    if TRACE {
                        trace1.clone_from(&trace);
                        trace1.push(Effect::Meas(q, e, true));
                        trace.push(Effect::Meas(q, e, false));
                    }
                    work.push((t1, s1, trace1, nbeta, ntrans));
                    t = t0;
                    store = s0;
                }
                Step::Normal => {
                    let mass = store.mass();
                    match mass {
                        Some(_) => leaves.push((
                            Leaf {
                                fate: Fate::Halt(store),
                                mass,
                                steps: nbeta,
                            },
                            trace,
                        )),
                        None => leaves.push((
                            Leaf {
                                fate: Fate::Capacity(Capacity::Amplitude),
                                mass: None,
                                steps: nbeta,
                            },
                            trace,
                        )),
                    }
                    break;
                }
                Step::Died(fate) => {
                    let mass = store.mass();
                    leaves.push((
                        Leaf {
                            fate,
                            mass,
                            steps: nbeta,
                        },
                        trace,
                    ));
                    break;
                }
            }
        }
    }
    leaves
}

/// Apply a program term to its signature — the primitives, in order.
/// The canonical universe is the frozen five; alternate universes pass
/// any length and any gate set.
pub fn apply_signature(p: &Term, order: &[Prim]) -> QTerm {
    let mut t = qt_of_term(p);
    for pr in order {
        t = QTerm::App(Rc::new(t), Rc::new(QTerm::Prim(*pr)));
    }
    t
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::blc::wire::{enc_to_string, parse_all};
    use crate::quantum::scalar::Dw;

    fn sig_default() -> [Prim; 5] {
        [Prim::New, Prim::Meas, Prim::Cnot, Prim::T, Prim::H]
    }

    fn run_str(src: &str) -> Vec<Leaf> {
        // src is a BLC bit-string program, applied to the default signature.
        let t = parse_all(src).unwrap();
        run(apply_signature(&t, &sig_default()), &Budget::default())
    }

    #[test]
    fn identity_program_is_err() {
        // (λx.x) new meas cnot t h → new meas … → #q cnot … → handle applied.
        let leaves = run_str("0010");
        assert_eq!(leaves.len(), 1);
        assert!(matches!(leaves[0].fate, Fate::Err(ErrKind::HandleApplied)));
    }

    #[test]
    fn pure_terms_agree_with_reference_core() {
        // Differential test: on prim-free closed terms the small-step
        // evaluator must reach exactly the classical reference normalizer's normal form.
        use crate::blc::enumerate::for_each_closed;
        for n in 4..=16 {
            for_each_closed(n, &mut |enc, len| {
                let src = enc_to_string(enc, len);
                let t = parse_all(&src).unwrap();
                let mut fuel = crate::classical::Budget::new(4096);
                let Ok(nf) = crate::classical::reference::normalize(&t, &mut fuel) else {
                    return; // reference ran out of fuel; skip
                };
                let leaves = run(qt_of_term(&t), &Budget::default());
                assert_eq!(leaves.len(), 1, "{src}");
                match &leaves[0].fate {
                    Fate::Halt(store) => {
                        assert_eq!(store.live_count(), 0, "{src}");
                        let got = &leaves[0];
                        assert_eq!(got.mass, Some(Dw::ONE), "{src}");
                        // Compare normal forms structurally.
                        let qnf = match run_to_nf(qt_of_term(&t)) {
                            Some(x) => x,
                            None => panic!("no NF for {src}"),
                        };
                        assert_eq!(qnf, qt_of_term(&nf), "{src}");
                    }
                    Fate::Unknown => {} // budget mismatch vs reference; fine
                    other => panic!("{src}: unexpected fate {other:?}"),
                }
            });
        }
    }

    fn run_to_nf(mut t: QTerm) -> Option<QTerm> {
        let budget = Budget::default();
        let mut store = Store::new();
        for _ in 0..budget.trans {
            match step(&t, &mut store, None, &budget) {
                Step::Reduced(nt) => t = nt,
                Step::Normal => return Some(t),
                _ => return None,
            }
        }
        None
    }

    #[test]
    fn coin_flip_two_leaves_mass_one() {
        // λn.λm.λc.λt.λh. m (h (n m)) — prepare |+⟩, measure.
        // Signature order [new, meas, cnot, t, h]: n=5, m=4, c=3, t=2, h=1.
        // Body: 4 (1 (5 4)) — the `new` argument (m) is discarded unevaluated.
        use crate::blc::term::{app, lam, var};
        let body = app(var(4), app(var(1), app(var(5), var(4))));
        let p = lam(lam(lam(lam(lam(body)))));
        let leaves = run(apply_signature(&p, &sig_default()), &Budget::default());
        assert_eq!(leaves.len(), 2);
        let mut total = Dw::ZERO;
        for l in &leaves {
            match &l.fate {
                Fate::Halt(store) => {
                    assert_eq!(store.live_count(), 0);
                    let m = l.mass.unwrap();
                    // Each branch mass is exactly 1/2.
                    assert_eq!(
                        m,
                        Dw {
                            a: 1,
                            b: 0,
                            c: 0,
                            d: 0,
                            k: 2
                        }
                    );
                    total = total.add(m).unwrap();
                }
                other => panic!("unexpected fate {other:?}"),
            }
        }
        assert_eq!(total.reduce(), Dw::ONE);
    }

    #[test]
    fn bell_state_exact() {
        // λn.λm.λc.λt.λh. c (h (n n)) (n n) — Bell pair, unmeasured, via the
        // cnot Church pair left in the normal form.
        use crate::blc::term::{app, lam, var};
        let body = app(
            app(var(3), app(var(1), app(var(5), var(5)))),
            app(var(5), var(5)),
        );
        let p = lam(lam(lam(lam(lam(body)))));
        let leaves = run(apply_signature(&p, &sig_default()), &Budget::default());
        assert_eq!(leaves.len(), 1);
        match &leaves[0].fate {
            Fate::Halt(store) => {
                assert_eq!(store.live_count(), 2);
                // (|00⟩ + |11⟩)/√2, allocation order: q0 is LSB.
                let h = Dw {
                    a: 1,
                    b: 0,
                    c: 0,
                    d: 0,
                    k: 1,
                };
                assert_eq!(store.amps[0].reduce(), h);
                assert_eq!(store.amps[1], Dw::ZERO);
                assert_eq!(store.amps[2], Dw::ZERO);
                assert_eq!(store.amps[3].reduce(), h);
                assert_eq!(leaves[0].mass, Some(Dw::ONE));
            }
            other => panic!("unexpected fate {other:?}"),
        }
    }

    fn qapp(f: QTerm, a: QTerm) -> QTerm {
        QTerm::App(Rc::new(f), Rc::new(a))
    }

    fn fresh_qubit() -> QTerm {
        // new h — allocates, discarding the (unevaluated) h argument.
        qapp(QTerm::Prim(Prim::New), QTerm::Prim(Prim::H))
    }

    /// cnot on two fresh qubits, yielding the Church pair of handles.
    fn cnot_pair() -> QTerm {
        qapp(qapp(QTerm::Prim(Prim::Cnot), fresh_qubit()), fresh_qubit())
    }

    #[test]
    fn cbn_duplicates_recipes_not_states() {
        // (λx. cnot x (t x)) (new h): call-by-name substitutes the
        // *unevaluated* preparation, so `new` runs twice and the cnot gets
        // two independent qubits — recipe duplication is legal, per spec.
        let body = qapp(
            qapp(QTerm::Prim(Prim::Cnot), QTerm::Var(1)),
            qapp(QTerm::Prim(Prim::T), QTerm::Var(1)),
        );
        let t = qapp(QTerm::Lam(Rc::new(body)), fresh_qubit());
        let leaves = run(t, &Budget::default());
        assert_eq!(leaves.len(), 1);
        match &leaves[0].fate {
            Fate::Halt(store) => assert_eq!(store.live_count(), 2),
            other => panic!("unexpected fate {other:?}"),
        }
    }

    #[test]
    fn stale_epoch_is_err() {
        // Handle VALUES only ever get shared via the cnot Church pair.
        // pair (λa.λb. cnot a (t a)): `a` is a handle value used twice —
        // t bumps its epoch, then cnot's atomic consumption sees the stale
        // one. Duplication of state, caught by the store.
        let sel = QTerm::Lam(Rc::new(QTerm::Lam(Rc::new(qapp(
            qapp(QTerm::Prim(Prim::Cnot), QTerm::Var(2)),
            qapp(QTerm::Prim(Prim::T), QTerm::Var(2)),
        )))));
        let t = qapp(cnot_pair(), sel);
        let leaves = run(t, &Budget::default());
        assert_eq!(leaves.len(), 1);
        assert!(matches!(leaves[0].fate, Fate::Err(ErrKind::StaleEpoch)));
    }

    #[test]
    fn cnot_same_qubit_is_err() {
        // pair (λa.λb. cnot a a): the same handle value in both positions.
        let sel = QTerm::Lam(Rc::new(QTerm::Lam(Rc::new(qapp(
            qapp(QTerm::Prim(Prim::Cnot), QTerm::Var(2)),
            QTerm::Var(2),
        )))));
        let t = qapp(cnot_pair(), sel);
        let leaves = run(t, &Budget::default());
        assert_eq!(leaves.len(), 1);
        assert!(matches!(leaves[0].fate, Fate::Err(ErrKind::SameQubit)));
    }

    #[test]
    fn species_err_before_effect() {
        // h (λx. new x): argument is a Lam value — Err fires, nothing allocates.
        let t = QTerm::App(
            Rc::new(QTerm::Prim(Prim::H)),
            Rc::new(QTerm::Lam(Rc::new(QTerm::App(
                Rc::new(QTerm::Prim(Prim::New)),
                Rc::new(QTerm::Var(1)),
            )))),
        );
        let leaves = run(t, &Budget::default());
        assert_eq!(leaves.len(), 1);
        assert!(matches!(leaves[0].fate, Fate::Err(ErrKind::Species)));
        match &leaves[0].fate {
            Fate::Err(_) => assert_eq!(leaves[0].mass, Some(Dw::ONE)),
            _ => unreachable!(),
        }
    }

    #[test]
    fn ht_measure_weights_are_exact() {
        // T on |+⟩ then H then measure: P(0) = (2+√2)/4, P(1) = (2−√2)/4.
        // Program: meas (h (t (h (new _)))).
        let mk = |inner: QTerm, p: Prim| QTerm::App(Rc::new(QTerm::Prim(p)), Rc::new(inner));
        let q = mk(QTerm::Prim(Prim::H), Prim::New);
        let t = mk(mk(mk(mk(q, Prim::H), Prim::T), Prim::H), Prim::Meas);
        let leaves = run(t, &Budget::default());
        assert_eq!(leaves.len(), 2);
        let m0 = leaves.iter().find(|l| matches!(&l.fate, Fate::Halt(_)));
        assert!(m0.is_some());
        let total = leaves
            .iter()
            .fold(Dw::ZERO, |acc, l| acc.add(l.mass.unwrap()).unwrap());
        assert_eq!(total.reduce(), Dw::ONE);
        // Exact weights: (2 ± √2)/4 — never dyadic, exactly representable.
        let p0 = Dw {
            a: 2,
            b: 1,
            c: 0,
            d: -1,
            k: 4,
        };
        let p1 = Dw {
            a: 2,
            b: -1,
            c: 0,
            d: 1,
            k: 4,
        };
        let masses: Vec<Dw> = leaves.iter().map(|l| l.mass.unwrap().reduce()).collect();
        assert!(masses.contains(&p0.reduce()) && masses.contains(&p1.reduce()));
    }
}
