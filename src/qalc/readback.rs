//! The composed full-NF machine — the differential port of
//! `qalc/readback.py`: the forward-only readback controller over the
//! audited kernel, the BA tape-alphabet adapters, and typed
//! totalization.
//!
//! The composed carrier has one lambda-IAM transport marker (`BA`,
//! [`TapeEntry::BulletBa`]). The audited kernel is written with the
//! plain bullet, so `kernel_token` translates BA to plain on entry
//! and `composed_token` plain back to BA on every running exit —
//! top-level tape entries only, nonrecursive, total at any depth.
//!
//! Totalization: the reference wraps `_nf_step_partial` in a
//! `try/except` that lands any host exception in a deterministic
//! `error-machine-exception` state carrying the complete offending
//! source. Here every fallible operation returns a [`ComposedDefect`]
//! and [`nf_step`] maps it through one totalization constructor to the
//! same landing, with the kind normalized to the stable `host-fault`
//! category — the CPython exception class name adds no injectivity
//! (one deterministic source has one first failure) and is not state
//! identity. Known deviation, matching the kernel port's discipline:
//! where the reference builds a virtual binder identity with a `None`
//! instance (vlam on a malformed non-lp log head), this port lands a
//! fault instead of widening the identity type; and kernel defects
//! (`PathOffTerm`, `UnboundVar`, `LogUnderflow`) fault here where the
//! reference would crash into the same wrapper — except `LogUnderflow`,
//! where the reference silently slices. All are unreachable on the
//! pinned carriers.

use std::collections::HashMap;

use super::amp::Amp;
use super::kernel::{instance, step};
use super::mark::{Alpha, Epoch, GateTag, LogEntry, Lp, Rb, Rbl, TapeEntry};
use super::state::{
    BinderIdentity, BinderMark, ErrorGarbage, ErrorKind, Kind, Nf, NfRun, NfState, NfTerminal,
    RunCore, ScopeResidue, TerminalCarrier, TerminalGarbage, Vert, Zipper,
};
use super::term::{binder_path, subterm, Dir, GateName, Path, Term};
use super::wire::CertEntries;
use std::sync::Arc;

/// One unmerged composed transition row, in the reference's
/// `(sign, k_incr, rule, state)` shape.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct NfRow {
    pub sign: i8,
    pub dk: u8,
    pub rule: String,
    pub state: NfState,
}

/// Explicit composed-machine selection. Gate 2 changes the kernel delegate
/// and one readback priority row; it is a value threaded by callers, never an
/// ambient mutable dispatcher like the Python harness's `configure()`.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum MachineKind {
    Gate1,
    Gate2,
}

/// A composed-machine host defect: the typed analogue of the Python
/// exceptions `nf_step`'s wrapper intercepts. Carried only to the
/// totalization constructor — never state identity.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ComposedDefect {
    /// A tree/zipper path left the output tree.
    PathOffTree,
    /// The readback cursor is not an open hole in the expected arm
    /// state (fill/disarm/arm preconditions).
    CursorState,
    /// `_replace_rb`: the delimiter to replace is not present.
    DelimiterMissing,
    /// A kernel defect crossed the adapter (off-term path, unbound
    /// variable, short log).
    Kernel,
    /// A virtual binder identity would need a `None` instance.
    NoVirtualInstance,
    /// `_merge_binders`: duplicate output binder path.
    DuplicateBinderPath,
    /// A predecessor inverse refused its landing (the reference's
    /// `ValueError`s in `*_predecessor`).
    Inverse,
}

impl From<super::kernel::Defect> for ComposedDefect {
    fn from(_: super::kernel::Defect) -> Self {
        ComposedDefect::Kernel
    }
}

fn det(rule: &str, s: NfState) -> Vec<NfRow> {
    vec![NfRow {
        sign: 1,
        dk: 0,
        rule: rule.to_string(),
        state: s,
    }]
}

// ---------------------------------------------------------------------------
// BA adapters (top-level tape entries only — `application_invariant.py`
// gates the fact that BA never occurs below top level).

pub(super) fn kernel_token(t: &RunCore) -> RunCore {
    let mut out = t.clone();
    for e in &mut out.tape {
        if *e == TapeEntry::BulletBa {
            *e = TapeEntry::Bullet;
        }
    }
    out
}

pub(super) fn composed_token(mut t: RunCore) -> RunCore {
    for e in &mut t.tape {
        if *e == TapeEntry::Bullet {
            *e = TapeEntry::BulletBa;
        }
    }
    t
}

// ---------------------------------------------------------------------------
// Output-tree operations. Iterative where depth is unbounded.

fn child(tree: &Nf, d: Dir) -> Result<&Nf, ComposedDefect> {
    match (d, tree) {
        (Dir::B, Nf::Lam(b)) => Ok(b),
        (Dir::F, Nf::App(f, _)) => Ok(f),
        (Dir::A, Nf::App(_, a)) => Ok(a),
        _ => Err(ComposedDefect::PathOffTree),
    }
}

fn at<'a>(tree: &'a Nf, path: &[Dir]) -> Result<&'a Nf, ComposedDefect> {
    let mut cur = tree;
    for &d in path {
        cur = child(cur, d)?;
    }
    Ok(cur)
}

/// Path-functional update. The rewritten spine is rebuilt; every
/// untouched sibling is shared (`Arc` clone), as the reference shares
/// tuples. Iterative: output depth is runtime-grown.
fn replace(tree: &Nf, path: &[Dir], value: Nf) -> Result<Nf, ComposedDefect> {
    let mut spine: Vec<(&Nf, Dir)> = Vec::with_capacity(path.len());
    let mut cur = tree;
    for &d in path {
        spine.push((cur, d));
        cur = child(cur, d)?;
    }
    let mut acc = value;
    for (node, d) in spine.into_iter().rev() {
        acc = match (d, node) {
            (Dir::B, Nf::Lam(_)) => Nf::Lam(Arc::new(acc)),
            (Dir::F, Nf::App(_, a)) => Nf::App(Arc::new(acc), Arc::clone(a)),
            (Dir::A, Nf::App(f, _)) => Nf::App(Arc::clone(f), Arc::new(acc)),
            _ => unreachable!("spine nodes were verified by child()"),
        };
    }
    Ok(acc)
}

/// Open-hole addresses in preorder (`b` under lam; `f` then `a` under
/// app) — the reference's `holes`, iteratively.
fn holes(tree: &Nf) -> Vec<Path> {
    let mut out = Vec::new();
    let mut stack: Vec<(&Nf, Path)> = vec![(tree, Vec::new())];
    while let Some((node, prefix)) = stack.pop() {
        match node {
            Nf::Hole { .. } => out.push(prefix),
            Nf::Lam(b) => {
                let mut p = prefix;
                p.push(Dir::B);
                stack.push((b, p));
            }
            Nf::App(f, a) => {
                let mut pa = prefix.clone();
                pa.push(Dir::A);
                stack.push((a, pa));
                let mut pf = prefix;
                pf.push(Dir::F);
                stack.push((f, pf));
            }
            Nf::Var(_) | Nf::Gate(_) => {}
        }
    }
    out
}

fn leading_lambdas(tree: &Nf) -> usize {
    let mut n = 0;
    let mut cur = tree;
    while let Nf::Lam(b) = cur {
        n += 1;
        cur = b;
    }
    n
}

pub fn canonical_boolean(tree: &Nf) -> Option<u8> {
    if let Nf::Lam(b) = tree {
        if let Nf::Lam(b2) = b.as_ref() {
            if let Nf::Var(i) = b2.as_ref() {
                if *i == 2 {
                    return Some(0);
                }
                if *i == 1 {
                    return Some(1);
                }
            }
        }
    }
    None
}

// ---------------------------------------------------------------------------
// Zipper operations.

fn next_cursor(tree: &Nf) -> Option<Path> {
    holes(tree).into_iter().next()
}

fn fill(z: &Zipper, value: Nf) -> Result<Zipper, ComposedDefect> {
    let Some(cursor) = &z.cursor else {
        return Err(ComposedDefect::CursorState);
    };
    if !matches!(at(&z.tree, cursor)?, Nf::Hole { .. }) {
        return Err(ComposedDefect::CursorState);
    }
    let tree = replace(&z.tree, cursor, value)?;
    let cursor = next_cursor(&tree);
    Ok(Zipper {
        tree,
        cursor,
        binders: z.binders.clone(),
        residues: z.residues.clone(),
    })
}

fn disarm(z: &Zipper) -> Result<Zipper, ComposedDefect> {
    let Some(cursor) = &z.cursor else {
        return Err(ComposedDefect::CursorState);
    };
    if !matches!(at(&z.tree, cursor)?, Nf::Hole { armed: true }) {
        return Err(ComposedDefect::CursorState);
    }
    let tree = replace(&z.tree, cursor, Nf::Hole { armed: false })?;
    Ok(Zipper {
        tree,
        cursor: z.cursor.clone(),
        binders: z.binders.clone(),
        residues: z.residues.clone(),
    })
}

fn arm(z: &Zipper) -> Result<Zipper, ComposedDefect> {
    let Some(cursor) = &z.cursor else {
        return Err(ComposedDefect::CursorState);
    };
    if !matches!(at(&z.tree, cursor)?, Nf::Hole { armed: false }) {
        return Err(ComposedDefect::CursorState);
    }
    let tree = replace(&z.tree, cursor, Nf::Hole { armed: true })?;
    Ok(Zipper {
        tree,
        cursor: z.cursor.clone(),
        binders: z.binders.clone(),
        residues: z.residues.clone(),
    })
}

fn emit_lambda(z: &Zipper, identity: BinderIdentity) -> Result<Zipper, ComposedDefect> {
    let Some(cursor) = z.cursor.clone() else {
        return Err(ComposedDefect::CursorState);
    };
    let updated = fill(z, Nf::Lam(Arc::new(Nf::Hole { armed: false })))?;
    let mut body_cursor = cursor.clone();
    body_cursor.push(Dir::B);
    let mut binders = updated.binders;
    binders.push(BinderMark {
        output: cursor,
        identity,
    });
    Ok(Zipper {
        tree: updated.tree,
        cursor: Some(body_cursor),
        binders,
        residues: updated.residues,
    })
}

/// A left-associated rigid-head spine with `arity` armed argument
/// holes.
fn spine(head: Nf, arity: usize) -> Nf {
    let mut term = head;
    for _ in 0..arity {
        term = Nf::App(Arc::new(term), Arc::new(Nf::Hole { armed: true }));
    }
    term
}

/// Output addresses of a left-associated rigid-head spine.
fn spine_schedule(output_root: &[Dir], arity: usize) -> Vec<Path> {
    holes(&spine(Nf::Var(1), arity))
        .into_iter()
        .map(|rel| {
            let mut p = output_root.to_vec();
            p.extend(rel);
            p
        })
        .collect()
}

/// Replace the first tape entry equal to `old` with `new` — the
/// reference's `_replace_rb`, over the composed tape alphabet.
fn replace_rb(entries: &[TapeEntry], old: &Rb, new: Rb) -> Result<Vec<TapeEntry>, ComposedDefect> {
    let mut out = Vec::with_capacity(entries.len());
    let mut replaced = false;
    for e in entries {
        if !replaced && matches!(e, TapeEntry::Rb(r) if r == old) {
            out.push(TapeEntry::Rb(new.clone()));
            replaced = true;
        } else {
            out.push(e.clone());
        }
    }
    if !replaced {
        return Err(ComposedDefect::DelimiterMissing);
    }
    Ok(out)
}

/// Index of `identity` among the emitted binders enclosing `cursor`
/// (innermost = 1), or `None`.
fn binder_index(z: &Zipper, cursor: &[Dir], identity: &BinderIdentity) -> Option<u64> {
    let enclosing: Vec<&BinderMark> = z
        .binders
        .iter()
        .filter(|mark| {
            mark.output.len() < cursor.len()
                && cursor[..mark.output.len()] == mark.output[..]
                && cursor[mark.output.len()] == Dir::B
        })
        .collect();
    for (reverse_index, mark) in enclosing.iter().rev().enumerate() {
        if &mark.identity == identity {
            return Some(reverse_index as u64 + 1);
        }
    }
    None
}

/// Canonical preorder key for output-binder marks (`b < f < a`).
fn binder_path_key(path: &[Dir]) -> Vec<u8> {
    path.iter()
        .map(|d| match d {
            Dir::B => 0,
            Dir::F => 1,
            Dir::A => 2,
        })
        .collect()
}

fn binders_canonical(binders: &[BinderMark]) -> bool {
    let paths: Vec<&Path> = binders.iter().map(|m| &m.output).collect();
    let distinct = {
        let mut seen = paths.clone();
        seen.sort();
        seen.dedup();
        seen.len() == paths.len()
    };
    distinct
        && binders
            .windows(2)
            .all(|w| binder_path_key(&w[0].output) <= binder_path_key(&w[1].output))
}

fn merge_binders(
    remaining: &[BinderMark],
    derived: &[BinderMark],
) -> Result<Vec<BinderMark>, ComposedDefect> {
    let mut merged: Vec<BinderMark> = remaining.to_vec();
    merged.extend_from_slice(derived);
    let mut paths: Vec<&Path> = merged.iter().map(|m| &m.output).collect();
    paths.sort();
    paths.dedup();
    if paths.len() != merged.len() {
        return Err(ComposedDefect::DuplicateBinderPath);
    }
    merged.sort_by_cached_key(|m| binder_path_key(&m.output));
    Ok(merged)
}

// ---------------------------------------------------------------------------
// Virtual-carrier decoding and residue construction.

/// Decode an output-determined virtual-answer carrier: bit and bullet
/// shape from the output; gate, instance, and epoch stay the exact
/// independent predecessor-fibre coordinate.
fn virtual_prefix_code<'a>(
    prefix: &'a [TapeEntry],
    output: &Nf,
    output_path: &[Dir],
    code_path: &[Dir],
    binders: &[BinderMark],
) -> Option<(GateTag, &'a Lp, &'a Epoch, [BinderMark; 2])> {
    let bit = canonical_boolean(output)?;
    let alpha: &Alpha = match (bit, prefix) {
        (0, [TapeEntry::Alpha(a)]) => a,
        (1, [TapeEntry::BulletBa, TapeEntry::Alpha(a)]) => a,
        _ => return None,
    };
    if alpha.bit != bit {
        return None;
    }
    let outer = BinderMark {
        output: output_path.to_vec(),
        identity: BinderIdentity::Virtual {
            gate: alpha.gate,
            instance: alpha.instance.clone(),
            phase: 0,
            code: code_path.to_vec(),
        },
    };
    let inner = BinderMark {
        output: {
            let mut p = output_path.to_vec();
            p.push(Dir::B);
            p
        },
        identity: BinderIdentity::Virtual {
            gate: alpha.gate,
            instance: alpha.instance.clone(),
            phase: 1,
            code: code_path.to_vec(),
        },
    };
    if !binders.contains(&outer) || !binders.contains(&inner) {
        return None;
    }
    Some((alpha.gate, &alpha.instance, &alpha.epoch, [outer, inner]))
}

/// The scope residue a completing child leaves, and the surviving
/// binder marks.
fn scope_residue(
    prefix: &[TapeEntry],
    rb: &Rb,
    z: &Zipper,
) -> Result<(ScopeResidue, Vec<BinderMark>), ComposedDefect> {
    let output = at(&z.tree, &rb.output)?;
    if prefix.iter().all(|e| *e == TapeEntry::BulletBa) && prefix.len() == leading_lambdas(output) {
        return Ok((
            ScopeResidue::Pure {
                output: rb.output.clone(),
            },
            z.binders.clone(),
        ));
    }
    match virtual_prefix_code(prefix, output, &rb.output, &rb.code, &z.binders) {
        Some((gate, invoked, epoch, derived)) if binders_canonical(&z.binders) => {
            let remaining: Vec<BinderMark> = z
                .binders
                .iter()
                .filter(|m| !derived.contains(m))
                .cloned()
                .collect();
            Ok((
                ScopeResidue::Virtual {
                    output: rb.output.clone(),
                    gate,
                    instance: invoked.clone(),
                    epoch: epoch.clone(),
                },
                remaining,
            ))
        }
        _ => Ok((
            ScopeResidue::Exact {
                output: rb.output.clone(),
                prefix: prefix.to_vec(),
            },
            z.binders.clone(),
        )),
    }
}

/// The guarded rootdone compression's exact terminal residue.
fn terminal_garbage(token: &RunCore, rb: &Rb, prefix: &[TapeEntry], z: &Zipper) -> TerminalGarbage {
    match virtual_prefix_code(prefix, &z.tree, &rb.output, &rb.code, &z.binders) {
        None => {
            let output_determines_prefix = prefix.iter().all(|e| *e == TapeEntry::BulletBa)
                && prefix.len() == leading_lambdas(&z.tree);
            let carrier = if output_determines_prefix {
                None
            } else {
                Some(TerminalCarrier::Exact {
                    output: Vec::new(),
                    prefix: prefix.to_vec(),
                })
            };
            TerminalGarbage {
                carrier,
                frames: token.rs.clone(),
                storage: token.ks.clone(),
                binders: z.binders.clone(),
                residues: z.residues.clone(),
            }
        }
        Some(_) if !binders_canonical(&z.binders) => TerminalGarbage {
            carrier: Some(TerminalCarrier::Exact {
                output: Vec::new(),
                prefix: prefix.to_vec(),
            }),
            frames: token.rs.clone(),
            storage: token.ks.clone(),
            binders: z.binders.clone(),
            residues: z.residues.clone(),
        },
        Some((gate, invoked, epoch, derived)) => {
            let remaining: Vec<BinderMark> = z
                .binders
                .iter()
                .filter(|m| !derived.contains(m))
                .cloned()
                .collect();
            TerminalGarbage {
                carrier: Some(TerminalCarrier::Virtual {
                    output: Vec::new(),
                    gate,
                    instance: invoked.clone(),
                    epoch: epoch.clone(),
                }),
                frames: token.rs.clone(),
                storage: token.ks.clone(),
                binders: remaining,
                residues: z.residues.clone(),
            }
        }
    }
}

// ---------------------------------------------------------------------------
// Tape-shape recognizers.

fn first_rb(tape: &[TapeEntry]) -> Option<(&[TapeEntry], &Rb, &[TapeEntry])> {
    for (i, e) in tape.iter().enumerate() {
        if let TapeEntry::Rb(rb) = e {
            return Some((&tape[..i], rb, &tape[i + 1..]));
        }
    }
    None
}

/// Nearest scope delimiter after the complete leading BA prefix.
fn rb_after_output_bullets(tape: &[TapeEntry]) -> Option<(usize, &Rb, &[TapeEntry])> {
    let mut count = 0;
    while count < tape.len() && tape[count] == TapeEntry::BulletBa {
        count += 1;
    }
    match tape.get(count) {
        Some(TapeEntry::Rb(rb)) => Some((count, rb, &tape[count + 1..])),
        _ => None,
    }
}

/// The exact scheduled ENTER data: selected by the output schedule
/// installed by HEAD together with the lambda-IAM balance equation,
/// never by marker provenance.
fn enter_shape<'a>(
    token: &'a RunCore,
    z: &Zipper,
) -> Result<Option<(&'a Rb, Path, Path, Path)>, ComposedDefect> {
    if token.d != Vert::U
        || token.path.last() != Some(&Dir::F)
        || token.tape.first() != Some(&TapeEntry::BulletBa)
    {
        return Ok(None);
    }
    let Some(cursor) = &z.cursor else {
        return Ok(None);
    };
    if !matches!(at(&z.tree, cursor)?, Nf::Hole { armed: true }) {
        return Ok(None);
    }
    let Some((marker_count, parent_rb, _tail)) = rb_after_output_bullets(&token.tape) else {
        return Ok(None);
    };
    if parent_rb.pending.is_empty() || marker_count != parent_rb.pending.len() {
        return Ok(None);
    }
    let output_path = parent_rb.pending[0].clone();
    if *cursor != output_path {
        return Ok(None);
    }
    let function_path = token.path.clone();
    let mut argument_path = token.path[..token.path.len() - 1].to_vec();
    argument_path.push(Dir::A);
    Ok(Some((parent_rb, output_path, function_path, argument_path)))
}

/// `(leading bullets, lp, arity, rb)` at bound-head success.
fn head_shape<'a>(term: &Term, token: &'a RunCore) -> Option<(usize, &'a Lp, usize, &'a Rb)> {
    let tape = &token.tape;
    let mut leading = 0;
    while leading < tape.len() && tape[leading] == TapeEntry::BulletBa {
        leading += 1;
    }
    let Some(TapeEntry::Lp(lp)) = tape.get(leading) else {
        return None;
    };
    let mut arity_end = leading + 1;
    while arity_end < tape.len() && tape[arity_end] == TapeEntry::BulletBa {
        arity_end += 1;
    }
    let Some(TapeEntry::Rb(rb)) = tape.get(arity_end) else {
        return None;
    };
    if binder_path(term, &lp.occ)? != token.path {
        return None;
    }
    Some((leading, lp, arity_end - leading - 1, rb))
}

/// A gate interrogation whose argument head is rigid: the source shape
/// `lp · BA · BA · mu_g · BA^j · RB` at an emitted binder, the lp slice
/// carrying the matching gamma probe. `Err` mirrors the reference's
/// fault: it indexes binders against the raw cursor with no guard, so
/// an empty binder list short-circuits to no-shape but a missing
/// cursor beside nonempty binders raises (`len(None)`).
#[allow(clippy::type_complexity)]
fn neutral_probe_shape<'a>(
    term: &Term,
    token: &'a RunCore,
    z: &Zipper,
) -> Result<Option<(GateName, &'a Lp, u64, usize, &'a Rb, &'a [TapeEntry])>, ComposedDefect> {
    let tape = &token.tape;
    if token.d != Vert::U || tape.len() < 5 {
        return Ok(None);
    }
    let TapeEntry::Lp(lp) = &tape[0] else {
        return Ok(None);
    };
    if tape[1] != TapeEntry::BulletBa || tape[2] != TapeEntry::BulletBa {
        return Ok(None);
    }
    let TapeEntry::Mu(gate) = &tape[3] else {
        return Ok(None);
    };
    match lp.slice.first() {
        Some(LogEntry::Gam(g)) if g == gate => {}
        _ => return Ok(None),
    }
    let cursor = match (&z.cursor, z.binders.is_empty()) {
        (_, true) => return Ok(None),
        (Some(c), false) => c.as_slice(),
        (None, false) => return Err(ComposedDefect::CursorState),
    };
    let identity = BinderIdentity::Source {
        path: token.path.clone(),
        log: token.log.clone(),
    };
    let Some(index) = binder_index(z, cursor, &identity) else {
        return Ok(None);
    };
    let mut extra_end = 4;
    while extra_end < tape.len() && tape[extra_end] == TapeEntry::BulletBa {
        extra_end += 1;
    }
    let Some(TapeEntry::Rb(rb)) = tape.get(extra_end) else {
        return Ok(None);
    };
    let occurrence = &lp.occ;
    if occurrence.last() != Some(&Dir::A) {
        return Ok(None);
    }
    let mut parent_function = occurrence[..occurrence.len() - 1].to_vec();
    parent_function.push(Dir::F);
    if subterm(term, &parent_function).is_none() {
        return Ok(None);
    }
    Ok(Some((*gate, lp, index, extra_end - 4, rb, &tape[4..])))
}

// ---------------------------------------------------------------------------
// Error landings.

fn error_row(rule: &str, token: &RunCore, z: &Zipper) -> Vec<NfRow> {
    vec![NfRow {
        sign: 1,
        dk: 0,
        rule: format!("error-{rule}"),
        state: NfState::RunDone(NfTerminal::Error {
            kind: ErrorKind::Typed(rule.to_string()),
            garbage: ErrorGarbage::Composed {
                token: token.clone(),
                zipper: z.clone(),
            },
        }),
    }]
}

// ---------------------------------------------------------------------------
// The composed step.

/// The initial composed state: root delimiter on the tape, open root
/// hole under the cursor.
pub fn nf_init() -> NfState {
    NfState::Run(NfRun {
        token: RunCore {
            path: Vec::new(),
            d: Vert::D,
            log: Vec::new(),
            tape: vec![TapeEntry::Rb(Rb {
                depth: 0,
                output: Vec::new(),
                code: Vec::new(),
                pending: Vec::new(),
            })],
            vb: None,
            rs: Vec::new(),
            ks: Vec::new(),
        },
        zipper: Zipper {
            tree: Nf::Hole { armed: false },
            cursor: Some(Vec::new()),
            binders: Vec::new(),
            residues: Vec::new(),
        },
    })
}

/// One composed step before totalization — the reference's
/// `_nf_step_partial`, arm for arm.
fn nf_step_partial(
    machine: MachineKind,
    term: &Term,
    state: &NfState,
    cert: Option<&CertEntries>,
) -> Result<Vec<NfRow>, ComposedDefect> {
    let (token, zipper) = match state {
        NfState::Done { terminal, tick } => {
            return Ok(det(
                "tick",
                NfState::Done {
                    terminal: terminal.clone(),
                    tick: tick + 1,
                },
            ));
        }
        NfState::RunDone(terminal) => {
            return Ok(det(
                "halt",
                NfState::Done {
                    terminal: terminal.clone(),
                    tick: 0,
                },
            ));
        }
        NfState::Run(NfRun { token, zipper }) => (token, zipper),
    };

    // Gate 2's only composed priority override. A query reaching the inner
    // CNOT continuation binder must expose the persistent port before the
    // generic b4 row. Midpoint completion has the same priority. Error rows
    // deliberately fall through to the ordinary adapter, whose selected
    // kernel delegate types their landing exactly like the Python wrapper.
    if machine == MachineKind::Gate2 {
        let plain = kernel_token(token);
        let custom = super::shadow::finish_stage(&plain)
            .or_else(|| super::shadow::deliver_port(term, &plain).map(super::shadow::split_rows));
        if let Some(rows) = custom {
            let mut out = Vec::with_capacity(rows.len());
            for row in rows {
                let super::state::KState::Run(target) = row.state else {
                    out.clear();
                    break;
                };
                out.push(NfRow {
                    sign: row.sign,
                    dk: row.dk,
                    rule: row.rule.to_string(),
                    state: NfState::Run(NfRun {
                        token: composed_token(target),
                        zipper: zipper.clone(),
                    }),
                });
            }
            if !out.is_empty() {
                return Ok(out);
            }
        }
    }

    // A virtual boolean is a Church boolean whose two binders do not
    // occur in the immutable source term; the zipper supplies their
    // identities.
    if let Some(vb) = &token.vb {
        if vb.k < 2 && zipper.cursor.is_some() {
            if let Some(TapeEntry::Rb(rb)) = token.tape.first() {
                let Some(invoked) = instance(token) else {
                    return Err(ComposedDefect::NoVirtualInstance);
                };
                let identity = BinderIdentity::Virtual {
                    gate: vb.gate,
                    instance: invoked.clone(),
                    phase: vb.k,
                    code: rb.code.clone(),
                };
                let zipper2 = emit_lambda(zipper, identity)?;
                let rb2 = Rb {
                    depth: rb.depth + 1,
                    output: rb.output.clone(),
                    code: rb.code.clone(),
                    pending: rb.pending.clone(),
                };
                let mut tape = vec![TapeEntry::Rb(rb2)];
                tape.extend_from_slice(&token.tape[1..]);
                let token2 = RunCore {
                    path: token.path.clone(),
                    d: token.d,
                    log: token.log.clone(),
                    tape,
                    vb: Some(super::state::Vb {
                        gate: vb.gate,
                        bit: vb.bit,
                        k: vb.k + 1,
                    }),
                    rs: token.rs.clone(),
                    ks: token.ks.clone(),
                };
                return Ok(det(
                    "vlam",
                    NfState::Run(NfRun {
                        token: token2,
                        zipper: zipper2,
                    }),
                ));
            }
        }
        if vb.k == 2 && zipper.cursor.is_some() {
            if let Some(TapeEntry::Rb(rb)) = token.tape.first() {
                let Some(invoked) = instance(token) else {
                    return Ok(error_row("no-instance", token, zipper));
                };
                let selected_identity = BinderIdentity::Virtual {
                    gate: vb.gate,
                    instance: invoked.clone(),
                    phase: vb.bit,
                    code: rb.code.clone(),
                };
                let cursor = zipper.cursor.as_deref().expect("guarded above");
                // If the selected Church binder was emitted virtually,
                // its variable is observable output. If it was consumed
                // by a real argument, the kernel vvar must instead
                // transport the token there — fall through.
                if let Some(selected_index) = binder_index(zipper, cursor, &selected_identity) {
                    let zipper2 = fill(zipper, Nf::Var(selected_index))?;
                    let mut tape: Vec<TapeEntry> =
                        std::iter::repeat_n(TapeEntry::BulletBa, usize::from(vb.bit) + 1).collect();
                    tape.push(TapeEntry::Alpha(Alpha {
                        gate: vb.gate,
                        instance: invoked.clone(),
                        bit: vb.bit,
                        epoch: Epoch::Fresh,
                    }));
                    tape.extend_from_slice(&token.tape);
                    let token2 = RunCore {
                        path: token.path.clone(),
                        d: Vert::U,
                        log: token.log.clone(),
                        tape,
                        vb: None,
                        rs: token.rs.clone(),
                        ks: token.ks.clone(),
                    };
                    return Ok(det(
                        "vvar",
                        NfState::Run(NfRun {
                            token: token2,
                            zipper: zipper2,
                        }),
                    ));
                }
            }
        }
    }

    let code = subterm(term, &token.path).ok_or(ComposedDefect::Kernel)?;

    // Emit a source lambda only where the ordinary λIAM would otherwise
    // stop for lack of a real argument.
    if token.d == Vert::D && matches!(code, Term::Lam(_)) && zipper.cursor.is_some() {
        if let Some(TapeEntry::Rb(rb)) = token.tape.first() {
            let zipper2 = emit_lambda(
                zipper,
                BinderIdentity::Source {
                    path: token.path.clone(),
                    log: token.log.clone(),
                },
            )?;
            let rb2 = Rb {
                depth: rb.depth + 1,
                output: rb.output.clone(),
                code: rb.code.clone(),
                pending: rb.pending.clone(),
            };
            let mut tape = vec![TapeEntry::Rb(rb2)];
            tape.extend_from_slice(&token.tape[1..]);
            let mut path = token.path.clone();
            path.push(Dir::B);
            let token2 = RunCore {
                path,
                d: Vert::D,
                log: token.log.clone(),
                tape,
                vb: token.vb,
                rs: token.rs.clone(),
                ks: token.ks.clone(),
            };
            return Ok(det(
                "vlam",
                NfState::Run(NfRun {
                    token: token2,
                    zipper: zipper2,
                }),
            ));
        }
    }

    // A bare gate is a neutral constant. With a real argument its
    // normal gate-call row remains authoritative.
    if token.d == Vert::D && token.vb.is_none() && zipper.cursor.is_some() {
        if let Term::Gate(g) = code {
            if matches!(token.tape.first(), Some(TapeEntry::Rb(_))) {
                let zipper2 = fill(zipper, Nf::Gate(*g))?;
                let token2 = RunCore {
                    path: token.path.clone(),
                    d: Vert::U,
                    log: token.log.clone(),
                    tape: token.tape.clone(),
                    vb: token.vb,
                    rs: token.rs.clone(),
                    ks: token.ks.clone(),
                };
                return Ok(det(
                    "head-gate",
                    NfState::Run(NfRun {
                        token: token2,
                        zipper: zipper2,
                    }),
                ));
            }
        }
    }

    // A gate whose interrogated argument is headed by an emitted binder
    // is a rigid neutral: unwind gamma/mu into the ordinary NF head and
    // launch the first armed argument query. The shape is computed
    // before the cursor/hole guards, as the reference sequences it —
    // its fault fires even where the guards would fail.
    let neutral = neutral_probe_shape(term, token, zipper)?;
    if let (Some((gate, lp, _index, extra, rb, after_mu)), Some(cursor)) = (neutral, &zipper.cursor)
    {
        {
            if matches!(at(&zipper.tree, cursor)?, Nf::Hole { armed: false }) {
                let arity = 1 + extra;
                let output_root = cursor.clone();
                let schedule = spine_schedule(&output_root, arity);
                let zipper2 = fill(zipper, spine(Nf::Gate(gate), arity))?;
                let first_output = zipper2.cursor.clone().ok_or(ComposedDefect::CursorState)?;
                let zipper2 = disarm(&zipper2)?;
                let occurrence = lp.occ.clone();
                let mut parent_function = occurrence[..occurrence.len() - 1].to_vec();
                parent_function.push(Dir::F);
                let address = Rbl {
                    parent: parent_function,
                    output: first_output.clone(),
                    code: occurrence.clone(),
                };
                let child_rb = Rb {
                    depth: rb.depth,
                    output: first_output,
                    code: occurrence.clone(),
                    pending: Vec::new(),
                };
                let parent_rb = Rb {
                    depth: rb.depth,
                    output: rb.output.clone(),
                    code: rb.code.clone(),
                    pending: schedule[1..].to_vec(),
                };
                let after_mu = replace_rb(after_mu, rb, parent_rb)?;
                let residue = ScopeResidue::NeutralProbe {
                    binder_path: token.path.clone(),
                    binder_log: token.log.clone(),
                    logged_argument: lp.clone(),
                };
                let mut residues = zipper2.residues.clone();
                residues.push(residue);
                let zipper2 = Zipper {
                    tree: zipper2.tree,
                    cursor: zipper2.cursor,
                    binders: zipper2.binders,
                    residues,
                };
                let mut tape = vec![TapeEntry::Rb(child_rb), TapeEntry::BulletBa];
                tape.extend(after_mu);
                let token2 = RunCore {
                    path: occurrence,
                    d: Vert::D,
                    log: vec![LogEntry::Rbl(address)],
                    tape,
                    vb: token.vb,
                    rs: token.rs.clone(),
                    ks: token.ks.clone(),
                };
                return Ok(det(
                    "head-neutral-gate",
                    NfState::Run(NfRun {
                        token: token2,
                        zipper: zipper2,
                    }),
                ));
            }
        }
    }

    // Bound head: record the de Bruijn head and reserve its argument
    // holes; the ordinary bt2/ascend path then reaches those arguments.
    if token.d == Vert::U {
        if let (Some(shape), Some(cursor)) = (head_shape(term, token), &zipper.cursor) {
            let (_leading, _lp, arity, rb) = shape;
            let identity = BinderIdentity::Source {
                path: token.path.clone(),
                log: token.log.clone(),
            };
            // A binder consumed by a real argument is a beta-redex, not
            // an output binder: only emitted binders are readback heads.
            if let Some(index) = binder_index(zipper, cursor, &identity) {
                let output_root = cursor.clone();
                let zipper2 = fill(zipper, spine(Nf::Var(index), arity))?;
                let schedule = spine_schedule(&output_root, arity);
                let rb2 = Rb {
                    depth: rb.depth,
                    output: rb.output.clone(),
                    code: rb.code.clone(),
                    pending: schedule,
                };
                let tape = replace_rb(&token.tape, rb, rb2)?;
                let token2 = RunCore {
                    path: token.path.clone(),
                    d: Vert::D,
                    log: token.log.clone(),
                    tape,
                    vb: token.vb,
                    rs: token.rs.clone(),
                    ks: token.ks.clone(),
                };
                return Ok(det(
                    "head",
                    NfState::Run(NfRun {
                        token: token2,
                        zipper: zipper2,
                    }),
                ));
            }
        }
    }

    // Typed application transport: one persistent BA alphabet for every
    // lambda-IAM bullet.
    if token.d == Vert::D && matches!(code, Term::App(..)) {
        let mut path = token.path.clone();
        path.push(Dir::F);
        let mut tape = vec![TapeEntry::BulletBa];
        tape.extend_from_slice(&token.tape);
        let token2 = RunCore {
            path,
            d: Vert::D,
            log: token.log.clone(),
            tape,
            vb: token.vb,
            rs: token.rs.clone(),
            ks: token.ks.clone(),
        };
        return Ok(det(
            "b1",
            NfState::Run(NfRun {
                token: token2,
                zipper: zipper.clone(),
            }),
        ));
    }

    if token.d == Vert::D
        && matches!(code, Term::Lam(_))
        && token.tape.first() == Some(&TapeEntry::BulletBa)
    {
        let mut path = token.path.clone();
        path.push(Dir::B);
        let token2 = RunCore {
            path,
            d: Vert::D,
            log: token.log.clone(),
            tape: token.tape[1..].to_vec(),
            vb: token.vb,
            rs: token.rs.clone(),
            ks: token.ks.clone(),
        };
        return Ok(det(
            "b2",
            NfState::Run(NfRun {
                token: token2,
                zipper: zipper.clone(),
            }),
        ));
    }

    // Instead of ordinary b3, an open output hole sends the one token
    // into the corresponding argument; the parent continuation is never
    // copied.
    if let Some((parent_rb, output_path, _function_path, argument_path)) =
        enter_shape(token, zipper)?
    {
        let address = Rbl {
            parent: token.path.clone(),
            output: output_path.clone(),
            code: argument_path.clone(),
        };
        let child_rb = Rb {
            depth: parent_rb.depth,
            output: output_path,
            code: argument_path.clone(),
            pending: Vec::new(),
        };
        let zipper2 = disarm(zipper)?;
        let parent_rb2 = Rb {
            depth: parent_rb.depth,
            output: parent_rb.output.clone(),
            code: parent_rb.code.clone(),
            pending: parent_rb.pending[1..].to_vec(),
        };
        let parent_rb = parent_rb.clone();
        let parent_tail = replace_rb(&token.tape[1..], &parent_rb, parent_rb2)?;
        let mut log = vec![LogEntry::Rbl(address)];
        log.extend_from_slice(&token.log);
        let mut tape = vec![TapeEntry::Rb(child_rb), TapeEntry::BulletBa];
        tape.extend(parent_tail);
        let token2 = RunCore {
            path: argument_path,
            d: Vert::D,
            log,
            tape,
            vb: token.vb,
            rs: token.rs.clone(),
            ks: token.ks.clone(),
        };
        return Ok(det(
            "enter",
            NfState::Run(NfRun {
                token: token2,
                zipper: zipper2,
            }),
        ));
    }

    // Ordinary b4: emitted source lambdas and beta-traversed lambdas
    // share the λIAM marker.
    if token.d == Vert::U && token.path.last() == Some(&Dir::B) {
        let path = token.path[..token.path.len() - 1].to_vec();
        let mut tape = vec![TapeEntry::BulletBa];
        tape.extend_from_slice(&token.tape);
        let token2 = RunCore {
            path,
            d: Vert::U,
            log: token.log.clone(),
            tape,
            vb: token.vb,
            rs: token.rs.clone(),
            ks: token.ks.clone(),
        };
        return Ok(det(
            "b4",
            NfState::Run(NfRun {
                token: token2,
                zipper: zipper.clone(),
            }),
        ));
    }

    if token.d == Vert::U
        && token.path.last() == Some(&Dir::F)
        && token.tape.first() == Some(&TapeEntry::BulletBa)
    {
        let token2 = RunCore {
            path: token.path[..token.path.len() - 1].to_vec(),
            d: Vert::U,
            log: token.log.clone(),
            tape: token.tape[1..].to_vec(),
            vb: token.vb,
            rs: token.rs.clone(),
            ks: token.ks.clone(),
        };
        return Ok(det(
            "b3",
            NfState::Run(NfRun {
                token: token2,
                zipper: zipper.clone(),
            }),
        ));
    }

    // A completed child returns forward.
    if let Some((prefix, rb, tail)) = first_rb(&token.tape) {
        let subtree_closed = holes(at(&zipper.tree, &rb.output)?).is_empty();
        let lambdas_match = !prefix.iter().all(|e| *e == TapeEntry::BulletBa)
            || leading_lambdas(at(&zipper.tree, &rb.output)?) == prefix.len();
        let at_scope_root = token.d == Vert::U && token.path == rb.code;
        if at_scope_root && subtree_closed && lambdas_match && rb.pending.is_empty() {
            if rb.code.is_empty()
                && token.log.is_empty()
                && tail.is_empty()
                && token.vb.is_none()
                && rb.depth as usize == leading_lambdas(&zipper.tree)
            {
                let garbage = terminal_garbage(token, rb, prefix, zipper);
                return Ok(det(
                    "rootdone",
                    NfState::RunDone(NfTerminal::Halt {
                        output: zipper.tree.clone(),
                        garbage,
                    }),
                ));
            }
            if let Some(returned) = return_successor(token, zipper)? {
                return Ok(det("return", NfState::Run(returned)));
            }
        }
    }

    // Kernel steps see exactly their audited plain-bullet alphabet.
    let kernel_state = super::state::KState::Run(kernel_token(token));
    let rows = match machine {
        MachineKind::Gate1 => step(term, &kernel_state, cert),
        MachineKind::Gate2 => super::shadow::step(term, &kernel_state, cert),
    }?;
    if rows.is_empty() {
        return Ok(error_row("stuck", token, zipper));
    }
    let mut out = Vec::with_capacity(rows.len());
    for r in rows {
        match r.state {
            super::state::KState::Run(target) => out.push(NfRow {
                sign: r.sign,
                dk: r.dk,
                rule: r.rule.to_string(),
                state: NfState::Run(NfRun {
                    token: composed_token(target),
                    zipper: zipper.clone(),
                }),
            }),
            super::state::KState::RunDone { kind, residue } => {
                let kind_str = if kind == Kind::Err {
                    r.rule.to_string()
                } else {
                    kind.token().to_string()
                };
                out.push(NfRow {
                    sign: r.sign,
                    dk: r.dk,
                    rule: format!("error-{}", r.rule),
                    state: NfState::RunDone(NfTerminal::Error {
                        kind: ErrorKind::Typed(kind_str),
                        garbage: ErrorGarbage::Kernel {
                            token: token.clone(),
                            zipper: zipper.clone(),
                            residue,
                        },
                    }),
                });
            }
            target @ super::state::KState::Done { .. } => out.push(NfRow {
                sign: r.sign,
                dk: r.dk,
                rule: "error-invalid-kernel-target".to_string(),
                state: NfState::RunDone(NfTerminal::Error {
                    kind: ErrorKind::Typed("invalid-kernel-target".to_string()),
                    garbage: ErrorGarbage::InvalidKernelTarget {
                        token: token.clone(),
                        zipper: zipper.clone(),
                        target: Box::new(target),
                    },
                }),
            }),
        }
    }
    Ok(out)
}

/// Compute RETURN alone, without re-entering the dispatcher.
fn return_successor(token: &RunCore, zipper: &Zipper) -> Result<Option<NfRun>, ComposedDefect> {
    let Some((prefix, rb, tail)) = first_rb(&token.tape) else {
        return Ok(None);
    };
    let subtree_closed = holes(at(&zipper.tree, &rb.output)?).is_empty();
    let lambdas_match = !prefix.iter().all(|e| *e == TapeEntry::BulletBa)
        || leading_lambdas(at(&zipper.tree, &rb.output)?) == prefix.len();
    let at_scope_root = token.d == Vert::U && token.path == rb.code;
    let Some(LogEntry::Rbl(address)) = token.log.first() else {
        return Ok(None);
    };
    if !(at_scope_root
        && subtree_closed
        && lambdas_match
        && address.output == rb.output
        && address.code == rb.code
        && tail.first() == Some(&TapeEntry::BulletBa))
    {
        return Ok(None);
    }
    let parent_function = &address.parent;
    if parent_function.last() != Some(&Dir::F) {
        return Ok(None);
    }
    let parent_path = parent_function[..parent_function.len() - 1].to_vec();
    let (residue, binders) = scope_residue(prefix, rb, zipper)?;
    let mut residues = zipper.residues.clone();
    residues.push(residue);
    let zipper2 = Zipper {
        tree: zipper.tree.clone(),
        cursor: zipper.cursor.clone(),
        binders,
        residues,
    };
    let token2 = RunCore {
        path: parent_path,
        d: Vert::U,
        log: token.log[1..].to_vec(),
        tape: tail[1..].to_vec(),
        vb: token.vb,
        rs: token.rs.clone(),
        ks: token.ks.clone(),
    };
    Ok(Some(NfRun {
        token: token2,
        zipper: zipper2,
    }))
}

// ---------------------------------------------------------------------------
// Predecessor inverses — the exact fibre coordinates of the four
// compressing rows. Checked per edge by the carrier walk, as the
// reference's `reachable_gram` does; `Err` is a refusal of a malformed
// landing (the reference's `ValueError`/`TypeError`).

/// Rebuild a virtual carrier's erased prefix and derived binder marks.
fn virtual_carrier_inverse(
    output: &Nf,
    output_path: &[Dir],
    code_path: &[Dir],
    gate: GateTag,
    instance: &Lp,
    epoch: &Epoch,
    remaining_binders: &[BinderMark],
) -> Result<(Vec<TapeEntry>, Vec<BinderMark>), ComposedDefect> {
    let bit = canonical_boolean(output).ok_or(ComposedDefect::Inverse)?;
    let alpha = TapeEntry::Alpha(Alpha {
        gate,
        instance: instance.clone(),
        bit,
        epoch: epoch.clone(),
    });
    let prefix = if bit == 0 {
        vec![alpha]
    } else {
        vec![TapeEntry::BulletBa, alpha]
    };
    let derived = [
        BinderMark {
            output: output_path.to_vec(),
            identity: BinderIdentity::Virtual {
                gate,
                instance: instance.clone(),
                phase: 0,
                code: code_path.to_vec(),
            },
        },
        BinderMark {
            output: {
                let mut p = output_path.to_vec();
                p.push(Dir::B);
                p
            },
            identity: BinderIdentity::Virtual {
                gate,
                instance: instance.clone(),
                phase: 1,
                code: code_path.to_vec(),
            },
        },
    ];
    let binders = merge_binders(remaining_binders, &derived)?;
    Ok((prefix, binders))
}

/// Exact inverse of the guarded rootdone compression.
pub fn terminal_predecessor(
    output: &Nf,
    garbage: &TerminalGarbage,
) -> Result<NfRun, ComposedDefect> {
    let (prefix, binders) = match &garbage.carrier {
        None => (
            vec![TapeEntry::BulletBa; leading_lambdas(output)],
            garbage.binders.clone(),
        ),
        Some(TerminalCarrier::Exact {
            output: carrier_output,
            prefix,
        }) => {
            if !carrier_output.is_empty() {
                return Err(ComposedDefect::Inverse);
            }
            (prefix.clone(), garbage.binders.clone())
        }
        Some(TerminalCarrier::Virtual {
            output: carrier_output,
            gate,
            instance,
            epoch,
        }) => {
            if !carrier_output.is_empty() {
                return Err(ComposedDefect::Inverse);
            }
            virtual_carrier_inverse(output, &[], &[], *gate, instance, epoch, &garbage.binders)?
        }
    };
    let mut tape = prefix;
    tape.push(TapeEntry::Rb(Rb {
        depth: leading_lambdas(output) as u64,
        output: Vec::new(),
        code: Vec::new(),
        pending: Vec::new(),
    }));
    Ok(NfRun {
        token: RunCore {
            path: Vec::new(),
            d: Vert::U,
            log: Vec::new(),
            tape,
            vb: None,
            rs: garbage.frames.clone(),
            ks: garbage.storage.clone(),
        },
        zipper: Zipper {
            tree: output.clone(),
            cursor: None,
            binders,
            residues: garbage.residues.clone(),
        },
    })
}

/// Inverse RETURN from its post-pop landing and moved residue.
pub fn return_predecessor(term: &Term, target: &NfState) -> Result<NfRun, ComposedDefect> {
    let NfState::Run(NfRun { token, zipper }) = target else {
        return Err(ComposedDefect::Inverse);
    };
    let Some(residue) = zipper.residues.last() else {
        return Err(ComposedDefect::Inverse);
    };
    let mut child_path = token.path.clone();
    child_path.push(Dir::A);
    let (output_path, prefix, binders) = match residue {
        ScopeResidue::Pure { output } => (
            output.clone(),
            vec![TapeEntry::BulletBa; leading_lambdas(at(&zipper.tree, output)?)],
            zipper.binders.clone(),
        ),
        ScopeResidue::Exact { output, prefix } => {
            (output.clone(), prefix.clone(), zipper.binders.clone())
        }
        ScopeResidue::Virtual {
            output,
            gate,
            instance,
            epoch,
        } => {
            let (prefix, binders) = virtual_carrier_inverse(
                at(&zipper.tree, output)?,
                output,
                &child_path,
                *gate,
                instance,
                epoch,
                &zipper.binders,
            )?;
            (output.clone(), prefix, binders)
        }
        ScopeResidue::NeutralProbe { .. } => return Err(ComposedDefect::Inverse),
    };
    let mut parent_function = token.path.clone();
    parent_function.push(Dir::F);
    let enclosing = binders
        .iter()
        .filter(|mark| {
            mark.output.len() < output_path.len()
                && output_path[..mark.output.len()] == mark.output[..]
                && output_path[mark.output.len()] == Dir::B
        })
        .count();
    let depth = leading_lambdas(at(&zipper.tree, &output_path)?) + enclosing;
    let delimiter = Rb {
        depth: depth as u64,
        output: output_path.clone(),
        code: child_path.clone(),
        pending: Vec::new(),
    };
    let address = Rbl {
        parent: parent_function,
        output: output_path,
        code: child_path.clone(),
    };
    let mut log = vec![LogEntry::Rbl(address)];
    log.extend_from_slice(&token.log);
    let mut tape = prefix;
    tape.push(TapeEntry::Rb(delimiter));
    tape.push(TapeEntry::BulletBa);
    tape.extend_from_slice(&token.tape);
    let source_token = RunCore {
        path: child_path.clone(),
        d: Vert::U,
        log,
        tape,
        vb: token.vb,
        rs: token.rs.clone(),
        ks: token.ks.clone(),
    };
    let source_zipper = Zipper {
        tree: zipper.tree.clone(),
        cursor: zipper.cursor.clone(),
        binders,
        residues: zipper.residues[..zipper.residues.len() - 1].to_vec(),
    };
    // The structural child path must still belong to the immutable term.
    if !matches!(subterm(term, &token.path), Some(Term::App(..))) {
        return Err(ComposedDefect::Inverse);
    }
    if subterm(term, &child_path).is_none() {
        return Err(ComposedDefect::Inverse);
    }
    Ok(NfRun {
        token: source_token,
        zipper: source_zipper,
    })
}

/// Exact inverse of ENTER on its concrete RB/RBL landing.
pub fn enter_predecessor(term: &Term, target: &NfState) -> Result<NfRun, ComposedDefect> {
    let NfState::Run(NfRun { token, zipper }) = target else {
        return Err(ComposedDefect::Inverse);
    };
    if token.d != Vert::D || token.tape.len() < 2 || token.tape[1] != TapeEntry::BulletBa {
        return Err(ComposedDefect::Inverse);
    }
    let Some(LogEntry::Rbl(address)) = token.log.first() else {
        return Err(ComposedDefect::Inverse);
    };
    let TapeEntry::Rb(delimiter) = &token.tape[0] else {
        return Err(ComposedDefect::Inverse);
    };
    let expected_parent = {
        let mut p = if token.path.is_empty() {
            Vec::new()
        } else {
            token.path[..token.path.len() - 1].to_vec()
        };
        p.push(Dir::F);
        p
    };
    if zipper.cursor.as_deref() != Some(&address.output[..])
        || zipper.cursor.as_deref() != Some(&delimiter.output[..])
        || address.code != token.path
        || delimiter.code != token.path
        || address.parent != expected_parent
    {
        return Err(ComposedDefect::Inverse);
    }
    let parent_tail = &token.tape[2..];
    let Some(parent_rb) = parent_tail.iter().find_map(|e| match e {
        TapeEntry::Rb(rb) => Some(rb),
        _ => None,
    }) else {
        return Err(ComposedDefect::Inverse);
    };
    let restored_slot = zipper.cursor.clone().ok_or(ComposedDefect::Inverse)?;
    let mut pending = vec![restored_slot];
    pending.extend_from_slice(&parent_rb.pending);
    let parent_rb2 = Rb {
        depth: parent_rb.depth,
        output: parent_rb.output.clone(),
        code: parent_rb.code.clone(),
        pending,
    };
    let parent_rb = parent_rb.clone();
    let parent_tail = replace_rb(parent_tail, &parent_rb, parent_rb2)?;
    let mut tape = vec![TapeEntry::BulletBa];
    tape.extend(parent_tail);
    let source_token = RunCore {
        path: address.parent.clone(),
        d: Vert::U,
        log: token.log[1..].to_vec(),
        tape,
        vb: token.vb,
        rs: token.rs.clone(),
        ks: token.ks.clone(),
    };
    let source_zipper = arm(zipper)?;
    let above = if source_token.path.is_empty() {
        &source_token.path[..]
    } else {
        &source_token.path[..source_token.path.len() - 1]
    };
    if !matches!(subterm(term, above), Some(Term::App(..))) {
        return Err(ComposedDefect::Inverse);
    }
    Ok(NfRun {
        token: source_token,
        zipper: source_zipper,
    })
}

/// Exact inverse of one `head-neutral-gate` compression.
pub fn neutral_probe_predecessor(term: &Term, target: &NfState) -> Result<NfRun, ComposedDefect> {
    let NfState::Run(NfRun { token, zipper }) = target else {
        return Err(ComposedDefect::Inverse);
    };
    let Some(first_output) = zipper.cursor.clone() else {
        return Err(ComposedDefect::Inverse);
    };
    let Some(ScopeResidue::NeutralProbe {
        binder_path: residue_path,
        binder_log: residue_log,
        logged_argument: lp,
    }) = zipper.residues.last()
    else {
        return Err(ComposedDefect::Inverse);
    };
    let Some(LogEntry::Gam(gate)) = lp.slice.first() else {
        return Err(ComposedDefect::Inverse);
    };
    let gate = *gate;
    let occurrence = &lp.occ;

    if token.path != *occurrence
        || token.d != Vert::D
        || token.vb.is_some()
        || token.log.len() != 1
        || token.tape.len() < 3
        || token.tape[1] != TapeEntry::BulletBa
    {
        return Err(ComposedDefect::Inverse);
    }
    let TapeEntry::Rb(child_rb) = &token.tape[0] else {
        return Err(ComposedDefect::Inverse);
    };
    let parent_function = {
        let mut p = if occurrence.is_empty() {
            Vec::new()
        } else {
            occurrence[..occurrence.len() - 1].to_vec()
        };
        p.push(Dir::F);
        p
    };
    let address = Rbl {
        parent: parent_function,
        output: first_output.clone(),
        code: occurrence.clone(),
    };
    if token.log.first() != Some(&LogEntry::Rbl(address))
        || child_rb.output != first_output
        || child_rb.code != *occurrence
    {
        return Err(ComposedDefect::Inverse);
    }

    // The retained slot plus the immediately following BA tail encode
    // the gate spine arity: first argument is the current unarmed
    // cursor, all later arguments remain armed.
    let mut arity = 1;
    while 1 + arity < token.tape.len() && token.tape[1 + arity] == TapeEntry::BulletBa {
        arity += 1;
    }
    let mut suffix = vec![Dir::F; arity - 1];
    suffix.push(Dir::A);
    if first_output.len() < arity || first_output[first_output.len() - arity..] != suffix[..] {
        return Err(ComposedDefect::Inverse);
    }
    let output_root = first_output[..first_output.len() - arity].to_vec();
    let expected_spine = spine(Nf::Gate(gate), arity);
    let expected_spine = replace(&expected_spine, &suffix, Nf::Hole { armed: false })?;
    if *at(&zipper.tree, &output_root)? != expected_spine {
        return Err(ComposedDefect::Inverse);
    }

    if binder_path(term, occurrence) != Some(residue_path.clone()) {
        return Err(ComposedDefect::Inverse);
    }
    let identity = BinderIdentity::Source {
        path: residue_path.clone(),
        log: residue_log.clone(),
    };
    if binder_index(zipper, &output_root, &identity).is_none() {
        return Err(ComposedDefect::Inverse);
    }

    let source_tree = replace(&zipper.tree, &output_root, Nf::Hole { armed: false })?;
    let source_zipper = Zipper {
        tree: source_tree,
        cursor: Some(output_root),
        binders: zipper.binders.clone(),
        residues: zipper.residues[..zipper.residues.len() - 1].to_vec(),
    };
    let after_mu = &token.tape[2..];
    let Some(parent_rb) = after_mu.iter().find_map(|e| match e {
        TapeEntry::Rb(rb) => Some(rb),
        _ => None,
    }) else {
        return Err(ComposedDefect::Inverse);
    };
    let cleared = Rb {
        depth: parent_rb.depth,
        output: parent_rb.output.clone(),
        code: parent_rb.code.clone(),
        pending: Vec::new(),
    };
    let parent_rb = parent_rb.clone();
    let after_mu = replace_rb(after_mu, &parent_rb, cleared)?;
    let mut tape = vec![
        TapeEntry::Lp(lp.clone()),
        TapeEntry::BulletBa,
        TapeEntry::BulletBa,
        TapeEntry::Mu(gate),
    ];
    tape.extend(after_mu);
    let source_token = RunCore {
        path: residue_path.clone(),
        d: Vert::U,
        log: residue_log.clone(),
        tape,
        vb: token.vb,
        rs: token.rs.clone(),
        ks: token.ks.clone(),
    };
    Ok(NfRun {
        token: source_token,
        zipper: source_zipper,
    })
}

/// Totalized composed step: any host defect lands in the deterministic
/// `error-machine-exception` state carrying the complete offending
/// source.
pub fn nf_step(term: &Term, state: &NfState, cert: Option<&CertEntries>) -> Vec<NfRow> {
    nf_step_with(MachineKind::Gate1, term, state, cert)
}

/// Totalized composed step under an explicit machine table.
pub fn nf_step_with(
    machine: MachineKind,
    term: &Term,
    state: &NfState,
    cert: Option<&CertEntries>,
) -> Vec<NfRow> {
    match nf_step_partial(machine, term, state, cert) {
        Ok(rows) => rows,
        Err(_defect) => vec![NfRow {
            sign: 1,
            dk: 0,
            rule: "error-machine-exception".to_string(),
            state: NfState::RunDone(NfTerminal::Error {
                kind: ErrorKind::Fault("host-fault".to_string()),
                garbage: ErrorGarbage::Fault {
                    source: Box::new(state.clone()),
                },
            }),
        }],
    }
}

// ---------------------------------------------------------------------------
// Exact-Dw composed evolution, carrier enumeration, and Gram — the
// composed analogues of the kernel evolvers, sharing
// `kernel::edge_coefficient`. Crate-facing machinery for the Gate-1
// differential; no public semantic `U` (that is phase 4, behind real
// admission).

/// A composed machine-level error. `InverseMismatch` is the carrier
/// walk's per-edge predecessor check failing — a compressing row whose
/// exact inverse did not rebuild its source.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum NfError {
    /// A host defect escaped an evolver context where totalization
    /// into a landing is not the contract (carrier/gram enumeration).
    Defect(ComposedDefect),
    Capacity,
    NormLeak,
    StepCap,
    StateCap,
    ColumnNorm,
    InverseMismatch,
}

impl From<ComposedDefect> for NfError {
    fn from(d: ComposedDefect) -> Self {
        NfError::Defect(d)
    }
}

fn nf_step_amp(
    machine: MachineKind,
    term: &Term,
    s: &NfState,
    cert: Option<&CertEntries>,
) -> Result<Vec<(Amp, String, NfState)>, NfError> {
    nf_step_with(machine, term, s, cert)
        .into_iter()
        .map(|r| {
            let a =
                super::kernel::edge_coefficient(r.sign, r.dk, &r.rule).ok_or(NfError::Capacity)?;
            Ok((a, r.rule, r.state))
        })
        .collect()
}

/// A sparse composed superposition in deterministic first-touch order.
pub type NfPsi = Vec<(NfState, Amp)>;

/// Evolve from `nf_init` to absorption (every basis state `NfDone`),
/// returning the support after every step. Transactional on typed
/// errors, exactly as the kernel evolver.
pub fn evolve_nf_trace(
    term: &Term,
    cert: Option<&CertEntries>,
    max_steps: u64,
) -> Result<Vec<NfPsi>, NfError> {
    evolve_nf_trace_with(MachineKind::Gate1, term, cert, max_steps)
}

pub fn evolve_nf_trace_with(
    machine: MachineKind,
    term: &Term,
    cert: Option<&CertEntries>,
    max_steps: u64,
) -> Result<Vec<NfPsi>, NfError> {
    let mut psi: NfPsi = vec![(nf_init(), Amp::ONE)];
    let mut maps = Vec::new();
    for _ in 0..max_steps {
        if psi.iter().all(|(s, _)| matches!(s, NfState::Done { .. })) {
            return Ok(maps);
        }
        let mut out: NfPsi = Vec::new();
        let mut index: HashMap<NfState, usize> = HashMap::new();
        for (s, amp) in &psi {
            for (coefficient, _rule, target) in nf_step_amp(machine, term, s, cert)? {
                let contribution = amp.mul(coefficient).ok_or(NfError::Capacity)?;
                if let Some(&at) = index.get(&target) {
                    out[at].1 = out[at].1.add(contribution).ok_or(NfError::Capacity)?;
                } else {
                    index.insert(target.clone(), out.len());
                    out.push((target, contribution));
                }
            }
        }
        psi = out.into_iter().filter(|(_, a)| !a.is_zero()).collect();
        let mut norm = Amp::ZERO;
        for (_, a) in &psi {
            norm = norm
                .add(a.norm_sq().ok_or(NfError::Capacity)?)
                .ok_or(NfError::Capacity)?;
        }
        if norm != Amp::ONE {
            return Err(NfError::NormLeak);
        }
        maps.push(psi.clone());
    }
    Err(NfError::StepCap)
}

/// The complete finite composed carrier through `tick_depth` with
/// exact unmerged columns, BFS in step-row order. Every compressing
/// edge (`rootdone`, `enter`, `return`, `head-neutral-gate`) has its
/// predecessor inverse recomputed and compared against the source, as
/// the reference's `reachable_gram` does.
#[derive(Debug)]
pub struct NfCarrier {
    /// Carrier states in discovery order (their ids).
    pub order: Vec<NfState>,
    /// `source id → ordered unmerged rows`, one column per
    /// non-tick-cut state, in id order.
    pub columns: Vec<super::wire::Column>,
}

pub fn nf_carrier_and_columns(
    term: &Term,
    cert: Option<&CertEntries>,
    tick_depth: u64,
    state_cap: usize,
) -> Result<NfCarrier, NfError> {
    nf_carrier_and_columns_with(MachineKind::Gate1, term, cert, tick_depth, state_cap)
}

pub fn nf_carrier_and_columns_with(
    machine: MachineKind,
    term: &Term,
    cert: Option<&CertEntries>,
    tick_depth: u64,
    state_cap: usize,
) -> Result<NfCarrier, NfError> {
    let start = nf_init();
    let mut ids: HashMap<NfState, usize> = HashMap::new();
    ids.insert(start.clone(), 0);
    let mut order = vec![start];
    let mut columns: Vec<super::wire::Column> = Vec::new();
    let mut at = 0;
    while at < order.len() {
        let s = order[at].clone();
        at += 1;
        if let NfState::Done { tick, .. } = &s {
            if *tick >= tick_depth {
                continue;
            }
        }
        let rows = nf_step_amp(machine, term, &s, cert)?;
        let mut col: Vec<super::wire::ColRow> = Vec::with_capacity(rows.len());
        let mut norm = Amp::ZERO;
        for (coefficient, rule, target) in rows {
            check_inverse(machine, term, &rule, &s, &target)?;
            let id = match ids.get(&target) {
                Some(&id) => id,
                None => {
                    let id = order.len();
                    ids.insert(target.clone(), id);
                    order.push(target);
                    id
                }
            };
            norm = norm
                .add(coefficient.norm_sq().ok_or(NfError::Capacity)?)
                .ok_or(NfError::Capacity)?;
            col.push((coefficient, rule, id));
        }
        if norm != Amp::ONE {
            return Err(NfError::ColumnNorm);
        }
        if order.len() > state_cap {
            return Err(NfError::StateCap);
        }
        columns.push((at - 1, col));
    }
    Ok(NfCarrier { order, columns })
}

/// Recompute the exact predecessor of a compressing edge and require
/// the source back.
fn check_inverse(
    machine: MachineKind,
    term: &Term,
    rule: &str,
    source: &NfState,
    target: &NfState,
) -> Result<(), NfError> {
    let rebuilt = if machine == MachineKind::Gate2 && super::shadow::is_custom_rule(rule) {
        super::shadow::custom_predecessor(term, rule, target).map_err(|_| ComposedDefect::Inverse)
    } else {
        match rule {
            "rootdone" => {
                let NfState::RunDone(NfTerminal::Halt { output, garbage }) = target else {
                    return Err(NfError::InverseMismatch);
                };
                terminal_predecessor(output, garbage)
            }
            "enter" => enter_predecessor(term, target),
            "return" => return_predecessor(term, target),
            "head-neutral-gate" => neutral_probe_predecessor(term, target),
            _ => return Ok(()),
        }
    };
    match rebuilt {
        Ok(run) if matches!(source, NfState::Run(s) if *s == run) => Ok(()),
        _ => Err(NfError::InverseMismatch),
    }
}

/// Native composed Gram: per-source merged column norms and pairwise
/// column inner products via shared targets, carrier ids as the
/// unordered pair key.
pub fn nf_gram(
    term: &Term,
    cert: Option<&CertEntries>,
    tick_depth: u64,
    state_cap: usize,
) -> Result<super::kernel::GramReport, NfError> {
    nf_gram_with(MachineKind::Gate1, term, cert, tick_depth, state_cap)
}

pub fn nf_gram_with(
    machine: MachineKind,
    term: &Term,
    cert: Option<&CertEntries>,
    tick_depth: u64,
    state_cap: usize,
) -> Result<super::kernel::GramReport, NfError> {
    let start = nf_init();
    let mut ids: HashMap<NfState, usize> = HashMap::new();
    ids.insert(start.clone(), 0);
    let mut order = vec![start];
    let mut incoming: HashMap<usize, Vec<(usize, Amp)>> = HashMap::new();
    let mut nonunit = 0usize;
    let mut at = 0;
    while at < order.len() {
        let s = order[at].clone();
        let src = at;
        at += 1;
        if let NfState::Done { tick, .. } = &s {
            if *tick >= tick_depth {
                continue;
            }
        }
        let rows = nf_step_amp(machine, term, &s, cert)?;
        let mut column: Vec<(usize, Amp)> = Vec::new();
        let mut col_index: HashMap<usize, usize> = HashMap::new();
        for (coefficient, _rule, target) in rows {
            let id = match ids.get(&target) {
                Some(&id) => id,
                None => {
                    let id = order.len();
                    ids.insert(target.clone(), id);
                    order.push(target);
                    id
                }
            };
            if let Some(&k) = col_index.get(&id) {
                column[k].1 = column[k].1.add(coefficient).ok_or(NfError::Capacity)?;
            } else {
                col_index.insert(id, column.len());
                column.push((id, coefficient));
            }
        }
        let mut norm = Amp::ZERO;
        for (id, coefficient) in &column {
            norm = norm
                .add(coefficient.norm_sq().ok_or(NfError::Capacity)?)
                .ok_or(NfError::Capacity)?;
            incoming.entry(*id).or_default().push((src, *coefficient));
        }
        if norm != Amp::ONE {
            nonunit += 1;
        }
        if order.len() > state_cap {
            return Err(NfError::StateCap);
        }
    }
    let mut dots: HashMap<(usize, usize), Amp> = HashMap::new();
    for columns in incoming.values() {
        for (left_at, (left, left_coefficient)) in columns.iter().enumerate() {
            for (right, right_coefficient) in &columns[left_at + 1..] {
                if left == right {
                    continue;
                }
                let key = (*left.min(right), *left.max(right));
                let product = left_coefficient
                    .conj()
                    .and_then(|lc| lc.mul(*right_coefficient))
                    .ok_or(NfError::Capacity)?;
                let cur = dots.get(&key).copied().unwrap_or(Amp::ZERO);
                dots.insert(key, cur.add(product).ok_or(NfError::Capacity)?);
            }
        }
    }
    let nonorthogonal = dots.values().filter(|v| !v.is_zero()).count();
    Ok(super::kernel::GramReport {
        basis: order.len(),
        nonunit,
        nonorthogonal,
    })
}
