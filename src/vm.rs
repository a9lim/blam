//! The fast path: a defunctionalized Crégut KN machine (≡ NbE, per
//! Biernacka et al. APLAS 2020) that streams the normal form's BLC bits
//! straight into a sink during readback — the normal form is never
//! materialized unless the sink chooses to.
//!
//! Conventions: de Bruijn indices (1-based) in syntax, levels (1-based) in
//! values; index = depth − level + 1 at readback. Call-by-name, so β-step
//! counts match leftmost-outermost reduction exactly (García-Pérez &
//! Nogueira lockstep) — differential-tested against `eval::normalize`.
//! Explicit stacks throughout; nothing here recurses.

use crate::eval::OutOfFuel;
use crate::term::Term;

/// Term arena node. Children are indices into the pool.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Node {
    Var(u32),
    Lam(u32),
    App(u32, u32),
}

/// Flat term storage, reused across terms via `clear`.
#[derive(Default)]
pub struct TermPool {
    pub nodes: Vec<Node>,
}

impl TermPool {
    pub fn new() -> Self {
        Self::default()
    }

    pub fn clear(&mut self) {
        self.nodes.clear();
    }

    /// Append a node, returning its index. Public so callers can splice a
    /// decoded term into a larger context (slot search closes candidates
    /// under rigid binders this way) without a second decode pass.
    pub fn push(&mut self, n: Node) -> u32 {
        self.nodes.push(n);
        (self.nodes.len() - 1) as u32
    }

    /// Decode one BLC term off a bit stream. Returns the root index.
    pub fn decode(&mut self, bits: &mut impl Iterator<Item = bool>) -> Option<u32> {
        // Explicit build stack: each entry is a pending constructor.
        enum P {
            Lam,
            App0,      // waiting for function child
            App1(u32), // has function child, waiting for argument
        }
        let mut work: Vec<P> = Vec::new();
        loop {
            // parse one leaf-or-opener
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
                    loop {
                        match bits.next()? {
                            true => n += 1,
                            false => break,
                        }
                    }
                    self.push(Node::Var(n))
                }
            };
            // close as many constructors as `done` completes
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

    pub fn decode_u64(&mut self, enc: u64, len: u8) -> Option<u32> {
        self.decode(&mut (0..len).rev().map(|j| (enc >> j) & 1 == 1))
    }

    pub fn decode_str(&mut self, s: &str) -> Option<u32> {
        self.decode(&mut s.chars().filter(|c| !c.is_whitespace()).map(|c| c == '1'))
    }

    /// Import an `eval`-side term (for tests / differential runs).
    pub fn from_term(&mut self, t: &Term) -> u32 {
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

    /// BLC bit-size of the subterm at `id`.
    pub fn bit_size(&self, id: u32) -> u64 {
        let mut total = 0u64;
        let mut work = vec![id];
        while let Some(id) = work.pop() {
            match self.nodes[id as usize] {
                Node::Var(n) => total += n as u64 + 1,
                Node::Lam(b) => {
                    total += 2;
                    work.push(b);
                }
                Node::App(f, a) => {
                    total += 2;
                    work.push(f);
                    work.push(a);
                }
            }
        }
        total
    }

    /// Does any redex (App whose function child is a Lam) occur?
    /// If not, the term is its own normal form — the pre-scan fast path.
    pub fn has_redex(&self, root: u32) -> bool {
        let mut work = vec![root];
        while let Some(id) = work.pop() {
            match self.nodes[id as usize] {
                Node::Var(_) => {}
                Node::Lam(b) => work.push(b),
                Node::App(f, a) => {
                    if matches!(self.nodes[f as usize], Node::Lam(_)) {
                        return true;
                    }
                    work.push(f);
                    work.push(a);
                }
            }
        }
        false
    }

    /// Emit the subterm at `id` as BLC bits (preorder), for the pre-scan path.
    pub fn emit<S: Sink>(&self, id: u32, sink: &mut S) {
        let mut work = vec![id];
        while let Some(id) = work.pop() {
            match self.nodes[id as usize] {
                Node::Var(n) => sink.var(n),
                Node::Lam(b) => {
                    sink.zero();
                    sink.zero();
                    work.push(b);
                }
                Node::App(f, a) => {
                    sink.zero();
                    sink.one();
                    work.push(a);
                    work.push(f);
                }
            }
        }
    }
}

/// Receives the normal form as a BLC bit stream during readback.
///
/// CONTRACT: implementations MUST override `var` with an O(1) (or
/// explicitly bounded) version. The default is O(n) in the variable
/// index, and n = depth − level + 1 is bounded only by the machine's
/// transition cap — which does NOT charge for emitted bits. An O(n)
/// `var` on a deep spine burned 99.9% of a profiled solomonoff tail
/// (the work-meter lesson, instance #4).
pub trait Sink {
    /// Opt in to early termination. When `false` (the default) the machine
    /// never calls `aborted`, and monomorphization deletes the check — the
    /// census path is unchanged, instruction for instruction.
    const CAN_ABORT: bool = false;

    fn zero(&mut self);
    fn one(&mut self);
    fn var(&mut self, n: u32) {
        for _ in 0..n {
            self.one();
        }
        self.zero();
    }
    /// Polled once per machine transition when `CAN_ABORT`. Returning true
    /// stops the run with `OutOfFuel::Aborted`; the bits already delivered
    /// are still a genuine prefix of the normal form (readback is in order),
    /// which is what makes an early "this can't be the target" sound.
    fn aborted(&self) -> bool {
        false
    }
}

/// Counts bits only — the BBλ metric, no materialization.
#[derive(Default)]
pub struct SizeSink(pub u64);

impl Sink for SizeSink {
    fn zero(&mut self) {
        self.0 += 1;
    }
    fn one(&mut self) {
        self.0 += 1;
    }
    fn var(&mut self, n: u32) {
        self.0 += n as u64 + 1;
    }
}

/// Materializes the normal form's bit string (differential tests, m(x) keys).
#[derive(Default)]
pub struct StringSink(pub String);

impl Sink for StringSink {
    fn zero(&mut self) {
        self.0.push('0');
    }
    fn one(&mut self) {
        self.0.push('1');
    }
    fn var(&mut self, n: u32) {
        self.0.reserve(n as usize + 1);
        self.0.extend(std::iter::repeat('1').take(n as usize));
        self.0.push('0');
    }
}

#[derive(Clone, Copy)]
enum Val {
    /// Unevaluated closure: (term, env).
    Clo(u32, u32),
    /// Rigid variable, by 1-based de Bruijn level.
    Lvl(u32),
}

#[derive(Clone, Copy)]
enum Frame {
    /// Pending application argument (eval phase).
    Arg(u32, u32),
    /// Passed under a binder; pop decrements depth.
    LamEnd,
    /// Spine argument awaiting its own normalization (readback phase).
    Norm(u32, u32),
}

const NIL: u32 = u32::MAX;

/// The machine. Reused across terms; arenas reset per `normalize` call.
#[derive(Default)]
pub struct Machine {
    envs: Vec<(Val, u32)>,
    stack: Vec<Frame>,
}

impl Machine {
    pub fn new() -> Self {
        Self::default()
    }

    fn push_env(&mut self, v: Val, parent: u32) -> u32 {
        self.envs.push((v, parent));
        (self.envs.len() - 1) as u32
    }

    /// Normalize `root`, streaming the normal form's bits into `sink`.
    /// Returns the β-step count, or `OutOfFuel` past `limit` steps.
    pub fn normalize<S: Sink>(
        &mut self,
        pool: &TermPool,
        root: u32,
        limit: u64,
        sink: &mut S,
    ) -> Result<u64, OutOfFuel> {
        let trans_limit = limit.saturating_mul(64).max(1 << 22);
        self.normalize_capped(pool, root, limit, trans_limit, sink)
    }

    /// `normalize` with the transition cap as an explicit parameter, so a
    /// budget ladder can give a cheap rung a genuinely cheap cap (the
    /// default floor of 1<<22 otherwise makes small-β rungs cost as much
    /// as large ones on transition-bound terms).
    pub fn normalize_capped<S: Sink>(
        &mut self,
        pool: &TermPool,
        root: u32,
        limit: u64,
        trans_limit: u64,
        sink: &mut S,
    ) -> Result<u64, OutOfFuel> {
        let r = self.normalize_inner(pool, root, limit, trans_limit, sink);
        // A transition-capped run can leave multi-GB arenas behind (16 B
        // per env node × up to trans_limit); don't hold the peak forever.
        const KEEP: usize = 1 << 20;
        if self.envs.capacity() > KEEP {
            self.envs = Vec::with_capacity(KEEP);
        }
        if self.stack.capacity() > KEEP {
            self.stack = Vec::with_capacity(KEEP);
        }
        r
    }

    fn normalize_inner<S: Sink>(
        &mut self,
        pool: &TermPool,
        root: u32,
        limit: u64,
        trans_limit: u64,
        sink: &mut S,
    ) -> Result<u64, OutOfFuel> {
        self.envs.clear();
        self.stack.clear();
        let mut steps = 0u64;
        let mut depth = 0u32;
        let mut t = root;
        let mut env = NIL;
        // β-fuel alone does not bound the machine: transitions between
        // contractions (closure-chain walks, readback emission) can dwarf
        // the β-count — the classic machine-steps-vs-β gap. The transition
        // cap turns "astronomically slow" into an honest resource error,
        // and since each transition allocates at most one env node or
        // frame, it bounds memory too (up to ~16 B × trans_limit per
        // worker — release oversized buffers on exit, below).
        let mut trans = 0u64;
        'eval: loop {
            trans += 1;
            if trans > trans_limit {
                return Err(OutOfFuel::Transitions);
            }
            if S::CAN_ABORT && sink.aborted() {
                return Err(OutOfFuel::Aborted);
            }
            match pool.nodes[t as usize] {
                Node::App(f, a) => {
                    self.stack.push(Frame::Arg(a, env));
                    t = f;
                }
                Node::Lam(b) => {
                    if let Some(&Frame::Arg(at, ae)) = self.stack.last() {
                        // β-contraction: bind the argument closure, enter body.
                        self.stack.pop();
                        steps += 1;
                        if steps > limit {
                            return Err(OutOfFuel::Beta);
                        }
                        env = self.push_env(Val::Clo(at, ae), env);
                        t = b;
                    } else {
                        // Unapplied abstraction in normal-form position:
                        // emit λ, bind a fresh level, keep normalizing inside.
                        sink.zero();
                        sink.zero();
                        depth += 1;
                        env = self.push_env(Val::Lvl(depth), env);
                        self.stack.push(Frame::LamEnd);
                        t = b;
                    }
                }
                Node::Var(i) => {
                    let mut e = env;
                    for _ in 1..i {
                        e = self.envs[e as usize].1;
                    }
                    match self.envs[e as usize].0 {
                        Val::Clo(ct, ce) => {
                            // Call-by-name: enter the stored closure.
                            t = ct;
                            env = ce;
                        }
                        Val::Lvl(k) => {
                            // Rigid head. The contiguous run of Arg frames
                            // above is its spine; emit the application tags
                            // and head var (preorder), then convert the run
                            // to Norm frames — top of stack is the innermost
                            // argument, which preorder wants first.
                            let mut run = 0usize;
                            while run < self.stack.len()
                                && matches!(
                                    self.stack[self.stack.len() - 1 - run],
                                    Frame::Arg(..)
                                )
                            {
                                run += 1;
                            }
                            for _ in 0..run {
                                sink.zero();
                                sink.one();
                            }
                            sink.var(depth - k + 1);
                            let base = self.stack.len() - run;
                            for f in self.stack[base..].iter_mut() {
                                if let Frame::Arg(a, e) = *f {
                                    *f = Frame::Norm(a, e);
                                }
                            }
                            // Readback: pull the next pending job.
                            loop {
                                trans += 1;
                                if trans > trans_limit {
                                    return Err(OutOfFuel::Transitions);
                                }
                                match self.stack.pop() {
                                    None => return Ok(steps),
                                    Some(Frame::LamEnd) => depth -= 1,
                                    Some(Frame::Norm(nt, ne)) => {
                                        t = nt;
                                        env = ne;
                                        continue 'eval;
                                    }
                                    Some(Frame::Arg(..)) => unreachable!(),
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
