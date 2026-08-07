//! qBLC fast path: the defunctionalized Crégut KN machine of `classical::machine`
//! extended with a quantum store — primitive constants and opaque qubit
//! handles as new node species, a store hook at primitive application, and
//! copy-on-fork at `meas`. Lockstep-tested against `quantum::reference` (the executable
//! spec) for identical leaf sequences: fate (including the full store),
//! exact mass, and contraction count, over the whole small-size population.
//!
//! Sharing choices that make the lockstep meaningful:
//! - `Store` and all effect methods (H/T/CNOT/project, epoch discipline) are
//!   the reference evaluator's own — one implementation, so amplitudes compare bit-identically.
//! - Fates, budgets, and leaves are the pillar-root types shared with it; `Budget.beta` means the
//!   same thing (contractions: β + primitive firings). `Budget.trans` is
//!   engine-relative (machine transitions here, redex searches there) —
//!   Unknown is a resource outcome, not a fate, per the classical doctrine.
//!
//! Machine shape (vs `classical::machine`): flat u32 nodes, explicit frame stack, shared
//! append-only env arena. No readback emission — the census output is the
//! live store at Halt, never the normal form — so there are no LamEnd
//! frames and rigid values carry no level. Branch forks share the env arena
//! (append-only within a program run) and the node pool; only the frame
//! stack and store are cloned.
//!
//! The subtle invariant (this is where a naive port goes wrong): when a
//! primitive's argument turns out *neutral* (rigid head), neutrality
//! propagates through the whole contiguous run of pending Arg/Prim1/Cnot1/
//! Cnot2 frames at once — `h (cnot x M)` with x rigid leaves BOTH the cnot
//! and the h symbolic, and M becomes an ordinary normalization job. So a
//! rigid arrival converts the entire run (Arg→Norm, Cnot1→Norm on its held
//! second argument, Prim1/Cnot2→Skip) before readback. Species checks
//! happen only at *value* arrival (Lam / bare or undersaturated prim
//! meeting a Prim1/Cnot1/Cnot2 on top), which is exactly the reference's "Err
//! precedes effects, before the value's interior is normalized".

use crate::quantum::{Budget, Capacity, ErrKind, Fate, Leaf, Prim, Store};

/// Term arena node. Children are indices into the pool. `Prim` and `Handle`
/// are closed constants — substitution-free by construction here, since the
/// machine never substitutes at all.
#[derive(Clone, Copy, Debug)]
pub enum Node {
    Var(u32),
    Lam(u32),
    App(u32, u32),
    Prim(Prim),
    /// (qubit id, epoch) — minted at runtime by `new`, never by the decoder.
    Handle(u32, u32),
}

/// Church booleans, pre-interned by `Pool::reset` at fixed indices.
/// Polarity: outcome 0 → true = λx.λy.x.
const TRUE_NODE: u32 = 2;
const FALSE_NODE: u32 = 5;

/// Flat term storage. Reset per program; runtime results (handles, cnot
/// pairs) are appended during evaluation, so the pool is append-only within
/// a run and forked branches share it.
pub struct Pool {
    nodes: Vec<Node>,
}

/// `Default` must go through `new`: a bare empty arena is missing the
/// interned Church booleans that `TRUE_NODE`/`FALSE_NODE` name, and
/// deriving `Default` silently hands one out.
impl Default for Pool {
    fn default() -> Pool {
        Pool::new()
    }
}

impl Pool {
    pub fn new() -> Pool {
        let mut p = Pool { nodes: Vec::new() };
        p.reset();
        p
    }

    /// The node at `id`. Arena indices come from `push`/`decode_u64`, so
    /// an out-of-range id is a caller bug and panics.
    #[inline]
    pub fn node(&self, id: u32) -> Node {
        self.nodes[id as usize]
    }

    /// Number of nodes currently in the arena.
    pub fn len(&self) -> usize {
        self.nodes.len()
    }

    pub fn is_empty(&self) -> bool {
        self.nodes.is_empty()
    }

    pub fn reset(&mut self) {
        self.nodes.clear();
        self.nodes.push(Node::Var(2)); // 0
        self.nodes.push(Node::Lam(0)); // 1
        self.nodes.push(Node::Lam(1)); // 2 = TRUE  (λx.λy.x)
        self.nodes.push(Node::Var(1)); // 3
        self.nodes.push(Node::Lam(3)); // 4
        self.nodes.push(Node::Lam(4)); // 5 = FALSE (λx.λy.y)
    }

    pub fn push(&mut self, n: Node) -> u32 {
        self.nodes.push(n);
        (self.nodes.len() - 1) as u32
    }

    /// Decode one BLC term off a packed (bits, length) pair — the same
    /// explicit-stack decoder as `classical::machine::Pool`, no string round-trip.
    pub fn decode_u64(&mut self, enc: u64, len: u8) -> Option<u32> {
        let mut bits = (0..len).rev().map(|j| (enc >> j) & 1 == 1);
        enum P {
            Lam,
            App0,
            App1(u32),
        }
        let mut work: Vec<P> = Vec::new();
        loop {
            let mut done: u32 = match bits.next()? {
                false => match bits.next()? {
                    false => {
                        work.push(P::Lam);
                        continue;
                    }
                    true => {
                        work.push(P::App0);
                        continue;
                    }
                },
                true => {
                    let mut n: u32 = 1;
                    while bits.next()? {
                        n += 1;
                    }
                    self.push(Node::Var(n))
                }
            };
            loop {
                match work.pop() {
                    None => return Some(done),
                    Some(P::Lam) => done = self.push(Node::Lam(done)),
                    Some(P::App0) => {
                        work.push(P::App1(done));
                        break;
                    }
                    Some(P::App1(f)) => done = self.push(Node::App(f, done)),
                }
            }
        }
    }

    /// Import a tree-side term (tests).
    pub fn from_term(&mut self, t: &crate::blc::Term) -> u32 {
        use crate::blc::Term;
        match t {
            Term::Var(n) => self.push(Node::Var(*n)),
            Term::Lam(b) => {
                let b = self.from_term(b);
                self.push(Node::Lam(b))
            }
            Term::App(f, a) => {
                let f = self.from_term(f);
                let a = self.from_term(a);
                self.push(Node::App(f, a))
            }
        }
    }

    /// Apply a program to its signature primitives in order (any length;
    /// the canonical universe is the frozen five).
    pub fn apply_signature(&mut self, root: u32, order: &[Prim]) -> u32 {
        let mut r = root;
        for &p in order {
            let pn = self.push(Node::Prim(p));
            r = self.push(Node::App(r, pn));
        }
        r
    }

    /// Church numeral k̄ = λf.λx. f^k x (Object B's dimension argument).
    pub fn numeral(&mut self, k: u32) -> u32 {
        let f = self.push(Node::Var(2));
        let mut body = self.push(Node::Var(1));
        for _ in 0..k {
            body = self.push(Node::App(f, body));
        }
        let inner = self.push(Node::Lam(body));
        self.push(Node::Lam(inner))
    }
}

#[derive(Clone, Copy)]
enum Val {
    /// Unevaluated closure: (term, env). Call-by-name, no memoization —
    /// recipes duplicate, matching the reference's substitution semantics exactly.
    Clo(u32, u32),
    /// Bound by an unapplied binder in the normal form: rigid.
    Rigid,
}

#[derive(Clone, Copy, Debug)]
enum Frame {
    /// Pending application argument (eval phase).
    Arg(u32, u32),
    /// Spine argument awaiting its own normalization (readback phase).
    Norm(u32, u32),
    /// h/t/meas waiting for its argument's WHNF.
    Prim1(Prim),
    /// cnot waiting for argument 1's WHNF; holds argument 2's closure.
    Cnot1(u32, u32),
    /// cnot waiting for argument 2's WHNF; holds (q1, e1) unconsumed —
    /// epochs are only checked and bumped when the full redex assembles.
    Cnot2(u32, u32),
    /// Neutralized primitive frame (readback no-op).
    Skip,
}

const NIL: u32 = u32::MAX;

/// A suspended branch: everything not shared. The env arena and node pool
/// are shared (append-only within a program run).
struct Branch {
    t: u32,
    env: u32,
    stack: Vec<Frame>,
    store: Store,
    contr: u64,
    trans: u64,
}

/// The machine. Reused across programs; arenas reset per `run`.
#[derive(Default)]
pub struct Machine {
    envs: Vec<(Val, u32)>,
    stack: Vec<Frame>,
    work: Vec<Branch>,
    /// Max transitions consumed by any branch path of the most recent run
    /// (telemetry: measures real trans/β headroom so sweep caps are set
    /// from data, not the blanket heuristic).
    pub max_trans: u64,
}

impl Machine {
    pub fn new() -> Self {
        Self::default()
    }

    fn push_env(&mut self, v: Val, parent: u32) -> u32 {
        self.envs.push((v, parent));
        (self.envs.len() - 1) as u32
    }

    /// Convert the contiguous top run of spine-context frames after a rigid
    /// (or neutral-prim-head) arrival: pending Args become normalization
    /// jobs, pending primitive frames neutralize — a Cnot1's held second
    /// argument still needs normalizing (it is a spine argument of the now-
    /// neutral application), a Cnot2's held handle stays unconsumed in the
    /// normal form.
    fn convert_run(&mut self) {
        for f in self.stack.iter_mut().rev() {
            match *f {
                Frame::Arg(a, e) => *f = Frame::Norm(a, e),
                Frame::Cnot1(a, e) => *f = Frame::Norm(a, e),
                Frame::Prim1(_) | Frame::Cnot2(..) => *f = Frame::Skip,
                Frame::Norm(..) | Frame::Skip => break,
            }
        }
    }

    /// Run one root term to its truncated branch tree, appending leaves.
    /// Leaf order matches the reference evaluator exactly (outcome-0 first, depth-first).
    pub fn run_into(
        &mut self,
        pool: &mut Pool,
        root: u32,
        budget: &Budget,
        leaves: &mut Vec<Leaf>,
    ) {
        budget.validate().expect("degenerate budget");
        // TRUE_NODE/FALSE_NODE are positional: they name the fixed slots
        // `Pool::reset` pushes. A pool that skipped reset would silently
        // return the wrong Church boolean at every measurement.
        debug_assert!(matches!(pool.node(TRUE_NODE), Node::Lam(_)));
        debug_assert!(matches!(pool.node(FALSE_NODE), Node::Lam(_)));
        self.envs.clear();
        self.stack.clear();
        self.work.clear();
        self.max_trans = 0;
        let mut branches = 1usize;

        let mut t = root;
        let mut env = NIL;
        let mut store = Store::empty();
        let mut contr = 0u64;
        let mut trans = 0u64;
        let mut reading = false;

        loop {
            // ---- one branch to its leaf ----------------------------------
            // `end`: None = full normal form reached; Some(f) = branch died.
            let end: Option<Fate> = 'run: loop {
                trans += 1;
                if trans > budget.trans {
                    break 'run Some(Fate::Unknown);
                }
                if reading {
                    // Readback: pull the next pending normalization job.
                    // Invariant: only Norm/Skip are reachable here (rigid
                    // arrivals convert whole runs; value arrivals enter
                    // readback only over Norm/Skip). Debug builds assert
                    // it; release keeps the defensive arms, which handle
                    // Arg/Cnot1 identically to Norm and Prim1/Cnot2 as
                    // Skip, so a broken invariant degrades rather than
                    // corrupting a sweep mid-flight.
                    match self.stack.pop() {
                        None => break 'run None,
                        Some(f) => {
                            debug_assert!(
                                matches!(f, Frame::Norm(..) | Frame::Skip),
                                "readback reached a non-readback frame: {f:?}"
                            );
                            match f {
                                Frame::Norm(nt, ne) | Frame::Arg(nt, ne) | Frame::Cnot1(nt, ne) => {
                                    t = nt;
                                    env = ne;
                                    reading = false;
                                }
                                Frame::Skip | Frame::Prim1(_) | Frame::Cnot2(..) => {}
                            }
                        }
                    }
                    continue;
                }
                match pool.node(t) {
                    Node::App(f, a) => {
                        self.stack.push(Frame::Arg(a, env));
                        t = f;
                    }
                    Node::Lam(b) => match self.stack.last() {
                        Some(&Frame::Arg(at, ae)) => {
                            // β-contraction.
                            self.stack.pop();
                            env = self.push_env(Val::Clo(at, ae), env);
                            t = b;
                            contr += 1;
                            if contr >= budget.beta {
                                break 'run Some(Fate::Unknown);
                            }
                        }
                        Some(Frame::Prim1(_)) | Some(Frame::Cnot1(..)) | Some(Frame::Cnot2(..)) => {
                            // λ-value fed to a primitive: species Err, before
                            // the value's interior is normalized.
                            break 'run Some(Fate::Err(ErrKind::Species));
                        }
                        _ => {
                            // Normal-form position: normalize under the binder.
                            env = self.push_env(Val::Rigid, env);
                            t = b;
                        }
                    },
                    Node::Var(i) => {
                        let mut e = env;
                        for _ in 1..i {
                            e = self.envs[e as usize].1;
                        }
                        match self.envs[e as usize].0 {
                            Val::Clo(ct, ce) => {
                                t = ct;
                                env = ce;
                            }
                            Val::Rigid => {
                                self.convert_run();
                                reading = true;
                            }
                        }
                    }
                    Node::Prim(p) => {
                        // The contiguous Arg frames on top are this prim's
                        // spine arguments.
                        let mut nargs = 0usize;
                        while nargs < self.stack.len()
                            && matches!(self.stack[self.stack.len() - 1 - nargs], Frame::Arg(..))
                        {
                            nargs += 1;
                        }
                        if nargs >= p.arity() {
                            match p {
                                Prim::New => {
                                    // Discards its argument unevaluated,
                                    // species-blind.
                                    self.stack.pop();
                                    match store.alloc(budget.max_qubits) {
                                        Ok(q) => {
                                            t = pool.push(Node::Handle(q, 0));
                                            env = NIL;
                                            contr += 1;
                                            if contr >= budget.beta {
                                                break 'run Some(Fate::Unknown);
                                            }
                                        }
                                        Err(c) => break 'run Some(Fate::Capacity(c)),
                                    }
                                }
                                Prim::Cnot => {
                                    let Some(Frame::Arg(a1t, a1e)) = self.stack.pop() else {
                                        unreachable!()
                                    };
                                    let Some(Frame::Arg(a2t, a2e)) = self.stack.pop() else {
                                        unreachable!()
                                    };
                                    self.stack.push(Frame::Cnot1(a2t, a2e));
                                    t = a1t;
                                    env = a1e;
                                }
                                // Every remaining prim is unary: gates and
                                // meas share the wait-for-WHNF frame.
                                _ => {
                                    let Some(Frame::Arg(at, ae)) = self.stack.pop() else {
                                        unreachable!()
                                    };
                                    self.stack.push(Frame::Prim1(p));
                                    t = at;
                                    env = ae;
                                }
                            }
                        } else if matches!(
                            self.stack
                                .len()
                                .checked_sub(1 + nargs)
                                .map(|i| &self.stack[i]),
                            Some(Frame::Prim1(_)) | Some(Frame::Cnot1(..)) | Some(Frame::Cnot2(..))
                        ) {
                            // Bare/undersaturated primitive is a canonical
                            // non-handle value in a primitive's argument.
                            break 'run Some(Fate::Err(ErrKind::Species));
                        } else {
                            // Neutral head in normal-form position: its
                            // arguments become normalization jobs.
                            self.convert_run();
                            reading = true;
                        }
                    }
                    Node::Handle(q, e) => match self.stack.last().copied() {
                        Some(Frame::Arg(..)) => {
                            break 'run Some(Fate::Err(ErrKind::HandleApplied));
                        }
                        Some(Frame::Prim1(p)) if p != Prim::Meas => {
                            self.stack.pop();
                            match store.consume(q, e) {
                                Ok(()) => {
                                    let r = store.apply_gate1(p, q);
                                    match r {
                                        Ok(()) => {
                                            t = pool.push(Node::Handle(q, e + 1));
                                            env = NIL;
                                            contr += 1;
                                            if contr >= budget.beta {
                                                break 'run Some(Fate::Unknown);
                                            }
                                        }
                                        Err(c) => break 'run Some(Fate::Capacity(c)),
                                    }
                                }
                                Err(k) => break 'run Some(Fate::Err(k)),
                            }
                        }
                        Some(Frame::Prim1(Prim::Meas)) => {
                            self.stack.pop();
                            match store.peek(q, e) {
                                Ok(()) => {
                                    branches += 1;
                                    if branches > budget.max_branches {
                                        // Fork aborted whole: pre-projection
                                        // store mass, both children dropped.
                                        break 'run Some(Fate::Capacity(Capacity::Branches));
                                    }
                                    let mut s1 = store.clone();
                                    s1.measure_project(q, true);
                                    store.measure_project(q, false);
                                    self.work.push(Branch {
                                        t: FALSE_NODE,
                                        env: NIL,
                                        stack: self.stack.clone(),
                                        store: s1,
                                        contr,
                                        trans,
                                    });
                                    t = TRUE_NODE;
                                    env = NIL;
                                }
                                Err(k) => break 'run Some(Fate::Err(k)),
                            }
                        }
                        Some(Frame::Cnot1(a2t, a2e)) => {
                            self.stack.pop();
                            self.stack.push(Frame::Cnot2(q, e));
                            t = a2t;
                            env = a2e;
                        }
                        Some(Frame::Cnot2(q1, e1)) => {
                            self.stack.pop();
                            // Epoch validity first (the more informative
                            // diagnosis), then coincidence, then atomic
                            // consumption — the reference's exact order.
                            if let Err(k) = store.peek(q1, e1) {
                                break 'run Some(Fate::Err(k));
                            }
                            if let Err(k) = store.peek(q, e) {
                                break 'run Some(Fate::Err(k));
                            }
                            if q1 == q {
                                break 'run Some(Fate::Err(ErrKind::SameQubit));
                            }
                            store.consume(q1, e1).expect("peeked");
                            store.consume(q, e).expect("peeked");
                            store.apply_cnot(q1, q);
                            // λz. z #(q1,e1+1) #(q2,e2+1)
                            let h1 = pool.push(Node::Handle(q1, e1 + 1));
                            let h2 = pool.push(Node::Handle(q, e + 1));
                            let v = pool.push(Node::Var(1));
                            let a1 = pool.push(Node::App(v, h1));
                            let a2 = pool.push(Node::App(a1, h2));
                            t = pool.push(Node::Lam(a2));
                            env = NIL;
                            contr += 1;
                            if contr >= budget.beta {
                                break 'run Some(Fate::Unknown);
                            }
                        }
                        _ => {
                            // Handle is a normal-form leaf.
                            reading = true;
                        }
                    },
                }
            };

            // ---- emit the leaf, pull the next branch ---------------------
            self.max_trans = self.max_trans.max(trans);
            let mass = store.mass();
            match end {
                None => match mass {
                    Some(_) => leaves.push(Leaf {
                        fate: Fate::Halt(store),
                        mass,
                        steps: contr,
                    }),
                    None => leaves.push(Leaf {
                        fate: Fate::Capacity(Capacity::Amplitude),
                        mass: None,
                        steps: contr,
                    }),
                },
                Some(f) => leaves.push(Leaf {
                    fate: f,
                    mass,
                    steps: contr,
                }),
            }
            match self.work.pop() {
                None => break,
                Some(b) => {
                    t = b.t;
                    env = b.env;
                    self.stack = b.stack;
                    store = b.store;
                    contr = b.contr;
                    trans = b.trans;
                    reading = false;
                }
            }
        }

        // Don't hold peak arenas forever (the classical machine's lesson).
        const KEEP: usize = 1 << 20;
        if self.envs.capacity() > KEEP {
            self.envs = Vec::with_capacity(KEEP);
        }
        if self.stack.capacity() > KEEP {
            self.stack = Vec::with_capacity(KEEP);
        }
    }

    /// Decode + apply signature + run: the sweep entry point.
    ///
    /// One entry for both modes. `cond = Some(k)` is Object B — the program
    /// receives the dimension as a Church numeral BEFORE the signature,
    /// `p k̄ ⟨sig⟩`; `cond = None` is the unconditioned M_Fock sweep.
    /// (Two entry points and a seven-argument list were the same function
    /// twice; the bundle is what retired the `too_many_arguments` allow.)
    pub fn run_into_with(
        &mut self,
        pool: &mut Pool,
        prog: &QProgram,
        budget: &Budget,
        leaves: &mut Vec<Leaf>,
    ) {
        pool.reset();
        let mut root = pool
            .decode_u64(prog.enc, prog.len)
            .expect("well-formed closed term");
        if let Some(k) = prog.cond {
            let num = pool.numeral(k);
            root = pool.push(Node::App(root, num));
        }
        let sig = pool.apply_signature(root, prog.order);
        self.run_into(pool, sig, budget, leaves);
    }
}

/// One qBLC program as the sweeps hand it over: packed wire bits, the
/// optional Object-B dimension, and the signature universe it runs under.
#[derive(Clone, Copy, Debug)]
pub struct QProgram<'a> {
    /// Packed wire bits, MSB-first in the low `len` bits.
    pub enc: u64,
    pub len: u8,
    /// Object-B dimension, handed to the program as a Church numeral
    /// before the signature. `None` = the unconditioned M_Fock sweep.
    pub cond: Option<u32>,
    /// Signature order (the canonical universe is [`crate::quantum::sig::FROZEN`]).
    pub order: &'a [Prim],
}

impl<'a> QProgram<'a> {
    /// The plain M_Fock program: bits under a signature, no conditioning.
    pub fn new(enc: u64, len: u8, order: &'a [Prim]) -> QProgram<'a> {
        QProgram {
            enc,
            len,
            cond: None,
            order,
        }
    }
}

/// One program's run: its leaves plus the engine telemetry a single-run
/// caller reports. (Telemetry lives on the `Machine`, which the one-call
/// entry owns and drops, so it has to come back out here.)
pub struct Run {
    pub leaves: Vec<Leaf>,
    /// Max transitions consumed by any branch path of this run.
    pub max_trans: u64,
}

/// Run one program to its leaves, owning the arenas.
///
/// The single-program entry (`blam q run`, one-off adjudications, tests).
/// Sweeps use [`Machine::run_into_with`] with a reused `Pool`/`Machine`
/// instead: this allocates a fresh pair per call by design.
pub fn run(prog: &QProgram, budget: &Budget) -> Run {
    let mut pool = Pool::new();
    let mut m = Machine::new();
    let mut leaves = Vec::new();
    m.run_into_with(&mut pool, prog, budget, &mut leaves);
    Run {
        leaves,
        max_trans: m.max_trans,
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::blc::enumerate::for_each_closed;
    use crate::blc::wire::enc_to_string;
    use crate::parse_all;
    use crate::quantum::reference as qeval;
    use crate::quantum::scalar::Dw;
    use crate::quantum::sig::FROZEN;
    use rayon::prelude::*;

    fn qeval_leaves(src: &str, order: &[Prim], budget: &Budget) -> Vec<Leaf> {
        let t = parse_all(src).unwrap();
        qeval::run(qeval::apply_signature(&t, order), budget)
    }

    /// Lockstep over every closed program of size 4..=max_n: identical leaf
    /// sequences (fate incl. full store, exact mass, contraction count).
    fn lockstep_population(max_n: u32, order: &[Prim], ref_budget: &Budget) {
        // Machine transition budget is engine-relative: generous, so only
        // the shared β/branch budgets bind.
        let fast_budget = Budget {
            trans: 1 << 26,
            ..*ref_budget
        };
        let mut programs: Vec<(u64, u8)> = Vec::new();
        for n in 4..=max_n {
            for_each_closed(n, &mut |enc, len| programs.push((enc, len)));
        }
        programs.par_iter().for_each_init(
            || (Pool::new(), Machine::new()),
            |(pool, m), &(enc, len)| {
                let src = enc_to_string(enc, len);
                let expect = qeval_leaves(&src, order, ref_budget);
                let mut got = Vec::new();
                m.run_into_with(
                    pool,
                    &QProgram::new(enc, len, order),
                    &fast_budget,
                    &mut got,
                );
                assert_eq!(got, expect, "program {src}");
            },
        );
    }

    #[test]
    fn lockstep_full_population_frozen_order() {
        lockstep_population(24, &FROZEN, &Budget::default());
    }

    #[test]
    fn lockstep_second_order() {
        // A different permutation exercises different prim adjacencies.
        let order = [Prim::New, Prim::Meas, Prim::Cnot, Prim::T, Prim::H];
        lockstep_population(20, &order, &Budget::default());
    }

    #[test]
    fn lockstep_extended_six_prim_universe() {
        // Alternate universe: the frozen five plus S — six binders'
        // worth of signature, exercising arbitrary-length application
        // and the extended gate dispatch on both engines.
        let order = [Prim::H, Prim::Meas, Prim::New, Prim::Cnot, Prim::T, Prim::S];
        lockstep_population(18, &order, &Budget::default());
    }

    #[test]
    fn lockstep_pauli_universe() {
        // Clifford-only alternate universe with X/Z in gate position.
        let order = [Prim::X, Prim::Meas, Prim::New, Prim::Z, Prim::S];
        lockstep_population(18, &order, &Budget::default());
    }

    #[test]
    fn sxz_gates_exact() {
        // Exact single-qubit actions through the machine:
        // S(H|0⟩) = (|0⟩ + i|1⟩)/√2; X|0⟩ = |1⟩; Z(H|0⟩) = (|0⟩ − |1⟩)/√2.
        let build = |gates: &[Prim]| {
            let mut pool = Pool::new();
            let nw = pool.push(Node::Prim(Prim::New));
            let dummy = pool.push(Node::Prim(Prim::T));
            let mut cur = pool.push(Node::App(nw, dummy));
            for &g in gates {
                let pn = pool.push(Node::Prim(g));
                cur = pool.push(Node::App(pn, cur));
            }
            let leaves = run_root(&mut pool, cur);
            assert_eq!(leaves.len(), 1);
            match &leaves[0].fate {
                Fate::Halt(store) => store.amps.clone(),
                other => panic!("unexpected fate {other:?}"),
            }
        };
        let h = Dw {
            a: 1,
            b: 0,
            c: 0,
            d: 0,
            k: 1,
        };
        let ih = Dw {
            a: 0,
            b: 0,
            c: 1,
            d: 0,
            k: 1,
        };
        let s_plus = build(&[Prim::H, Prim::S]);
        assert_eq!(s_plus[0].reduce(), h);
        assert_eq!(s_plus[1].reduce(), ih);
        let x0 = build(&[Prim::X]);
        assert_eq!(x0[0], Dw::ZERO);
        assert_eq!(x0[1].reduce(), Dw::ONE);
        let z_plus = build(&[Prim::H, Prim::Z]);
        assert_eq!(z_plus[0].reduce(), h);
        assert_eq!(z_plus[1].reduce(), h.neg());
    }

    #[test]
    fn lockstep_beta_boundary() {
        // Tiny β budgets: the Unknown/Halt boundary must mirror exactly
        // (the reference performs the β-th contraction, then declares Unknown at the
        // next check — before any further effect).
        for beta in [1u64, 3, 8, 64] {
            let b = Budget {
                beta,
                ..Budget::default()
            };
            lockstep_population(18, &FROZEN, &b);
        }
        // β = 0 is the one point below the boundary where the mirror
        // CANNOT hold: the reference tests before selecting a redex, the
        // fast machine after the contraction it charged, so a program
        // needing no contraction would Halt on one and be Unknown on the
        // other. Both engines refuse the budget instead — one shared
        // `validate`, so the refusal cannot drift to one side.
        for bad in [
            Budget {
                beta: 0,
                ..Budget::default()
            },
            Budget {
                trans: 0,
                ..Budget::default()
            },
        ] {
            assert!(bad.validate().is_err(), "{bad:?} accepted");
        }
        assert!(Budget::default().validate().is_ok());
    }

    #[test]
    fn church_numerals_agree_across_the_two_builders() {
        // `sig::church_numeral` (tree) and `Pool::numeral` (arena) build
        // Object B's dimension argument independently. A skeleton built
        // from one and a run from the other would adjudicate different
        // programs, so pin them structurally equal.
        fn same(pool: &Pool, a: u32, b: u32) -> bool {
            match (pool.node(a), pool.node(b)) {
                (Node::Var(x), Node::Var(y)) => x == y,
                (Node::Lam(x), Node::Lam(y)) => same(pool, x, y),
                (Node::App(f1, a1), Node::App(f2, a2)) => same(pool, f1, f2) && same(pool, a1, a2),
                _ => false,
            }
        }
        for k in 0..6u32 {
            let mut pool = Pool::new();
            let arena = pool.numeral(k);
            let tree = pool.from_term(&crate::quantum::sig::church_numeral(k));
            assert!(same(&pool, arena, tree), "k={k}");
        }
    }

    #[test]
    fn lockstep_branch_capacity() {
        for max_branches in [1usize, 2, 3] {
            let b = Budget {
                max_branches,
                ..Budget::default()
            };
            lockstep_population(20, &FROZEN, &b);
        }
    }

    #[test]
    fn lockstep_qubit_capacity() {
        for max_qubits in [1usize, 2] {
            let b = Budget {
                max_qubits,
                ..Budget::default()
            };
            lockstep_population(20, &FROZEN, &b);
        }
    }

    // ---- direct machine vectors (pool-built, independent of the reference) --

    fn run_root(pool: &mut Pool, root: u32) -> Vec<Leaf> {
        let mut m = Machine::new();
        let mut leaves = Vec::new();
        let budget = Budget {
            trans: 1 << 26,
            ..Budget::default()
        };
        m.run_into(pool, root, &budget, &mut leaves);
        leaves
    }

    #[test]
    fn neutral_propagates_through_prim_frames() {
        // λx. h (cnot x (λy.y)) — x rigid: the cnot AND the h stay symbolic,
        // the λy.y must NOT species-Err against the stale h frame, and the
        // whole term halts with no contractions and no store effects.
        let mut pool = Pool::new();
        let x = pool.push(Node::Var(1));
        let cn = pool.push(Node::Prim(Prim::Cnot));
        let cx = pool.push(Node::App(cn, x));
        let idv = pool.push(Node::Var(1));
        let idl = pool.push(Node::Lam(idv));
        let cxi = pool.push(Node::App(cx, idl));
        let h = pool.push(Node::Prim(Prim::H));
        let hb = pool.push(Node::App(h, cxi));
        let root = pool.push(Node::Lam(hb));
        let leaves = run_root(&mut pool, root);
        assert_eq!(leaves.len(), 1);
        assert!(matches!(leaves[0].fate, Fate::Halt(ref s) if s.live_count() == 0));
        assert_eq!(leaves[0].mass, Some(Dw::ONE));
        assert_eq!(leaves[0].steps, 0);
    }

    #[test]
    fn bell_state_exact_on_machine() {
        // λn.λm.λc.λt.λh. c (h (n n)) (n n) under order [new,meas,cnot,t,h].
        use crate::blc::term::{app, lam, var};
        let body = app(
            app(var(3), app(var(1), app(var(5), var(5)))),
            app(var(5), var(5)),
        );
        let p = lam(lam(lam(lam(lam(body)))));
        let mut pool = Pool::new();
        let root = pool.from_term(&p);
        let sig =
            pool.apply_signature(root, &[Prim::New, Prim::Meas, Prim::Cnot, Prim::T, Prim::H]);
        let leaves = run_root(&mut pool, sig);
        assert_eq!(leaves.len(), 1);
        match &leaves[0].fate {
            Fate::Halt(store) => {
                assert_eq!(store.live_count(), 2);
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

    #[test]
    fn stale_epoch_and_same_qubit_on_machine() {
        // cnot-pair sharing (the only way handle values duplicate), then a
        // selector that reuses a consumed epoch / passes coincident qubits.
        fn cnot_pair(pool: &mut Pool) -> u32 {
            let n1 = pool.push(Node::Prim(Prim::New));
            let h1 = pool.push(Node::Prim(Prim::H));
            let q1 = pool.push(Node::App(n1, h1));
            let n2 = pool.push(Node::Prim(Prim::New));
            let h2 = pool.push(Node::Prim(Prim::H));
            let q2 = pool.push(Node::App(n2, h2));
            let cn = pool.push(Node::Prim(Prim::Cnot));
            let c1 = pool.push(Node::App(cn, q1));
            pool.push(Node::App(c1, q2))
        }
        // pair (λa.λb. cnot a (t a)) → StaleEpoch
        let mut pool = Pool::new();
        let pair = cnot_pair(&mut pool);
        let a2 = pool.push(Node::Var(2));
        let cn = pool.push(Node::Prim(Prim::Cnot));
        let ca = pool.push(Node::App(cn, a2));
        let tp = pool.push(Node::Prim(Prim::T));
        let a2b = pool.push(Node::Var(2));
        let ta = pool.push(Node::App(tp, a2b));
        let body = pool.push(Node::App(ca, ta));
        let l1 = pool.push(Node::Lam(body));
        let sel = pool.push(Node::Lam(l1));
        let root = pool.push(Node::App(pair, sel));
        let leaves = run_root(&mut pool, root);
        assert_eq!(leaves.len(), 1);
        assert!(matches!(leaves[0].fate, Fate::Err(ErrKind::StaleEpoch)));

        // pair (λa.λb. cnot a a) → SameQubit
        let mut pool = Pool::new();
        let pair = cnot_pair(&mut pool);
        let a2 = pool.push(Node::Var(2));
        let cn = pool.push(Node::Prim(Prim::Cnot));
        let ca = pool.push(Node::App(cn, a2));
        let a2b = pool.push(Node::Var(2));
        let body = pool.push(Node::App(ca, a2b));
        let l1 = pool.push(Node::Lam(body));
        let sel = pool.push(Node::Lam(l1));
        let root = pool.push(Node::App(pair, sel));
        let leaves = run_root(&mut pool, root);
        assert_eq!(leaves.len(), 1);
        assert!(matches!(leaves[0].fate, Fate::Err(ErrKind::SameQubit)));
    }

    #[test]
    fn species_err_before_effect_on_machine() {
        // h (λx. new x): Err fires before the λ's interior runs — nothing
        // allocates, mass stays ONE.
        let mut pool = Pool::new();
        let nw = pool.push(Node::Prim(Prim::New));
        let x = pool.push(Node::Var(1));
        let nx = pool.push(Node::App(nw, x));
        let lam = pool.push(Node::Lam(nx));
        let h = pool.push(Node::Prim(Prim::H));
        let root = pool.push(Node::App(h, lam));
        let leaves = run_root(&mut pool, root);
        assert_eq!(leaves.len(), 1);
        assert!(matches!(leaves[0].fate, Fate::Err(ErrKind::Species)));
        assert_eq!(leaves[0].mass, Some(Dw::ONE));
    }

    #[test]
    fn first_nondyadic_witness_at_45() {
        // The measured leaf-mass threshold: sizes 42–44 are clean over
        // 2.87B programs (β=512 hunt); n=45 yields
        // exactly one witness program, λ⁵. meas (h (t (h (new t)))) —
        // the predicted h·t·h sandwich, found tight. Both branches halt
        // with masses (2±√2)/4: individually irrational, summing to 1,
        // so Ω_success itself stays dyadic through 45. Pinned through
        // BOTH engines.
        let bits = "000000000001111100111111001100111111001111010";
        let t = parse_all(bits).unwrap();
        let expect = qeval::run(qeval::apply_signature(&t, &FROZEN), &Budget::default());
        let mut pool = Pool::new();
        let root = pool.from_term(&t);
        let sig = pool.apply_signature(root, &FROZEN);
        let mut m = Machine::new();
        let mut got = Vec::new();
        let budget = Budget {
            trans: 1 << 26,
            ..Budget::default()
        };
        m.run_into(&mut pool, sig, &budget, &mut got);
        assert_eq!(got, expect);
        assert_eq!(got.len(), 2);
        let p0 = Dw {
            a: 2,
            b: 1,
            c: 0,
            d: -1,
            k: 4,
        }
        .reduce();
        let p1 = Dw {
            a: 2,
            b: -1,
            c: 0,
            d: 1,
            k: 4,
        }
        .reduce();
        let masses: Vec<Dw> = got.iter().map(|l| l.mass.unwrap().reduce()).collect();
        assert!(masses.contains(&p0) && masses.contains(&p1));
        assert!(got
            .iter()
            .all(|l| matches!(l.fate, Fate::Halt(ref s) if s.live_count() == 0)));
    }

    #[test]
    fn first_fate_divergent_nondyadic_witness_at_53() {
        // Counterexample to the swap-involution pairing claim: a Church boolean
        // fate-splits on ONE argument, because reduction continues under
        // binders. λ⁵. (meas (h (t (h (new t))))) (t t): outcome 0 gives
        // true (t t) → λy. t t, and t t fires Species Err under the binder
        // at mass (2+√2)/4; outcome 1 gives false (t t) → λy.y, halting at
        // mass (2−√2)/4. One continuation — no size-preserving swap mate —
        // so this is the minimal-family candidate for the first non-dyadic
        // Ω_success contribution (cancellation at n=53 would need a global
        // enumeration identity, no mechanism known). Pinned cross-engine.
        use crate::blc::term::{app, lam, var};
        let bits = "00000000000101111100111111001100111111001111010011010";
        let t = parse_all(bits).unwrap();
        assert_eq!(t.bit_size(), 53);
        // λh λm λn λc λt. (m (h (t (h (n t))))) (t t) under the frozen order.
        let sandwich = app(
            var(4),
            app(var(5), app(var(1), app(var(5), app(var(3), var(1))))),
        );
        let built = lam(lam(lam(lam(lam(app(sandwich, app(var(1), var(1))))))));
        assert_eq!(t, built);
        let expect = qeval::run(qeval::apply_signature(&t, &FROZEN), &Budget::default());
        let mut pool = Pool::new();
        let root = pool.from_term(&t);
        let sig = pool.apply_signature(root, &FROZEN);
        let mut m = Machine::new();
        let mut got = Vec::new();
        let budget = Budget {
            trans: 1 << 26,
            ..Budget::default()
        };
        m.run_into(&mut pool, sig, &budget, &mut got);
        assert_eq!(got, expect);
        assert_eq!(got.len(), 2);
        // Depth-first, outcome-0 first: Err(Species) then Halt.
        assert!(matches!(got[0].fate, Fate::Err(ErrKind::Species)));
        assert!(matches!(got[1].fate, Fate::Halt(ref s) if s.live_count() == 0));
        let w_plus = Dw {
            a: 2,
            b: 1,
            c: 0,
            d: -1,
            k: 4,
        }
        .reduce();
        let w_minus = Dw {
            a: 2,
            b: -1,
            c: 0,
            d: 1,
            k: 4,
        }
        .reduce();
        assert_eq!(got[0].mass.unwrap().reduce(), w_plus);
        assert_eq!(got[1].mass.unwrap().reduce(), w_minus);
    }

    #[test]
    fn ht_measure_weights_exact_on_machine() {
        // meas (h (t (h (new h)))): P(0) = (2+√2)/4, P(1) = (2−√2)/4.
        let mut pool = Pool::new();
        let nw = pool.push(Node::Prim(Prim::New));
        let harg = pool.push(Node::Prim(Prim::H));
        let mut cur = pool.push(Node::App(nw, harg));
        for p in [Prim::H, Prim::T, Prim::H, Prim::Meas] {
            let pn = pool.push(Node::Prim(p));
            cur = pool.push(Node::App(pn, cur));
        }
        let leaves = run_root(&mut pool, cur);
        assert_eq!(leaves.len(), 2);
        let total = leaves
            .iter()
            .fold(Dw::ZERO, |acc, l| acc.add(l.mass.unwrap()).unwrap());
        assert_eq!(total.reduce(), Dw::ONE);
        let p0 = Dw {
            a: 2,
            b: 1,
            c: 0,
            d: -1,
            k: 4,
        }
        .reduce();
        let p1 = Dw {
            a: 2,
            b: -1,
            c: 0,
            d: 1,
            k: 4,
        }
        .reduce();
        let masses: Vec<Dw> = leaves.iter().map(|l| l.mass.unwrap().reduce()).collect();
        assert!(masses.contains(&p0) && masses.contains(&p1));
    }
}
