//! Escalation engine: a faithful port of the `nf`/`normalForm` reducer in
//! Tromp's ref/AIT/BB/BB.lhs — normal-order reduction instrumented with the
//! syntactic divergence oracle (`oracle::no_nf`) at every application and
//! redex-history loop detection (his PHT), with its capacity accounting:
//! each recorded redex charges its own BLC bit-size against a budget.
//!
//! One deliberate deviation from BB.lhs: his `Maybe` conflates proven
//! divergence with budget exhaustion; we separate `Diverge` (oracle hit or
//! redex reoccurrence — proven) from `Unknown` (capacity exhausted).
//!
//! His `simplify` argument-preprocessing IS ported: it canonicalizes
//! arguments (inlining variable/affine arguments, collapsing applications
//! of identity, ⊥-ing arguments of erasing functions), which is what lets
//! the redex history catch loops whose redexes otherwise grow a fresh
//! wrapper each cycle — e.g. (λx. x x)(λx. x (I x)), where simplify
//! collapses I W' back to W' and the history key recurs exactly.
//! β-inlining inside simplify distorts step counts, which is why the
//! escalation engine never reports canonical counts (the census recovers
//! them with a KN re-run).
//!
//! History semantics preserved exactly: membership is checked against the
//! pre-insert set; the set (not the capacity) resets when switching from
//! strong to weak reduction (the BB.lhs:89 counterexample); the whole redex
//! is matched in the β case, its function part alone in the rigid case;
//! keys are `bot_free`'d (free variables collapsed to ⊥ — detection modulo
//! free variables).
//!
//! Only ~0.3% of closed terms ever reach this engine, so it favors
//! fidelity over speed — but the *representation* is optimized: every
//! Lam/App node caches `Meta { bits, hash, max-free, node counts, ⊥ }`
//! computed O(1) at construction, so bit-size accounting, history-set
//! hashing, closedness checks, and ⊥-detection are all O(1) instead of
//! per-call tree walks (walks that were exponential on Rc-shared
//! structures, which substitution creates via argument sharing).
//!
//! METER PARITY INVARIANT: traversal helpers (`shift`, `subst`,
//! `bot_free`, `simplify`, `simp_e`, `simp_i`) short-circuit on subtrees
//! the cached max-free index proves untouched, returning an Rc share —
//! but each skip charges the shared work meter *exactly* what the
//! pre-sharing engine's walk charged (one unit per Lam/App constructed,
//! computable O(1) from cached counts; `subst` also bills the per-binder
//! `shift` of its argument: nodes(t) + lams(t)·nodes(s)). Executed slow
//! paths charge identically by construction. The meter therefore reaches
//! every `work_exhausted` check site with the same value the unshared
//! walk produces, and all verdicts — including which resource dies first — are
//! bit-identical. (Sole theoretical exception: logical sizes past u64
//! saturate and charge i64::MAX, where an unshared walk would grind
//! unboundedly; no census term reaches that regime.)

use crate::classical::oracle::{no_nf, LView, NV};
use std::rc::Rc;

/// Term with ⊥, mirroring BB.lhs's `L`. 1-based de Bruijn. `Var`/`Bot`
/// are unboxed; `Lam`/`App` are Rc-shared nodes carrying cached metadata.
#[derive(Clone, Debug)]
pub enum LTerm {
    Var(u32),
    Lam(Rc<LamN>),
    App(Rc<AppN>),
    Bot,
}

/// A λ node. Fields are private: the body is reachable only through the
/// engine's own traversals and [`emit_bits`], so no caller can build an
/// `LTerm` whose cached [`Meta`] disagrees with its shape.
#[derive(Debug)]
pub struct LamN {
    b: LTerm,
    m: Meta,
}

/// An application node; private for the same reason as [`LamN`].
#[derive(Debug)]
pub struct AppN {
    f: LTerm,
    a: LTerm,
    m: Meta,
}

/// Per-node cached facts, O(1)-composed from children at construction.
#[derive(Clone, Copy, Debug)]
struct Meta {
    /// BLC bit-size (⊥ counts 1, as in BB.lhs). Logical (sharing-blind).
    bits: u64,
    /// Structural hash; equal terms always hash equal.
    hash: u64,
    /// Largest free de Bruijn index (0 = closed).
    mf: u32,
    /// Lam-node count (logical).
    lams: u64,
    /// App-node count (logical).
    apps: u64,
    /// Contains ⊥ anywhere.
    bot: bool,
}

use LTerm::*;

impl LView for &LTerm {
    fn node(self) -> NV<Self> {
        match self {
            Var(n) => NV::Var(*n),
            Lam(x) => NV::Lam(&x.b),
            App(x) => NV::App(&x.f, &x.a),
            Bot => NV::Bot,
        }
    }
}

/// splitmix64 finalizer: cheap, well-mixed, and the crate's one mixer.
///
/// Public because it is not really an escalation concept — it is the
/// avalanche step behind [`LTerm`]'s structural hash, and the census
/// builds its memo `BuildHasher` out of it rather than growing a second
/// mixer with the same job. Not a stable-output guarantee: nothing
/// persists its results, so the constants may change.
pub fn mix(mut z: u64) -> u64 {
    z = (z ^ (z >> 30)).wrapping_mul(0xBF58_476D_1CE4_E5B9);
    z = (z ^ (z >> 27)).wrapping_mul(0x94D0_49BB_1331_11EB);
    z ^ (z >> 31)
}
const H_VAR: u64 = 0x517C_C1B7_2722_0A95;
const H_LAM: u64 = 0xA5A5_5A5A_C100_11EB;
const H_APP: u64 = 0x0DD1_CAFE_0DD1_CAFE;
const H_BOT: u64 = 0xB07B_07B0_7B07_B07B;

impl LTerm {
    /// BLC bit-size; ⊥ counts 1, as in BB.lhs. O(1).
    pub fn bit_size(&self) -> u64 {
        match self {
            Var(n) => *n as u64 + 1,
            Lam(x) => x.m.bits,
            App(x) => x.m.bits,
            Bot => 1,
        }
    }

    fn hash64(&self) -> u64 {
        match self {
            Var(n) => mix(H_VAR ^ *n as u64),
            Lam(x) => x.m.hash,
            App(x) => x.m.hash,
            Bot => H_BOT,
        }
    }

    /// Largest free de Bruijn index (0 = closed). O(1).
    fn mf(&self) -> u32 {
        match self {
            Var(n) => *n,
            Lam(x) => x.m.mf,
            App(x) => x.m.mf,
            Bot => 0,
        }
    }

    /// (lams, apps) — logical constructor counts. O(1).
    fn counts(&self) -> (u64, u64) {
        match self {
            Var(_) | Bot => (0, 0),
            Lam(x) => (x.m.lams, x.m.apps),
            App(x) => (x.m.lams, x.m.apps),
        }
    }

    /// Lam+App node count: exactly the work the unshared walk charges to
    /// rebuild this subtree. O(1).
    fn nodes_la(&self) -> u64 {
        let (l, a) = self.counts();
        l.saturating_add(a)
    }

    fn has_bot(&self) -> bool {
        match self {
            Var(_) => false,
            Lam(x) => x.m.bot,
            App(x) => x.m.bot,
            Bot => true,
        }
    }

    pub fn from_term(t: &crate::blc::term::Term) -> LTerm {
        use crate::blc::Term;
        match t {
            Term::Var(n) => Var(*n),
            Term::Lam(b) => lam(LTerm::from_term(b)),
            Term::App(f, a) => app(LTerm::from_term(f), LTerm::from_term(a)),
        }
    }

    /// Import the subterm at `id` from a KN [`Pool`](crate::classical::machine::Pool).
    /// The one converter for every ladder driver: census, solomonoff, and
    /// the slot search each carried a private copy of this walk.
    pub fn from_pool(pool: &crate::classical::machine::Pool, id: u32) -> LTerm {
        use crate::classical::machine::Node;
        match pool.node(id) {
            Node::Var(n) => Var(n),
            Node::Lam(b) => lam(LTerm::from_pool(pool, b)),
            Node::App(f, a) => app(LTerm::from_pool(pool, f), LTerm::from_pool(pool, a)),
        }
    }
}

/// Stream a closed, ⊥-free `LTerm` as BLC bits into a
/// [`Sink`](crate::classical::machine::Sink) — the inverse of
/// [`LTerm::from_pool`], and the one emitter for every consumer (the
/// redloop probe's re-decode, and solomonoff's packed normal-form key).
///
/// Panics on ⊥: every call site holds either a normal form or a closed
/// probe subject, both ⊥-free by construction.
pub fn emit_bits<S: crate::classical::machine::Sink>(t: &LTerm, sink: &mut S) {
    match t {
        Var(n) => sink.var(*n),
        Lam(x) => {
            sink.zero();
            sink.zero();
            emit_bits(&x.b, sink);
        }
        App(x) => {
            sink.zero();
            sink.one();
            emit_bits(&x.f, sink);
            emit_bits(&x.a, sink);
        }
        Bot => unreachable!("emit_bits on a term containing ⊥"),
    }
}

// Equality: ptr-share and cached hash/bits as fast paths, structural
// descent as ground truth (the caches are negative filters only, so a
// hash collision costs time, never correctness).
impl PartialEq for LTerm {
    fn eq(&self, other: &Self) -> bool {
        match (self, other) {
            (Var(a), Var(b)) => a == b,
            (Bot, Bot) => true,
            (Lam(x), Lam(y)) => {
                Rc::ptr_eq(x, y) || (x.m.hash == y.m.hash && x.m.bits == y.m.bits && x.b == y.b)
            }
            (App(x), App(y)) => {
                Rc::ptr_eq(x, y)
                    || (x.m.hash == y.m.hash && x.m.bits == y.m.bits && x.f == y.f && x.a == y.a)
            }
            _ => false,
        }
    }
}
impl Eq for LTerm {}

impl std::hash::Hash for LTerm {
    fn hash<H: std::hash::Hasher>(&self, state: &mut H) {
        state.write_u64(self.hash64());
    }
}

// The work meter lives in `oracle` and is shared: every node this engine
// allocates AND every oracle predicate step decrements it. It bounds TOTAL
// engine work — simplify cascades, substitution into huge bodies, oracle
// recursion on huge redexes — none of which the redex-size capacity sees.
// Armed by `normal_form`; i64::MAX (disarmed) outside it.
use crate::classical::oracle::{spend_work, spend_work_n, work_exhausted, WORK};

/// Bill the meter for a skipped traversal (see METER PARITY INVARIANT).
fn charge(n: u64) {
    spend_work_n(i64::try_from(n).unwrap_or(i64::MAX));
}

pub fn lam(t: LTerm) -> LTerm {
    spend_work();
    let (l, a) = t.counts();
    let m = Meta {
        bits: 2u64.saturating_add(t.bit_size()),
        hash: mix(t.hash64() ^ H_LAM),
        mf: t.mf().saturating_sub(1),
        lams: l.saturating_add(1),
        apps: a,
        bot: t.has_bot(),
    };
    Lam(Rc::new(LamN { b: t, m }))
}

pub fn app(f: LTerm, a: LTerm) -> LTerm {
    spend_work();
    let (fl, fa) = f.counts();
    let (al, aa) = a.counts();
    let m = Meta {
        bits: 2u64
            .saturating_add(f.bit_size())
            .saturating_add(a.bit_size()),
        hash: mix(f.hash64().wrapping_mul(0x9E37_79B9_7F4A_7C15) ^ a.hash64() ^ H_APP),
        mf: f.mf().max(a.mf()),
        lams: fl.saturating_add(al),
        apps: fa.saturating_add(aa).saturating_add(1),
        bot: f.has_bot() || a.has_bot(),
    };
    App(Rc::new(AppN { f, a, m }))
}

fn shift(t: &LTerm, d: i64, cutoff: u32) -> LTerm {
    if t.mf() < cutoff {
        // No variable at or above the cutoff: the unshared walk rebuilds the
        // term unchanged, one charge per Lam/App. Same charge, no walk.
        charge(t.nodes_la());
        return t.clone();
    }
    match t {
        Var(n) => Var((*n as i64 + d) as u32), // n ≥ cutoff here
        Lam(x) => lam(shift(&x.b, d, cutoff + 1)),
        App(x) => app(shift(&x.f, d, cutoff), shift(&x.a, d, cutoff)),
        Bot => Bot,
    }
}

fn subst(t: &LTerm, j: u32, s: &LTerm) -> LTerm {
    if t.mf() < j {
        // Var j cannot occur. Old walk: rebuilt t (nodes charge) and
        // shifted s once per Lam passed (nodes(s) each, shift-invariant).
        charge(
            t.nodes_la()
                .saturating_add(t.counts().0.saturating_mul(s.nodes_la())),
        );
        return t.clone();
    }
    match t {
        Var(n) => {
            if *n == j {
                s.clone()
            } else {
                Var(*n)
            }
        }
        Lam(x) => lam(subst(&x.b, j + 1, &shift(s, 1, 1))),
        App(x) => app(subst(&x.f, j, s), subst(&x.a, j, s)),
        Bot => Bot,
    }
}

fn beta(body: &LTerm, arg: &LTerm) -> LTerm {
    shift(&subst(body, 1, &shift(arg, 1, 1)), -1, 1)
}

fn noccur(i: u32, t: &LTerm) -> u32 {
    if t.mf() < i {
        return 0; // allocation-free under the unshared walk too: no charge
    }
    match t {
        Var(n) => (*n == i) as u32,
        Lam(x) => noccur(i + 1, &x.b),
        App(x) => noccur(i, &x.f) + noccur(i, &x.a),
        Bot => 0,
    }
}

/// BB.lhs `simplify`: semantics-preserving argument canonicalization.
/// Private: it charges the shared work meter, so it is only meaningful
/// inside an armed `normal_form*` run.
fn simplify(t: &LTerm) -> LTerm {
    if t.counts().1 == 0 {
        // App-free ⇒ simplify is the identity; the unshared walk charges one per Lam.
        charge(t.counts().0);
        return t.clone();
    }
    match t {
        Lam(x) => lam(simplify(&x.b)),
        App(x) => {
            let a = simplify(&x.f);
            if let Lam(an) = &a {
                // Variable argument: contract, no duplication possible.
                if matches!(&x.a, Var(_)) {
                    return simplify(&beta(&an.b, &x.a));
                }
                // Specialize the body against the argument, then contract
                // if the bound variable is used at most once.
                let body2 = simp_a(&an.b, &x.a);
                if noccur(1, &body2) <= 1 {
                    return simplify(&beta(&body2, &x.a));
                }
            }
            app(a, simplify(&x.a))
        }
        _ => t.clone(),
    }
}

/// Refine `body` knowing its argument: erasing-λ arguments ⊥ their own
/// arguments; identity arguments collapse their applications.
fn simp_a(body: &LTerm, arg: &LTerm) -> LTerm {
    if let Lam(x) = arg {
        if noccur(1, &x.b) == 0 {
            return simp_e(1, body);
        }
        if x.b == Var(1) {
            return simp_i(1, body);
        }
    }
    body.clone()
}

/// Var i will be bound to an erasing function: its arguments are dead.
fn simp_e(i: u32, t: &LTerm) -> LTerm {
    if t.mf() < i {
        // Var i absent: the unshared walk rebuilds everything unchanged.
        charge(t.nodes_la());
        return t.clone();
    }
    match t {
        App(x) => {
            if x.f == Var(i) {
                app(Var(i), Bot)
            } else {
                app(simp_e(i, &x.f), simp_e(i, &x.a))
            }
        }
        Lam(x) => lam(simp_e(i + 1, &x.b)),
        _ => t.clone(),
    }
}

/// Var i will be bound to the identity: its applications collapse.
fn simp_i(i: u32, t: &LTerm) -> LTerm {
    if t.mf() < i {
        charge(t.nodes_la());
        return t.clone();
    }
    match t {
        App(x) => {
            if x.f == Var(i) {
                simp_i(i, &x.a)
            } else {
                app(simp_i(i, &x.f), simp_i(i, &x.a))
            }
        }
        Lam(x) => lam(simp_i(i + 1, &x.b)),
        _ => t.clone(),
    }
}

/// Replace variables free at depth `d` by ⊥ (BB.lhs `botFree`).
fn bot_free(d: u32, t: &LTerm) -> LTerm {
    if t.mf() <= d {
        // No variable free above depth d: the unshared walk rebuilds unchanged.
        charge(t.nodes_la());
        return t.clone();
    }
    match t {
        Var(n) => {
            if *n > d {
                Bot
            } else {
                Var(*n)
            }
        }
        Lam(x) => lam(bot_free(d + 1, &x.b)),
        App(x) => app(bot_free(d, &x.f), bot_free(d, &x.a)),
        Bot => Bot,
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum NoNf {
    /// Proven: oracle hit or redex reoccurrence.
    Diverge,
    /// Resource exhausted before a verdict — the reason says which.
    Unknown(Why),
}

// Set when the Diverge proof landed while reduction was still the root
// term's own head-reduction chain (`spine` below) via redex-history
// reoccurrence or redloop — both certify that head reduction itself
// never terminates, i.e. the root has NO WEAK HEAD NORMAL FORM. That
// fact (unlike plain no-nf) transfers through application: M no-whnf ⇒
// app(M, N) no-whnf ⇒ no nf, for every N. Oracle fires never set it:
// `no_nf` proves the current spine state has no nf, which leaves a
// whnf possible. It is set deep inside the recursion, so it stays a
// thread-local rather than a return value; the entry points read it
// before their RAII guard restores the ambient value and hand it back
// as the second component. Meaningful only when the call returned
// Diverge and the input term was App-rooted (λ-rooted terms trivially
// have whnf, and the entry points peel them, so it stays false there).
thread_local! {
    static HEAD_DIVERGE: std::cell::Cell<bool> = const { std::cell::Cell::new(false) };
}

/// Restore a `Cell` thread-local on scope exit — including on an early
/// `?` return or a panic. The engine's ambient state (work meter,
/// no-whnf marker) used to be reset by hand at the single success path,
/// so a panicking term left a poisoned meter behind for every later
/// term on that rayon worker.
struct Restore<T: Copy + 'static> {
    key: &'static std::thread::LocalKey<std::cell::Cell<T>>,
    old: T,
}

impl<T: Copy + 'static> Restore<T> {
    fn set(key: &'static std::thread::LocalKey<std::cell::Cell<T>>, new: T) -> Restore<T> {
        let old = key.with(|c| c.replace(new));
        Restore { key, old }
    }
}

impl<T: Copy + 'static> Drop for Restore<T> {
    fn drop(&mut self) {
        self.key.with(|c| c.set(self.old));
    }
}

/// Read and clear the no-whnf marker left by the last legacy
/// [`normal_form`] call on this thread. Prefer the second component of
/// [`normal_form_with`], which carries the same fact without the
/// ambient hop.
pub fn take_head_diverge() -> bool {
    HEAD_DIVERGE.with(|c| c.replace(false))
}

/// Per-run engine settings, fixed for the duration of one `normal_form*`
/// call and threaded explicitly through the recursion — no environment
/// reads, no ambient state. Defaults are the census-measured values.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct EngineCfg {
    /// Work-meter units armed per capacity bit. 16 is generous for
    /// honest reductions and a hard wall for substitution/simplify
    /// blowups; `2` bounds live memory to ~4 GB/worker for big
    /// adjudications and has never lost a verdict. Diagnostic value:
    /// it separates meter-starved Unknowns from capacity-out Unknowns
    /// (Tromp's lazy graph reduction shares subst work our eager engine
    /// pays in full, so his capacity stretches further at equal cap).
    pub work_mult: i64,
    /// β budget for the redloop certificate's KN probes. Verified
    /// insensitive through 65,536 on the whole frontier;
    /// `REDLOOP_FUEL_REJECTS` says whether a given setting lost a proof.
    pub probe_fuel: u64,
}

impl Default for EngineCfg {
    fn default() -> EngineCfg {
        EngineCfg {
            work_mult: 16,
            probe_fuel: 4096,
        }
    }
}

/// The escalation capacity the census ladder is measured at. Tromp runs
/// 42M because his BB reducer is his only engine; ours only needs to
/// catch loops (small redexes) before handing big-growth halters to the
/// far faster KN rescue, and a tight cap keeps the naive-substitution
/// engine away from exploding terms.
pub const DEFAULT_CAP: i64 = 2_000_000;

/// What one `normal_form*` call carries down the recursion besides the
/// term itself: the tunables, plus whether the syntactic oracle runs.
///
/// The oracle preempts the history/redloop checks (it is first in the
/// short-circuit chain), which costs spine attribution: on Ω it fires
/// before the history reoccurrence that would have proven no-whnf.
/// `normal_form_spine*` turns it off so every Diverge is attributable;
/// `true` keeps the canonical engine bit-identical.
#[derive(Clone, Copy)]
struct Run {
    oracle: bool,
    probe_fuel: u64,
}

/// Which resource died. Capacity (redex-history bits) smells like a
/// missed loop; the work meter (subst/simplify blowup) smells like a
/// big-growth halter that the KN rescue can still win.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Why {
    Capacity,
    WorkMeter,
}

/// Self-feedback divergence certificate — the semantic generalization of
/// BBold.lhs's `redloop`. For a self-application `A A` with
/// `A = λx.x Q(x) R̄(x)` CLOSED and ⊥-free (the displayed application
/// being B's left spine):
///
///   nf(A) = nf(Q(A))  ⇒  A A has no head normal form.
///
/// Equal normal forms witness Q(A) =β A. With T₀ = A, Tₙ₊₁ = Q(Tₙ),
/// congruence gives every Tₙ =β A; B's head is the RIGID bound variable,
/// so nf(A) necessarily has shape λx.x⋯ and every Tₙ shares that hnf
/// (Böhm invariance). Each configuration `Tₙ Tₙ₊₁ Γ` head-normalizes its
/// head to λx.x⋯ and re-demands Tₙ₊₁ at the head — unboundedly many head
/// contractions, never a rigid head or unapplied λ: no hnf, no nf.
/// Pending Γ arguments cannot interfere (normal order resolves the
/// function spine first, and the recurrence is uniform in Γ).
///
/// The exact-equality rule (nf(Q(A)) == A, requiring A normal) is the
/// special case that proves 4 of the 5 traced 32-bit loops; the
/// β-equivalence form additionally proves the 35-bit and 36-bit
/// residual unknowns (which reach `A A` and `(A A) A` respectively).
/// The fifth 32-bit loop (outer function not λx.x x, never reaching a
/// self-application of this shape) remains — hand-excluded in Tromp's
/// tree too; nobody proves it mechanically.
///
/// Probes run on the pure KN machine with a fixed small budget — never
/// re-entering this engine or the oracle — and any failure (no match,
/// ⊥, open term, fuel out, nf mismatch) claims nothing.
///
/// Completeness telemetry: FIRES counts proofs,
/// FUEL_REJECTS counts shape-matches abandoned solely because a probe
/// ran out of fuel — a zero there over a full census certifies the
/// cutoff lost nothing at that range.
pub static REDLOOP_FIRES: std::sync::atomic::AtomicU64 = std::sync::atomic::AtomicU64::new(0);
pub static REDLOOP_FUEL_REJECTS: std::sync::atomic::AtomicU64 =
    std::sync::atomic::AtomicU64::new(0);

impl crate::classical::machine::Pool {
    /// Build `t` into the arena directly, returning the root index.
    ///
    /// Lives here rather than beside `Pool::from_term` because `LamN` and
    /// `AppN` keep their fields private to this module — the cached
    /// `Meta` is only trustworthy if nothing outside can take a term
    /// apart and put it back together.
    ///
    /// Exactly the term `decode_str(emit_bits(t))` produced, without the
    /// bit-`String` in between: `emit_bits` writes `00`/`01`/`1ⁿ0` for
    /// Lam/App/Var and `decode` reads those back as Lam/App/Var, so the
    /// round trip was the identity on structure. `Bot` is `unreachable!`
    /// in both, and for the same reason — the probe callers check
    /// `has_bot` first.
    // Named for symmetry with `Pool::from_term`, which is the same
    // method for `blc::Term` and has the same `&mut self` shape; it
    // escapes `wrong_self_convention` only because it is exported and
    // clippy defaults to `avoid-breaking-exported-api`. Both append into
    // an existing arena rather than constructing a `Pool`.
    #[allow(clippy::wrong_self_convention)]
    fn from_lterm(&mut self, t: &LTerm) -> u32 {
        use crate::classical::machine::Node;
        match t {
            Var(n) => self.push(Node::Var(*n)),
            Lam(x) => {
                let b = self.from_lterm(&x.b);
                self.push(Node::Lam(b))
            }
            App(x) => {
                let f = self.from_lterm(&x.f);
                let a = self.from_lterm(&x.a);
                self.push(Node::App(f, a))
            }
            Bot => unreachable!("from_lterm on a term containing ⊥"),
        }
    }
}

// One (Pool, Machine) per rayon worker, reused across every probe that
// worker runs. `probe_nf` used to build both from scratch per call —
// two fresh arenas plus a bit-`String`, for a run bounded at a few
// thousand β. Reuse is state-free: `Pool::clear` resets the arena and
// `Machine::normalize_capped` clears its own semantic state on entry,
// so a reused pair gives bit-identical verdicts, β counts and
// transition counts. Not re-entrant, and does not need to be — probes
// run on the pure KN machine, which never calls back into this engine.
// What the pair retains between probes is bounded by the machine's own
// arena-release rule (`normalize_capped`'s KEEP), so a worker holds a
// working buffer, not a probe's peak.
thread_local! {
    static PROBE: std::cell::RefCell<(
        crate::classical::machine::Pool,
        crate::classical::machine::Machine,
    )> = std::cell::RefCell::new((
        crate::classical::machine::Pool::new(),
        crate::classical::machine::Machine::new(),
    ));
}

/// Bounded pure normalization of a closed ⊥-free LTerm on the KN
/// machine; `None` on fuel-out (recorded in REDLOOP_FUEL_REJECTS).
/// `fuel` is [`EngineCfg::probe_fuel`]; the telemetry says whether the
/// census result is fuel-sensitive at a given setting.
///
/// Returns the normal form's full bit string, and that is deliberate:
/// `redloop` fires on `nf(A) == nf(Q(A))`, and the certificate's
/// soundness is exactly the claim that those two normal forms are the
/// same term. A hash or digest here would turn a collision into a false
/// divergence proof — an unsound census row, not a slow one. The
/// comparison stays exact string equality.
fn probe_nf(fuel: u64, t: &LTerm) -> Option<String> {
    PROBE.with(|cell| {
        let (pool, vm) = &mut *cell.borrow_mut();
        pool.clear();
        let root = pool.from_lterm(t);
        let mut sink = crate::classical::machine::StringSink::default();
        if vm.normalize(pool, root, fuel, &mut sink).is_err() {
            REDLOOP_FUEL_REJECTS.fetch_add(1, std::sync::atomic::Ordering::Relaxed);
            return None;
        }
        Some(sink.0)
    })
}

fn redloop(run: &Run, t: &LTerm) -> bool {
    spend_work();
    // Self-application A A, syntactically. (A redex D A with D = λx.x x
    // contracts to A A one step later, so this shape subsumes the D A
    // trigger of BBold's original rule.)
    let App(tn) = t else { return false };
    if tn.f != tn.a {
        return false;
    }
    let a: &LTerm = &tn.f;
    let Lam(an) = a else { return false };
    if a.mf() != 0 || a.has_bot() {
        return false;
    }
    // Left spine of B: find the demanded application `x q`.
    let mut s: &LTerm = &an.b;
    let q = loop {
        match s {
            App(sn) => {
                if matches!(&sn.f, Var(1)) {
                    break &sn.a;
                }
                s = &sn.f;
            }
            _ => return false,
        }
    };
    // probe = q[A/x]; closed since free(q) ⊆ {x} and A is closed.
    let probe = beta(q, a);
    if probe.mf() != 0 {
        return false;
    }
    // Fire iff nf(A) and nf(Q(A)) both exist and coincide — equal normal
    // forms witness Q(A) =β A, which is all the recurrence needs.
    let (Some(na), Some(nq)) = (
        probe_nf(run.probe_fuel, a),
        probe_nf(run.probe_fuel, &probe),
    ) else {
        return false;
    };
    if na == nq {
        REDLOOP_FIRES.fetch_add(1, std::sync::atomic::Ordering::Relaxed);
        true
    } else {
        false
    }
}

// Persistent set with O(1) clone — the same structural sharing BB.lhs gets
// from Data.Set; a std HashSet clone at every history fork is quadratic on
// long escalation runs. Keys hash O(1) via the cached structural hash.
type Hist = im_rc::HashSet<LTerm>;

/// `spine`: this call is still the root term's own head-reduction
/// demand — carried through head descents and β-contracta, dropped on
/// argument descents and under lambdas (both mean the root reached a
/// whnf first). Only controls the HEAD_DIVERGE marker; verdicts, the
/// evaluation order of the divergence checks, and every meter charge
/// are bit-identical to the unparameterized engine.
fn bb_nf(
    run: &Run,
    weak: bool,
    f: u32,
    seen: &Hist,
    cap: &mut i64,
    t: &LTerm,
    spine: bool,
) -> Result<LTerm, NoNf> {
    match t {
        App(tn) => {
            if work_exhausted() {
                return Err(NoNf::Unknown(Why::WorkMeter));
            }
            let empty;
            let sub_seen = if weak {
                seen
            } else {
                empty = Hist::new();
                &empty
            };
            let a = bb_nf(run, true, f, sub_seen, cap, &tn.f, spine)?;
            let b = simplify(&tn.a);
            let ab = app(a.clone(), b.clone());
            let r = bot_free(0, &ab);
            let App(rn) = &r else { unreachable!() };
            *cap -= r.bit_size() as i64;
            if *cap < 0 {
                return Err(NoNf::Unknown(Why::Capacity));
            }
            // Split only to attribute the fire: the oracle proves no-nf
            // of the current state (whnf still possible), while a
            // history reoccurrence or redloop proves the head chain
            // itself cycles or self-feeds — no whnf. Short-circuit
            // order among the three checks is exactly the original.
            if run.oracle && no_nf(f, &ab) {
                return Err(NoNf::Diverge);
            }
            if seen.contains(&rn.f) || redloop(run, &ab) {
                if spine {
                    HEAD_DIVERGE.with(|c| c.set(true));
                }
                return Err(NoNf::Diverge);
            }
            match &a {
                Lam(an) => {
                    if seen.contains(&r) {
                        if spine {
                            HEAD_DIVERGE.with(|c| c.set(true));
                        }
                        return Err(NoNf::Diverge);
                    }
                    let mut seen2 = seen.clone();
                    seen2.insert(r);
                    bb_nf(run, weak, f, &seen2, cap, &beta(&an.b, &b), spine)
                }
                _ if weak => Ok(ab),
                _ => {
                    let mut seen2 = seen.clone();
                    seen2.insert(r);
                    let a2 = bb_nf(run, false, f, &seen2, cap, &a, false)?;
                    let b2 = bb_nf(run, false, f, &seen2, cap, &b, false)?;
                    Ok(app(a2, b2))
                }
            }
        }
        Lam(x) if !weak => Ok(lam(bb_nf(run, weak, f + 1, seen, cap, &x.b, false)?)),
        _ => Ok(t.clone()),
    }
}

/// BB.lhs `normalForm`: peel leading lambdas (they are never applied, so
/// the free threshold stays 0), then reduce with oracle + history.
///
/// The second component is the no-whnf marker (see `HEAD_DIVERGE`): true
/// iff the Diverge proof landed on the root's own head-reduction chain.
fn run_nf(run: &Run, cfg: EngineCfg, cap_bits: i64, t: &LTerm) -> (Result<LTerm, NoNf>, bool) {
    let mut cap = cap_bits;
    // `root` survives only while no λ has been peeled: a λ-rooted term
    // has a whnf by construction, so spine facts under the binder are
    // about the body, not the term.
    fn nf0(run: &Run, cap: &mut i64, t: &LTerm, root: bool) -> Result<LTerm, NoNf> {
        match t {
            Lam(x) => Ok(lam(nf0(run, cap, &x.b, false)?)),
            _ => bb_nf(run, false, 0, &Hist::new(), cap, t, root),
        }
    }
    // Both guards restore on the way out, panic included; the marker is
    // read while this one is still live, so the fact leaves as a value.
    let _head = Restore::set(&HEAD_DIVERGE, false);
    let _work = Restore::set(&WORK, cap_bits.saturating_mul(cfg.work_mult));
    let out = nf0(run, &mut cap, t, true);
    let spine = HEAD_DIVERGE.with(|c| c.get());
    (out, spine)
}

/// The escalation engine at an explicit configuration — the entry point
/// for every ladder driver. No environment reads, no ambient state: what
/// the run does is exactly `cfg` plus `cap_bits`.
pub fn normal_form_with(cfg: EngineCfg, cap_bits: i64, t: &LTerm) -> (Result<LTerm, NoNf>, bool) {
    let run = Run {
        oracle: true,
        probe_fuel: cfg.probe_fuel,
    };
    run_nf(&run, cfg, cap_bits, t)
}

/// [`normal_form_with`] with the syntactic oracle disabled, plus the
/// no-whnf attribution: every Diverge comes from redex-history
/// reoccurrence or redloop, so a `true` second component certifies the
/// (App-rooted) input has no weak head normal form. This is the
/// adjudicator for generic-argument questions — "does `p x⃗` head-cycle
/// for rigid x⃗?" — where the oracle's cheaper no-nf verdict would
/// destroy the attribution (it fires first on exactly the Ω-shapes the
/// history proves on-spine). Slower per term than `normal_form_with`;
/// use for targeted adjudication, never enumeration throughput.
pub fn normal_form_spine_with(
    cfg: EngineCfg,
    cap_bits: i64,
    t: &LTerm,
) -> (Result<LTerm, NoNf>, bool) {
    let run = Run {
        oracle: false,
        probe_fuel: cfg.probe_fuel,
    };
    run_nf(&run, cfg, cap_bits, t)
}

#[cfg(test)]
mod tests {
    use super::*;

    /// The engine at its measured defaults — what every test means by
    /// "the escalation engine" unless it is exercising a knob.
    fn normal_form(cap_bits: i64, t: &LTerm) -> Result<LTerm, NoNf> {
        normal_form_with(EngineCfg::default(), cap_bits, t).0
    }

    fn v(n: u32) -> LTerm {
        Var(n)
    }

    fn from_bits(s: &str) -> LTerm {
        LTerm::from_term(&crate::parse_all(s).unwrap())
    }

    #[test]
    fn meta_matches_walked_facts() {
        // Cached bits/mf/hash-eq agree with ground truth on every closed
        // term ≤ 20 bits — and a REBUILT copy (fresh Rcs, structural-only
        // path) is found in a hash set keyed by the original.
        use std::collections::HashSet;
        for n in [8u32, 14, 20] {
            let mut set = HashSet::new();
            crate::blc::enumerate::for_each_closed(n, &mut |enc, len| {
                let bits = crate::blc::wire::enc_to_string(enc, len);
                let t = from_bits(&bits);
                assert_eq!(t.bit_size(), n as u64, "{bits}");
                assert_eq!(t.mf(), 0, "{bits}");
                assert!(!t.has_bot(), "{bits}");
                set.insert(t);
            });
            crate::blc::enumerate::for_each_closed(n, &mut |enc, len| {
                let bits = crate::blc::wire::enc_to_string(enc, len);
                assert!(set.contains(&from_bits(&bits)), "{bits}");
            });
        }
    }

    #[test]
    fn pool_import_and_bit_emission_are_inverses() {
        // from_pool ∘ emit_bits is the identity on every closed term ≤ 20
        // bits — the two halves of the ladder's LTerm boundary, checked
        // against each other rather than against a third rendering.
        use crate::classical::machine::{Pool, StringSink};
        for n in [4u32, 10, 16, 20] {
            crate::blc::enumerate::for_each_closed(n, &mut |enc, len| {
                let bits = crate::blc::wire::enc_to_string(enc, len);
                let mut pool = Pool::new();
                let root = pool.decode_str(&bits).expect("closed term");
                let t = LTerm::from_pool(&pool, root);
                let mut out = StringSink::default();
                emit_bits(&t, &mut out);
                assert_eq!(out.0, bits);
                assert_eq!(t.bit_size(), len as u64, "{bits}");
            });
        }
    }

    #[test]
    fn from_lterm_equals_the_bit_string_round_trip_it_replaced() {
        // `probe_nf` used to reach the KN machine as
        // decode_str(emit_bits(t)); it now builds the arena directly.
        // Those must be the same arena, node for node, or redloop is
        // deciding on a different term than it used to. Checked on every
        // closed term at four sizes, and on the λ-wrapped and
        // self-applied shapes redloop actually probes.
        use crate::classical::machine::{Pool, StringSink};
        let same = |t: &LTerm| {
            let mut viastr = Pool::new();
            let mut bits = StringSink::default();
            emit_bits(t, &mut bits);
            let r1 = viastr.decode_str(&bits.0).expect("closed term");
            let mut direct = Pool::new();
            let r2 = direct.from_lterm(t);
            assert_eq!(r1, r2, "root index");
            assert_eq!(direct.len(), viastr.len(), "node count");
            for i in 0..direct.len() as u32 {
                assert_eq!(direct.node(i), viastr.node(i), "node {i} of {}", bits.0);
            }
        };
        for n in [4u32, 10, 16, 20] {
            crate::blc::enumerate::for_each_closed(n, &mut |enc, len| {
                let bits = crate::blc::wire::enc_to_string(enc, len);
                let mut pool = Pool::new();
                let root = pool.decode_str(&bits).expect("closed term");
                let t = LTerm::from_pool(&pool, root);
                same(&t);
                // The self-application A A is the exact shape redloop
                // hands to `probe_nf`.
                same(&app(t.clone(), t.clone()));
                same(&lam(t));
            });
        }
    }

    #[test]
    fn default_config_verdicts_are_pinned() {
        // The five reference behaviors the engine must keep at the
        // measured default settings, stated as data.
        enum Want {
            Halt,
            Div,
            Unknown,
        }
        // The spine flags are part of the pin: an oracle fire (Ω, the
        // growing wrapper) proves no-nf but not no-whnf, so it must NOT
        // set the spine marker the census head memo feeds on; a redloop
        // fire on the root's own head chain does.
        let cases = [
            ("010001101000011010", Want::Div, false), // Ω (oracle fire)
            ("01000110100010", Want::Halt, false),    // (λx.x x) I
            ("010001101000011001001010", Want::Div, false), // growing wrapper (oracle)
            ("01000110001100001011010000110110", Want::Unknown, false), // loop32
            ("01000110100001100110000110001110", Want::Div, true), // redloop kill
        ];
        for (bits, want, want_spine) in cases {
            let t = from_bits(bits);
            let (got, spine) = normal_form_with(EngineCfg::default(), 2_000_000, &t);
            match want {
                Want::Halt => assert!(got.is_ok(), "{bits}"),
                Want::Div => assert_eq!(got, Err(NoNf::Diverge), "{bits}"),
                Want::Unknown => assert!(matches!(got, Err(NoNf::Unknown(_))), "{bits}"),
            }
            assert_eq!(spine, want_spine, "{bits}");
        }
    }

    #[test]
    fn the_work_meter_is_disarmed_again_after_a_panicking_run() {
        // The RAII guard, not the success path, is what puts the ambient
        // meter back: a worker that panics inside the engine must not
        // poison every later term on its thread.
        let t = app(lam(app(Var(1), Var(1))), lam(app(Var(1), Var(1))));
        let _ = std::panic::catch_unwind(|| {
            let _ = normal_form_with(EngineCfg::default(), 1_000, &t);
            panic!("simulated worker panic while the meter is armed");
        });
        assert!(
            !crate::classical::oracle::work_exhausted(),
            "meter left armed after an unwind"
        );
        // And a subsequent honest reduction still gets its full budget.
        let c2 = lam(lam(app(Var(2), app(Var(2), Var(1)))));
        let tower = app(app(c2.clone(), c2.clone()), c2);
        assert!(normal_form_with(EngineCfg::default(), 10_000_000, &tower)
            .0
            .is_ok());
    }

    #[test]
    fn redloop_proves_the_four_32bit_loops() {
        // The four D A loops BBold.lhs's redloop proves and current BB.lhs
        // cannot; hand loop analyses live in ref/AIT/BB/BB.txt.
        for bits in [
            "01000110100001100110000110001110", // (\1 1)(\1 (1 (\1 (\3))))
            "01000110100001011001100011000110", // (\1 1)(\1 (1 (\2)) (\2))
            "01000110100001011001100000111010", // (\1 1)(\1 (1 (\\3)) 1)
            "01000110100001011001011000101010", // (\1 1)(\1 (1 (\1) 1) 1)
        ] {
            assert_eq!(
                normal_form(2_000_000, &from_bits(bits)),
                Err(NoNf::Diverge),
                "{bits}"
            );
        }
    }

    #[test]
    fn self_feedback_proves_the_residual_pair() {
        // The 35b/36b terms that resisted everything else tonight: A A
        // and (A A) A for A = λx.x (T (K x)) — provable only via the
        // β-equivalence form (A itself is not syntactically normal; its
        // dormant T(Kx) reduces to x(Kx)).
        for bits in [
            "01000110100001100100010110101000110", // (\1 1)(\1 ((\1 1 1)(\2)))
            "010001100001100111000110000101101010", // (\1 (\1 (2 (\2))))(\1 1 1)
        ] {
            assert_eq!(
                normal_form(2_000_000, &from_bits(bits)),
                Err(NoNf::Diverge),
                "{bits}"
            );
        }
    }

    #[test]
    fn fifth_loop_stays_unknown() {
        // (\1 (\2))(\1 1 (\1 2)) — hand-excluded (`loop32`) even in
        // Tromp's tree; its outer function is not λx.x x, so redloop's
        // guard correctly refuses. Documents parity: nobody proves this
        // mechanically.
        let t = from_bits("01000110001100001011010000110110");
        assert!(matches!(normal_form(2_000_000, &t), Err(NoNf::Unknown(_))));
    }

    #[test]
    fn redloop_no_false_positive_on_halting_shape() {
        // D (λx. x I): spine matches x q with q = I, but the probe
        // nf(I[A/x]) = I ≠ A, so redloop stays silent — and the term
        // truly halts: D A → A A → A I → I I → I.
        let a = lam(app(v(1), lam(v(1))));
        let d = lam(app(v(1), v(1)));
        let t = app(d, a);
        assert_eq!(normal_form(2_000_000, &t), Ok(lam(v(1))));
    }

    #[test]
    fn halts_on_normalizers() {
        // (\x. x x)(\y. y) -> \y. y
        let t = app(lam(app(v(1), v(1))), lam(v(1)));
        assert_eq!(normal_form(100_000, &t), Ok(lam(v(1))));
    }

    #[test]
    fn omega_diverges() {
        let w = lam(app(v(1), v(1)));
        let t = app(w.clone(), w);
        assert_eq!(normal_form(100_000, &t), Err(NoNf::Diverge));
    }

    #[test]
    fn y_combinator_diverges() {
        // Y = \f.(\x. f (x x))(\x. f (x x)); Y alone has no nf.
        let inner = lam(app(v(2), app(v(1), v(1))));
        let y = lam(app(inner.clone(), inner));
        assert_eq!(normal_form(1_000_000, &y), Err(NoNf::Diverge));
    }

    #[test]
    fn history_reset_example() {
        // BB.lhs:89-102 — (\x. x x) (\x\y. y (x x (\_. y))) HALTS at
        // \y. y y: the W W redex recorded in strong mode reoccurs inside a
        // weak-mode spine argument where an erasing lambda discards it.
        // Without the history reset on the strong→weak switch this is a
        // false Diverge; with it, the true normal form comes out.
        let w = lam(lam(app(v(1), app(app(v(2), v(2)), lam(v(2))))));
        let t = app(lam(app(v(1), v(1))), w);
        assert_eq!(normal_form(10_000_000, &t), Ok(lam(app(v(1), v(1)))));
    }

    #[test]
    fn growing_wrapper_diverger_caught() {
        // (λx. x x)(λx. x (I x)) — census n=24's former Unknown: redexes
        // grow an I-wrapper per cycle, defeating raw history matching.
        // simplify collapses I W' → W', making the loop key recur.
        let wp = lam(app(v(1), app(lam(v(1)), v(1))));
        let t = app(lam(app(v(1), v(1))), wp);
        assert_eq!(normal_form(1_000_000, &t), Err(NoNf::Diverge));
    }

    #[test]
    fn church_tower_halts() {
        // C2 C2 C2 = C16: deep but convergent.
        let c2 = lam(lam(app(v(2), app(v(2), v(1)))));
        let t = app(app(c2.clone(), c2.clone()), c2);
        let nf = normal_form(10_000_000, &t).unwrap();
        assert_eq!(nf.bit_size(), 6 + 5 * 16);
    }
}
