//! Ratchet divergence certificates for growing-context loops.
//!
//! Contract and soundness proof: `docs/classical/certificates/specification.md`.
//! A certificate is a
//! triple `(A, W, C0)`; four checks (OPEN / DESC / BASE / INIT) reduce
//! "T has no normal form" to bounded symbolic head reductions. `verify`
//! is the trusted core; `discover` is untrusted search — a bad candidate
//! can only fail to certify, never produce a wrong certificate.
//!
//! Everything here runs on plain trees. This is an adjudication-time
//! prover, not an enumeration-throughput path.

use crate::term::Term;
use std::collections::HashMap;
use std::fmt;
use std::rc::Rc;

/// Pattern term: `Term` plus opaque *named* metavariables `Meta(id)`,
/// each standing for an arbitrary *closed* term. Closedness is what
/// makes `shift`/`subst` no-ops on `Meta` sound (`docs/classical/certificates/specification.md` §3, symbolic
/// step rules). Occurrences with the same id denote the same closed
/// term; different ids are independent (the specification's §5 SPREAD needs two).
/// v1 code uses only `Meta(0)` (displayed `Z`); the HeadTowerRatchet
/// checker also uses `Meta(1)` (displayed `Q`).
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum PTerm {
    Var(u32),
    Lam(Rc<PTerm>),
    App(Rc<PTerm>, Rc<PTerm>),
    Meta(u32),
}

pub fn pvar(n: u32) -> PTerm {
    PTerm::Var(n)
}

pub fn plam(b: PTerm) -> PTerm {
    PTerm::Lam(Rc::new(b))
}

pub fn papp(f: PTerm, a: PTerm) -> PTerm {
    PTerm::App(Rc::new(f), Rc::new(a))
}

impl PTerm {
    pub fn from_term(t: &Term) -> PTerm {
        match t {
            Term::Var(n) => PTerm::Var(*n),
            Term::Lam(b) => plam(PTerm::from_term(b)),
            Term::App(f, a) => papp(PTerm::from_term(f), PTerm::from_term(a)),
        }
    }

    /// Back to a concrete `Term`; `None` if any `Meta` remains.
    pub fn to_term(&self) -> Option<Term> {
        match self {
            PTerm::Var(n) => Some(Term::Var(*n)),
            PTerm::Lam(b) => Some(Term::Lam(Rc::new(b.to_term()?))),
            PTerm::App(f, a) => Some(Term::App(Rc::new(f.to_term()?), Rc::new(a.to_term()?))),
            PTerm::Meta(_) => None,
        }
    }

    pub fn nodes(&self) -> u64 {
        match self {
            PTerm::Var(_) | PTerm::Meta(_) => 1,
            PTerm::Lam(b) => 1 + b.nodes(),
            PTerm::App(f, a) => 1 + f.nodes() + a.nodes(),
        }
    }

    pub fn contains_meta(&self) -> bool {
        match self {
            PTerm::Meta(_) => true,
            PTerm::Var(_) => false,
            PTerm::Lam(b) => b.contains_meta(),
            PTerm::App(f, a) => f.contains_meta() || a.contains_meta(),
        }
    }

    /// Largest de Bruijn index reaching above `depth` binders; `Meta`
    /// counts as closed. 0 for a pattern-closed term.
    pub fn max_free(&self, depth: u32) -> u32 {
        match self {
            PTerm::Var(n) => n.saturating_sub(depth),
            PTerm::Meta(_) => 0,
            PTerm::Lam(b) => b.max_free(depth + 1),
            PTerm::App(f, a) => f.max_free(depth).max(a.max_free(depth)),
        }
    }
}

impl fmt::Display for PTerm {
    /// De Bruijn notation with `Z` for the metavariable.
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            PTerm::Var(n) => write!(f, "{n}"),
            PTerm::Meta(0) => write!(f, "Z"),
            PTerm::Meta(1) => write!(f, "Q"),
            PTerm::Meta(i) => write!(f, "?{i}"),
            PTerm::Lam(b) => write!(f, "\\{b}"),
            PTerm::App(x, a) => {
                match **x {
                    PTerm::Lam(_) => write!(f, "({x})")?,
                    _ => write!(f, "{x}")?,
                }
                match **a {
                    PTerm::Var(_) | PTerm::Meta(_) => write!(f, " {a}"),
                    _ => write!(f, " ({a})"),
                }
            }
        }
    }
}

/// Replace every `Meta` in `w` by the pattern-closed `z` (capture-free by
/// closedness — no shifting required).
pub fn plug(w: &PTerm, z: &PTerm) -> PTerm {
    match w {
        PTerm::Meta(_) => z.clone(),
        PTerm::Var(n) => PTerm::Var(*n),
        PTerm::Lam(b) => plam(plug(b, z)),
        PTerm::App(f, a) => papp(plug(f, z), plug(a, z)),
    }
}

fn shift(t: &PTerm, d: u32, cutoff: u32) -> PTerm {
    match t {
        PTerm::Var(n) => {
            if *n > cutoff {
                PTerm::Var(n + d)
            } else {
                t.clone()
            }
        }
        PTerm::Meta(i) => PTerm::Meta(*i),
        PTerm::Lam(b) => plam(shift(b, d, cutoff + 1)),
        PTerm::App(f, a) => papp(shift(f, d, cutoff), shift(a, d, cutoff)),
    }
}

/// Substitute `s` for `Var(j)` and decrement free variables above `j`
/// (the one-pass β-substitution; matches the reference reducer in
/// `tools/certificates/loop32_trace.py`).
fn subst_dec(t: &PTerm, j: u32, s: &PTerm) -> PTerm {
    match t {
        PTerm::Var(n) => {
            if *n == j {
                s.clone()
            } else if *n > j {
                PTerm::Var(n - 1)
            } else {
                t.clone()
            }
        }
        PTerm::Meta(i) => PTerm::Meta(*i),
        PTerm::Lam(b) => plam(subst_dec(b, j + 1, &shift(s, 1, 0))),
        PTerm::App(f, a) => papp(subst_dec(f, j, s), subst_dec(a, j, s)),
    }
}

fn contract(body: &PTerm, arg: &PTerm) -> PTerm {
    subst_dec(body, 1, arg)
}

/// Occurrences of `Var(j)` (adjusting under binders) — sizing input for
/// the pre-contraction allocation bound.
fn count_var(t: &PTerm, j: u32) -> u64 {
    match t {
        PTerm::Var(n) => (*n == j) as u64,
        PTerm::Meta(_) => 0,
        PTerm::Lam(b) => count_var(b, j + 1),
        PTerm::App(f, a) => count_var(f, j) + count_var(a, j),
    }
}

/// One symbolic head step. `Did` carries the exact node-count delta of
/// the contraction (result − redex, computable redex-locally), so
/// callers can track term size incrementally instead of re-walking the
/// whole tree every step; the walk was the dominant cost of long
/// discovery traces.
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Step {
    Did(PTerm, i64),
    /// The spine head is `Meta`: the reduction would have to inspect the
    /// opaque closed term. The enclosing check must abort.
    MetaHead,
    /// Head normal form — no head redex exists.
    Nf,
    /// The contraction's result would exceed the node budget. Checked
    /// BEFORE allocating: a single β step can square the term size, so
    /// a between-steps cap alone is a memory bomb (ops ledger, twice).
    TooBig,
}

/// Deterministic head step: contract the unique redex `(λ.M) N` in
/// position `((λ.M) N) t₂ … tₖ`, under leading lambdas. Only *concrete*
/// lambdas are ever contracted; the spine path traversed contains no
/// `Meta`, so the located redex is the head redex under every closed
/// instantiation of `Meta` (certificate specification §3).
///
/// `max_nodes` bounds the *redex-local result* of the contraction
/// (`|body| + occurrences × |arg|`), computed before allocating.
pub fn head_step(t: &PTerm, max_nodes: u64) -> Step {
    match t {
        PTerm::Var(_) => Step::Nf,
        PTerm::Meta(_) => Step::MetaHead,
        PTerm::Lam(b) => match head_step(b, max_nodes) {
            Step::Did(b2, d) => Step::Did(plam(b2), d),
            other => other,
        },
        PTerm::App(f, a) => match &**f {
            PTerm::Lam(b) => {
                let (bsz, asz, occ) = (b.nodes(), a.nodes(), count_var(b, 1));
                let bound = bsz + occ.saturating_mul(asz);
                if bound > max_nodes {
                    return Step::TooBig;
                }
                // redex = App + Lam + body + arg; result = body with each
                // of `occ` Var(1) nodes replaced by a copy of the arg.
                let delta = (occ * asz) as i64 - occ as i64 - asz as i64 - 2;
                Step::Did(contract(b, a), delta)
            }
            PTerm::Meta(_) => Step::MetaHead,
            _ => match head_step(f, max_nodes) {
                Step::Did(f2, d) => Step::Did(PTerm::App(Rc::new(f2), a.clone()), d),
                other => other,
            },
        },
    }
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub enum CheckFail {
    /// `Meta` reached the spine head at this step.
    MetaHead(u32),
    /// Head normal form reached without hitting the target.
    ReachedNf(u32),
    /// A proper source state (the start, or any state before the end)
    /// was an abstraction or bare `Meta` — the lifting lemma (certificate spec
    /// §2) would not apply, so the chain cannot be composed inside a
    /// left spine. Step 0 marks the start state itself.
    BadIntermediate(u32),
    /// Step budget exhausted.
    Budget,
    /// A contraction would exceed the node budget.
    TooBig(u32),
    /// Malformed certificate data (openness, missing `Meta`, …).
    Shape(&'static str),
}

/// Verify the pattern reduction `l →ₕ⁺ r` (exact syntactic match) with
/// every *proper source state* — `l` and every state before `r` — a
/// non-abstraction and non-`Meta`, within `max_steps`. Returns the
/// number of steps taken.
///
/// The source-state condition (not merely "intermediate states") is what
/// the lifting lemma needs: if a source state were an abstraction, the
/// head step in a left-spine context would consume that abstraction via
/// the outer redex instead of reducing beneath it. In v1 every check
/// starts from an application, so the distinction is latent; it is
/// enforced here so later lemma systems cannot fall through the gap.
pub fn check_reduces(
    l: &PTerm,
    r: &PTerm,
    max_steps: u32,
    max_nodes: u64,
) -> Result<u32, CheckFail> {
    if matches!(l, PTerm::Lam(_) | PTerm::Meta(_)) {
        return Err(CheckFail::BadIntermediate(0));
    }
    let mut cur = l.clone();
    for i in 1..=max_steps {
        cur = match head_step(&cur, max_nodes) {
            Step::Did(next, _) => next,
            Step::MetaHead => return Err(CheckFail::MetaHead(i)),
            Step::Nf => return Err(CheckFail::ReachedNf(i)),
            Step::TooBig => return Err(CheckFail::TooBig(i)),
        };
        if cur == *r {
            return Ok(i);
        }
        // Instantiation-stability: `App` and `Var` stay non-abstractions
        // under every closed instantiation; `Lam` and `Meta` do not.
        if matches!(cur, PTerm::Lam(_) | PTerm::Meta(_)) {
            return Err(CheckFail::BadIntermediate(i));
        }
    }
    Err(CheckFail::Budget)
}

/// Strip leading lambdas: `(count, body)`. Head reduction is defined
/// under leading binders, so a state `λᵏ. (A · Wⁿ[C0])` with A, W, C0
/// all closed carries the ratchet exactly as the top-level state does:
/// infinite head reduction of the body is infinite head reduction of
/// the state. The frontier classifier measured 1,320/2,032 unknowns
/// presenting as bare abstractions — without stripping, discovery and
/// INIT are blind to all of them.
pub fn strip_lams(mut t: &PTerm) -> (u32, &PTerm) {
    let mut k = 0;
    while let PTerm::Lam(b) = t {
        k += 1;
        t = b;
    }
    (k, t)
}

/// A ratchet certificate (certificate specification §3): head `A`, wrapper `W[Z]`, base `C0`.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct Ratchet {
    pub a: Term,
    pub w: PTerm,
    pub c0: Term,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct CertReport {
    pub open_steps: u32,
    pub desc_steps: u32,
    pub base_steps: u32,
    /// Concrete head steps from the target to the matched milestone.
    pub init_steps: u32,
    /// Tower height of the matched milestone argument.
    pub init_tower: u32,
    /// Trailing spine arguments carried past the tower (v1.2).
    pub init_trail: u32,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub enum CertFail {
    Open(CheckFail),
    Desc(CheckFail),
    Base(CheckFail),
    /// INIT never matched `A · Wⁿ[C0]` within its budgets.
    Init,
    Shape(&'static str),
}

/// Match `x` against the wrapper pattern: if `x = W[y]` for a unique `y`
/// filling every `Meta` position consistently, return `y`.
pub fn match_wrapper(w: &PTerm, x: &PTerm) -> Option<PTerm> {
    fn go(w: &PTerm, x: &PTerm, out: &mut Option<PTerm>) -> bool {
        match (w, x) {
            (PTerm::Meta(_), _) => match out {
                Some(prev) => prev == x,
                None => {
                    *out = Some(x.clone());
                    true
                }
            },
            (PTerm::Var(a), PTerm::Var(b)) => a == b,
            (PTerm::Lam(wb), PTerm::Lam(xb)) => go(wb, xb, out),
            (PTerm::App(wf, wa), PTerm::App(xf, xa)) => go(wf, xf, out) && go(wa, xa, out),
            _ => false,
        }
    }
    let mut out = None;
    if go(w, x, &mut out) {
        out
    } else {
        None
    }
}

/// Split an application spine: `Some((head, args))` with `t = head a₁ … aₖ`
/// and k ≥ 1, or `None` if `t` is not an application. The head is returned
/// as the innermost function `Rc` so callers can key on it cheaply.
pub fn spine(t: &PTerm) -> Option<(&Rc<PTerm>, Vec<&Rc<PTerm>>)> {
    let (mut f, mut args) = match t {
        PTerm::App(f, a) => (f, vec![a]),
        _ => return None,
    };
    while let PTerm::App(g, a) = &**f {
        args.push(a);
        f = g;
    }
    args.reverse();
    Some((f, args))
}

/// `Some(n)` iff `x == Wⁿ[C0]`.
pub fn tower_index(w: &PTerm, c0: &PTerm, x: &PTerm) -> Option<u32> {
    let mut cur = x.clone();
    let mut n = 0u32;
    loop {
        if cur == *c0 {
            return Some(n);
        }
        {
            let inner = match_wrapper(w, &cur)?;
            cur = inner;
            n += 1;
        }
    }
}

/// The trusted verifier. Establishes that `t` has no normal form
/// (per the glue theorem in certificate specification §3) or fails.
pub fn verify(
    t: &Term,
    cert: &Ratchet,
    lemma_steps: u32,
    init_steps: u32,
    max_nodes: u64,
) -> Result<CertReport, CertFail> {
    if !cert.a.is_closed() {
        return Err(CertFail::Shape("A not closed"));
    }
    if !cert.c0.is_closed() {
        return Err(CertFail::Shape("C0 not closed"));
    }
    if !cert.w.contains_meta() {
        return Err(CertFail::Shape("W has no Meta"));
    }
    if cert.w.max_free(0) != 0 {
        return Err(CertFail::Shape("W not pattern-closed"));
    }
    if !wrapper_holes_are_meta0(&cert.w) {
        return Err(CertFail::Shape("W holes must all be Meta(0)"));
    }
    if !t.is_closed() {
        return Err(CertFail::Shape("target not closed"));
    }

    let a = PTerm::from_term(&cert.a);
    let c0 = PTerm::from_term(&cert.c0);
    let w = cert.w.clone();

    // OPEN: A Z →ₕ⁺ (Z Z) W[Z]
    let open_l = papp(a.clone(), PTerm::Meta(0));
    let open_r = papp(papp(PTerm::Meta(0), PTerm::Meta(0)), w.clone());
    let open_steps =
        check_reduces(&open_l, &open_r, lemma_steps, max_nodes).map_err(CertFail::Open)?;

    // DESC: W[Z] W[Z] →ₕ⁺ Z Z
    let desc_l = papp(w.clone(), w.clone());
    let desc_r = papp(PTerm::Meta(0), PTerm::Meta(0));
    let desc_steps =
        check_reduces(&desc_l, &desc_r, lemma_steps, max_nodes).map_err(CertFail::Desc)?;

    // BASE: C0 C0 →ₕ⁺ A (fully concrete)
    let base_l = papp(c0.clone(), c0.clone());
    let base_steps = check_reduces(&base_l, &a, lemma_steps, max_nodes).map_err(CertFail::Base)?;

    // INIT: T →ₕ* λᵏ.(A Wⁿ[C0] y⃗) for some k, n and any concrete trailing
    // vector y⃗ (v1.2; j = 0 is the v1 shape). Matching under leading
    // binders is sound because A, W, C0 are all closed (checked above):
    // the body's infinite head reduction is the state's. Trailing args are
    // sound by iterated lifting: every state of the certified infinite
    // chain A Wⁿ →ₕ A Wⁿ⁺¹ →ₕ … is a non-abstraction — check_reduces
    // enforces it on every proper source, and in the assembled chain each
    // lemma endpoint occurs applied to the pending tower argument (BASE's
    // endpoint A appears only as A Wⁿ⁺¹[C0]), hence as an application. So
    // appending y⃗ maps the chain step-for-step onto an infinite head
    // reduction of the matched body; after the first lift every state is
    // syntactically an application, so further lifts are automatic. INIT
    // never compares trailing vectors across observed milestones: it
    // selects ONE state, and the lifted certified execution preserves that
    // exact vector, open or closed — y⃗ is never substituted into,
    // shifted, or inspected.
    let (init_steps, init_tower, init_trail) =
        init_search(t, &a, &w, &c0, init_steps, max_nodes).ok_or(CertFail::Init)?;
    Ok(CertReport {
        open_steps,
        desc_steps,
        base_steps,
        init_steps,
        init_tower,
        init_trail,
    })
}

/// The shared INIT loop (v1.2 shape, soundness note above): bounded
/// concrete head reduction from `t`, matching `λᵏ.(A Wⁿ[C0] y⃗)`.
/// Returns `(steps, tower, trail)` on the first match.
fn init_search(
    t: &Term,
    a: &PTerm,
    w: &PTerm,
    c0: &PTerm,
    init_steps: u32,
    max_nodes: u64,
) -> Option<(u32, u32, u32)> {
    let mut cur = PTerm::from_term(t);
    let mut size = cur.nodes() as i64;
    for i in 0..=init_steps {
        let (_, body) = strip_lams(&cur);
        if let Some((h, args)) = spine(body) {
            if **h == *a {
                if let Some(n) = tower_index(w, c0, args[0]) {
                    return Some((i, n, args.len() as u32 - 1));
                }
            }
        }
        if size > max_nodes as i64 {
            break;
        }
        cur = match head_step(&cur, max_nodes) {
            Step::Did(next, d) => {
                size += d;
                next
            }
            // Concrete terms contain no Meta; Nf means head reduction
            // terminated — INIT can never match past this point.
            _ => break,
        };
    }
    None
}

/// `check_reduces` with →ₕ* semantics: zero steps succeed when `l == r`
/// syntactically. Needed by the HeadTowerRatchet's BASE, which is empty
/// exactly when `C0 = A` (the forcing family). With ≥1 step the source
/// conditions are identical to `check_reduces`.
pub fn check_reduces_star(
    l: &PTerm,
    r: &PTerm,
    max_steps: u32,
    max_nodes: u64,
) -> Result<u32, CheckFail> {
    if l == r {
        return Ok(0);
    }
    check_reduces(l, r, max_steps, max_nodes)
}

/// A `HeadTowerRatchet` certificate (certificate specification §5):
/// closed head `A`, wrapper pattern `W[Z]` (holes `Meta(0)`), closed
/// tower base `C0`, closed eraser `I`. Certifies loops whose tower
/// argument itself takes head position — the shape v1's opacity must
/// abort on (`A Z →ₕ⁺ Z W[Z]`).
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct HeadTowerRatchet {
    pub a: Term,
    pub w: PTerm,
    pub c0: Term,
    pub i: Term,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct HtrReport {
    /// Steps of BASE/OPEN/SPREAD/PEEL/BOUNCE/ERASE in that order
    /// (BASE may be 0; the rest are ≥1).
    pub obligation_steps: [u32; 6],
    pub init_steps: u32,
    pub init_tower: u32,
    pub init_trail: u32,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub enum HtrFail {
    Base(CheckFail),
    Open(CheckFail),
    Spread(CheckFail),
    Peel(CheckFail),
    Bounce(CheckFail),
    Erase(CheckFail),
    Init,
    Shape(&'static str),
}

/// The trusted HeadTowerRatchet verifier. Establishes that `t` has no
/// normal form, per the fixed assembly theorem (certificate specification §5): the six
/// obligations mechanically derive the rank step
/// `R(m,N): Xₘ₊₁ X_N →ₕ⁺ Xₘ X_N` (SPREAD; PEEL×N; BASE+BOUNCE; PEEL×m;
/// BASE+ERASE — each lemma lifted into its right-spine context, licensed
/// because every proper source state is a non-abstraction) and the cycle
/// `A Xₙ →ₕ⁺(OPEN) Xₙ Xₙ₊₁ →ₕ⁺ R(n−1,n+1)…R(0,n+1) →ₕ* (BASE) A Xₙ₊₁`,
/// hence an infinite head chain from the INIT-matched state, trailing
/// vector and leading binders carried exactly as in v1.2. The theorem is
/// proved once (on paper now, in Lean later); this function only replays
/// its six bounded symbolic obligations plus INIT.
pub fn verify_htr(
    t: &Term,
    cert: &HeadTowerRatchet,
    lemma_steps: u32,
    init_steps: u32,
    max_nodes: u64,
) -> Result<HtrReport, HtrFail> {
    if !cert.a.is_closed() {
        return Err(HtrFail::Shape("A not closed"));
    }
    if !cert.c0.is_closed() {
        return Err(HtrFail::Shape("C0 not closed"));
    }
    if !cert.i.is_closed() {
        return Err(HtrFail::Shape("I not closed"));
    }
    if !cert.w.contains_meta() {
        return Err(HtrFail::Shape("W has no Meta"));
    }
    if cert.w.max_free(0) != 0 {
        return Err(HtrFail::Shape("W not pattern-closed"));
    }
    if !wrapper_holes_are_meta0(&cert.w) {
        return Err(HtrFail::Shape("W holes must all be Meta(0)"));
    }
    if !t.is_closed() {
        return Err(HtrFail::Shape("target not closed"));
    }

    let a = PTerm::from_term(&cert.a);
    let c0 = PTerm::from_term(&cert.c0);
    let i = PTerm::from_term(&cert.i);
    let w = cert.w.clone();
    let z = || PTerm::Meta(0);
    let q = || PTerm::Meta(1);

    // The six obligations. `W[Z]` is literally `w` (its holes ARE Z);
    // no plugging happens anywhere — Z and Q stay opaque throughout.
    // BASE(Z):     C0 Z    →ₕ* A Z
    let base = check_reduces_star(
        &papp(c0.clone(), z()),
        &papp(a.clone(), z()),
        lemma_steps,
        max_nodes,
    )
    .map_err(HtrFail::Base)?;
    // OPEN(Z):     A Z     →ₕ⁺ Z W[Z]   (endpoint Z-headed: matched, never reduced)
    let open = check_reduces(
        &papp(a.clone(), z()),
        &papp(z(), w.clone()),
        lemma_steps,
        max_nodes,
    )
    .map_err(HtrFail::Open)?;
    // SPREAD(Z,Q): W[Z] Q  →ₕ⁺ Q I Z Q
    let spread = check_reduces(
        &papp(w.clone(), q()),
        &papp(papp(papp(q(), i.clone()), z()), q()),
        lemma_steps,
        max_nodes,
    )
    .map_err(HtrFail::Spread)?;
    // PEEL(Z):     W[Z] I  →ₕ⁺ Z I
    let peel = check_reduces(
        &papp(w.clone(), i.clone()),
        &papp(z(), i.clone()),
        lemma_steps,
        max_nodes,
    )
    .map_err(HtrFail::Peel)?;
    // BOUNCE(Z):   A I Z   →ₕ⁺ Z I I Z
    let bounce = check_reduces(
        &papp(papp(a.clone(), i.clone()), z()),
        &papp(papp(papp(z(), i.clone()), i.clone()), z()),
        lemma_steps,
        max_nodes,
    )
    .map_err(HtrFail::Bounce)?;
    // ERASE(Z):    A I I Z →ₕ⁺ Z   (endpoint bare Meta: matched, never reduced)
    let erase = check_reduces(
        &papp(papp(papp(a.clone(), i.clone()), i.clone()), z()),
        &z(),
        lemma_steps,
        max_nodes,
    )
    .map_err(HtrFail::Erase)?;

    // INIT: identical machinery to v1.2 — same tower, same lifting.
    let (init_steps, init_tower, init_trail) =
        init_search(t, &a, &w, &c0, init_steps, max_nodes).ok_or(HtrFail::Init)?;
    Ok(HtrReport {
        obligation_steps: [base, open, spread, peel, bounce, erase],
        init_steps,
        init_tower,
        init_trail,
    })
}

/// True iff every metavariable in `t` is `Meta(0)` (and there is at
/// least none of any other id). The wrapper helpers `plug` /
/// `match_wrapper` collapse ALL hole ids into one — sound only for
/// single-id wrappers, so both trusted verifiers gate on this before
/// any multi-meta v3 code can meet the old helpers by accident.
fn wrapper_holes_are_meta0(t: &PTerm) -> bool {
    match t {
        PTerm::Meta(i) => *i == 0,
        PTerm::Var(_) => true,
        PTerm::Lam(b) => wrapper_holes_are_meta0(b),
        PTerm::App(f, a) => wrapper_holes_are_meta0(f) && wrapper_holes_are_meta0(a),
    }
}

/// Rename metavariable ids syntactically (`W[Z]` → `W[Q]`). Done
/// BEFORE any checking — the checkers themselves never plug or rename;
/// Z and Q stay opaque throughout.
pub fn rename_meta(t: &PTerm, from: u32, to: u32) -> PTerm {
    match t {
        PTerm::Meta(i) if *i == from => PTerm::Meta(to),
        PTerm::Meta(i) => PTerm::Meta(*i),
        PTerm::Var(n) => PTerm::Var(*n),
        PTerm::Lam(b) => plam(rename_meta(b, from, to)),
        PTerm::App(f, a) => papp(rename_meta(f, from, to), rename_meta(a, from, to)),
    }
}

/// A SelectorRatchet certificate (certificate specification §6), forced by the 35-bit exemplar
/// `01000110100001100001011000001111010`): the wrapper is a
/// *selector* — applied to a fresh argument it hands control to that
/// argument carrying a second unary pattern `P[Z]` (FAN), and one
/// wrapper layer applied to `P[Z]` reduces to the stored layer
/// (SELECT). The descent drops the tower index through the argument's
/// own contraction, with every metavariable opaque throughout — the
/// shape both v1 (OPEN endpoint mismatch) and HTR (SPREAD endpoint
/// mismatch) must reject.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct SelectorRatchet {
    pub a: Term,
    pub w: PTerm,
    pub p: PTerm,
    pub c0: Term,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub struct SelReport {
    /// Steps of OPEN/FAN/SELECT/BASE in that order (BASE may be 0).
    pub obligation_steps: [u32; 4],
    pub init_steps: u32,
    pub init_tower: u32,
    pub init_trail: u32,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub enum SelFail {
    Open(CheckFail),
    Fan(CheckFail),
    Select(CheckFail),
    Base(CheckFail),
    Init,
    Shape(&'static str),
}

/// The trusted SelectorRatchet verifier. Establishes that `t` has no
/// normal form per the glue theorem (certificate specification §6): with `Xₙ = Wⁿ[C0]`,
/// the rank step is FAN at (Z:=Xₘ₋₁, Q:=Xₙ₊₁) followed by SELECT at
/// (Q:=Xₙ, Z:=Xₘ₋₁) lifted through the trailing `Xₙ₊₁`
/// (`Xₘ Xₙ₊₁ →ₕ⁺ Xₙ₊₁ P[Xₘ₋₁] Xₙ₊₁ = W[Xₙ] P[Xₘ₋₁] Xₙ₊₁ →ₕ⁺
/// Xₘ₋₁ Xₙ₊₁`), and the cycle is OPEN, n rank steps, BASE at
/// Z:=Xₙ₊₁ — every proper source a non-abstraction, so the whole
/// chain lifts through trailing vectors and leading binders exactly
/// as v1.2's. INIT is v1's landing, unchanged.
pub fn verify_selector(
    t: &Term,
    cert: &SelectorRatchet,
    lemma_steps: u32,
    init_steps: u32,
    max_nodes: u64,
) -> Result<SelReport, SelFail> {
    if !cert.a.is_closed() {
        return Err(SelFail::Shape("A not closed"));
    }
    if !cert.c0.is_closed() {
        return Err(SelFail::Shape("C0 not closed"));
    }
    if !cert.w.contains_meta() {
        return Err(SelFail::Shape("W has no Meta"));
    }
    if cert.w.max_free(0) != 0 {
        return Err(SelFail::Shape("W not pattern-closed"));
    }
    if !wrapper_holes_are_meta0(&cert.w) {
        return Err(SelFail::Shape("W holes must all be Meta(0)"));
    }
    if cert.p.max_free(0) != 0 {
        return Err(SelFail::Shape("P not pattern-closed"));
    }
    if !wrapper_holes_are_meta0(&cert.p) {
        return Err(SelFail::Shape("P holes must all be Meta(0)"));
    }
    if !t.is_closed() {
        return Err(SelFail::Shape("target not closed"));
    }

    let a = PTerm::from_term(&cert.a);
    let c0 = PTerm::from_term(&cert.c0);
    let w = cert.w.clone();
    let p = cert.p.clone();
    let z = || PTerm::Meta(0);
    let q = || PTerm::Meta(1);

    // OPEN(Z):     A Z       →ₕ⁺ Z W[Z]
    let open = check_reduces(
        &papp(a.clone(), z()),
        &papp(z(), w.clone()),
        lemma_steps,
        max_nodes,
    )
    .map_err(SelFail::Open)?;
    // FAN(Z,Q):    W[Z] Q    →ₕ⁺ Q P[Z] Q
    let fan = check_reduces(
        &papp(w.clone(), q()),
        &papp(papp(q(), p.clone()), q()),
        lemma_steps,
        max_nodes,
    )
    .map_err(SelFail::Fan)?;
    // SELECT(Z,Q): W[Q] P[Z] →ₕ⁺ Z   (W[Q] built by syntactic
    // renaming BEFORE the check; the meta0 gates above make the
    // renaming unambiguous)
    let select = check_reduces(
        &papp(rename_meta(&w, 0, 1), p.clone()),
        &z(),
        lemma_steps,
        max_nodes,
    )
    .map_err(SelFail::Select)?;
    // BASE(Z):     C0 Z      →ₕ* A Z
    let base = check_reduces_star(
        &papp(c0.clone(), z()),
        &papp(a.clone(), z()),
        lemma_steps,
        max_nodes,
    )
    .map_err(SelFail::Base)?;

    // INIT: identical machinery to v1.2 — same tower, same lifting.
    let (init_steps, init_tower, init_trail) =
        init_search(t, &a, &w, &c0, init_steps, max_nodes).ok_or(SelFail::Init)?;
    Ok(SelReport {
        obligation_steps: [open, fan, select, base],
        init_steps,
        init_tower,
        init_trail,
    })
}

/// Untrusted SelectorRatchet driver: reuse a discovered `(A, W, C0)`
/// triple — read `P` off the FAN trace's opaque-head endpoint
/// (`W[Z] Q →ₕ⁺ Q P[Z] Q`), peel the observed base to the tower
/// bottom, and hand everything to the trusted verifier. Garbage in ⇒
/// no certificate, never a wrong one.
pub fn try_selector(
    t: &Term,
    cand: &Ratchet,
    lemma_steps: u32,
    init_steps: u32,
    max_nodes: u64,
) -> Option<(SelectorRatchet, SelReport)> {
    // FAN trace to the first opaque-head state.
    let mut cur = papp(cand.w.clone(), PTerm::Meta(1));
    let mut fuel = lemma_steps;
    loop {
        match head_step(&cur, max_nodes) {
            Step::Did(next, _) => {
                cur = next;
                if fuel == 0 {
                    return None;
                }
                fuel -= 1;
            }
            Step::MetaHead => break,
            _ => return None,
        }
    }
    // Endpoint must be Q P Q; extract P.
    let p = match &cur {
        PTerm::App(qp, q2) if **q2 == PTerm::Meta(1) => match &**qp {
            PTerm::App(q1, p) if **q1 == PTerm::Meta(1) => (**p).clone(),
            _ => return None,
        },
        _ => return None,
    };
    // Peel the discovered base to the tower bottom.
    let mut bottom = PTerm::from_term(&cand.c0);
    while let Some(inner) = match_wrapper(&cand.w, &bottom) {
        bottom = inner;
    }
    let c0 = bottom.to_term()?;
    let cert = SelectorRatchet {
        a: cand.a.clone(),
        w: cand.w.clone(),
        p,
        c0,
    };
    verify_selector(t, &cert, lemma_steps, init_steps, max_nodes)
        .ok()
        .map(|rep| (cert, rep))
}

/// Untrusted HeadTowerRatchet driver: reuse a discovered `(A, W, C0)`
/// triple, peel the observed base to the true tower bottom (a witnessed
/// milestone argument is `Wᵏ[C0ₜᵣᵤₑ]` — v1 may use it directly, the
/// assembly theorem needs the bottom), then try small closed candidate
/// erasers, the identity first. Garbage in ⇒ no certificate, never a
/// wrong one: `verify_htr` alone is trusted.
pub fn try_htr(
    t: &Term,
    cert: &Ratchet,
    lemma_steps: u32,
    init_steps: u32,
    max_nodes: u64,
) -> Option<(HeadTowerRatchet, HtrReport)> {
    // peel the discovered base to the tower bottom
    let mut bottom = PTerm::from_term(&cert.c0);
    while let Some(inner) = match_wrapper(&cert.w, &bottom) {
        bottom = inner;
    }
    let c0 = bottom.to_term()?;

    // candidate erasers: λ.1 first, then small closed subterms of A and W
    let mut cands: Vec<Term> = vec![Term::Lam(Rc::new(Term::Var(1)))];
    let mut pool = Vec::new();
    closed_subterms(&PTerm::from_term(&cert.a), 9, &mut pool);
    closed_subterms(&cert.w, 9, &mut pool);
    for p in pool {
        if let Some(ct) = p.to_term() {
            if !cands.contains(&ct) {
                cands.push(ct);
            }
        }
    }

    for i in cands {
        let htr = HeadTowerRatchet {
            a: cert.a.clone(),
            w: cert.w.clone(),
            c0: c0.clone(),
            i,
        };
        if let Ok(rep) = verify_htr(t, &htr, lemma_steps, init_steps, max_nodes) {
            return Some((htr, rep));
        }
    }
    None
}

/// Collect closed (Meta-free, variable-closed) subterms of `t` with at
/// most `max_nodes` nodes into `out` (discovery aid, unordered).
fn closed_subterms(t: &PTerm, max_nodes: u64, out: &mut Vec<PTerm>) {
    if !t.contains_meta() && t.max_free(0) == 0 && t.nodes() <= max_nodes {
        out.push(t.clone());
    }
    match t {
        PTerm::Lam(b) => closed_subterms(b, max_nodes, out),
        PTerm::App(f, a) => {
            closed_subterms(f, max_nodes, out);
            closed_subterms(a, max_nodes, out);
        }
        _ => {}
    }
}

/// Replace every occurrence of `needle` in `hay` by `Meta` (discovery
/// aid — untrusted; also used by the certdiag instrument).
pub fn generalize(hay: &PTerm, needle: &PTerm) -> PTerm {
    if hay == needle {
        return PTerm::Meta(0);
    }
    match hay {
        PTerm::Var(n) => PTerm::Var(*n),
        PTerm::Meta(i) => PTerm::Meta(*i),
        PTerm::Lam(b) => plam(generalize(b, needle)),
        PTerm::App(f, a) => papp(generalize(f, needle), generalize(a, needle)),
    }
}

/// Untrusted certificate discovery: run a bounded concrete head trace,
/// look for a recurring abstraction head with strictly growing arguments,
/// and extract `(A, W, C0)` by expressing each milestone argument as a
/// context around its predecessor. The caller must `verify`.
///
/// Returns the FIRST consistent candidate. Callers that can reject a
/// candidate (checker says no) should prefer `discover_stream`, which
/// keeps scanning across families instead of stopping at the first.
pub fn discover(t: &Term, max_steps: u32, max_nodes: u64) -> Option<Ratchet> {
    discover_stream(t, max_steps, max_nodes, &mut |_| true)
}

/// Streaming discovery: every consistent candidate triple is offered to
/// `accept`; the scan stops at the first candidate `accept` takes (that
/// triple is returned) or when the trace budget ends. Each milestone
/// family proposes at most once — after a rejection the family is
/// retired (consecutive windows of one family yield near-identical
/// triples whose rejection cause persists; distinct families are the
/// completeness win). Family count is capped: spine ratchets push a
/// fresh arity almost every state (observed arity up to 8,228), and
/// each would otherwise hold a milestone window alive. All policy here is
/// untrusted — the
/// checkers alone decide soundness.
pub fn discover_stream(
    t: &Term,
    max_steps: u32,
    max_nodes: u64,
    accept: &mut impl FnMut(&Ratchet) -> bool,
) -> Option<Ratchet> {
    let mut cur = PTerm::from_term(t);
    let mut size = cur.nodes() as i64;
    // milestone family (head pattern, spine arity) -> first spine
    // arguments in trace order (None = family retired after a rejected
    // proposal). Keying on arity too keeps distinct roles of the same
    // head apart — the deep family passes through both `A Xₙ` (the
    // milestones) and `A I Xₘ Xₙ` (rank-step interiors); merged into
    // one stream, the interiors' small constant first argument destroys
    // the growing-window invariant.
    const MAX_FAMILIES: usize = 4096;
    let mut milestones: HashMap<(Rc<PTerm>, usize), Option<Vec<PTerm>>> = HashMap::new();

    for _ in 0..max_steps {
        // Milestones may live under leading binders (verify's closedness
        // gates reject any candidate that captures ambient variables).
        // The tower rides the FIRST spine argument; trailing args are
        // carried by lifting (see verify's INIT note) and ignored here.
        let (_, body) = strip_lams(&cur);
        if let Some((h, spine_args)) = spine(body) {
            let x = spine_args[0];
            // Head-size guard: hashing the head is O(|H|) per state, and
            // certificate heads are small; skip pathological giants.
            if matches!(**h, PTerm::Lam(_))
                && h.nodes() <= 4096
                && (milestones.len() < MAX_FAMILIES
                    || milestones.contains_key(&(h.clone(), spine_args.len())))
            {
                let entry = milestones
                    .entry((h.clone(), spine_args.len()))
                    .or_insert_with(|| Some(Vec::new()));
                if let Some(args) = entry {
                    // Only the last three milestones are ever inspected;
                    // dropping older ones releases their subtree graphs
                    // (keeping them alive was half the memory bomb).
                    if args.len() == 3 {
                        args.remove(0);
                    }
                    args.push((**x).clone());
                    if args.len() >= 3 {
                        // Sliding window: a term may have a pre-ratchet
                        // prelude; any later tower point works as C0 (BASE
                        // is a concrete check, it just runs longer).
                        let k = args.len();
                        let (x1, x2, x3) = (&args[k - 3], &args[k - 2], &args[k - 1]);
                        if x1.nodes() < x2.nodes() && x2.nodes() < x3.nodes() {
                            let w = generalize(x2, x1);
                            // real growth (at least one occurrence replaced,
                            // wrapper is not the bare hole) and one
                            // consistency probe before offering upward
                            if w != PTerm::Meta(0) && w.contains_meta() && plug(&w, x2) == *x3 {
                                if let (Some(a), Some(c0)) = (h.to_term(), x1.to_term()) {
                                    let cand = Ratchet { a, w, c0 };
                                    if accept(&cand) {
                                        return Some(cand);
                                    }
                                }
                                // rejected: retire this family
                                *entry = None;
                            }
                        }
                    }
                }
            }
        }
        if size > max_nodes as i64 {
            return None;
        }
        cur = match head_step(&cur, max_nodes) {
            Step::Did(next, d) => {
                size += d;
                next
            }
            _ => return None,
        };
    }
    None
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::parse::parse_all;

    const LOOP32: &str = "01000110001100001011010000110110";

    fn loop32_cert() -> Ratchet {
        // A = λx. x x (λy. y x); W[Z] = λy. y Z; C0 = λ_. A
        let a = parse_all("0001011010000110110").unwrap();
        let w = plam(papp(pvar(1), PTerm::Meta(0)));
        let c0 = Term::Lam(Rc::new(a.clone()));
        Ratchet { a, w, c0 }
    }

    /// The 35-bit SelectorRatchet forcing exemplar:
    /// A = C0 = λx. x W[x], W[Z] = λq. q P[Z] q, P[Z] = λa.λb.Z.
    /// v1 rejects it (OPEN endpoint is `Z W[Z]`), HTR rejects it
    /// (SPREAD endpoint is `Q P[Z] Q`, not `Q I Z Q`); the selector
    /// obligations certify it with the measured counts
    /// OPEN 1 / FAN 1 / SELECT 3 / BASE 0 — milestone gaps 4n+1.
    const SEL35: &str = "01000110100001100001011000001111010";

    #[test]
    fn selector_exemplar_certifies() {
        let t = parse_all(SEL35).unwrap();
        let mut found = None;
        discover_stream(&t, 1000, 100_000, &mut |cand: &Ratchet| {
            assert!(
                verify(&t, cand, 1000, 1000, 100_000).is_err(),
                "v1 must reject the selector exemplar"
            );
            if let Some(pair) = try_selector(&t, cand, 1000, 1000, 100_000) {
                found = Some(pair);
                return true;
            }
            false
        });
        let (cert, rep) = found.expect("selector certificate expected");
        assert_eq!(rep.obligation_steps, [1, 1, 3, 0]);
        assert_eq!(cert.a, cert.c0, "the forcing family has A = C0");
    }

    /// Selector soundness spot-check: the certificate data must not
    /// verify against a HALTING self-application of the same shape
    /// family (the battery covers this exhaustively; this is the
    /// in-file canary).
    #[test]
    fn selector_rejects_halter() {
        // (λx. x x) (λx. x) — halts.
        let t = parse_all("01000110100010").unwrap();
        let mut fired = false;
        discover_stream(&t, 1000, 100_000, &mut |cand: &Ratchet| {
            if try_selector(&t, cand, 1000, 1000, 100_000).is_some() {
                fired = true;
                return true;
            }
            false
        });
        assert!(!fired);
    }

    #[test]
    fn loop32_manual_certificate_verifies() {
        let t = parse_all(LOOP32).unwrap();
        let rep = verify(&t, &loop32_cert(), 64, 64, 1 << 20).unwrap();
        // Measured in tools/certificates/loop32_trace.py: OPEN is one step,
        // DESC two, BASE one, and the first milestone is one step in.
        assert_eq!(rep.open_steps, 1);
        assert_eq!(rep.desc_steps, 2);
        assert_eq!(rep.base_steps, 1);
        assert_eq!(rep.init_steps, 1);
        assert_eq!(rep.init_tower, 0);
    }

    #[test]
    fn loop32_discovers_and_verifies_end_to_end() {
        let t = parse_all(LOOP32).unwrap();
        let cert = discover(&t, 4096, 1 << 20).expect("discovery");
        assert_eq!(cert.a, loop32_cert().a);
        verify(&t, &cert, 64, 4096, 1 << 20).expect("verify");
    }

    #[test]
    fn under_binder_ratchet_certifies() {
        // λ_. loop32: the milestones live under a leading binder. The
        // classifier found 1,320 frontier terms presenting this way;
        // discovery and INIT must strip binders (and the closed-triple
        // gates keep it sound).
        let t = Term::Lam(Rc::new(parse_all(LOOP32).unwrap()));
        let cert = discover(&t, 4096, 1 << 20).expect("discovery under binder");
        assert_eq!(cert.a, loop32_cert().a);
        verify(&t, &cert, 64, 4096, 1 << 20).expect("verify under binder");
    }

    #[test]
    fn trailing_arg_ratchet_certifies() {
        // Frontier near-miss (n=36): milestones are A Wⁿ[C0] y with
        // loop32's exact engine and one fixed trailing spine argument
        // (which happens to be A itself). v1.1 was blind to the shape;
        // v1.2's spine matching certifies it, soundly by lifting.
        let t = parse_all("010001011000110100001011010000110110").unwrap();
        let cert = discover(&t, 4096, 1 << 20).expect("discovery with trailing arg");
        assert_eq!(cert.a, loop32_cert().a);
        let rep = verify(&t, &cert, 64, 4096, 1 << 20).expect("verify with trailing arg");
        assert_eq!(rep.init_trail, 1);
    }

    #[test]
    fn two_trailing_args_certify() {
        // Frontier near-miss (n=36): A Wⁿ[C0] y₁ y₂ — two trailing
        // spine arguments after a one-step prelude.
        let t = parse_all("010001100110001100001011010000110110").unwrap();
        let cert = discover(&t, 4096, 1 << 20).expect("discovery with two trailing args");
        assert_eq!(cert.a, loop32_cert().a);
        let rep = verify(&t, &cert, 64, 4096, 1 << 20).expect("verify with two trailing args");
        assert_eq!(rep.init_trail, 2);
    }

    #[test]
    fn forcing_term_certifies_via_htr() {
        // The 35-bit deep-family forcing term: wrapper perfectly
        // consistent, but OPEN ends Z W[Z] — the tower takes head
        // position, so v1's opacity must abort. The HeadTowerRatchet
        // certifies it with obligation lengths
        // (BASE 0 because C0 = A; then 1,1,3,3,7) and I = λ.1.
        let t = parse_all("01000110100001100001010110001011010").unwrap();
        let cert = discover(&t, 4096, 1 << 20).expect("discovery finds the triple");
        assert!(
            verify(&t, &cert, 64, 4096, 1 << 20).is_err(),
            "v1 must NOT certify the deep family"
        );
        let (htr, rep) = try_htr(&t, &cert, 64, 4096, 1 << 20).expect("htr certifies");
        assert_eq!(htr.i, parse_all("0010").unwrap()); // λ.1
        assert_eq!(htr.c0, htr.a); // C0 = A for this family
        assert_eq!(rep.obligation_steps, [0, 1, 1, 3, 3, 7]);
    }

    #[test]
    fn htr_rejects_wrong_eraser() {
        let t = parse_all("01000110100001100001010110001011010").unwrap();
        let cert = discover(&t, 4096, 1 << 20).unwrap();
        let mut bottom = PTerm::from_term(&cert.c0);
        while let Some(inner) = match_wrapper(&cert.w, &bottom) {
            bottom = inner;
        }
        let htr = HeadTowerRatchet {
            a: cert.a.clone(),
            w: cert.w.clone(),
            c0: bottom.to_term().unwrap(),
            i: cert.a.clone(), // wrong: the head is not an eraser
        };
        assert!(verify_htr(&t, &htr, 64, 4096, 1 << 20).is_err());
    }

    #[test]
    fn loop32_does_not_htr_certify() {
        // Complementarity: loop32's OPEN ends (Z Z) W[Z], not Z W[Z].
        // The v1 ratchet certifies it; the HeadTowerRatchet must not.
        let t = parse_all(LOOP32).unwrap();
        let cert = discover(&t, 4096, 1 << 20).unwrap();
        assert!(verify(&t, &cert, 64, 4096, 1 << 20).is_ok());
        assert!(try_htr(&t, &cert, 64, 4096, 1 << 20).is_none());
    }

    #[test]
    fn halting_lookalike_does_not_htr_certify() {
        // D(λx.xI) halts; neither discovery path may produce a cert.
        let t = parse_all("01000110100001100010").unwrap();
        if let Some(cert) = discover(&t, 4096, 1 << 20) {
            assert!(verify(&t, &cert, 64, 4096, 1 << 20).is_err());
            assert!(try_htr(&t, &cert, 64, 4096, 1 << 20).is_none());
        }
    }

    #[test]
    fn open_trailing_arg_certifies() {
        // λu. A C0 u — the trailing argument is OPEN in the stripped
        // body (it is the stripped binder's variable). Lifting never
        // substitutes into, shifts, or inspects y⃗, so openness is
        // harmless; this pins the exact claim the closed-trailing and
        // under-binder tests each cover only half of.
        let a = parse_all("0001011010000110110").unwrap();
        let c0 = parse_all("000001011010000110110").unwrap();
        let body = Term::App(
            Rc::new(Term::App(Rc::new(a.clone()), Rc::new(c0))),
            Rc::new(Term::Var(1)),
        );
        let t = Term::Lam(Rc::new(body));
        let cert = discover(&t, 4096, 1 << 20).expect("discovery with open trailing arg");
        assert_eq!(cert.a, a);
        let rep = verify(&t, &cert, 64, 4096, 1 << 20).expect("verify with open trailing arg");
        assert_eq!(rep.init_trail, 1);
    }

    #[test]
    fn omega_does_not_ratchet() {
        // (λx.x x)(λx.x x): exact recurrence, no growth — redloop's case,
        // not ours. Discovery must refuse (wrapper degenerates to bare Z).
        let t = parse_all("010001101000011010").unwrap();
        assert_eq!(discover(&t, 4096, 1 << 20), None);
    }

    #[test]
    fn halting_lookalike_fails_verify() {
        // D (λx. x I) halts (bb.rs has the twin test); a forged loop32
        // certificate against it must die in INIT, not certify.
        let t = parse_all("01000110100001100010").unwrap();
        assert!(t.is_closed());
        assert!(matches!(
            verify(&t, &loop32_cert(), 64, 4096, 1 << 20),
            Err(CertFail::Init)
        ));
    }

    #[test]
    fn intermediate_abstraction_is_rejected() {
        // (λ.1)(λ. (λ.1) 1) →ₕ λ. (λ.1) 1 →ₕ λ.1 — the one intermediate
        // is an abstraction, so the chain must NOT check even though the
        // end state is reachable.
        let i = plam(pvar(1));
        let inner = plam(papp(plam(pvar(1)), pvar(1)));
        let l = papp(i.clone(), inner);
        let r = plam(pvar(1));
        assert!(matches!(
            check_reduces(&l, &r, 16, 1 << 20),
            Err(CheckFail::BadIntermediate(_))
        ));
    }

    #[test]
    fn abstraction_start_state_is_rejected() {
        // The lifting lemma constrains every proper SOURCE state,
        // including the start. λ.(λ.1)1 →ₕ λ.1 is a real
        // head reduction, but it must not check — lifted under an
        // argument the composite's head step would consume the outer
        // abstraction instead.
        let l = plam(papp(plam(pvar(1)), pvar(1)));
        let r = plam(pvar(1));
        assert_eq!(
            check_reduces(&l, &r, 16, 1 << 20),
            Err(CheckFail::BadIntermediate(0))
        );
    }

    #[test]
    fn meta_head_aborts() {
        // Z Z has the metavariable at the spine head: symbolic reduction
        // must refuse to proceed rather than guess.
        let l = papp(PTerm::Meta(0), PTerm::Meta(0));
        let r = papp(PTerm::Meta(0), PTerm::Meta(0));
        assert!(matches!(
            check_reduces(&l, &r, 16, 1 << 20),
            Err(CheckFail::MetaHead(1))
        ));
    }

    #[test]
    fn contraction_bomb_is_refused_before_allocation() {
        // (λx. x x x x) BIG would quadruple BIG in ONE step; the guard
        // must refuse before building it (between-steps caps alone are
        // a memory bomb — measured at 38 GB on the first sweep).
        let quad = plam(papp(papp(papp(pvar(1), pvar(1)), pvar(1)), pvar(1)));
        // BIG: a chain of ~4000 nodes
        let mut big = pvar(1);
        for _ in 0..2000 {
            big = plam(big);
        }
        let l = papp(quad, big);
        assert_eq!(head_step(&l, 4000), Step::TooBig);
    }

    #[test]
    fn tower_matching_is_exact() {
        let cert = loop32_cert();
        let c0 = PTerm::from_term(&cert.c0);
        let t0 = c0.clone();
        let t1 = plug(&cert.w, &t0);
        let t2 = plug(&cert.w, &t1);
        assert_eq!(tower_index(&cert.w, &c0, &t0), Some(0));
        assert_eq!(tower_index(&cert.w, &c0, &t2), Some(2));
        // off-by-one wrapper (λy. y (y Z)) must not match the tower
        let bad = plam(papp(pvar(1), papp(pvar(1), PTerm::Meta(0))));
        assert_eq!(tower_index(&bad, &c0, &t2), None);
    }

    #[test]
    fn symbolic_subst_treats_meta_as_closed() {
        // (λ.λ. 2 1) Z →ₕ λ. Z 1 — Z must not be shifted or renumbered
        // when it goes under the remaining binder.
        let l = papp(plam(plam(papp(pvar(2), pvar(1)))), PTerm::Meta(0));
        match head_step(&l, 1 << 20) {
            Step::Did(t, _) => assert_eq!(t, plam(papp(PTerm::Meta(0), pvar(1)))),
            other => panic!("expected step, got {other:?}"),
        }
    }
}
