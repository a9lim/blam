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

use crate::blc::Term;
use std::fmt;
use std::rc::Rc;
use std::str::FromStr;

#[cfg(test)]
mod battery;

// Discovery is compiled for the in-crate soundness battery and for the
// `lab` feature; the public routing exists only under `lab`.
#[cfg(any(test, feature = "lab"))]
mod search_impl;

/// Untrusted candidate discovery. Everything under `search` is a guess;
/// only this module's `verify*` functions accept a kill.
#[cfg(feature = "lab")]
pub mod search {
    pub use super::search_impl::*;
}

/// Named budgets for discovery and the trusted checkers. `steps` bounds
/// both the discovery trace and the checkers' INIT search; `lemma_steps`
/// bounds each symbolic obligation; `nodes` caps every intermediate
/// pattern term. Ungated: a default-features user holding a certificate
/// needs the named triple as much as the lab sweep does.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct CertBudgets {
    pub steps: u32,
    pub nodes: u64,
    pub lemma_steps: u32,
}

impl CertBudgets {
    /// Sweep defaults: 1000/100k is measured kill-equivalent to 2000/200k
    /// over a full frontier sweep (byte-identical certificates) at ~4×
    /// less wall. Raise via flags for thorough runs; the fuel controls ran
    /// at 8000/800k.
    pub const SWEEP: CertBudgets = CertBudgets {
        steps: 1000,
        nodes: 100_000,
        lemma_steps: 4096,
    };

    /// The soundness battery's budgets — the doubled trace bound whose
    /// kill-equivalence to `SWEEP` was measured. The battery pays it
    /// because a missed candidate there is a missed chance to catch a
    /// checker bug.
    pub const THOROUGH: CertBudgets = CertBudgets {
        steps: 2000,
        nodes: 200_000,
        lemma_steps: 4096,
    };
}

impl Default for CertBudgets {
    fn default() -> Self {
        CertBudgets::SWEEP
    }
}

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

/// Parse errors from `PTerm::from_str` — the inverse of `Display`.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct PTermParseError(pub String);

impl fmt::Display for PTermParseError {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        f.write_str(&self.0)
    }
}

impl std::error::Error for PTermParseError {}

impl FromStr for PTerm {
    type Err = PTermParseError;

    /// The exact inverse of `Display` (round-trip test below), and the
    /// reader for the wrapper column of `data/certificates/ratchet_kills.tsv`:
    /// `\` is a lambda whose body extends to the end of its group, digits
    /// are 1-indexed de Bruijn, `Z`/`Q`/`?i` are metavariables,
    /// juxtaposition is left-associated application, parens group.
    fn from_str(s: &str) -> Result<PTerm, PTermParseError> {
        let c: Vec<char> = s.chars().collect();
        let (t, pos) = parse_expr(&c, 0)?;
        if pos != c.len() {
            return Err(PTermParseError(format!(
                "trailing `{}` in pattern `{s}`",
                c[pos]
            )));
        }
        Ok(t)
    }
}

fn parse_expr(c: &[char], mut pos: usize) -> Result<(PTerm, usize), PTermParseError> {
    let mut acc: Option<PTerm> = None;
    while pos < c.len() && c[pos] != ')' {
        if c[pos] == ' ' {
            pos += 1;
            continue;
        }
        let (atom, next) = parse_atom(c, pos)?;
        pos = next;
        acc = Some(match acc {
            None => atom,
            Some(f) => papp(f, atom),
        });
    }
    match acc {
        Some(t) => Ok((t, pos)),
        None => Err(PTermParseError("empty pattern expression".into())),
    }
}

fn parse_atom(c: &[char], pos: usize) -> Result<(PTerm, usize), PTermParseError> {
    match c[pos] {
        '(' => {
            let (t, next) = parse_expr(c, pos + 1)?;
            if c.get(next) != Some(&')') {
                return Err(PTermParseError("unclosed paren".into()));
            }
            Ok((t, next + 1))
        }
        // A lambda body extends to the end of the enclosing group, exactly
        // as `Display` emits it (parenthesized only where an application
        // would otherwise swallow the binder).
        '\\' => {
            let (b, next) = parse_expr(c, pos + 1)?;
            Ok((plam(b), next))
        }
        'Z' => Ok((PTerm::Meta(0), pos + 1)),
        'Q' => Ok((PTerm::Meta(1), pos + 1)),
        '?' => {
            let (n, next) = parse_num(c, pos + 1)?;
            Ok((PTerm::Meta(n), next))
        }
        d if d.is_ascii_digit() => {
            let (n, next) = parse_num(c, pos)?;
            Ok((PTerm::Var(n), next))
        }
        other => Err(PTermParseError(format!("unexpected `{other}` in pattern"))),
    }
}

fn parse_num(c: &[char], mut pos: usize) -> Result<(u32, usize), PTermParseError> {
    let start = pos;
    while pos < c.len() && c[pos].is_ascii_digit() {
        pos += 1;
    }
    let s: String = c[start..pos].iter().collect();
    s.parse()
        .map(|n| (n, pos))
        .map_err(|e| PTermParseError(format!("bad index `{s}`: {e}")))
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

/// Shift free indices *strictly above* `cutoff` by `d`. The cutoff
/// convention differs from `escalation`'s shift (which lifts at `>=`):
/// indices here are 1-based with `cutoff` counting binders already
/// crossed, so `Var(cutoff)` is bound and must not move.
fn shift_above(t: &PTerm, d: u32, cutoff: u32) -> PTerm {
    match t {
        PTerm::Var(n) => {
            if *n > cutoff {
                PTerm::Var(n + d)
            } else {
                t.clone()
            }
        }
        PTerm::Meta(i) => PTerm::Meta(*i),
        PTerm::Lam(b) => plam(shift_above(b, d, cutoff + 1)),
        PTerm::App(f, a) => papp(shift_above(f, d, cutoff), shift_above(a, d, cutoff)),
    }
}

/// Substitute `s` for `Var(j)` and decrement free variables above `j`
/// (the one-pass β-substitution; matches the reference reducer in
/// `tools/certificates/loop32_trace.py`).
///
/// When `s` is pattern-closed, `shift_above(s, 1, 0)` is the identity —
/// the cutoff tracks binder depth, so every `Var` in a closed `s`
/// satisfies `n <= cutoff` and `Meta` is never touched — and the
/// per-binder re-shift is skipped. Without the skip one contraction
/// costs O(#Lam(body) × |arg|) on top of the O(|body| + occ × |arg|)
/// that `head_step`'s pre-contraction bound budgets for; a sampled
/// frontier sweep spent half its CPU inside `shift_above`.
fn subst_dec(t: &PTerm, j: u32, s: &PTerm) -> PTerm {
    subst_dec_c(t, j, s, s.max_free(0) == 0)
}

fn subst_dec_c(t: &PTerm, j: u32, s: &PTerm, s_closed: bool) -> PTerm {
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
        PTerm::Lam(b) if s_closed => plam(subst_dec_c(b, j + 1, s, true)),
        PTerm::Lam(b) => plam(subst_dec_c(b, j + 1, &shift_above(s, 1, 0), false)),
        PTerm::App(f, a) => papp(
            subst_dec_c(f, j, s, s_closed),
            subst_dec_c(a, j, s, s_closed),
        ),
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

/// Exhaustive by choice, like the crate's other failure enums: a new
/// variant SHOULD break this match rather than print a catch-all.
impl fmt::Display for CheckFail {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            CheckFail::MetaHead(i) => write!(f, "Meta reached the spine head at step {i}"),
            CheckFail::ReachedNf(i) => write!(f, "head normal form at step {i}, target unmatched"),
            CheckFail::BadIntermediate(i) => write!(f, "abstraction/Meta source state at step {i}"),
            CheckFail::Budget => write!(f, "step budget exhausted"),
            CheckFail::TooBig(i) => write!(f, "node budget exceeded at step {i}"),
            CheckFail::Shape(s) => f.write_str(s),
        }
    }
}

impl std::error::Error for CheckFail {}

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

impl fmt::Display for CertFail {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            CertFail::Open(c) => write!(f, "OPEN: {c}"),
            CertFail::Desc(c) => write!(f, "DESC: {c}"),
            CertFail::Base(c) => write!(f, "BASE: {c}"),
            CertFail::Init => write!(f, "INIT never matched within its budgets"),
            CertFail::Shape(s) => f.write_str(s),
        }
    }
}

impl std::error::Error for CertFail {}

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

/// The shape gates all three trusted verifiers share: `A` and `C0`
/// closed, `W` a pattern-closed wrapper whose holes are all `Meta(0)`,
/// and the target closed. Each verifier's extra data (HTR's eraser, the
/// selector's `P`) is gated beside its own obligations; a certificate
/// that fails both a shared gate and an extra one now reports the shared
/// reason, which is the only behavioural difference from checking them
/// inline.
fn check_common_shape(t: &Term, a: &Term, c0: &Term, w: &PTerm) -> Result<(), &'static str> {
    if !a.is_closed() {
        return Err("A not closed");
    }
    if !c0.is_closed() {
        return Err("C0 not closed");
    }
    if !w.contains_meta() {
        return Err("W has no Meta");
    }
    if w.max_free(0) != 0 {
        return Err("W not pattern-closed");
    }
    if !wrapper_holes_are_meta0(w) {
        return Err("W holes must all be Meta(0)");
    }
    if !t.is_closed() {
        return Err("target not closed");
    }
    Ok(())
}

/// The trusted verifier. Establishes that `t` has no normal form
/// (per the glue theorem in certificate specification §3) or fails.
pub fn verify(t: &Term, cert: &Ratchet, b: &CertBudgets) -> Result<CertReport, CertFail> {
    let (lemma_steps, init_steps, max_nodes) = (b.lemma_steps, b.steps, b.nodes);
    check_common_shape(t, &cert.a, &cert.c0, &cert.w).map_err(CertFail::Shape)?;

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
    let landing = init_landing(t, &a, &w, &c0, init_steps, max_nodes).ok_or(CertFail::Init)?;
    Ok(CertReport {
        open_steps,
        desc_steps,
        base_steps,
        init_steps: landing.steps,
        init_tower: landing.tower,
        init_trail: landing.trail.len() as u32,
    })
}

/// Where INIT landed: the state `λᵏ.(A Wⁿ[C0] y⃗)`, decomposed. Returned
/// whole so that consumers which need the landing itself — the Lean
/// emitter quantifies over `k`, `n` and `y⃗` — read it off the search
/// instead of replaying the head trace and re-deriving it.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct InitLanding {
    /// Concrete head steps from the target to the matched milestone.
    pub steps: u32,
    /// Tower height `n` of the matched milestone argument.
    pub tower: u32,
    /// Leading binders `k` of the landing state.
    pub binders: u32,
    /// Trailing spine arguments `y⃗` carried past the tower (v1.2), in
    /// spine order. Entries may be open: lifting never substitutes into,
    /// shifts, or inspects them.
    pub trail: Vec<PTerm>,
}

/// The shared INIT loop (v1.2 shape, soundness note above): bounded
/// concrete head reduction from `t`, matching `λᵏ.(A Wⁿ[C0] y⃗)`.
/// Returns the landing on the first match.
pub fn init_landing(
    t: &Term,
    a: &PTerm,
    w: &PTerm,
    c0: &PTerm,
    init_steps: u32,
    max_nodes: u64,
) -> Option<InitLanding> {
    let mut cur = PTerm::from_term(t);
    let mut size = cur.nodes() as i64;
    for i in 0..=init_steps {
        let (binders, body) = strip_lams(&cur);
        if let Some((h, args)) = spine(body) {
            if **h == *a {
                if let Some(n) = tower_index(w, c0, args[0]) {
                    return Some(InitLanding {
                        steps: i,
                        tower: n,
                        binders,
                        trail: args[1..].iter().map(|y| (***y).clone()).collect(),
                    });
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

impl fmt::Display for HtrFail {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            HtrFail::Base(c) => write!(f, "BASE: {c}"),
            HtrFail::Open(c) => write!(f, "OPEN: {c}"),
            HtrFail::Spread(c) => write!(f, "SPREAD: {c}"),
            HtrFail::Peel(c) => write!(f, "PEEL: {c}"),
            HtrFail::Bounce(c) => write!(f, "BOUNCE: {c}"),
            HtrFail::Erase(c) => write!(f, "ERASE: {c}"),
            HtrFail::Init => write!(f, "INIT never matched within its budgets"),
            HtrFail::Shape(s) => f.write_str(s),
        }
    }
}

impl std::error::Error for HtrFail {}

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
    b: &CertBudgets,
) -> Result<HtrReport, HtrFail> {
    let (lemma_steps, init_steps, max_nodes) = (b.lemma_steps, b.steps, b.nodes);
    check_common_shape(t, &cert.a, &cert.c0, &cert.w).map_err(HtrFail::Shape)?;
    if !cert.i.is_closed() {
        return Err(HtrFail::Shape("I not closed"));
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
    let landing = init_landing(t, &a, &w, &c0, init_steps, max_nodes).ok_or(HtrFail::Init)?;
    Ok(HtrReport {
        obligation_steps: [base, open, spread, peel, bounce, erase],
        init_steps: landing.steps,
        init_tower: landing.tower,
        init_trail: landing.trail.len() as u32,
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

impl fmt::Display for SelFail {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            SelFail::Open(c) => write!(f, "OPEN: {c}"),
            SelFail::Fan(c) => write!(f, "FAN: {c}"),
            SelFail::Select(c) => write!(f, "SELECT: {c}"),
            SelFail::Base(c) => write!(f, "BASE: {c}"),
            SelFail::Init => write!(f, "INIT never matched within its budgets"),
            SelFail::Shape(s) => f.write_str(s),
        }
    }
}

impl std::error::Error for SelFail {}

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
    b: &CertBudgets,
) -> Result<SelReport, SelFail> {
    let (lemma_steps, init_steps, max_nodes) = (b.lemma_steps, b.steps, b.nodes);
    check_common_shape(t, &cert.a, &cert.c0, &cert.w).map_err(SelFail::Shape)?;
    if cert.p.max_free(0) != 0 {
        return Err(SelFail::Shape("P not pattern-closed"));
    }
    if !wrapper_holes_are_meta0(&cert.p) {
        return Err(SelFail::Shape("P holes must all be Meta(0)"));
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
    let landing = init_landing(t, &a, &w, &c0, init_steps, max_nodes).ok_or(SelFail::Init)?;
    Ok(SelReport {
        obligation_steps: [open, fan, select, base],
        init_steps: landing.steps,
        init_tower: landing.tower,
        init_trail: landing.trail.len() as u32,
    })
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::blc::wire::parse_all;

    pub(super) const LOOP32: &str = "01000110001100001011010000110110";

    pub(super) fn loop32_cert() -> Ratchet {
        // A = λx. x x (λy. y x); W[Z] = λy. y Z; C0 = λ_. A
        let a = parse_all("0001011010000110110").unwrap();
        let w = plam(papp(pvar(1), PTerm::Meta(0)));
        let c0 = Term::Lam(Rc::new(a.clone()));
        Ratchet { a, w, c0 }
    }

    #[test]
    fn loop32_manual_certificate_verifies() {
        let t = parse_all(LOOP32).unwrap();
        let b = CertBudgets {
            steps: 64,
            nodes: 1 << 20,
            lemma_steps: 64,
        };
        let rep = verify(&t, &loop32_cert(), &b).unwrap();
        // Measured in tools/certificates/loop32_trace.py: OPEN is one step,
        // DESC two, BASE one, and the first milestone is one step in.
        assert_eq!(rep.open_steps, 1);
        assert_eq!(rep.desc_steps, 2);
        assert_eq!(rep.base_steps, 1);
        assert_eq!(rep.init_steps, 1);
        assert_eq!(rep.init_tower, 0);
    }

    #[test]
    fn halting_lookalike_fails_verify() {
        // D (λx. x I) halts (the escalation engine has the twin test); a forged loop32
        // certificate against it must die in INIT, not certify.
        let t = parse_all("01000110100001100010").unwrap();
        assert!(t.is_closed());
        let b = CertBudgets {
            steps: 4096,
            nodes: 1 << 20,
            lemma_steps: 64,
        };
        assert!(matches!(verify(&t, &loop32_cert(), &b), Err(CertFail::Init)));
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
    fn pterm_display_parse_round_trips() {
        // Every shape Display can emit: bare metas by all three spellings,
        // multi-digit indices (juxtaposition must not glue `1 2` into 12),
        // an abstraction in function position (parenthesized), an
        // application in argument position, nested wrappers.
        let cases = vec![
            PTerm::Meta(0),
            PTerm::Meta(1),
            PTerm::Meta(7),
            pvar(12),
            plam(papp(pvar(1), PTerm::Meta(0))),
            papp(pvar(1), pvar(2)),
            papp(plam(pvar(1)), PTerm::Meta(0)),
            papp(pvar(1), papp(pvar(2), pvar(3))),
            papp(papp(pvar(1), PTerm::Meta(1)), plam(papp(pvar(11), pvar(2)))),
            plam(plam(papp(
                papp(pvar(2), PTerm::Meta(0)),
                papp(pvar(1), pvar(1)),
            ))),
            loop32_cert().w,
        ];
        for p in cases {
            let s = p.to_string();
            assert_eq!(s.parse::<PTerm>(), Ok(p.clone()), "round trip of `{s}`");
        }
        // …and the errors are errors, not panics.
        assert!("".parse::<PTerm>().is_err());
        assert!("(\\1".parse::<PTerm>().is_err());
        assert!("1)".parse::<PTerm>().is_err());
        assert!("1 X".parse::<PTerm>().is_err());
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
