//! The fast path: a defunctionalized Crégut KN machine (≡ NbE, per
//! Biernacka et al. APLAS 2020) that streams the normal form's BLC bits
//! straight into a sink during readback — the normal form is never
//! materialized unless the sink chooses to.
//!
//! Conventions: de Bruijn indices (1-based) in syntax, levels (1-based) in
//! values; index = depth − level + 1 at readback. Call-by-name, so β-step
//! counts match leftmost-outermost reduction exactly (García-Pérez &
//! Nogueira lockstep) — differential-tested against
//! `classical::reference::normalize`. Explicit stacks throughout; nothing
//! here recurses.

use crate::blc::Term;
use crate::classical::OutOfFuel;

/// Term arena node. Children are indices into the pool.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Node {
    Var(u32),
    Lam(u32),
    App(u32, u32),
}

/// Flat term storage, reused across terms via `clear`.
#[derive(Default)]
pub struct Pool {
    nodes: Vec<Node>,
    /// `(root, has_redex)` for the most recent [`Pool::decode`]. That
    /// decode already visits every `App` it builds, so it can settle the
    /// pre-scan question in passing; [`Pool::has_redex`] reads it back in
    /// O(1). `None` when no decode owns the current arena contents.
    decoded: Option<(u32, bool)>,
}

impl Pool {
    pub fn new() -> Self {
        Self::default()
    }

    pub fn clear(&mut self) {
        self.nodes.clear();
        // Indices are about to be reused, so the cached root no longer
        // names the term it was computed from. Dropping it here is what
        // makes the cache sound (see `has_redex`).
        self.decoded = None;
    }

    /// The node at `id`. Arena indices come from `push`/`decode*`, so an
    /// out-of-range id is a caller bug and panics.
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
        // Pre-scan answer, accumulated for free: every App this decode
        // builds is tested as it closes, on a child index that is already
        // hot. Equivalent to a full re-traversal because `decode` visits
        // exactly the nodes of the term it returns.
        let mut redex = false;
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
                    while bits.next()? {
                        n += 1;
                    }
                    self.push(Node::Var(n))
                }
            };
            // close as many constructors as `done` completes
            loop {
                match work.pop() {
                    None => {
                        self.decoded = Some((done, redex));
                        return Some(done);
                    }
                    Some(P::Lam) => done = self.push(Node::Lam(done)),
                    Some(P::App0) => {
                        work.push(P::App1(done));
                        break;
                    }
                    Some(P::App1(f)) => {
                        redex |= matches!(self.nodes[f as usize], Node::Lam(_));
                        done = self.push(Node::App(f, done));
                    }
                }
            }
        }
    }

    pub fn decode_u64(&mut self, enc: u64, len: u8) -> Option<u32> {
        self.decode(&mut (0..len).rev().map(|j| (enc >> j) & 1 == 1))
    }

    /// Decode a '0'/'1' string (whitespace ignored). `None` on a
    /// truncated stream *or* on any other character — a stray byte is a
    /// malformed input, never silently a `0`.
    pub fn decode_str(&mut self, s: &str) -> Option<u32> {
        let mut bad = false;
        let root = self.decode(&mut s.chars().filter(|c| !c.is_whitespace()).map_while(
            |c| match c {
                '0' => Some(false),
                '1' => Some(true),
                _ => {
                    bad = true;
                    None
                }
            },
        ));
        if bad {
            return None;
        }
        root
    }

    /// Import a reference-side term (for tests / differential runs).
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
    ///
    /// O(1) when `root` is the arena's most recent [`Pool::decode`], which
    /// is every census and solomonoff term: that decode already answered
    /// the question. The cache is exact, not approximate — nodes are
    /// append-only between `clear`s and `clear` drops the cache, so a
    /// cached root's subterm cannot change under it. The census ran the
    /// old body 11.1M times at n=36, each time allocating a traversal
    /// `Vec` and re-walking a term `decode` had just walked.
    ///
    /// The root-scoped traversal below stays for every other caller —
    /// pools built by `push`/`from_term`, and splicing callers that hold
    /// several terms in one arena, where the answer is genuinely
    /// per-root and only the traversal can give it.
    pub fn has_redex(&self, root: u32) -> bool {
        if let Some((r, redex)) = self.decoded {
            if r == root {
                return redex;
            }
        }
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
}

/// Receives the normal form as a BLC bit stream during readback.
///
/// CONTRACT: implementations MUST give `var` an O(1) (or explicitly
/// bounded) body — which is why it carries no default. The obvious
/// `1ⁿ0` loop is O(n) in the variable index, and n = depth − level + 1
/// is bounded only by the machine's transition cap, which does NOT
/// charge for emitted bits. An O(n) `var` on a deep spine burned 99.9%
/// of a profiled solomonoff tail.
pub trait Sink {
    /// Opt in to early termination. When `false` (the default) the machine
    /// never calls `aborted`, and monomorphization deletes the check — the
    /// census path is unchanged, instruction for instruction.
    const CAN_ABORT: bool = false;

    fn zero(&mut self);
    fn one(&mut self);
    /// Emit variable `n` as `1ⁿ0`. Required, not defaulted: see the
    /// contract above.
    fn var(&mut self, n: u32);
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
        self.0.extend(std::iter::repeat_n('1', n as usize));
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
    /// Transitions consumed by the most recent `normalize*` call
    /// (telemetry: measures real transition/β ratios so budget caps can
    /// be set from data instead of the blanket 64× heuristic).
    pub last_trans: u64,
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
        pool: &Pool,
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
        pool: &Pool,
        root: u32,
        limit: u64,
        trans_limit: u64,
        sink: &mut S,
    ) -> Result<u64, OutOfFuel> {
        let r = self.normalize_inner(pool, root, limit, trans_limit, sink);
        // A transition-capped run can leave multi-GB arenas behind (16 B
        // per env node × up to trans_limit); don't hold the peak forever.
        //
        // Reassignment is deliberate, and the two obvious "improvements"
        // are measured non-wins — census 36 36, four interleaved runs per
        // arm, peak RSS via `/usr/bin/time -l`:
        //   this (drop + fresh KEEP)  1819-2126 MiB   11.7 s / 44.0 s user
        //   clear() + shrink_to(KEEP) 2315-2516 MiB   11.6 s / 44.0 s user
        //   drop to Vec::new()        2018-2283 MiB   11.7 s / 44.3 s user
        // `with_capacity` does not commit anything: it is a bare `alloc`,
        // and the pages cost RSS only once they are touched. Dropping the
        // vector, by contrast, `free`s a multi-GB block the allocator
        // hands straight back to the OS, which is the whole point of this
        // block. `shrink_to` is the regression — a shrinking `realloc`
        // can be satisfied in place, so the pages stay charged to us.
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
        pool: &Pool,
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
                self.last_trans = trans;
                return Err(OutOfFuel::Transitions);
            }
            if S::CAN_ABORT && sink.aborted() {
                self.last_trans = trans;
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
                            self.last_trans = trans;
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
                                && matches!(self.stack[self.stack.len() - 1 - run], Frame::Arg(..))
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
                                    self.last_trans = trans;
                                    return Err(OutOfFuel::Transitions);
                                }
                                match self.stack.pop() {
                                    None => {
                                        self.last_trans = trans;
                                        return Ok(steps);
                                    }
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

#[cfg(test)]
mod tests {
    use super::*;

    /// The pre-scan question answered the slow, obvious way, with no
    /// cache in the path — the oracle for everything below.
    fn traverse_has_redex(pool: &Pool, root: u32) -> bool {
        let mut work = vec![root];
        while let Some(id) = work.pop() {
            match pool.node(id) {
                Node::Var(_) => {}
                Node::Lam(b) => work.push(b),
                Node::App(f, a) => {
                    if matches!(pool.node(f), Node::Lam(_)) {
                        return true;
                    }
                    work.push(f);
                    work.push(a);
                }
            }
        }
        false
    }

    /// `has_redex`'s decode-time cache must agree with a full traversal
    /// on every closed term the census will hand it. A wrong answer here
    /// is a wrong halt count: `false` routes the term to `Rung::Prescan`
    /// as its own normal form.
    #[test]
    fn has_redex_cache_matches_traversal_exhaustively() {
        let mut pool = Pool::new();
        let mut n_terms = 0u64;
        for n in 4..=24 {
            crate::blc::enumerate::for_each_closed(n, &mut |enc, len| {
                pool.clear();
                let root = pool.decode_u64(enc, len).expect("valid term");
                assert_eq!(
                    pool.has_redex(root),
                    traverse_has_redex(&pool, root),
                    "size {n}, enc {enc:#x}"
                );
                n_terms += 1;
            });
        }
        assert_eq!(n_terms, 19048, "all closed terms 4..=24");
    }

    /// Several terms in one arena — the slot-search shape. The cache
    /// names exactly one root, so every other root must still get its own
    /// per-root answer. This is the case a whole-arena scan gets wrong.
    #[test]
    fn has_redex_is_per_root_across_a_spliced_arena() {
        let mut pool = Pool::new();
        let id = pool.decode_str("0010").expect("\\1"); // λ1, redex-free
        assert!(!pool.has_redex(id));
        // Splice a redex on top, reusing `id` as both children: (λ1)(λ1).
        let app = pool.push(Node::App(id, id));
        assert!(pool.has_redex(app));
        assert_eq!(pool.has_redex(app), traverse_has_redex(&pool, app));
        // `id` is still redex-free even though the arena now holds one.
        assert!(!pool.has_redex(id));
    }

    /// A second decode into a live arena retargets the cache; the earlier
    /// root must fall back to the traversal rather than inherit the new
    /// term's answer.
    #[test]
    fn a_second_decode_does_not_poison_the_first_roots_answer() {
        let mut pool = Pool::new();
        let plain = pool.decode_str("0010").expect("\\1");
        let redexy = pool.decode_str("0100100010").expect("(\\1)(\\1)");
        assert!(pool.has_redex(redexy));
        assert!(!pool.has_redex(plain));
    }

    /// `clear` must drop the cache: indices are reused, so a stale
    /// (root, flag) pair would answer for a completely different term.
    /// Both terms here put their root at index 4.
    #[test]
    fn clear_invalidates_the_cache_even_when_the_root_index_repeats() {
        let mut pool = Pool::new();
        let before = pool.decode_str("0100100010").expect("(\\1)(\\1)");
        assert_eq!(before, 4);
        assert!(pool.has_redex(before));

        pool.clear();
        // Rebuild by hand, redex-free, landing the root on index 4 again:
        // ((1 1) 1) — every App has a non-Lam function child.
        let v0 = pool.push(Node::Var(1));
        let v1 = pool.push(Node::Var(1));
        let inner = pool.push(Node::App(v0, v1));
        let v3 = pool.push(Node::Var(1));
        let after = pool.push(Node::App(inner, v3));
        assert_eq!(after, before, "root index must collide for this to bite");
        assert!(!pool.has_redex(after));
        assert_eq!(pool.has_redex(after), traverse_has_redex(&pool, after));
    }
}
