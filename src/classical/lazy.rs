//! A call-by-need strong normalizer for *running* programs — the engine
//! behind `blam blc run` and `blam uni`.
//!
//! The KN machine ([`super::machine`]) is call-by-name and keeps every
//! environment cell until its run ends: exactly right for counting
//! leftmost-outermost β-steps over a census, and wrong for running a
//! program that leans on sharing, such as Tromp's brainfuck interpreter,
//! which call-by-name re-evaluates from the start at every step. This is a
//! lazy Krivine machine in the style of Sestoft's: arguments become
//! thunks, a thunk is evaluated at most once and updated with its weak
//! head normal form, and environments are reference-counted, so memory is
//! the live data, not the history. Strong normalization is readback: a
//! closure is entered under a fresh rigid variable, a neutral term's
//! arguments are read back in order, and the normal form's bits stream
//! into a [`Sink`] as they are decided — the same sinks the KN machine
//! feeds, so an endless output list streams.
//!
//! Normal forms are unique, so where both engines finish they emit the
//! same bits (`tests/differential.rs` checks every closed term through 20
//! bits). β-counts differ by design: this machine contracts each shared
//! redex once. One verdict is new: a thunk demanded while it is already
//! under evaluation (a black hole) means its weak head normal form needs
//! itself, so the term has no normal form — [`Stop::Loop`], the `<<loop>>`
//! of a Haskell run.
//!
//! Everything is iterative: evaluation, readback, and teardown (a long
//! input list is a long chain of cells, and dropping it recursively would
//! overflow the stack).

use super::machine::{Node, Pool, Sink};
use std::cell::{Cell as StdCell, RefCell};
use std::rc::Rc;

/// Budgets for one run. Every field is a hard cap.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Limits {
    /// β-contractions.
    pub beta: u64,
    /// Machine steps (one per term node entered).
    pub work: u64,
    /// Live heap objects (thunks, environment cells, spine cells) plus
    /// machine stack and readback entries, each a few dozen bytes: the
    /// memory cap. Every allocation and every push is counted where it
    /// happens, and the run stops at the first check after the count
    /// crosses the cap, which is at most a few objects later (one machine
    /// step allocates a bounded number; the loops that allocate more check
    /// as they go).
    pub live: u64,
}

impl Default for Limits {
    /// No β or step cap; 2²⁶ live objects (a few GB).
    fn default() -> Self {
        Limits {
            beta: u64::MAX,
            work: u64::MAX,
            live: 1 << 26,
        }
    }
}

/// Why a run stopped without a complete normal form.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Stop {
    /// [`Limits::beta`] reached.
    Beta,
    /// [`Limits::work`] reached.
    Work,
    /// [`Limits::live`] reached.
    Memory,
    /// A black hole: the term has no normal form.
    Loop,
    /// The sink asked to stop ([`Sink::CAN_ABORT`]).
    Aborted,
}

impl std::fmt::Display for Stop {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.write_str(match self {
            Stop::Beta => "beta budget exhausted",
            Stop::Work => "step budget exhausted",
            Stop::Memory => "live-memory cap reached",
            Stop::Loop => "a value depends on itself, so there is no normal form",
            Stop::Aborted => "the sink asked to stop",
        })
    }
}

impl std::error::Error for Stop {}

/// What a finished run cost.
#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub struct Stats {
    /// β-contractions performed (shared redexes once).
    pub beta: u64,
    /// Machine steps.
    pub work: u64,
    /// The most heap objects plus stack and readback entries alive at once.
    pub peak_live: u64,
}

type Env = Option<Rc<Cell>>;
type Spine = Option<Rc<SpineNode>>;

/// One environment cell: the innermost binding and the rest.
struct Cell {
    val: Option<Rc<Thunk>>,
    next: Env,
}

/// A neutral term's arguments, newest last (a snoc list).
struct SpineNode {
    arg: Option<Rc<Thunk>>,
    prev: Spine,
    len: u32,
}

struct Thunk(RefCell<State>);

enum State {
    /// A term and its environment, not yet evaluated.
    Delayed(u32, Env),
    /// Its weak head normal form.
    Done(Value),
    /// Under evaluation: a black hole.
    Busy,
    /// The rest of the input list, not yet read ([`Lazy::normalize_input`]).
    Input,
}

#[derive(Clone)]
enum Value {
    /// A closure: a `Lam` node and its environment.
    Clo(u32, Env),
    /// A rigid variable (a binder level, 1-based from the outside)
    /// applied to arguments.
    Neu(u32, Spine),
}

enum Frame {
    Arg(Rc<Thunk>),
    Upd(Rc<Thunk>),
}

/// A readback job: a value already in weak head normal form, or a thunk.
enum Job {
    Val(Value),
    Force(Rc<Thunk>),
}

/// This thread's accounting: heap objects alive; the absolute count at
/// which the current run must stop, the highest count it has reached, and
/// whether allocation has crossed the cap since the machine last looked
/// (allocation sets the flag, so no stretch of allocations between
/// machine steps can overshoot unseen); and the graveyard. One record, so
/// an allocation or a drop costs one thread-local lookup.
struct Acct {
    live: StdCell<u64>,
    cap: StdCell<u64>,
    peak: StdCell<u64>,
    over: StdCell<bool>,
    grave: RefCell<Vec<Grave>>,
    draining: StdCell<bool>,
}

thread_local! {
    static ACCT: Acct = const {
        Acct {
            live: StdCell::new(0),
            cap: StdCell::new(u64::MAX),
            peak: StdCell::new(0),
            over: StdCell::new(false),
            grave: RefCell::new(Vec::new()),
            draining: StdCell::new(false),
        }
    };
}

fn born() {
    ACCT.with(|a| {
        let n = a.live.get() + 1;
        a.live.set(n);
        if n > a.peak.get() {
            a.peak.set(n);
            if n > a.cap.get() {
                a.over.set(true);
            }
        }
    });
}

fn died() {
    ACCT.with(|a| a.live.set(a.live.get() - 1));
}

fn over() -> bool {
    ACCT.with(|a| a.over.get())
}

fn live() -> u64 {
    ACCT.with(|a| a.live.get())
}

/// A handle whose drop is deferred to the graveyard loop.
enum Grave {
    C(#[allow(dead_code)] Rc<Cell>),
    T(#[allow(dead_code)] Rc<Thunk>),
    S(#[allow(dead_code)] Rc<SpineNode>),
}

/// Drop `g` without recursion: a handle that would free its object goes
/// to the graveyard, which one loop drains; an object freed there sends
/// its own children back to the graveyard instead of dropping them.
fn bury(g: Grave) {
    let last = match &g {
        Grave::C(r) => Rc::strong_count(r) == 1,
        Grave::T(r) => Rc::strong_count(r) == 1,
        Grave::S(r) => Rc::strong_count(r) == 1,
    };
    if !last {
        return;
    }
    ACCT.with(|a| {
        a.grave.borrow_mut().push(g);
        if a.draining.replace(true) {
            return;
        }
        loop {
            let Some(g) = a.grave.borrow_mut().pop() else {
                break;
            };
            drop(g);
        }
        a.draining.set(false);
    });
}

fn bury_env(e: Env) {
    if let Some(c) = e {
        bury(Grave::C(c));
    }
}

fn bury_spine(s: Spine) {
    if let Some(n) = s {
        bury(Grave::S(n));
    }
}

fn bury_value(v: Value) {
    match v {
        Value::Clo(_, e) => bury_env(e),
        Value::Neu(_, s) => bury_spine(s),
    }
}

impl Drop for Cell {
    fn drop(&mut self) {
        died();
        if let Some(t) = self.val.take() {
            bury(Grave::T(t));
        }
        bury_env(self.next.take());
    }
}

impl Drop for SpineNode {
    fn drop(&mut self) {
        died();
        if let Some(t) = self.arg.take() {
            bury(Grave::T(t));
        }
        bury_spine(self.prev.take());
    }
}

impl Drop for Thunk {
    fn drop(&mut self) {
        died();
        match std::mem::replace(self.0.get_mut(), State::Busy) {
            State::Delayed(_, e) => bury_env(e),
            State::Done(v) => bury_value(v),
            State::Busy | State::Input => {}
        }
    }
}

impl Thunk {
    fn new(s: State) -> Rc<Thunk> {
        born();
        Rc::new(Thunk(RefCell::new(s)))
    }

    fn set(&self, v: Value) {
        let old = std::mem::replace(&mut *self.0.borrow_mut(), State::Done(v));
        match old {
            State::Delayed(_, e) => bury_env(e),
            State::Done(v) => bury_value(v),
            State::Busy | State::Input => {}
        }
    }
}

fn cons(t: Rc<Thunk>, next: Env) -> Env {
    born();
    Some(Rc::new(Cell { val: Some(t), next }))
}

fn snoc(prev: Spine, arg: Rc<Thunk>) -> Spine {
    born();
    let len = prev.as_ref().map_or(0, |p| p.len) + 1;
    Some(Rc::new(SpineNode {
        arg: Some(arg),
        prev,
        len,
    }))
}

/// De Bruijn variable `n` (1-based) of `env`.
fn lookup(env: &Env, n: u32) -> Rc<Thunk> {
    let mut c = env.as_ref().expect("closed terms bind every variable");
    for _ in 1..n {
        c = c.next.as_ref().expect("closed terms bind every variable");
    }
    c.val.clone().expect("live cells hold their value")
}

/// For every node of the pool: is it a closed normal form (a term with no
/// free variable and no redex, which is its own normal form)? Children
/// precede parents in a pool, so one forward pass settles it. Also says
/// whether `root` is closed. (The whole pool, not just `root`'s prefix:
/// input can bring in nodes pushed after the root.)
fn scan(pool: &Pool, root: u32) -> (Vec<bool>, bool) {
    let n = pool.len();
    let mut free = vec![0u32; n];
    let mut nf = vec![false; n];
    for i in 0..n {
        let (f, ok) = match pool.node(i as u32) {
            Node::Var(k) => (k, true),
            Node::Lam(b) => (free[b as usize].saturating_sub(1), nf[b as usize]),
            Node::App(x, a) => (
                free[x as usize].max(free[a as usize]),
                nf[x as usize] && nf[a as usize] && !matches!(pool.node(x), Node::Lam(_)),
            ),
        };
        free[i] = f;
        nf[i] = ok;
    }
    let closed = free[root as usize] == 0;
    let cnf = (0..n).map(|i| nf[i] && free[i] == 0).collect();
    (cnf, closed)
}

/// An input element, or what an input list ends in: a closed term of the
/// pool (a bit, a byte, nil — each a lambda), or the variable of marker
/// binder `level` (1-based, outermost first).
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Item {
    Term(u32),
    Marker(u32),
}

/// One step of an input list.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Next {
    Cell(Item),
    End(Item),
}

/// An input list read lazily, as the program demands it
/// ([`Lazy::normalize_input`]).
pub trait Input {
    /// The next step, asked for in order, once per cell, and never again
    /// after an `End`. Call `idle` before blocking (on a terminal or a
    /// pipe): a sink holding output delivers it, and if `idle` returns
    /// `false` the run is over — return `None` without reading.
    fn next(&mut self, idle: &mut dyn FnMut() -> bool) -> Option<Next>;
}

/// The input of a run without one.
struct NoInput;

impl Input for NoInput {
    fn next(&mut self, _: &mut dyn FnMut() -> bool) -> Option<Next> {
        unreachable!("a run without input never reads it")
    }
}

/// The machine. Reusable; each [`Lazy::normalize`] starts afresh.
#[derive(Default)]
pub struct Lazy {
    stack: Vec<Frame>,
    jobs: Vec<(Job, u32)>,
    // Per pool node: a closed normal form, read back by emitting it; and
    // the stack that emission walks it with.
    cnf: Vec<bool>,
    emit: Vec<u32>,
    // Input runs: the cell template `λz. z 2 3`, how many marker binders
    // the output opens with, and the rigid variables readback gave them.
    cell: u32,
    markers: u32,
    marker_rigids: Vec<Rc<Thunk>>,
    limits: Limits,
    stats: Stats,
    base: u64,
}

impl std::fmt::Debug for Lazy {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.debug_struct("Lazy")
            .field("limits", &self.limits)
            .field("stats", &self.stats)
            .finish_non_exhaustive()
    }
}

impl Lazy {
    pub fn new() -> Self {
        Self::default()
    }

    /// Normalize the closed term at `root`, streaming the normal form's
    /// bits into `sink`.
    ///
    /// # Panics
    /// If the term is open: every variable must be bound.
    pub fn normalize<S: Sink>(
        &mut self,
        pool: &Pool,
        root: u32,
        limits: Limits,
        sink: &mut S,
    ) -> Result<Stats, Stop> {
        self.markers = 0;
        self.start(pool, root, false, &mut NoInput, limits, sink)
    }

    /// Normalize `body` with its input list read lazily from `input`, where
    /// the closed term at `root` is `λI. body`: the run computes the normal
    /// form of `body[I := the input list]`. The list is built cell by cell
    /// as the program first demands each one, so a program that never
    /// reads its input never waits for it, and input need not fit in
    /// memory. `cell` is a pool node for the cell template `λz. z 2 3`
    /// (its free variables are a cell's head and tail). `body` must open
    /// with `markers` lambdas, the marker binders of
    /// [`super::io::Reader`]; input items may name them. Input nodes may
    /// sit anywhere in the pool.
    ///
    /// # Panics
    /// If `root` is not a closed lambda whose body opens with `markers`
    /// lambdas.
    #[allow(clippy::too_many_arguments)]
    pub fn normalize_input<S: Sink, I: Input>(
        &mut self,
        pool: &Pool,
        root: u32,
        cell: u32,
        markers: u32,
        input: &mut I,
        limits: Limits,
        sink: &mut S,
    ) -> Result<Stats, Stop> {
        let Node::Lam(body) = pool.node(root) else {
            panic!("an input run's root binds the input: λI. body")
        };
        // Marker items name the binders readback meets first, so they must
        // open the body itself, before any input can be demanded.
        let mut t = body;
        for _ in 0..markers {
            match pool.node(t) {
                Node::Lam(b) => t = b,
                _ => panic!("an input run's body opens with its {markers} marker binders"),
            }
        }
        self.cell = cell;
        self.markers = markers;
        self.start(pool, body, true, input, limits, sink)
    }

    fn start<S: Sink, I: Input>(
        &mut self,
        pool: &Pool,
        root: u32,
        with_input: bool,
        input: &mut I,
        limits: Limits,
        sink: &mut S,
    ) -> Result<Stats, Stop> {
        let (cnf, closed) = scan(pool, root);
        assert!(closed || with_input, "the lazy machine runs closed terms");
        self.cnf = cnf;
        self.marker_rigids.clear();
        self.limits = limits;
        self.stats = Stats::default();
        self.base = live();
        // A run started from inside another one's sink gets its own budget
        // and hands the outer one back on the way out.
        let outer = ACCT.with(|a| {
            let saved = (a.cap.get(), a.peak.get(), a.over.get());
            a.cap.set(self.base.saturating_add(limits.live));
            a.peak.set(self.base);
            a.over.set(false);
            saved
        });
        // The input binding is the run's first allocation, inside its
        // budget.
        let env = with_input
            .then(|| cons(Thunk::new(State::Input), None))
            .flatten();
        let r = self.run(pool, root, env, input, sink);
        self.marker_rigids.clear();
        // A failed run leaves frames and jobs behind; they go the
        // iterative way.
        while let Some(f) = self.pop_frame() {
            match f {
                Frame::Arg(t) | Frame::Upd(t) => bury(Grave::T(t)),
            }
        }
        while let Some((job, _)) = self.pop_job() {
            match job {
                Job::Val(v) => bury_value(v),
                Job::Force(t) => bury(Grave::T(t)),
            }
        }
        // Budgets are independent: a nested run's transient objects are
        // its own, gone before the outer run looks again, so the outer
        // accounting comes back exactly as it was.
        let peak = ACCT.with(|a| {
            let peak = a.peak.get();
            let (cap, outer_peak, outer_over) = outer;
            a.cap.set(cap);
            a.peak.set(outer_peak);
            a.over.set(outer_over);
            peak
        });
        self.stats.peak_live = peak - self.base;
        r.map(|()| self.stats)
    }

    // Frames and jobs are memory too: they are counted like heap objects,
    // so the cap and the peak cover them where they are pushed.
    fn push_frame(&mut self, f: Frame) {
        born();
        self.stack.push(f);
    }

    fn pop_frame(&mut self) -> Option<Frame> {
        let f = self.stack.pop();
        if f.is_some() {
            died();
        }
        f
    }

    fn push_job(&mut self, j: (Job, u32)) {
        born();
        self.jobs.push(j);
    }

    fn pop_job(&mut self) -> Option<(Job, u32)> {
        let j = self.jobs.pop();
        if j.is_some() {
            died();
        }
        j
    }

    fn run<S: Sink, I: Input>(
        &mut self,
        pool: &Pool,
        root: u32,
        env: Env,
        inp: &mut I,
        sink: &mut S,
    ) -> Result<(), Stop> {
        let v = self.whnf(pool, root, env, inp, sink)?;
        self.push_job((Job::Val(v), 0));
        self.readback(pool, inp, sink)?;
        // A run that crossed the cap after its last check is still over.
        if over() {
            return Err(Stop::Memory);
        }
        Ok(())
    }

    /// Strong readback: pop a job, bring it to weak head normal form, emit
    /// its head, and queue what lies under it.
    fn readback<S: Sink, I: Input>(
        &mut self,
        pool: &Pool,
        inp: &mut I,
        sink: &mut S,
    ) -> Result<(), Stop> {
        while let Some((job, depth)) = self.pop_job() {
            let v = match job {
                Job::Val(v) => v,
                Job::Force(t) => self.force(pool, &t, inp, sink)?,
            };
            match v {
                // A closed normal form is its own normal form: no
                // evaluation, no allocation (input passing through a
                // program is the common case).
                Value::Clo(lam, _) if self.cnf[lam as usize] => {
                    self.emit_closed(pool, lam, sink)?;
                }
                Value::Clo(lam, env) => {
                    sink.zero();
                    sink.zero();
                    let Node::Lam(body) = pool.node(lam) else {
                        unreachable!("closures hold lambdas")
                    };
                    let rigid = Thunk::new(State::Done(Value::Neu(depth + 1, None)));
                    if depth < self.markers {
                        // A marker binder: input items may name it.
                        self.marker_rigids.push(rigid.clone());
                    }
                    let v = self.whnf(pool, body, cons(rigid, env), inp, sink)?;
                    self.push_job((Job::Val(v), depth + 1));
                }
                Value::Neu(level, spine) => {
                    let n = spine.as_ref().map_or(0, |s| s.len);
                    let mut args = Vec::with_capacity(n as usize);
                    let mut s = spine.as_ref();
                    while let Some(node) = s {
                        args.push(node.arg.clone().expect("live spines hold their args"));
                        s = node.prev.as_ref();
                    }
                    for _ in 0..n {
                        sink.zero();
                        sink.one();
                    }
                    sink.var(depth - level + 1);
                    // `args` is newest first, so the first argument ends
                    // up on top and is read back first.
                    for a in args {
                        self.push_job((Job::Force(a), depth));
                        if over() {
                            return Err(Stop::Memory);
                        }
                    }
                }
            }
        }
        Ok(())
    }

    /// Emit the closed normal form at pool node `id` as it stands: one
    /// step of work per node, abort polls as for any step, and its
    /// traversal stack held to the memory cap. Nothing else allocates
    /// meanwhile, so the live count is read once.
    fn emit_closed<S: Sink>(&mut self, pool: &Pool, id: u32, sink: &mut S) -> Result<(), Stop> {
        let (live0, cap) = ACCT.with(|a| (a.live.get(), a.cap.get()));
        let mut stack = std::mem::take(&mut self.emit);
        stack.clear();
        stack.push(id);
        let mut most = 1u64;
        let r = loop {
            let Some(id) = stack.pop() else { break Ok(()) };
            self.stats.work += 1;
            if self.stats.work > self.limits.work {
                break Err(Stop::Work);
            }
            if S::CAN_ABORT && self.stats.work & 0xFF == 0 && sink.aborted() {
                break Err(Stop::Aborted);
            }
            match pool.node(id) {
                Node::Var(n) => sink.var(n),
                Node::Lam(b) => {
                    sink.zero();
                    sink.zero();
                    stack.push(b);
                }
                Node::App(f, a) => {
                    sink.zero();
                    sink.one();
                    stack.push(a);
                    stack.push(f);
                }
            }
            if stack.len() as u64 > most {
                most = stack.len() as u64;
                if live0 + most > cap {
                    break Err(Stop::Memory);
                }
            }
        };
        ACCT.with(|a| {
            if live0 + most > a.peak.get() {
                a.peak.set(live0 + most);
            }
        });
        self.emit = stack;
        r
    }

    #[inline]
    fn tick<S: Sink>(&mut self, sink: &S) -> Result<(), Stop> {
        self.stats.work += 1;
        if self.stats.work > self.limits.work {
            return Err(Stop::Work);
        }
        if over() {
            return Err(Stop::Memory);
        }
        // Polled every 256 steps: a sink that wants to stop is heard
        // within that many, at a fraction of the cost of asking each time.
        if S::CAN_ABORT && self.stats.work & 0xFF == 0 && sink.aborted() {
            return Err(Stop::Aborted);
        }
        Ok(())
    }

    /// A thunk's weak head normal form, evaluating it on first demand and
    /// updating it with the result.
    fn force<S: Sink, I: Input>(
        &mut self,
        pool: &Pool,
        t: &Rc<Thunk>,
        inp: &mut I,
        sink: &S,
    ) -> Result<Value, Stop> {
        let state = std::mem::replace(&mut *t.0.borrow_mut(), State::Busy);
        match state {
            State::Done(v) => {
                *t.0.borrow_mut() = State::Done(v.clone());
                Ok(v)
            }
            State::Delayed(term, env) => {
                let v = self.whnf(pool, term, env, inp, sink)?;
                t.set(v.clone());
                Ok(v)
            }
            State::Input => {
                let v = self.pull(inp, sink)?;
                t.set(v.clone());
                Ok(v)
            }
            State::Busy => Err(Stop::Loop),
        }
    }

    /// Read the input list's next cell: `λz. z head rest`, with `rest` the
    /// unread remainder, or the list's end. A run the sink has given up on
    /// stops here rather than block on a read.
    fn pull<S: Sink, I: Input>(&mut self, inp: &mut I, sink: &S) -> Result<Value, Stop> {
        if S::CAN_ABORT && sink.aborted() {
            return Err(Stop::Aborted);
        }
        let item = |me: &Self, it: Item| match it {
            Item::Term(id) => Thunk::new(State::Done(Value::Clo(id, None))),
            Item::Marker(level) => me.marker_rigids[level as usize - 1].clone(),
        };
        let mut idle = || {
            sink.idle();
            !(S::CAN_ABORT && sink.aborted())
        };
        Ok(match inp.next(&mut idle).ok_or(Stop::Aborted)? {
            Next::End(Item::Term(id)) => Value::Clo(id, None),
            Next::End(Item::Marker(level)) => Value::Neu(level, None),
            Next::Cell(it) => {
                let head = item(self, it);
                let rest = Thunk::new(State::Input);
                Value::Clo(self.cell, cons(head, cons(rest, None)))
            }
        })
    }

    /// The thunk an argument becomes: a variable's own thunk (no
    /// indirection), an evaluated closure for a lambda, else delayed.
    fn arg(&self, pool: &Pool, a: u32, env: &Env) -> Rc<Thunk> {
        match pool.node(a) {
            Node::Var(n) => lookup(env, n),
            Node::Lam(_) => Thunk::new(State::Done(Value::Clo(a, env.clone()))),
            Node::App(..) => Thunk::new(State::Delayed(a, env.clone())),
        }
    }

    /// Weak head normal form of `t` in `env`. Frames pushed here are
    /// consumed here: on success the stack is back where it stood.
    fn whnf<S: Sink, I: Input>(
        &mut self,
        pool: &Pool,
        mut t: u32,
        mut env: Env,
        inp: &mut I,
        sink: &S,
    ) -> Result<Value, Stop> {
        let base = self.stack.len();
        loop {
            self.tick(sink)?;
            match pool.node(t) {
                Node::App(f, a) => {
                    let th = self.arg(pool, a, &env);
                    self.push_frame(Frame::Arg(th));
                    t = f;
                }
                Node::Lam(b) => {
                    if self.stack.len() == base {
                        return Ok(Value::Clo(t, env));
                    }
                    match self.pop_frame().expect("above base") {
                        Frame::Arg(th) => {
                            self.stats.beta += 1;
                            if self.stats.beta > self.limits.beta {
                                return Err(Stop::Beta);
                            }
                            env = cons(th, env);
                            t = b;
                        }
                        Frame::Upd(u) => u.set(Value::Clo(t, env.clone())),
                    }
                }
                Node::Var(n) => {
                    let th = lookup(&env, n);
                    let state = std::mem::replace(&mut *th.0.borrow_mut(), State::Busy);
                    let state = match state {
                        State::Input => match self.pull(inp, sink) {
                            Ok(v) => State::Done(v),
                            Err(e) => {
                                *th.0.borrow_mut() = State::Input;
                                return Err(e);
                            }
                        },
                        s => s,
                    };
                    match state {
                        State::Done(v) => {
                            *th.0.borrow_mut() = State::Done(v.clone());
                            match v {
                                Value::Clo(lam, e) => {
                                    env = e;
                                    t = lam;
                                }
                                Value::Neu(level, mut spine) => {
                                    while self.stack.len() > base {
                                        match self.pop_frame().expect("above base") {
                                            Frame::Arg(a) => {
                                                spine = snoc(spine, a);
                                                if over() {
                                                    return Err(Stop::Memory);
                                                }
                                            }
                                            Frame::Upd(u) => {
                                                u.set(Value::Neu(level, spine.clone()))
                                            }
                                        }
                                    }
                                    return Ok(Value::Neu(level, spine));
                                }
                            }
                        }
                        State::Delayed(t2, e2) => {
                            self.push_frame(Frame::Upd(th));
                            env = e2;
                            t = t2;
                        }
                        State::Busy => return Err(Stop::Loop),
                        State::Input => unreachable!("read above"),
                    }
                }
            }
        }
    }
}
