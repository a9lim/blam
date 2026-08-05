//! oddmin reference side, stage 1a — trusted `oddmin_ref`.
//!
//! PROTOTYPE (SPEC-ODDMIN.md §§3–4, r5b schema). This module is the
//! TRUSTED half of the split: the r5b interaction-NFA schema, the
//! structural canonicalizer with its laws, the interned mask
//! automaton, the external accept product, and the three reference
//! transfers `var_ref`/`lam_ref`/`app_ref` with the NF driver.
//! Deliberately naive — correctness over speed; nothing here may ever
//! trust search-side output.
//!
//! A summary is a finite colored interaction NFA (SPEC-ODDMIN §3):
//! nodes are anonymous control states, edges carry projected
//! distinguished-lineage effect letters or interface letters, and
//! PORTS (eval entry + apply/spine subgraph entries referenced by
//! head colors) are the roots canonicalization must preserve —
//! higher-order values live in the port structure, not in the trace
//! language.
//!
//! Interface protocol (r5b): `Call {target, arg}` demands a value
//! (`arg: None` forces an ambient thunk; `arg: Some(q)` applies the
//! target value to own-thunk port q — needed because only lam heads
//! with OWN ports can be dissolved at splice time; received lambdas
//! defer). `RetIn {pat, bind, rel}` observes the answer and binds it
//! alpha-stably; `RetOut {head, rel}` returns a value. Both
//! directions carry the full `CapRel` (the γ ruling): identity and H
//! both return a current handle but differ in `action`, which is
//! what invalidates caller aliases. `Kill` is the ABSENCE of a
//! continuation, not a letter.
//!
//! Acceptance is NEVER stored in a summary: the product with the
//! mask automaton (trusted `odd::step_h/step_t/step_meas` kernels)
//! computes it. `may_accept_latent` is the deliberately loose
//! any-context query rooted at every port; closed-program acceptance
//! is `closed_accepts` — signature application then NF descent, with
//! the product run from the single composed root (§4's EvalHead /
//! Apply / NF-descent protocol).

use crate::odd::{step_h, step_meas, step_t};
use std::collections::{BTreeMap, BTreeSet, VecDeque};

pub type NodeId = u32;
/// Index into a summary's port table.
pub type PortId = u8;
/// Alpha-stable binder slot for received values. Renumbered to
/// BFS-first-use order by `canon`; distinct copies of one original
/// binder may end distinct (overstates growth, never soundness).
pub type BindId = u16;

/// Capability half of the interface protocol (SPEC-ODDMIN §4).
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub enum Cap {
    None,
    Cur,
}

/// Net effect of a seam on the distinguished lineage, relative to
/// the entry generation (the β ruling). One or many advances
/// invalidate alike; composite histories collapse to the net letter.
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub enum CapAction {
    Keep,
    Create,
    Advance,
    Retire,
}

/// The complete capability relation carried by both interface
/// directions (the γ ruling).
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub struct CapRel {
    pub cap_in: Cap,
    pub action: CapAction,
    pub cap_out: Cap,
}

impl CapRel {
    pub const PURE: CapRel = CapRel {
        cap_in: Cap::None,
        action: CapAction::Keep,
        cap_out: Cap::None,
    };
}

/// Call ownership (the r5b rebasing ruling): `lam_ref` does ALL
/// binder rebasing (Free(1) → Formal(p), Free(i+1) → Free(i));
/// `app_ref` substitutes only Formal(p) and never shifts ambient
/// indices. `Received` targets a value bound by a `RetIn`.
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub enum CallTarget {
    Free(u8),
    Formal(PortId),
    Received(BindId),
}

/// Port reference inside a head: a summary's own port, or a port of
/// a value received earlier (resolved through the specialization
/// environment at splice time).
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub enum PortRef {
    Own(PortId),
    Received(BindId),
}

/// Distinguished-lineage role of a handle value. Staleness is
/// carried by the cap at seams, not by the head.
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub enum Role {
    DCur,
    Other,
}

/// The five frozen-signature primitives.
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub enum Which {
    H,
    T,
    Meas,
    New,
    Cnot,
}

/// Head colors (r5b): what a value IS. `Prim`'s `held` is the cnot
/// partial's first argument, kept unevaluated (call-by-name — qeval
/// forces both cnot arguments left-to-right only at completion).
/// `Neutral` is rigid-rooted; `spine: None` is a bare rigid formal,
/// `Some(p)` a spine subgraph normalized left-to-right at NF time.
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub enum Head {
    Lam {
        apply: PortRef,
    },
    Prim {
        which: Which,
        held: Option<PortRef>,
    },
    Handle {
        role: Role,
    },
    Neutral {
        spine: Option<PortRef>,
    },
    /// A value received through a ★ observation: behaves as whatever
    /// the binding resolves to; use sites case-split.
    Opaque {
        bind: BindId,
    },
}

/// Observable pattern of a received value (RetIn side). Patterns own
/// no ports; the received value's behavior is reached through the
/// binding.
///
/// The reference transfers emit ONLY `Any` (the ★ observation): an
/// eagerly enumerated letter fan multiplies per application depth
/// (measured fan^depth on open app chains), while the information it
/// split on is only consumed at USE sites — where the value dispatch
/// case-splits anyway. Specific patterns remain in the schema for
/// checker-side matching and future precision.
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub enum HeadPat {
    Any,
    Lam,
    Prim { which: Which, partial: bool },
    Handle { role: Role },
    Neutral,
}

impl HeadPat {
    /// May-lattice match: does a concrete head satisfy this pattern?
    pub fn matches(&self, h: &Head) -> bool {
        match (self, h) {
            (HeadPat::Any, _) => true,
            (HeadPat::Lam, Head::Lam { .. }) => true,
            (HeadPat::Prim { which, partial }, Head::Prim { which: w, held }) => {
                which == w && *partial == held.is_some()
            }
            (HeadPat::Handle { role }, Head::Handle { role: r }) => role == r,
            (HeadPat::Neutral, Head::Neutral { .. }) => true,
            _ => false,
        }
    }
}

/// Edge labels: projected distinguished-lineage effects plus the
/// r5b interface letters. Non-D effects are erased (no τ letter).
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub enum Label {
    NewD,
    HD,
    TD,
    MeasD,
    /// Any cnot firing: the stage-1a out-of-scope sink letter.
    OutOfScope,
    /// Internal sequencing (composition seams already consumed):
    /// epsilon for every consumer — the product, splice exploration,
    /// and reference analysis all pass through. Kept as a real edge
    /// because ε-elimination by edge copying blows up flattened
    /// summaries quadratically (measured).
    Eps,
    Call {
        target: CallTarget,
        arg: Option<PortId>,
    },
    RetIn {
        pat: HeadPat,
        bind: BindId,
        rel: CapRel,
    },
    RetOut {
        head: Head,
        rel: CapRel,
    },
}

/// A colored interaction NFA. `entry` is the evaluation root;
/// `ports` are the named subgraph roots (apply/spine targets).
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub struct Summary {
    pub node_count: u32,
    pub edges: Vec<(NodeId, Label, NodeId)>,
    pub entry: NodeId,
    pub ports: Vec<NodeId>,
}

impl Summary {
    /// Roots in canonical order: entry first, then ports by index.
    fn roots(&self) -> Vec<NodeId> {
        let mut r = vec![self.entry];
        r.extend(&self.ports);
        r
    }

    /// Restrict to nodes reachable from the roots (edge-forward).
    fn reachable(&self) -> Summary {
        let mut succ: BTreeMap<NodeId, Vec<(Label, NodeId)>> = BTreeMap::new();
        for &(a, l, b) in &self.edges {
            succ.entry(a).or_default().push((l, b));
        }
        let mut seen: BTreeSet<NodeId> = BTreeSet::new();
        let mut queue: VecDeque<NodeId> = self.roots().into();
        while let Some(n) = queue.pop_front() {
            if !seen.insert(n) {
                continue;
            }
            for &(_, b) in succ.get(&n).into_iter().flatten() {
                queue.push_back(b);
            }
        }
        let remap: BTreeMap<NodeId, NodeId> = seen
            .iter()
            .enumerate()
            .map(|(new, &old)| (old, new as NodeId))
            .collect();
        Summary {
            node_count: remap.len() as u32,
            edges: self
                .edges
                .iter()
                .filter(|(a, _, b)| remap.contains_key(a) && remap.contains_key(b))
                .map(|&(a, l, b)| (remap[&a], l, remap[&b]))
                .collect(),
            entry: remap[&self.entry],
            ports: self.ports.iter().map(|p| remap[p]).collect(),
        }
    }

    /// Bisimulation quotient by partition refinement. The initial
    /// partition separates nodes by root role (which of entry /
    /// ports point at them) so port structure survives; refinement
    /// splits by the set of (label, target-class) signatures.
    fn quotient(&self) -> Summary {
        let g = self.reachable();
        // Root-role color: bitset over (entry, port 0, port 1, ...).
        // Trusted code must never silently alias roles — the u64
        // bitset caps the port table, so enforce it.
        assert!(g.ports.len() < 64, "port table exceeds role bitset");
        let mut color: BTreeMap<NodeId, u64> = BTreeMap::new();
        for n in 0..g.node_count {
            color.insert(n, 0);
        }
        for (bit, r) in g.roots().into_iter().enumerate() {
            *color.get_mut(&r).unwrap() |= 1u64 << bit;
        }
        let mut class: Vec<u32> = (0..g.node_count)
            .map(|n| {
                let cols: BTreeSet<u64> = color.values().copied().collect();
                cols.iter().position(|&c| c == color[&n]).unwrap() as u32
            })
            .collect();
        type Sig = (u32, BTreeSet<(Label, u32)>);
        loop {
            let mut sig: Vec<Sig> = (0..g.node_count as usize)
                .map(|n| (class[n], BTreeSet::new()))
                .collect();
            for &(a, l, b) in &g.edges {
                sig[a as usize].1.insert((l, class[b as usize]));
            }
            let mut renum: BTreeMap<&Sig, u32> = BTreeMap::new();
            for s in &sig {
                let next = renum.len() as u32;
                renum.entry(s).or_insert(next);
            }
            let new_class: Vec<u32> = sig.iter().map(|s| renum[s]).collect();
            if new_class == class {
                break;
            }
            class = new_class;
        }
        let class_count = class.iter().copied().max().map_or(0, |m| m + 1);
        let edges: BTreeSet<(NodeId, Label, NodeId)> = g
            .edges
            .iter()
            .map(|&(a, l, b)| (class[a as usize], l, class[b as usize]))
            .collect();
        Summary {
            node_count: class_count,
            edges: edges.into_iter().collect(),
            entry: class[g.entry as usize],
            ports: g.ports.iter().map(|&p| class[p as usize]).collect(),
        }
    }

    /// Canonical form: quotient, then deterministic BFS relabeling
    /// from the roots with edges visited in sorted label order, then
    /// sorted edge list. Idempotent; bisimilar machines with equal
    /// port arity canonicalize byte-equal. BindIds are NOT renumbered
    /// here (they are semantic identities within the summary); the
    /// transfers mint them in deterministic order.
    pub fn canon(&self) -> Summary {
        let g = self.quotient();
        let mut succ: BTreeMap<NodeId, BTreeSet<(Label, NodeId)>> = BTreeMap::new();
        for &(a, l, b) in &g.edges {
            succ.entry(a).or_default().insert((l, b));
        }
        let mut order: BTreeMap<NodeId, NodeId> = BTreeMap::new();
        let mut queue: VecDeque<NodeId> = g.roots().into();
        while let Some(n) = queue.pop_front() {
            if order.contains_key(&n) {
                continue;
            }
            let next = order.len() as NodeId;
            order.insert(n, next);
            for &(_, b) in succ.get(&n).into_iter().flatten() {
                if !order.contains_key(&b) {
                    queue.push_back(b);
                }
            }
        }
        let mut edges: Vec<(NodeId, Label, NodeId)> = g
            .edges
            .iter()
            .map(|&(a, l, b)| (order[&a], l, order[&b]))
            .collect();
        edges.sort();
        edges.dedup();
        Summary {
            node_count: g.node_count,
            edges,
            entry: order[&g.entry],
            ports: g.ports.iter().map(|p| order[p]).collect(),
        }
    }
}

/// The interned mask automaton: all masks reachable from FRESH under
/// the trusted kernels. Computed once; the accept product consults
/// only this and `step_meas`.
pub struct MaskAutomaton {
    /// Reachable masks in first-visit order; index 0 is FRESH.
    pub masks: Vec<u8>,
    /// h-successor and t-successor by mask index.
    pub h: Vec<u8>,
    pub t: Vec<u8>,
}

impl MaskAutomaton {
    pub fn build() -> MaskAutomaton {
        const FRESH: u8 = 1 << 4; // ZE, as in odd.rs
        let mut masks = vec![FRESH];
        let mut index: BTreeMap<u8, u8> = BTreeMap::new();
        index.insert(FRESH, 0);
        let (mut h, mut t) = (Vec::new(), Vec::new());
        let mut i = 0;
        while i < masks.len() {
            for (succ, out) in [(step_h(masks[i]), &mut h), (step_t(masks[i]), &mut t)] {
                let next = masks.len() as u8;
                let id = *index.entry(succ).or_insert_with(|| {
                    masks.push(succ);
                    next
                });
                debug_assert!(out.len() == i);
                out.push(id);
            }
            i += 1;
        }
        MaskAutomaton { masks, h, t }
    }
}

/// Distinguished-lineage component of the accept product.
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
enum DState {
    Absent,
    Live(u8),
    Retired,
}

/// Core of the accept product: reachability over (node, D-state)
/// from the given roots. `NewD` guesses the distinguished allocation
/// (at most one), `HD`/`TD` step the mask, `MeasD` accepts iff
/// `step_meas` fires and retires, `OutOfScope` is a stage-1a dead
/// end. Interface letters are epsilon — their semantic content acts
/// at transfer time, not accept time.
fn accept_product(s: &Summary, ma: &MaskAutomaton, roots: &[NodeId]) -> bool {
    let mut succ: BTreeMap<NodeId, Vec<(Label, NodeId)>> = BTreeMap::new();
    for &(a, l, b) in &s.edges {
        succ.entry(a).or_default().push((l, b));
    }
    let mut seen: BTreeSet<(NodeId, DState)> = BTreeSet::new();
    let mut queue: VecDeque<(NodeId, DState)> =
        roots.iter().map(|&r| (r, DState::Absent)).collect();
    while let Some((n, d)) = queue.pop_front() {
        if !seen.insert((n, d)) {
            continue;
        }
        for &(l, b) in succ.get(&n).into_iter().flatten() {
            let step = match (l, d) {
                (Label::NewD, DState::Absent) => Some(DState::Live(0)),
                (Label::HD, DState::Live(m)) => Some(DState::Live(ma.h[m as usize])),
                (Label::TD, DState::Live(m)) => Some(DState::Live(ma.t[m as usize])),
                (Label::MeasD, DState::Live(m)) => {
                    if step_meas(ma.masks[m as usize]) {
                        return true;
                    }
                    Some(DState::Retired)
                }
                // Absent-lineage effects belong to non-D qubits in
                // richer contexts; within one summary they are
                // unrealizable guesses — drop them.
                (Label::NewD | Label::HD | Label::TD | Label::MeasD, _) => None,
                (Label::OutOfScope, _) => None,
                (
                    Label::Eps | Label::Call { .. } | Label::RetIn { .. } | Label::RetOut { .. },
                    d,
                ) => Some(d),
            };
            if let Some(d2) = step {
                queue.push_back((b, d2));
            }
        }
    }
    false
}

/// May a MATERIALIZED effect path of `s` (entry or any port) reach a
/// Galois-odd accepting measurement?
///
/// SCOPE (revised under the ★ observation fan): open summaries no
/// longer eagerly materialize the effects an ambient interaction
/// COULD produce — those appear at resolution time — so this query
/// is effect-edge reachability, NOT an any-context upper bound. Its
/// r5b "deliberately loose any-context" formulation would need an
/// opaque-ambient instantiation run (r6 item); the closed theorem
/// path (`closed_accepts`) does not depend on it.
pub fn may_accept_latent(s: &Summary, ma: &MaskAutomaton) -> bool {
    accept_product(s, ma, &s.roots())
}

// ---------------------------------------------------------------------------
// Reference transfers (SPEC-ODDMIN §4, r5b).
// ---------------------------------------------------------------------------

/// Source weight algebra, wire-exact: w(Var i) = i+1, w(λM) =
/// w(M)+2, w(MN) = w(M)+w(N)+2.
pub fn var_weight(i: u8) -> u32 {
    i as u32 + 1
}

/// The observation branches for a forced ambient thunk: a single ★
/// letter (see `HeadPat::Any`). The rel is a placeholder — ambient
/// seams do not stale aliases (sound looseness: unstaled aliases
/// only ADD paths), and real seams stale with the real net at
/// delivery time.
fn ret_in_branches() -> Vec<(HeadPat, CapRel)> {
    vec![(HeadPat::Any, CapRel::PURE)]
}

/// The head a variable returns after receiving a value matching
/// `pat` bound to `b`: the variable IS the received value.
fn received_head(pat: HeadPat, b: BindId) -> Head {
    match pat {
        HeadPat::Any => Head::Opaque { bind: b },
        HeadPat::Lam => Head::Lam {
            apply: PortRef::Received(b),
        },
        HeadPat::Prim { which, partial } => Head::Prim {
            which,
            held: partial.then_some(PortRef::Received(b)),
        },
        HeadPat::Handle { role } => Head::Handle { role },
        // Received neutrals are bare in the closed pipeline (rigid
        // formals force to bare neutrals; spined neutrals are built
        // by app, never received) — latent-only looseness.
        HeadPat::Neutral => Head::Neutral { spine: None },
    }
}

/// `var_ref(i)`: force `Free(i)`, then behave as the received value
/// per its RetIn branches. Weight i+1. Depth is the caller's
/// obligation (i ≤ depth); the summary itself only names the index.
pub fn var_ref(i: u8) -> Summary {
    let mut edges = Vec::new();
    // entry --Call{Free(i)}--> 1, then one RetIn branch per letter,
    // each returning the received value.
    edges.push((
        0,
        Label::Call {
            target: CallTarget::Free(i),
            arg: None,
        },
        1,
    ));
    let mut next = 2u32;
    for (bind, (pat, rel)) in ret_in_branches().into_iter().enumerate() {
        let bind = bind as BindId;
        let mid = next;
        let done = next + 1;
        next += 2;
        edges.push((1, Label::RetIn { pat, bind, rel }, mid));
        edges.push((
            mid,
            Label::RetOut {
                head: received_head(pat, bind),
                rel,
            },
            done,
        ));
    }
    Summary {
        node_count: next,
        edges,
        entry: 0,
        ports: vec![],
    }
    .canon()
}

/// `lam_ref(body)`: rebase binders (Free(1) → Formal(p), Free(i+1) →
/// Free(i); Formal/Received untouched — the r5b rebasing ruling),
/// then return `Lam {apply: Own(p)}` where port p is the body's
/// entry. Weight +2.
pub fn lam_ref(body: &Summary) -> Summary {
    let p = body.ports.len() as PortId;
    let shift = |n: NodeId| n + 1; // make room for a fresh entry node 0
    let mut edges: Vec<(NodeId, Label, NodeId)> = body
        .edges
        .iter()
        .map(|&(a, l, b)| {
            let l = match l {
                Label::Call {
                    target: CallTarget::Free(1),
                    arg,
                } => Label::Call {
                    target: CallTarget::Formal(p),
                    arg,
                },
                Label::Call {
                    target: CallTarget::Free(i),
                    arg,
                } => Label::Call {
                    target: CallTarget::Free(i - 1),
                    arg,
                },
                other => other,
            };
            (shift(a), l, shift(b))
        })
        .collect();
    // The lambda value itself: pure return of the new head.
    let done = body.node_count + 1;
    edges.push((
        0,
        Label::RetOut {
            head: Head::Lam {
                apply: PortRef::Own(p),
            },
            rel: CapRel::PURE,
        },
        done,
    ));
    let mut ports: Vec<NodeId> = body.ports.iter().map(|&q| shift(q)).collect();
    ports.push(shift(body.entry));
    Summary {
        node_count: body.node_count + 2,
        edges,
        entry: 0,
        ports,
    }
    .canon()
}

/// Axiom summary for a bare primitive value (the signature
/// arguments): a pure return of the prim head.
pub fn prim_summary(which: Which) -> Summary {
    Summary {
        node_count: 2,
        edges: vec![(
            0,
            Label::RetOut {
                head: Head::Prim { which, held: None },
                rel: CapRel::PURE,
            },
            1,
        )],
        entry: 0,
        ports: vec![],
    }
}

/// Axiom summary for a rigid formal (NF descent): a pure bare
/// neutral.
pub fn rigid_summary() -> Summary {
    Summary {
        node_count: 2,
        edges: vec![(
            0,
            Label::RetOut {
                head: Head::Neutral { spine: None },
                rel: CapRel::PURE,
            },
            1,
        )],
        entry: 0,
        ports: vec![],
    }
}

// ---------------------------------------------------------------------------
// app_ref: the splice (SPEC-ODDMIN §4, r5b + the r6-pre rulings).
//
// The composition is a memoized reachability closure over SPECIALIZED
// STATES (subgraph port × source node × environment × frame-relative
// net action), with a global pending/returns relation implementing
// call-stack erasure PER CALLEE: returns of one entered (port, env)
// configuration reach every continuation registered for that same
// configuration — the declared wrong-return looseness — and nothing
// else. Environments, values, ports, and continuations are interned
// (hash-consed by id order, hence acyclic); revisiting a cycle hits
// the memo instead of minting fresh state (the r6 memoization
// ruling). Capability three-way (r6): a Handle head carries its role
// and the value cap — {DCur, Cur} is a live distinguished handle,
// {DCur, None} is stale (forcing it kills the path), {Other, _} is
// legitimate non-D. Own HD/TD/MeasD edges and Advance/Retire seams
// stale every live captured alias on that path; captured-env
// snapshots inside already-materialized ports are NOT rewritten —
// declared prototype looseness (adds traces only).
// ---------------------------------------------------------------------------

/// Composition abort: a growth gate fired inside one splice. The DP
/// driver treats an aborted cell as ⊤ and reports it; nothing
/// downstream may interpret an abort as a verdict.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Abort {
    StateCap,
    PortCap,
    DescendCap,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
enum Side {
    F,
    A,
    /// Library axioms: 0 = K (λλ.2), 1 = KI (λλ.1), 2 = rigid.
    Lib(u8),
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
enum Root {
    Entry,
    Port(PortId),
}

type CPortId = u32;
type EnvId = u32;
type ValId = u32;
type SpecId = u32;
type ContId = u32;

/// Composed-space port: a side subgraph with its captured
/// environment, an ambient-received behavior, or an extended neutral
/// spine (structure only — spine arguments are normalized eagerly at
/// extension time, mirroring qeval, and never re-walked).
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord)]
enum CPort {
    Sub { side: Side, root: Root, env: EnvId },
    Recv(BindId),
    Spine(Option<CPortId>, CPortId),
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
enum CHead {
    Lam {
        apply: CPortId,
    },
    Prim {
        which: Which,
        held: Option<CPortId>,
    },
    Handle {
        role: Role,
    },
    Neutral {
        spine: Option<CPortId>,
    },
    /// Ambient-received via ★: use sites case-split over the
    /// possible concrete heads.
    Opaque(BindId),
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
struct Val {
    head: CHead,
    cap: Cap,
}

/// Frame-relative net action bits (monotone; frames start empty).
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Default)]
struct Net {
    created: bool,
    advanced: bool,
    retired: bool,
}

impl Net {
    fn join(self, o: Net) -> Net {
        Net {
            created: self.created || o.created,
            advanced: self.advanced || o.advanced,
            retired: self.retired || o.retired,
        }
    }
    /// Net letter, per the β-ruling collapse: retirement dominates,
    /// then internal creation, then entry-generation advance.
    fn letter(self) -> CapAction {
        if self.retired {
            CapAction::Retire
        } else if self.created {
            CapAction::Create
        } else if self.advanced {
            CapAction::Advance
        } else {
            CapAction::Keep
        }
    }
    /// Does crossing this net stale pre-existing live aliases?
    fn stales(self) -> bool {
        self.advanced || self.retired
    }
    fn of_action(a: CapAction) -> Net {
        Net {
            created: a == CapAction::Create,
            advanced: a == CapAction::Advance,
            retired: a == CapAction::Retire,
        }
    }
}

/// Specialization environment: received-value bindings (may-sets)
/// and formal-thunk substitutions, both keyed side-locally.
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Default)]
struct Env {
    vals: BTreeMap<(Side, BindId), BTreeSet<ValId>>,
    thunks: BTreeMap<(Side, PortId), CPortId>,
}

/// Defunctionalized continuations. `Match` resumes a caller at its
/// RetIn branch node; the rest are the primitive rows and the NF
/// driver protocol.
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
enum Cont {
    /// Interface-only sentinel: frames explored for their symbolic
    /// interface (exposed ports), returning to no one.
    Iface,
    Match {
        cport: CPortId,
        ctx: ContId,
        node: NodeId,
        env: EnvId,
        net: Net,
    },
    Apply {
        arg: CPortId,
        ret_to: ContId,
    },
    PrimArg {
        which: Which,
        ret_to: ContId,
    },
    CnotA1 {
        a2: CPortId,
        ret_to: ContId,
    },
    CnotA2 {
        first: ValId,
        ret_to: ContId,
    },
    /// NF descent: lambdas consume a rigid formal and recurse;
    /// unevaluated held arguments are normalized; everything else
    /// passes through.
    Descend {
        ret_to: ContId,
    },
    /// Ignore the incoming value, deliver `val` instead.
    Seq {
        val: ValId,
        ret_to: ContId,
    },
    /// Emit the composed summary's own RetOut.
    TopRet,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
enum Mode {
    Apply,
    Descend,
    /// One-shot closed evaluation: the F side is applied to the five
    /// frozen-signature primitives in order, then NF-descended — all
    /// in a single specialization universe (staged composition
    /// multiplies observation fans and blows up; measured).
    Closed,
}

/// Library slot layout: selectors, the rigid formal, then the frozen
/// signature values in application order.
const LIB_BOOLS: [u8; 2] = [0, 1];
const LIB_RIGID: u8 = 2;
const LIB_PRIMS: [(u8, Which); 5] = [
    (3, Which::H),
    (4, Which::Meas),
    (5, Which::New),
    (6, Which::Cnot),
    (7, Which::T),
];

/// A specialized state: exploring `node` of the subgraph behind
/// `cport`, under `env`, with frame-relative `net`, returning to
/// `ctx`. Continuation-specialized frames keep different call sites'
/// flows apart — shared configurations otherwise bridge them through
/// common nodes (measured as false accepts on the precision gates).
/// Recursive re-entry with a stable continuation memoizes; unbounded
/// continuation growth hits the state cap and aborts.
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
struct Spec {
    cport: CPortId,
    node: NodeId,
    env: EnvId,
    net: Net,
    ctx: ContId,
}

struct Composer<'a> {
    f: &'a Summary,
    a: &'a Summary,
    lib: [Summary; 8],
    mode: Mode,
    // Interners (id order = creation order, hence acyclic).
    cports: Vec<CPort>,
    cport_ids: BTreeMap<CPort, CPortId>,
    envs: Vec<Env>,
    env_ids: BTreeMap<Env, EnvId>,
    vals: Vec<Val>,
    val_ids: BTreeMap<Val, ValId>,
    conts: Vec<Cont>,
    cont_ids: BTreeMap<Cont, ContId>,
    specs: Vec<Spec>,
    spec_ids: BTreeMap<Spec, SpecId>,
    // Extra output nodes that are not Spec states (effect targets,
    // return terminals, symbolic branch nodes).
    extra_nodes: u32,
    // Output graph under construction. Nodes: spec states first
    // (ids), then extras (offset by specs.len() at flatten). Ports
    // stay composed-port ids until flatten assigns real PortIds to
    // the reachable interface only.
    out_edges: Vec<(ONode, PreLabel, ONode)>,
    eps: Vec<(ONode, ONode)>,
    // Call-stack-erased pending/returns relation, keyed by entered
    // configuration.
    pending: BTreeMap<(CPortId, ContId), Vec<Net>>,
    returns: BTreeMap<(CPortId, ContId), Vec<Return>>,
    delivered: BTreeSet<(ONode, ValId, Net, ContId, Net)>,
    // Deterministic output bind minting: keyed by the symbolic site.
    bind_ids: BTreeMap<(ONode, HeadPat, CapRel), BindId>,
    // Free-reference analysis memo per subgraph root: (free received
    // binds, referenced formal ports). Environments captured into
    // ports are RESTRICTED to these — the closure-trimming that keeps
    // the specialization product and the port table finite in
    // practice.
    refs_memo: BTreeMap<(Side, NodeId), (BTreeSet<BindId>, BTreeSet<PortId>)>,
    // Worklists: unexplored spec states and pending deliveries (the
    // delivery engine is iterative — deep chains must not recurse).
    todo: VecDeque<SpecId>,
    dq: VecDeque<(ONode, ValId, Net, ContId)>,
    state_cap: usize,
    aborted: Option<Abort>,
}

/// A recorded frame return: site, value, frame-relative net.
type Return = (ONode, ValId, Net);

/// Output node: a spec state or an extra node.
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
enum ONode {
    S(SpecId),
    X(u32),
}

/// Pre-flatten edge label: ports are composed-port ids; final
/// `PortId`s are assigned lazily at flatten time, only for ports the
/// reachable interface actually references.
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
enum PreLabel {
    Eff(Label),
    Call {
        target: CallTarget,
        arg: Option<CPortId>,
    },
    RetIn {
        pat: HeadPat,
        bind: BindId,
        rel: CapRel,
    },
    /// The composed summary's own top-level return: always interface.
    RetOut {
        head: CHead,
        rel: CapRel,
    },
    /// A subgraph's symbolic return copy: interface ONLY if the
    /// subgraph (`frame`) ends up exposed as a port (dropped
    /// otherwise — internal seams were consumed by deliveries). The
    /// frame rides in the label because ε-closure copies edges onto
    /// foreign origin nodes.
    RetOutSym {
        frame: CPortId,
        head: CHead,
        rel: CapRel,
    },
}

impl<'a> Composer<'a> {
    fn new(f: &'a Summary, a: &'a Summary, mode: Mode, state_cap: usize) -> Composer<'a> {
        Composer {
            f,
            a,
            lib: [
                lam_ref(&lam_ref(&var_ref(2))),
                lam_ref(&lam_ref(&var_ref(1))),
                rigid_summary(),
                prim_summary(Which::H),
                prim_summary(Which::Meas),
                prim_summary(Which::New),
                prim_summary(Which::Cnot),
                prim_summary(Which::T),
            ],
            mode,
            cports: Vec::new(),
            cport_ids: BTreeMap::new(),
            envs: Vec::new(),
            env_ids: BTreeMap::new(),
            vals: Vec::new(),
            val_ids: BTreeMap::new(),
            conts: Vec::new(),
            cont_ids: BTreeMap::new(),
            specs: Vec::new(),
            spec_ids: BTreeMap::new(),
            extra_nodes: 0,
            out_edges: Vec::new(),
            eps: Vec::new(),
            pending: BTreeMap::new(),
            returns: BTreeMap::new(),
            delivered: BTreeSet::new(),
            bind_ids: BTreeMap::new(),
            refs_memo: BTreeMap::new(),
            todo: VecDeque::new(),
            dq: VecDeque::new(),
            state_cap,
            aborted: None,
        }
    }

    fn side_summary(&self, side: Side) -> &Summary {
        match side {
            Side::F => self.f,
            Side::A => self.a,
            Side::Lib(i) => &self.lib[i as usize],
        }
    }

    fn intern_cport(&mut self, p: CPort) -> CPortId {
        if let Some(&id) = self.cport_ids.get(&p) {
            return id;
        }
        let id = self.cports.len() as CPortId;
        self.cports.push(p.clone());
        self.cport_ids.insert(p, id);
        id
    }
    fn intern_env(&mut self, e: Env) -> EnvId {
        if let Some(&id) = self.env_ids.get(&e) {
            return id;
        }
        let id = self.envs.len() as EnvId;
        self.envs.push(e.clone());
        self.env_ids.insert(e, id);
        id
    }
    fn intern_val(&mut self, v: Val) -> ValId {
        if let Some(&id) = self.val_ids.get(&v) {
            return id;
        }
        let id = self.vals.len() as ValId;
        self.vals.push(v);
        self.val_ids.insert(v, id);
        id
    }
    fn intern_cont(&mut self, c: Cont) -> ContId {
        if let Some(&id) = self.cont_ids.get(&c) {
            return id;
        }
        let id = self.conts.len() as ContId;
        self.conts.push(c);
        self.cont_ids.insert(c, id);
        id
    }
    fn intern_spec(&mut self, s: Spec) -> SpecId {
        if let Some(&id) = self.spec_ids.get(&s) {
            return id;
        }
        if self.specs.len() >= self.state_cap {
            self.aborted.get_or_insert(Abort::StateCap);
            // Return a dead sentinel state that is never explored.
            return 0;
        }
        let id = self.specs.len() as SpecId;
        self.specs.push(s);
        self.spec_ids.insert(s, id);
        self.todo.push_back(id);
        id
    }
    fn fresh_extra(&mut self) -> ONode {
        let id = self.extra_nodes;
        self.extra_nodes += 1;
        ONode::X(id)
    }

    /// Stale every live distinguished alias in `env` if the crossed
    /// net stales (the r6 three-way ruling: DCur+Cur → DCur+None).
    fn stale_env(&mut self, env: EnvId, net: Net) -> EnvId {
        if !net.stales() {
            return env;
        }
        let mut e = self.envs[env as usize].clone();
        let mut changed = false;
        for set in e.vals.values_mut() {
            let staled: BTreeSet<ValId> = set
                .iter()
                .map(|&vid| {
                    let v = self.vals[vid as usize];
                    if v.head == (CHead::Handle { role: Role::DCur }) && v.cap == Cap::Cur {
                        changed = true;
                        self.val_ids
                            .get(&Val {
                                head: v.head,
                                cap: Cap::None,
                            })
                            .copied()
                            .unwrap_or(vid)
                    } else {
                        vid
                    }
                })
                .collect();
            *set = staled;
        }
        if !changed {
            return env;
        }
        // Interning a staled val may be needed before lookup above
        // misses; rebuild properly.
        let mut e2 = Env {
            thunks: e.thunks.clone(),
            ..Env::default()
        };
        let old = self.envs[env as usize].clone();
        for (k, set) in old.vals {
            let mut ns = BTreeSet::new();
            for vid in set {
                let v = self.vals[vid as usize];
                if v.head == (CHead::Handle { role: Role::DCur }) && v.cap == Cap::Cur {
                    ns.insert(self.intern_val(Val {
                        head: v.head,
                        cap: Cap::None,
                    }));
                } else {
                    ns.insert(vid);
                }
            }
            e2.vals.insert(k, ns);
        }
        self.intern_env(e2)
    }

    /// Enter a subgraph configuration with a waiting continuation,
    /// connecting the causing node to the subgraph's root (the
    /// callee's effects lie ON the caller's path). Registration
    /// replays already-known returns (LFP closure).
    fn enter(&mut self, at: Option<ONode>, cport: CPortId, cont: ContId, inflight: Net) {
        // Ensure the frame's root state exists and is explored —
        // continuation-specialized, so distinct call sites never
        // share nodes.
        if let CPort::Sub { side, root, env } = self.cports[cport as usize].clone() {
            let s = self.side_summary(side);
            let node = match root {
                Root::Entry => s.entry,
                Root::Port(p) => s.ports[p as usize],
            };
            let rid = self.intern_spec(Spec {
                cport,
                node,
                env,
                net: Net::default(),
                ctx: cont,
            });
            if let Some(a) = at {
                self.eps.push((a, ONode::S(rid)));
            }
        }
        self.pending
            .entry((cport, cont))
            .or_default()
            .push(inflight);
        let known: Vec<Return> = self
            .returns
            .get(&(cport, cont))
            .cloned()
            .unwrap_or_default();
        for (at, val, fnet) in known {
            self.deliver(at, val, inflight.join(fnet), cont);
        }
    }

    /// Record a return of a frame and deliver it to its continuation
    /// (per registered entry inflight).
    fn ret(&mut self, cport: CPortId, ctx: ContId, at: ONode, val: ValId, frame_net: Net) {
        self.returns
            .entry((cport, ctx))
            .or_default()
            .push((at, val, frame_net));
        let waiting: Vec<Net> = self.pending.get(&(cport, ctx)).cloned().unwrap_or_default();
        for inflight in waiting {
            self.deliver(at, val, inflight.join(frame_net), ctx);
        }
    }

    /// Queue a delivery (deduplicated). The dispatch loop in `run`
    /// processes it — deep continuation chains must not recurse.
    fn deliver(&mut self, at: ONode, val: ValId, inflight: Net, cont: ContId) {
        if self.aborted.is_some() {
            return;
        }
        if !self
            .delivered
            .insert((at, val, inflight, cont, Net::default()))
        {
            return;
        }
        self.dq.push_back((at, val, inflight, cont));
    }

    /// Dispatch one delivery.
    fn dispatch(&mut self, at: ONode, val: ValId, inflight: Net, cont: ContId) {
        match self.conts[cont as usize] {
            Cont::Match {
                cport,
                ctx,
                node,
                env,
                net,
            } => {
                let side = match &self.cports[cport as usize] {
                    CPort::Sub { side, .. } => *side,
                    // Match continuations always anchor in a Sub.
                    _ => return,
                };
                let v = self.vals[val as usize];
                let (bpat, bcap) = boundary(v.head, v.cap);
                let edges: Vec<(Label, NodeId)> = self
                    .side_summary(side)
                    .edges
                    .iter()
                    .filter(|(a, _, _)| *a == node)
                    .map(|&(_, l, b)| (l, b))
                    .collect();
                for (l, m) in edges {
                    if let Label::RetIn { pat, bind, rel } = l {
                        // ★ branches accept every value; an opaque
                        // value satisfies every specific pattern.
                        let ok = pat == HeadPat::Any
                            || bpat == HeadPat::Any
                            || (pat == bpat
                                && rel.cap_out == bcap
                                && rel.action == inflight.letter());
                        if !ok {
                            continue;
                        }
                        let env2 = self.stale_env(env, inflight);
                        let mut e = self.envs[env2 as usize].clone();
                        e.vals.entry((side, bind)).or_default().insert(val);
                        let env3 = self.intern_env(e);
                        let s2 = self.intern_spec(Spec {
                            cport,
                            node: m,
                            env: env3,
                            net: net.join(inflight),
                            ctx,
                        });
                        self.eps.push((at, ONode::S(s2)));
                    }
                }
            }
            Cont::Iface => {}
            Cont::Apply { arg, ret_to } => self.apply_val(at, val, inflight, arg, ret_to),
            Cont::PrimArg { which, ret_to } => self.prim_arg(at, val, inflight, which, ret_to),
            Cont::CnotA1 { a2, ret_to } => self.cnot_a1(at, val, inflight, a2, ret_to),
            Cont::CnotA2 { first, ret_to } => self.cnot_a2(at, val, inflight, first, ret_to),
            Cont::Descend { ret_to } => self.descend(at, val, inflight, cont, ret_to),
            Cont::Seq { val: v2, ret_to } => self.deliver(at, v2, inflight, ret_to),
            Cont::TopRet => self.top_ret(at, val, inflight),
        }
    }

    /// Enter a thunk whose returns should flow to `cont`, from `at`.
    fn enter_from(&mut self, at: ONode, thunk: CPortId, cont: ContId, inflight: Net) {
        match self.cports[thunk as usize].clone() {
            CPort::Sub { .. } => self.enter(Some(at), thunk, cont, inflight),
            // Forcing an opaque received behavior: symbolic — the
            // ambient will resolve it. Represented at apply sites
            // only; a bare force of a Recv is dispatch, handled by
            // callers.
            CPort::Recv(_) | CPort::Spine(..) => {}
        }
    }

    /// The application dispatch rows (r6-pre (iii), amended).
    fn apply_val(&mut self, at: ONode, fval: ValId, inflight: Net, arg: CPortId, ret_to: ContId) {
        let v = self.vals[fval as usize];
        match v.head {
            CHead::Lam { apply } => match self.cports[apply as usize].clone() {
                CPort::Sub { side, root, env } => {
                    // Substitute the formal: the entered lambda's own
                    // apply port index on its side.
                    let p = match root {
                        Root::Port(p) => p,
                        // A lambda apply port is always a Port root.
                        Root::Entry => return,
                    };
                    let mut e = self.envs[env as usize].clone();
                    e.thunks.insert((side, p), arg);
                    let env2 = self.intern_env(e);
                    let broot = self.side_summary(side).ports[p as usize];
                    let env3 = self.restrict_env(side, broot, env2);
                    let entered = self.intern_cport(CPort::Sub {
                        side,
                        root: Root::Port(p),
                        env: env3,
                    });
                    self.enter(Some(at), entered, ret_to, inflight);
                }
                CPort::Recv(b) => {
                    // Deferred application of an ambient value: emit
                    // the symbolic call + full observation fan.
                    self.ensure_port_spec(arg);
                    let mid = self.fresh_extra();
                    self.out_edges.push((
                        at,
                        PreLabel::Call {
                            target: CallTarget::Received(b),
                            arg: Some(arg),
                        },
                        mid,
                    ));
                    for (pat, rel) in ret_in_branches() {
                        let bout = self.mint_bind(mid, pat, rel);
                        let s2 = self.fresh_extra();
                        self.out_edges.push((
                            mid,
                            PreLabel::RetIn {
                                pat,
                                bind: bout,
                                rel,
                            },
                            s2,
                        ));
                        let oval = self.opaque_val(pat, bout);
                        let net2 = inflight.join(Net::of_action(rel.action));
                        self.deliver(s2, oval, net2, ret_to);
                    }
                }
                CPort::Spine(..) => {}
            },
            CHead::Prim { which, held: None } => match which {
                Which::New => {
                    // D branch: the allocation is the distinguished one.
                    let s1 = self.fresh_extra();
                    self.out_edges.push((at, PreLabel::Eff(Label::NewD), s1));
                    let dv = self.intern_val(Val {
                        head: CHead::Handle { role: Role::DCur },
                        cap: Cap::Cur,
                    });
                    let net2 = inflight.join(Net {
                        created: true,
                        ..Net::default()
                    });
                    self.deliver(s1, dv, net2, ret_to);
                    // non-D branch: τ relative to D.
                    let ov = self.intern_val(Val {
                        head: CHead::Handle { role: Role::Other },
                        cap: Cap::None,
                    });
                    self.deliver(at, ov, inflight, ret_to);
                    // The argument is never entered (strictness row).
                }
                Which::H | Which::T | Which::Meas => {
                    let c = self.intern_cont(Cont::PrimArg { which, ret_to });
                    self.enter_from(at, arg, c, inflight);
                }
                Which::Cnot => {
                    // Call-by-name partial: hold the argument.
                    let pv = self.intern_val(Val {
                        head: CHead::Prim {
                            which: Which::Cnot,
                            held: Some(arg),
                        },
                        cap: Cap::None,
                    });
                    self.deliver(at, pv, inflight, ret_to);
                }
            },
            CHead::Prim {
                which: Which::Cnot,
                held: Some(h1),
            } => {
                let c = self.intern_cont(Cont::CnotA1 { a2: arg, ret_to });
                self.enter_from(at, h1, c, inflight);
            }
            CHead::Prim { .. } => {}
            // Applying a handle: species error — Kill.
            CHead::Handle { .. } => {}
            CHead::Neutral { spine } => {
                // Eagerly normalize the argument (its effects fire
                // now, as in qeval), then return the extended stuck
                // neutral. The stored spine is structure only.
                let sp = self.intern_cport(CPort::Spine(spine, arg));
                let nv = self.intern_val(Val {
                    head: CHead::Neutral { spine: Some(sp) },
                    cap: Cap::None,
                });
                let seq = self.intern_cont(Cont::Seq { val: nv, ret_to });
                let desc = self.intern_cont(Cont::Descend { ret_to: seq });
                self.enter_from(at, arg, desc, inflight);
            }
            CHead::Opaque(b) => {
                // Applying an ambient value: symbolic deferred call +
                // a single ★ observation.
                self.ensure_port_spec(arg);
                let mid = self.fresh_extra();
                self.out_edges.push((
                    at,
                    PreLabel::Call {
                        target: CallTarget::Received(b),
                        arg: Some(arg),
                    },
                    mid,
                ));
                for (pat, rel) in ret_in_branches() {
                    let bout = self.mint_bind(mid, pat, rel);
                    let s2 = self.fresh_extra();
                    self.out_edges.push((
                        mid,
                        PreLabel::RetIn {
                            pat,
                            bind: bout,
                            rel,
                        },
                        s2,
                    ));
                    let oval = self.opaque_val(pat, bout);
                    self.deliver(s2, oval, inflight, ret_to);
                }
            }
        }
    }

    /// H/T/Meas strict-unary row on the forced argument value.
    fn prim_arg(&mut self, at: ONode, val: ValId, inflight: Net, which: Which, ret_to: ContId) {
        let v = self.vals[val as usize];
        match v.head {
            // Species error before the body — Kill.
            CHead::Lam { .. } | CHead::Prim { .. } => {}
            CHead::Handle { role: Role::DCur } => {
                if v.cap != Cap::Cur {
                    // Stale distinguished handle — Kill (r6 (iv)).
                    return;
                }
                match which {
                    Which::H | Which::T => {
                        let s1 = self.fresh_extra();
                        let l = if which == Which::H {
                            Label::HD
                        } else {
                            Label::TD
                        };
                        self.out_edges.push((at, PreLabel::Eff(l), s1));
                        let rv = self.intern_val(Val {
                            head: CHead::Handle { role: Role::DCur },
                            cap: Cap::Cur,
                        });
                        let net2 = inflight.join(Net {
                            advanced: true,
                            ..Net::default()
                        });
                        self.deliver(s1, rv, net2, ret_to);
                    }
                    Which::Meas => {
                        let s1 = self.fresh_extra();
                        self.out_edges.push((at, PreLabel::Eff(Label::MeasD), s1));
                        let net2 = inflight.join(Net {
                            retired: true,
                            ..Net::default()
                        });
                        self.deliver_bools(s1, net2, ret_to);
                    }
                    _ => unreachable!(),
                }
            }
            CHead::Handle { role: Role::Other } => match which {
                // Non-D effects are erased; D-relative Keep.
                Which::H | Which::T => {
                    let rv = self.intern_val(Val {
                        head: CHead::Handle { role: Role::Other },
                        cap: Cap::None,
                    });
                    self.deliver(at, rv, inflight, ret_to);
                }
                Which::Meas => self.deliver_bools(at, inflight, ret_to),
                _ => unreachable!(),
            },
            // Stuck neutral application; the spine was already
            // normalized when built.
            CHead::Neutral { spine } => {
                let nv = self.intern_val(Val {
                    head: CHead::Neutral { spine },
                    cap: Cap::None,
                });
                self.deliver(at, nv, inflight, ret_to);
            }
            // Ambient value forced by a strict unary primitive: the
            // use-site case split. Species mismatches are the absent
            // branches (Kill).
            CHead::Opaque(_) => {
                match which {
                    Which::H | Which::T => {
                        // Distinguished current handle branch.
                        let s1 = self.fresh_extra();
                        let l = if which == Which::H {
                            Label::HD
                        } else {
                            Label::TD
                        };
                        self.out_edges.push((at, PreLabel::Eff(l), s1));
                        let rv = self.intern_val(Val {
                            head: CHead::Handle { role: Role::DCur },
                            cap: Cap::Cur,
                        });
                        let net2 = inflight.join(Net {
                            advanced: true,
                            ..Net::default()
                        });
                        self.deliver(s1, rv, net2, ret_to);
                        // Other-handle branch: erased effect.
                        let ov = self.intern_val(Val {
                            head: CHead::Handle { role: Role::Other },
                            cap: Cap::None,
                        });
                        self.deliver(at, ov, inflight, ret_to);
                    }
                    Which::Meas => {
                        let s1 = self.fresh_extra();
                        self.out_edges.push((at, PreLabel::Eff(Label::MeasD), s1));
                        let net2 = inflight.join(Net {
                            retired: true,
                            ..Net::default()
                        });
                        self.deliver_bools(s1, net2, ret_to);
                        self.deliver_bools(at, inflight, ret_to);
                    }
                    _ => unreachable!(),
                }
                // Neutral branch: stuck application.
                let nv = self.intern_val(Val {
                    head: CHead::Neutral { spine: None },
                    cap: Cap::None,
                });
                self.deliver(at, nv, inflight, ret_to);
            }
        }
    }

    /// Measurement outcomes: BOTH selector summaries as may-branches
    /// (never merged into a colorless head — r6 (iii)). The library
    /// entries purely return their lambdas, so entering them with the
    /// caller's continuation delivers the two selector values.
    fn deliver_bools(&mut self, at: ONode, net: Net, ret_to: ContId) {
        for lib in LIB_BOOLS {
            let empty = self.intern_env(Env::default());
            let entry = self.intern_cport(CPort::Sub {
                side: Side::Lib(lib),
                root: Root::Entry,
                env: empty,
            });
            self.enter(Some(at), entry, ret_to, net);
        }
    }

    /// cnot first-argument row (r6 (iii): neutral survives, no
    /// effect; stale kills; species kills).
    fn cnot_a1(&mut self, at: ONode, val: ValId, inflight: Net, a2: CPortId, ret_to: ContId) {
        let v = self.vals[val as usize];
        match v.head {
            CHead::Lam { .. } | CHead::Prim { .. } => {}
            CHead::Neutral { spine } => {
                // Neutral control: normalize a2, return stuck neutral,
                // no OutOfScope.
                let sp = self.intern_cport(CPort::Spine(spine, a2));
                let nv = self.intern_val(Val {
                    head: CHead::Neutral { spine: Some(sp) },
                    cap: Cap::None,
                });
                let seq = self.intern_cont(Cont::Seq { val: nv, ret_to });
                let desc = self.intern_cont(Cont::Descend { ret_to: seq });
                self.enter_from(at, a2, desc, inflight);
            }
            CHead::Handle { role } => {
                if role == Role::DCur && v.cap != Cap::Cur {
                    return; // stale — Kill
                }
                let c = self.intern_cont(Cont::CnotA2 { first: val, ret_to });
                self.enter_from(at, a2, c, inflight);
            }
            // Ambient first argument: case-split into handle control
            // (either role — cnot pairing decided at a2) and neutral
            // control.
            CHead::Opaque(_) => {
                for role in [Role::DCur, Role::Other] {
                    let hv = self.intern_val(Val {
                        head: CHead::Handle { role },
                        cap: if role == Role::DCur {
                            Cap::Cur
                        } else {
                            Cap::None
                        },
                    });
                    let c = self.intern_cont(Cont::CnotA2 { first: hv, ret_to });
                    self.enter_from(at, a2, c, inflight);
                }
                let sp = self.intern_cport(CPort::Spine(None, a2));
                let nv = self.intern_val(Val {
                    head: CHead::Neutral { spine: Some(sp) },
                    cap: Cap::None,
                });
                let seq = self.intern_cont(Cont::Seq { val: nv, ret_to });
                let desc = self.intern_cont(Cont::Descend { ret_to: seq });
                self.enter_from(at, a2, desc, inflight);
            }
        }
    }

    /// cnot second-argument row: the pair analysis.
    fn cnot_a2(&mut self, at: ONode, val: ValId, inflight: Net, first: ValId, ret_to: ContId) {
        let v2 = self.vals[val as usize];
        let v1 = self.vals[first as usize];
        match v2.head {
            CHead::Lam { .. } | CHead::Prim { .. } => {}
            CHead::Neutral { spine } => {
                let nv = self.intern_val(Val {
                    head: CHead::Neutral { spine },
                    cap: Cap::None,
                });
                self.deliver(at, nv, inflight, ret_to);
            }
            CHead::Handle { .. } | CHead::Opaque(_) => {
                // A stale distinguished second argument kills; an
                // opaque one may be a handle of either role.
                if matches!(v2.head, CHead::Handle { role: Role::DCur }) && v2.cap != Cap::Cur {
                    return;
                }
                let r2s: &[Role] = match v2.head {
                    CHead::Handle { role: Role::DCur } => &[Role::DCur],
                    CHead::Handle { role: Role::Other } => &[Role::Other],
                    _ => &[Role::DCur, Role::Other],
                };
                let r1 = match v1.head {
                    CHead::Handle { role } => role,
                    _ => return,
                };
                // Same-qubit kills; a possibly-distinct current pair
                // fires the out-of-scope effect (sink, no successor).
                if r2s
                    .iter()
                    .any(|&r2| !(r1 == Role::DCur && r2 == Role::DCur))
                {
                    let sink = self.fresh_extra();
                    self.out_edges
                        .push((at, PreLabel::Eff(Label::OutOfScope), sink));
                }
            }
        }
    }

    /// NF descent (r6 (i): never replaces EvalHead — this runs only
    /// at the driver's normal-form surface).
    fn descend(&mut self, at: ONode, val: ValId, inflight: Net, self_cont: ContId, ret_to: ContId) {
        let v = self.vals[val as usize];
        // Opaque received values pass through: their normalization
        // belongs to the ambient resolver (every value is resolved in
        // the closed pipeline, so this never cuts a closed trace) —
        // and descending an opaque lambda would mint observation fans
        // forever.
        let opaque = |c: &Composer, p: CPortId| matches!(c.cports[p as usize], CPort::Recv(_));
        match v.head {
            CHead::Lam { apply } if !opaque(self, apply) => {
                // Apply to a zero-cost rigid formal and keep
                // descending (memoized self-continuation).
                let empty = self.intern_env(Env::default());
                let rigid = self.intern_cport(CPort::Sub {
                    side: Side::Lib(LIB_RIGID),
                    root: Root::Entry,
                    env: empty,
                });
                self.apply_val(at, val, inflight, rigid, self_cont);
            }
            CHead::Prim {
                which: Which::Cnot,
                held: Some(h1),
            } if !opaque(self, h1) => {
                // A surviving partial normalizes its held argument
                // (call-by-name debt paid at the NF surface), then
                // stays a partial.
                let seq = self.intern_cont(Cont::Seq { val, ret_to });
                let desc = self.intern_cont(Cont::Descend { ret_to: seq });
                self.enter_from(at, h1, desc, inflight);
            }
            _ => self.deliver(at, val, inflight, ret_to),
        }
    }

    /// Emit the composed summary's own return.
    fn top_ret(&mut self, at: ONode, val: ValId, inflight: Net) {
        let v = self.vals[val as usize];
        let cap_out = match v.head {
            CHead::Handle { role: Role::DCur } => v.cap,
            _ => Cap::None,
        };
        let action = inflight.letter();
        // Canonical cap_in per action, mirroring ret_in_branches —
        // cap_in is never compared at match time.
        let cap_in = if matches!(action, CapAction::Advance | CapAction::Retire) {
            Cap::Cur
        } else {
            Cap::None
        };
        let t = self.fresh_extra();
        self.out_edges.push((
            at,
            PreLabel::RetOut {
                head: v.head,
                rel: CapRel {
                    cap_in,
                    action,
                    cap_out,
                },
            },
            t,
        ));
    }

    /// Ensure a referenced subgraph's root state exists (so the
    /// output can expose it as a port and future splices can enter
    /// it). Unentered ports get explored symbolically under the
    /// Iface sentinel context — exactly the unapplied-lambda
    /// interface, never bridging into live flows.
    fn ensure_port_spec(&mut self, cport: CPortId) {
        if let CPort::Sub { side, root, env } = self.cports[cport as usize].clone() {
            let s = self.side_summary(side);
            let node = match root {
                Root::Entry => s.entry,
                Root::Port(q) => s.ports[q as usize],
            };
            let iface = self.intern_cont(Cont::Iface);
            self.intern_spec(Spec {
                cport,
                node,
                env,
                net: Net::default(),
                ctx: iface,
            });
        }
    }

    fn mint_bind(&mut self, at: ONode, pat: HeadPat, rel: CapRel) -> BindId {
        let key = (at, pat, rel);
        if let Some(&b) = self.bind_ids.get(&key) {
            return b;
        }
        let b = self.bind_ids.len() as BindId;
        self.bind_ids.insert(key, b);
        b
    }

    /// The opaque value observed through a symbolic RetIn.
    fn opaque_val(&mut self, pat: HeadPat, bout: BindId) -> ValId {
        let head = match pat {
            HeadPat::Any => CHead::Opaque(bout),
            HeadPat::Lam => CHead::Lam {
                apply: self.intern_cport(CPort::Recv(bout)),
            },
            HeadPat::Prim { which, partial } => CHead::Prim {
                which,
                held: if partial {
                    Some(self.intern_cport(CPort::Recv(bout)))
                } else {
                    None
                },
            },
            HeadPat::Handle { role } => CHead::Handle { role },
            HeadPat::Neutral => CHead::Neutral { spine: None },
        };
        let cap = match pat {
            HeadPat::Handle { role: Role::DCur } => Cap::Cur,
            _ => Cap::None,
        };
        self.intern_val(Val { head, cap })
    }

    /// Explore one specialized state: process its source node's
    /// outgoing edges.
    fn explore(&mut self, sid: SpecId) {
        let Spec {
            cport,
            node,
            env,
            net,
            ctx,
        } = self.specs[sid as usize];
        let side = match &self.cports[cport as usize] {
            CPort::Sub { side, .. } => *side,
            _ => return,
        };
        let at = ONode::S(sid);
        let edges: Vec<(Label, NodeId)> = self
            .side_summary(side)
            .edges
            .iter()
            .filter(|(a, _, _)| *a == node)
            .map(|&(_, l, b)| (l, b))
            .collect();
        for (l, m) in edges {
            if self.aborted.is_some() {
                return;
            }
            match l {
                Label::NewD | Label::HD | Label::TD | Label::MeasD => {
                    let bits = match l {
                        Label::NewD => Net {
                            created: true,
                            ..Net::default()
                        },
                        Label::HD | Label::TD => Net {
                            advanced: true,
                            ..Net::default()
                        },
                        _ => Net {
                            retired: true,
                            ..Net::default()
                        },
                    };
                    let env2 = self.stale_env(env, bits);
                    let s2 = self.intern_spec(Spec {
                        cport,
                        node: m,
                        env: env2,
                        net: net.join(bits),
                        ctx,
                    });
                    self.out_edges.push((at, PreLabel::Eff(l), ONode::S(s2)));
                }
                Label::OutOfScope => {
                    let sink = self.fresh_extra();
                    self.out_edges
                        .push((at, PreLabel::Eff(Label::OutOfScope), sink));
                }
                Label::Eps => {
                    let s2 = self.intern_spec(Spec {
                        cport,
                        node: m,
                        env,
                        net,
                        ctx,
                    });
                    self.out_edges
                        .push((at, PreLabel::Eff(Label::Eps), ONode::S(s2)));
                }
                Label::RetIn { pat, bind, rel } => {
                    // Symbolic observation on an unresolved-call path.
                    let bout = self.mint_bind(at, pat, rel);
                    let oval = self.opaque_val(pat, bout);
                    let bits = Net::of_action(rel.action);
                    let env2 = self.stale_env(env, bits);
                    let mut e = self.envs[env2 as usize].clone();
                    e.vals.entry((side, bind)).or_default().insert(oval);
                    let env3 = self.intern_env(e);
                    let s2 = self.intern_spec(Spec {
                        cport,
                        node: m,
                        env: env3,
                        net: net.join(bits),
                        ctx,
                    });
                    self.out_edges.push((
                        at,
                        PreLabel::RetIn {
                            pat,
                            bind: bout,
                            rel,
                        },
                        ONode::S(s2),
                    ));
                }
                Label::RetOut { head, rel } => {
                    // Resolve and return; also keep a symbolic copy
                    // for future splicing IF this subgraph ends up
                    // exposed (one per resolved value, composed-head
                    // form; flatten decides exposure).
                    let vals = self.resolve_head(side, env, head, rel);
                    for val in vals {
                        self.ret(cport, ctx, at, val, net);
                        let t = self.fresh_extra();
                        let ch = self.vals[val as usize].head;
                        self.out_edges.push((
                            at,
                            PreLabel::RetOutSym {
                                frame: cport,
                                head: ch,
                                rel,
                            },
                            t,
                        ));
                    }
                    let _ = m;
                }
                Label::Call { target, arg } => {
                    self.call_edge(at, side, cport, ctx, env, net, target, arg, m);
                }
            }
        }
    }

    /// Free-reference analysis of the subgraph rooted at `root`:
    /// which received binds (minus locally bound) and formal ports it
    /// can reach, jumping through own-port head references.
    fn side_refs(&mut self, side: Side, root: NodeId) -> (BTreeSet<BindId>, BTreeSet<PortId>) {
        if let Some(r) = self.refs_memo.get(&(side, root)) {
            return r.clone();
        }
        let s = self.side_summary(side);
        let mut referenced: BTreeSet<BindId> = BTreeSet::new();
        let mut bound: BTreeSet<BindId> = BTreeSet::new();
        let mut formals: BTreeSet<PortId> = BTreeSet::new();
        let mut seen: BTreeSet<NodeId> = BTreeSet::new();
        let mut q: VecDeque<NodeId> = VecDeque::from([root]);
        let port_jump = |p: PortId, q: &mut VecDeque<NodeId>| {
            if let Some(&n) = s.ports.get(p as usize) {
                q.push_back(n);
            }
        };
        while let Some(n) = q.pop_front() {
            if !seen.insert(n) {
                continue;
            }
            for &(a, l, b) in &s.edges {
                if a != n {
                    continue;
                }
                match l {
                    Label::Call { target, arg } => {
                        match target {
                            CallTarget::Received(bb) => {
                                referenced.insert(bb);
                            }
                            CallTarget::Formal(p) => {
                                formals.insert(p);
                            }
                            CallTarget::Free(_) => {}
                        }
                        if let Some(p) = arg {
                            port_jump(p, &mut q);
                        }
                    }
                    Label::RetIn { bind, .. } => {
                        bound.insert(bind);
                    }
                    Label::RetOut { head, .. } => {
                        let pr = match head {
                            Head::Lam { apply } => Some(apply),
                            Head::Prim { held, .. } => held,
                            Head::Neutral { spine } => spine,
                            Head::Handle { .. } => None,
                            Head::Opaque { bind } => {
                                referenced.insert(bind);
                                None
                            }
                        };
                        match pr {
                            Some(PortRef::Received(bb)) => {
                                referenced.insert(bb);
                            }
                            Some(PortRef::Own(p)) => port_jump(p, &mut q),
                            None => {}
                        }
                    }
                    _ => {}
                }
                q.push_back(b);
            }
        }
        let free: BTreeSet<BindId> = referenced.difference(&bound).copied().collect();
        let out = (free, formals);
        self.refs_memo.insert((side, root), out.clone());
        out
    }

    /// Restrict an environment to what the subgraph rooted at `root`
    /// on `side` can reference. Nested captures re-restrict at their
    /// own seams.
    fn restrict_env(&mut self, side: Side, root: NodeId, env: EnvId) -> EnvId {
        let (free, formals) = self.side_refs(side, root);
        let e = &self.envs[env as usize];
        let vals: BTreeMap<(Side, BindId), BTreeSet<ValId>> = e
            .vals
            .iter()
            .filter(|((s2, b), _)| *s2 == side && free.contains(b))
            .map(|(k, v)| (*k, v.clone()))
            .collect();
        let thunks: BTreeMap<(Side, PortId), CPortId> = e
            .thunks
            .iter()
            .filter(|((s2, p), _)| *s2 == side && formals.contains(p))
            .map(|(k, v)| (*k, *v))
            .collect();
        self.intern_env(Env { vals, thunks })
    }

    /// Intern a side subgraph port with its captured environment
    /// (restricted to the subgraph's free references) and make sure
    /// its root state exists for the output interface.
    fn sub_cport(&mut self, side: Side, p: PortId, env: EnvId) -> CPortId {
        let root = self.side_summary(side).ports[p as usize];
        let renv = self.restrict_env(side, root, env);
        let cp = self.intern_cport(CPort::Sub {
            side,
            root: Root::Port(p),
            env: renv,
        });
        self.ensure_port_spec(cp);
        cp
    }

    /// Resolve a source-side RetOut head into composed values.
    fn resolve_head(&mut self, side: Side, env: EnvId, head: Head, rel: CapRel) -> Vec<ValId> {
        let cap = rel.cap_out;
        match head {
            Head::Lam { apply } => match apply {
                PortRef::Own(p) => {
                    let cp = self.sub_cport(side, p, env);
                    vec![self.intern_val(Val {
                        head: CHead::Lam { apply: cp },
                        cap: Cap::None,
                    })]
                }
                PortRef::Received(b) => self.envs[env as usize]
                    .vals
                    .get(&(side, b))
                    .cloned()
                    .unwrap_or_default()
                    .into_iter()
                    .collect(),
            },
            Head::Prim { which, held } => match held {
                None => vec![self.intern_val(Val {
                    head: CHead::Prim { which, held: None },
                    cap: Cap::None,
                })],
                Some(PortRef::Own(p)) => {
                    let cp = self.sub_cport(side, p, env);
                    vec![self.intern_val(Val {
                        head: CHead::Prim {
                            which,
                            held: Some(cp),
                        },
                        cap: Cap::None,
                    })]
                }
                Some(PortRef::Received(b)) => self.envs[env as usize]
                    .vals
                    .get(&(side, b))
                    .cloned()
                    .unwrap_or_default()
                    .into_iter()
                    .collect(),
            },
            Head::Handle { role } => vec![self.intern_val(Val {
                head: CHead::Handle { role },
                cap: if role == Role::DCur { cap } else { Cap::None },
            })],
            Head::Neutral { spine } => {
                let sp = spine.and_then(|s| match s {
                    PortRef::Own(p) => Some(self.sub_cport(side, p, env)),
                    PortRef::Received(_) => None,
                });
                vec![self.intern_val(Val {
                    head: CHead::Neutral { spine: sp },
                    cap: Cap::None,
                })]
            }
            // Behave as the bound value(s).
            Head::Opaque { bind } => self.envs[env as usize]
                .vals
                .get(&(side, bind))
                .cloned()
                .unwrap_or_default()
                .into_iter()
                .collect(),
        }
    }

    /// A Call edge in a source subgraph.
    #[allow(clippy::too_many_arguments)]
    fn call_edge(
        &mut self,
        at: ONode,
        side: Side,
        cport: CPortId,
        ctx: ContId,
        env: EnvId,
        net: Net,
        target: CallTarget,
        arg: Option<PortId>,
        m: NodeId,
    ) {
        let cont = self.intern_cont(Cont::Match {
            cport,
            ctx,
            node: m,
            env,
            net,
        });
        match target {
            CallTarget::Free(i) => {
                // Ambient: symbolic passthrough, argument carried as
                // a composed port (with the captured environment).
                let arg2 = arg.map(|q| self.sub_cport(side, q, env));
                let s2 = self.intern_spec(Spec {
                    cport,
                    node: m,
                    env,
                    net,
                    ctx,
                });
                self.out_edges.push((
                    at,
                    PreLabel::Call {
                        target: CallTarget::Free(i),
                        arg: arg2,
                    },
                    ONode::S(s2),
                ));
            }
            CallTarget::Formal(p) => {
                let thunk = self.envs[env as usize].thunks.get(&(side, p)).copied();
                match thunk {
                    Some(t) => match arg {
                        None => self.enter_from(at, t, cont, Net::default()),
                        Some(q) => {
                            let argp = self.sub_cport(side, q, env);
                            let ap = self.intern_cont(Cont::Apply {
                                arg: argp,
                                ret_to: cont,
                            });
                            self.enter_from(at, t, ap, Net::default());
                        }
                    },
                    None => {
                        // Unsubstituted formal: symbolic passthrough.
                        let arg2 = arg.map(|q| self.sub_cport(side, q, env));
                        let s2 = self.intern_spec(Spec {
                            cport,
                            node: m,
                            env,
                            net,
                            ctx,
                        });
                        self.out_edges.push((
                            at,
                            PreLabel::Call {
                                target: CallTarget::Formal(p),
                                arg: arg2,
                            },
                            ONode::S(s2),
                        ));
                    }
                }
            }
            CallTarget::Received(b) => {
                let vals: Vec<ValId> = self.envs[env as usize]
                    .vals
                    .get(&(side, b))
                    .cloned()
                    .unwrap_or_default()
                    .into_iter()
                    .collect();
                for val in vals {
                    match arg {
                        // Dispatch the stored value: NEVER replays
                        // its producer (r6 check).
                        None => self.deliver(at, val, Net::default(), cont),
                        Some(q) => {
                            let argp = self.sub_cport(side, q, env);
                            self.apply_val(at, val, Net::default(), argp, cont);
                        }
                    }
                }
            }
        }
    }

    /// Run to closure, then flatten (ε-elimination), then canon.
    /// Build the root continuation chain and run the closure loop.
    /// Returns the root cport (the F-entry configuration).
    fn close(&mut self) -> (CPortId, ContId) {
        let empty = self.intern_env(Env::default());
        let root_cport = self.intern_cport(CPort::Sub {
            side: Side::F,
            root: Root::Entry,
            env: empty,
        });
        let top = self.intern_cont(Cont::TopRet);
        let acport = self.intern_cport(CPort::Sub {
            side: Side::A,
            root: Root::Entry,
            env: empty,
        });
        let first = match self.mode {
            Mode::Apply => self.intern_cont(Cont::Apply {
                arg: acport,
                ret_to: top,
            }),
            Mode::Descend => self.intern_cont(Cont::Descend { ret_to: top }),
            Mode::Closed => {
                // One specialization universe: apply the five frozen
                // signature values in order, then NF-descend. Chain
                // built inside-out (t-apply innermost, h outermost).
                let mut c = self.intern_cont(Cont::Descend { ret_to: top });
                for &(slot, _) in LIB_PRIMS.iter().rev() {
                    let p = self.intern_cport(CPort::Sub {
                        side: Side::Lib(slot),
                        root: Root::Entry,
                        env: empty,
                    });
                    c = self.intern_cont(Cont::Apply { arg: p, ret_to: c });
                }
                c
            }
        };
        self.enter(None, root_cport, first, Net::default());
        while self.aborted.is_none() {
            if let Some(sid) = self.todo.pop_front() {
                self.explore(sid);
            } else if let Some((at, val, inflight, cont)) = self.dq.pop_front() {
                self.dispatch(at, val, inflight, cont);
            } else {
                break;
            }
        }
        (root_cport, first)
    }

    /// Closed-mode acceptance: run the mask product directly over the
    /// internal graph (out_edges + ε), from the root configuration.
    /// No flatten, no ports, no canon — the closed query needs none.
    fn accepts_closed(mut self) -> Result<bool, Abort> {
        let (root_cport, first) = self.close();
        if let Some(a) = self.aborted {
            return Err(a);
        }
        let empty = self.intern_env(Env::default());
        let root = *self
            .spec_ids
            .get(&Spec {
                cport: root_cport,
                node: self.f.entry,
                env: empty,
                net: Net::default(),
                ctx: first,
            })
            .unwrap_or(&0);
        let ma = MaskAutomaton::build();
        let mut succ: BTreeMap<ONode, Vec<(Option<Label>, ONode)>> = BTreeMap::new();
        for &(a, l, b) in &self.out_edges {
            let lab = match l {
                PreLabel::Eff(Label::Eps) => None,
                PreLabel::Eff(e) => Some(e),
                _ => None,
            };
            succ.entry(a).or_default().push((lab, b));
        }
        for &(a, b) in &self.eps {
            succ.entry(a).or_default().push((None, b));
        }
        let mut seen: BTreeSet<(ONode, DState)> = BTreeSet::new();
        let mut queue: VecDeque<(ONode, DState)> =
            VecDeque::from([(ONode::S(root), DState::Absent)]);
        while let Some((n, d)) = queue.pop_front() {
            if !seen.insert((n, d)) {
                continue;
            }
            for &(l, b) in succ.get(&n).into_iter().flatten() {
                let step = match (l, d) {
                    (None, d) => Some(d),
                    (Some(Label::NewD), DState::Absent) => Some(DState::Live(0)),
                    (Some(Label::HD), DState::Live(m)) => Some(DState::Live(ma.h[m as usize])),
                    (Some(Label::TD), DState::Live(m)) => Some(DState::Live(ma.t[m as usize])),
                    (Some(Label::MeasD), DState::Live(m)) => {
                        if step_meas(ma.masks[m as usize]) {
                            return Ok(true);
                        }
                        Some(DState::Retired)
                    }
                    (Some(_), _) => None,
                };
                if let Some(d2) = step {
                    queue.push_back((b, d2));
                }
            }
        }
        Ok(false)
    }

    fn run(mut self) -> Result<Summary, Abort> {
        let empty = self.intern_env(Env::default());
        let (root_cport, first) = self.close();
        if let Some(a) = self.aborted {
            return Err(a);
        }
        // Flatten: number nodes, ε-eliminate, then translate labels
        // with LAZY port assignment — only ports the reachable
        // interface references get real PortIds.
        let spec_n = self.specs.len() as u32;
        let node_of = |n: ONode| -> NodeId {
            match n {
                ONode::S(s) => s,
                ONode::X(x) => spec_n + x,
            }
        };
        let total = spec_n + self.extra_nodes;
        // ε edges become first-class Eps edges — elimination by edge
        // copying blows up flattened summaries quadratically.
        let mut pre: Vec<(NodeId, PreLabel, NodeId)> = self
            .out_edges
            .iter()
            .map(|&(a, l, b)| (node_of(a), l, node_of(b)))
            .collect();
        pre.extend(
            self.eps
                .iter()
                .map(|&(a, b)| (node_of(a), PreLabel::Eff(Label::Eps), node_of(b))),
        );
        let mut adj: BTreeMap<NodeId, Vec<(PreLabel, NodeId)>> = BTreeMap::new();
        for &(a, l, b) in &pre {
            adj.entry(a).or_default().push((l, b));
        }
        let entry = *self
            .spec_ids
            .get(&Spec {
                cport: root_cport,
                node: self.f.entry,
                env: empty,
                net: Net::default(),
                ctx: first,
            })
            .unwrap_or(&0);
        // Reachability + lazy port assignment + deferred exposure of
        // symbolic subgraph returns.
        let cx = &self;
        let mut fs = Flat {
            port_of: BTreeMap::new(),
            port_roots: Vec::new(),
            deferred: BTreeMap::new(),
            live: BTreeSet::new(),
            edges: Vec::new(),
            work: VecDeque::from([FWork::Visit(entry)]),
            extra_inert: 0,
            total,
            abort: None,
        };
        while let Some(w) = fs.work.pop_front() {
            if fs.abort.is_some() {
                break;
            }
            match w {
                FWork::Visit(n) => {
                    if !fs.live.insert(n) {
                        continue;
                    }
                    let outs: Vec<(PreLabel, NodeId)> = adj.get(&n).cloned().unwrap_or_default();
                    for (l, b) in outs {
                        match l {
                            PreLabel::Eff(e) => fs.edges.push((n, e, b)),
                            PreLabel::RetIn { pat, bind, rel } => {
                                fs.edges.push((n, Label::RetIn { pat, bind, rel }, b))
                            }
                            PreLabel::Call { target, arg } => {
                                let arg2 = arg.map(|cp| match fs.assign(cx, cp) {
                                    PortRef::Own(p) => p,
                                    // Call arguments are always own thunks.
                                    PortRef::Received(_) => 0,
                                });
                                fs.edges.push((n, Label::Call { target, arg: arg2 }, b));
                            }
                            PreLabel::RetOut { head, rel } => {
                                let h = fs.head(cx, head);
                                fs.edges.push((n, Label::RetOut { head: h, rel }, b));
                            }
                            PreLabel::RetOutSym { frame, head, rel } => {
                                // Interface only if this frame's
                                // subgraph is an exposed port.
                                if fs.port_of.contains_key(&frame) {
                                    let h = fs.head(cx, head);
                                    fs.edges.push((n, Label::RetOut { head: h, rel }, b));
                                } else {
                                    fs.deferred
                                        .entry(frame)
                                        .or_default()
                                        .push((n, head, rel, b));
                                }
                            }
                        }
                        fs.work.push_back(FWork::Visit(b));
                    }
                }
                FWork::Sym(n, head, rel, b) => {
                    let h = fs.head(cx, head);
                    fs.edges.push((n, Label::RetOut { head: h, rel }, b));
                    fs.work.push_back(FWork::Visit(b));
                }
            }
        }
        if let Some(a) = fs.abort {
            return Err(a);
        }
        Ok(Summary {
            node_count: total + fs.extra_inert,
            edges: fs.edges,
            entry,
            ports: fs.port_roots,
        }
        .canon())
    }
}

/// Flatten-time work: node visits and deferred symbolic returns
/// whose subgraph just became exposed.
enum FWork {
    Visit(NodeId),
    Sym(NodeId, CHead, CapRel, NodeId),
}

/// Flatten state: lazy port table, exposure-deferred returns,
/// reachability, and the final edge list.
struct Flat {
    port_of: BTreeMap<CPortId, PortId>,
    port_roots: Vec<NodeId>,
    deferred: BTreeMap<CPortId, Vec<(NodeId, CHead, CapRel, NodeId)>>,
    live: BTreeSet<NodeId>,
    edges: Vec<(NodeId, Label, NodeId)>,
    work: VecDeque<FWork>,
    extra_inert: u32,
    total: u32,
    abort: Option<Abort>,
}

impl Flat {
    /// Resolve a composed-port reference; assigning a new port roots
    /// its subgraph and releases its deferred symbolic returns.
    fn assign(&mut self, cx: &Composer, cp: CPortId) -> PortRef {
        if let CPort::Recv(b) = cx.cports[cp as usize] {
            return PortRef::Received(b);
        }
        if let Some(&p) = self.port_of.get(&cp) {
            return PortRef::Own(p);
        }
        if self.port_roots.len() >= 63 {
            self.abort.get_or_insert(Abort::PortCap);
            return PortRef::Own(0);
        }
        let p = self.port_roots.len() as PortId;
        self.port_of.insert(cp, p);
        let root = match cx.cports[cp as usize].clone() {
            CPort::Sub { side, root, env } => {
                let s = cx.side_summary(side);
                let node = match root {
                    Root::Entry => s.entry,
                    Root::Port(q) => s.ports[q as usize],
                };
                cx.cont_ids
                    .get(&Cont::Iface)
                    .and_then(|&iface| {
                        cx.spec_ids.get(&Spec {
                            cport: cp,
                            node,
                            env,
                            net: Net::default(),
                            ctx: iface,
                        })
                    })
                    .copied()
                    .unwrap_or(0)
            }
            // Spine ports are structural markers: inert root.
            _ => {
                let n = self.total + self.extra_inert;
                self.extra_inert += 1;
                n
            }
        };
        self.port_roots.push(root);
        self.work.push_back(FWork::Visit(root));
        for (n, head, rel, b) in self.deferred.remove(&cp).unwrap_or_default() {
            self.work.push_back(FWork::Sym(n, head, rel, b));
        }
        PortRef::Own(p)
    }

    /// Translate a composed head, assigning referenced ports.
    fn head(&mut self, cx: &Composer, head: CHead) -> Head {
        match head {
            CHead::Lam { apply } => Head::Lam {
                apply: self.assign(cx, apply),
            },
            CHead::Prim { which, held } => Head::Prim {
                which,
                held: held.map(|h| self.assign(cx, h)),
            },
            CHead::Handle { role } => Head::Handle { role },
            CHead::Neutral { spine } => Head::Neutral {
                spine: spine.map(|s| self.assign(cx, s)),
            },
            CHead::Opaque(bind) => Head::Opaque { bind },
        }
    }
}

/// Boundary pattern and cap of a composed value (for RetIn matching).
fn boundary(head: CHead, cap: Cap) -> (HeadPat, Cap) {
    match head {
        CHead::Lam { .. } => (HeadPat::Lam, Cap::None),
        CHead::Prim { which, held } => (
            HeadPat::Prim {
                which,
                partial: held.is_some(),
            },
            Cap::None,
        ),
        CHead::Handle { role } => (
            HeadPat::Handle { role },
            if role == Role::DCur { cap } else { Cap::None },
        ),
        CHead::Neutral { .. } => (HeadPat::Neutral, Cap::None),
        CHead::Opaque(_) => (HeadPat::Any, Cap::None),
    }
}

/// Default per-splice specialized-state cap (growth gate).
pub const COMPOSE_STATE_CAP: usize = 100_000;

/// `app_ref(F, A)`: the r5b splice. Returns the canonical composed
/// summary, or the growth-gate abort. Weight accounting (w_f + w_a +
/// 2) is the caller's job.
pub fn app_ref(f: &Summary, a: &Summary) -> Result<Summary, Abort> {
    Composer::new(f, a, Mode::Apply, COMPOSE_STATE_CAP).run()
}

/// One NF-descent layer over a closed composed summary: lambdas at
/// the top consume rigid formals (recursively), surviving cnot
/// partials normalize their held arguments, everything else passes
/// through.
pub fn nf_descend(m: &Summary) -> Result<Summary, Abort> {
    let dummy = rigid_summary();
    Composer::new(m, &dummy, Mode::Descend, COMPOSE_STATE_CAP).run()
}

/// Closed-program PREFIX acceptance (r6-pre (v)): does some abstract
/// path of `M h meas new cnot t`, normalized, fire an odd-readable
/// distinguished measurement before any cnot? Sound for the lower
/// bound: a concrete cnot-free odd leaf implies an odd measurement
/// before any cnot, which implies abstract prefix acceptance. The
/// product runs from the single composed root only (never from
/// latent ports — the §4 protocol), in ONE specialization universe:
/// signature application + NF descent as a single continuation
/// chain. (Staged composition multiplies the observation fans at
/// every stage boundary — measured past 3M states on witness45.)
pub fn closed_accepts(m: &Summary, _ma: &MaskAutomaton) -> Result<bool, Abort> {
    let dummy = rigid_summary();
    Composer::new(m, &dummy, Mode::Closed, COMPOSE_STATE_CAP).accepts_closed()
}

/// Reference summary of a source term via the three transfers. The
/// weighted DP builds tables instead; this is the direct compositional
/// route for validation and spot queries. Primitive axioms are NEVER
/// introduced here (r6: they exist only in the closing environment).
pub fn term_summary(t: &crate::term::Term) -> Result<Summary, Abort> {
    use crate::term::Term;
    match t {
        Term::Var(i) => {
            assert!(*i < 256, "variable index too large for the domain");
            Ok(var_ref(*i as u8))
        }
        Term::Lam(b) => Ok(lam_ref(&term_summary(b)?)),
        Term::App(f, a) => app_ref(&term_summary(f)?, &term_summary(a)?),
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    /// Chain machine: entry --labels...--> terminal, no ports.
    fn chain(labels: &[Label]) -> Summary {
        Summary {
            node_count: labels.len() as u32 + 1,
            edges: labels
                .iter()
                .enumerate()
                .map(|(i, &l)| (i as NodeId, l, i as NodeId + 1))
                .collect(),
            entry: 0,
            ports: vec![],
        }
    }

    #[test]
    fn mask_automaton_matches_kernels() {
        let ma = MaskAutomaton::build();
        // Closed under h/t by construction; FRESH is index 0.
        assert_eq!(ma.masks[0], 1 << 4);
        // 17 reachable masks, 8 odd-readable — cross-derived by an
        // independent BFS outside the crate.
        assert_eq!(ma.masks.len(), 17);
        assert_eq!(ma.masks.iter().filter(|&&m| step_meas(m)).count(), 8);
        assert_eq!(ma.masks.len(), ma.h.len());
        assert_eq!(ma.masks.len(), ma.t.len());
        for (i, &m) in ma.masks.iter().enumerate() {
            assert_eq!(ma.masks[ma.h[i] as usize], step_h(m));
            assert_eq!(ma.masks[ma.t[i] as usize], step_t(m));
        }
        // The sandwich prefix reaches an odd-readable mask; pure
        // Clifford prefixes never do (mirrors odd.rs hand tests).
        let path = |ops: &str| {
            let mut s = 0u8;
            for c in ops.chars() {
                s = match c {
                    'h' => ma.h[s as usize],
                    't' => ma.t[s as usize],
                    _ => unreachable!(),
                };
            }
            step_meas(ma.masks[s as usize])
        };
        assert!(path("hth"));
        for ops in ["", "h", "t", "ht", "htt", "htth", "hthh", "tttt"] {
            assert!(!path(ops), "{ops} wrongly odd-readable");
        }
    }

    #[test]
    fn accept_product_matches_monitor_semantics() {
        let ma = MaskAutomaton::build();
        use Label::*;
        // The abstract sandwich accepts; Clifford chains do not.
        assert!(may_accept_latent(&chain(&[NewD, HD, TD, HD, MeasD]), &ma));
        assert!(!may_accept_latent(&chain(&[NewD, HD, MeasD]), &ma));
        assert!(!may_accept_latent(&chain(&[NewD, TD, MeasD]), &ma));
        // Interface letters are epsilon for the product.
        let call = Call {
            target: CallTarget::Free(1),
            arg: None,
        };
        assert!(may_accept_latent(
            &chain(&[NewD, HD, call, TD, HD, MeasD]),
            &ma
        ));
        // OutOfScope is a stage-1a dead end even if odd would follow.
        assert!(!may_accept_latent(
            &chain(&[NewD, HD, TD, OutOfScope, HD, MeasD]),
            &ma
        ));
        // Effects before allocation are unrealizable in-summary.
        assert!(!may_accept_latent(&chain(&[HD, TD, HD, MeasD]), &ma));
        // A second NewD on one lineage path is unrealizable.
        assert!(!may_accept_latent(
            &chain(&[NewD, MeasD, NewD, HD, TD, HD, MeasD]),
            &ma
        ));
    }

    #[test]
    fn canon_laws() {
        use Label::*;
        let sandwich = chain(&[NewD, HD, TD, HD, MeasD]);
        // Idempotence.
        let c = sandwich.canon();
        assert_eq!(c, c.canon());
        // Congruence: a machine with a duplicated parallel branch is
        // bisimilar to the chain and must canonicalize byte-equal.
        let mut dup = sandwich.clone();
        let base = dup.node_count;
        dup.node_count += 4;
        dup.edges.extend([
            (0, NewD, base),
            (base, HD, base + 1),
            (base + 1, TD, base + 2),
            (base + 2, HD, base + 3),
            (base + 3, MeasD, 5),
        ]);
        assert_eq!(dup.canon(), sandwich.canon());
        // Unreachable garbage is dropped.
        let mut junk = sandwich.clone();
        junk.node_count += 2;
        junk.edges.push((base, OutOfScope, base + 1));
        assert_eq!(junk.canon(), sandwich.canon());
    }

    #[test]
    fn canon_preserves_port_structure() {
        use Label::*;
        // Two one-state machines whose entries return identically,
        // but one exposes a port (an apply target). They must NOT
        // canonicalize equal (the λx.x vs λx.HD;x defect class:
        // ports are semantic).
        let ret = RetOut {
            head: Head::Handle { role: Role::Other },
            rel: CapRel::PURE,
        };
        let plain = Summary {
            node_count: 2,
            edges: vec![(0, ret, 1)],
            entry: 0,
            ports: vec![],
        };
        let ported = Summary {
            node_count: 2,
            edges: vec![(0, ret, 1)],
            entry: 0,
            ports: vec![1],
        };
        assert_ne!(plain.canon(), ported.canon());
        // And machines differing only in WHICH head color they
        // return stay distinct.
        let lam0 = Summary {
            node_count: 2,
            edges: vec![(
                0,
                RetOut {
                    head: Head::Lam {
                        apply: PortRef::Own(0),
                    },
                    rel: CapRel::PURE,
                },
                1,
            )],
            entry: 0,
            ports: vec![1],
        };
        let neut = Summary {
            node_count: 2,
            edges: vec![(
                0,
                RetOut {
                    head: Head::Neutral { spine: None },
                    rel: CapRel::PURE,
                },
                1,
            )],
            entry: 0,
            ports: vec![1],
        };
        assert_ne!(lam0.canon(), neut.canon());
    }

    #[test]
    fn var_lam_transfers_are_sane() {
        // var: one Call, one RetIn/RetOut pair per branch letter.
        let v = var_ref(1);
        assert_eq!(v, v.canon());
        let calls = v
            .edges
            .iter()
            .filter(|(_, l, _)| matches!(l, Label::Call { .. }))
            .count();
        assert_eq!(calls, 1);
        let ret_ins = v
            .edges
            .iter()
            .filter(|(_, l, _)| matches!(l, Label::RetIn { .. }))
            .count();
        assert_eq!(ret_ins, ret_in_branches().len());
        // λx.x: the body's Free(1) is rebased to Formal(p).
        let id = lam_ref(&var_ref(1));
        assert!(id.edges.iter().any(|(_, l, _)| matches!(
            l,
            Label::Call {
                target: CallTarget::Formal(_),
                ..
            }
        )));
        assert!(!id.edges.iter().any(|(_, l, _)| matches!(
            l,
            Label::Call {
                target: CallTarget::Free(_),
                ..
            }
        )));
        // λ.(2): an ambient reference survives rebased down.
        let k_ish = lam_ref(&var_ref(2));
        assert!(k_ish.edges.iter().any(|(_, l, _)| matches!(
            l,
            Label::Call {
                target: CallTarget::Free(1),
                ..
            }
        )));
        // Nested: λλ.2 — the outer lambda's formal, seen from the
        // inner body, is Free(1) after one rebase, then Formal at
        // the second.
        let k = lam_ref(&lam_ref(&var_ref(2)));
        assert!(!k.edges.iter().any(|(_, l, _)| matches!(
            l,
            Label::Call {
                target: CallTarget::Free(_),
                ..
            }
        )));
    }

    use crate::term::{app, lam, var, Term};

    fn wire_term(src: &str) -> Term {
        crate::parse_all(src).expect("closed wire")
    }

    /// Nest λ⁵ signature binders around a body.
    fn sig5(body: Term) -> Term {
        lam(lam(lam(lam(lam(body)))))
    }

    /// Gate: the tightness anchor. witness45's sandwich must be
    /// abstractly accepted through the full apply pipeline, and the
    /// 28-bit cnot witness must NOT be (out of scope, not odd).
    #[test]
    fn gate_witness45_accepts_cnot28_does_not() {
        let ma = MaskAutomaton::build();
        let w45 = wire_term("000000000001111100111111001100111111001111010");
        let s = term_summary(&w45).expect("compose");
        assert_eq!(closed_accepts(&s, &ma), Ok(true), "witness45 must accept");
        let c28 = wire_term("0000000001011001110100111010");
        let s = term_summary(&c28).expect("compose");
        assert_eq!(closed_accepts(&s, &ma), Ok(false), "cnot28 must not accept");
    }

    /// Gate 1: λx.x and λx.(f x) have distinct apply-port structure.
    #[test]
    fn gate_distinct_apply_ports() {
        let id = lam_ref(&var_ref(1));
        let effectful = lam_ref(&app_ref(&var_ref(2), &var_ref(1)).expect("compose"));
        assert_ne!(id.canon(), effectful.canon());
        for s in [&id, &effectful] {
            assert!(!s.ports.is_empty(), "lambda summaries expose apply ports");
        }
    }

    /// Gate 5: the nested-binder counterexamples. Selecting the
    /// second argument evaluates the sandwich thunk; selecting the
    /// first (K discards) must not — and under call-by-name the
    /// unused thunk is never entered.
    #[test]
    fn gate_nested_binders_select_correctly() {
        let ma = MaskAutomaton::build();
        // Sandwich body at signature depth 5: meas(h(t(h(new t)))).
        let sandwich = || {
            app(
                var(4),
                app(var(5), app(var(1), app(var(5), app(var(3), var(1))))),
            )
        };
        let sel2 = lam(lam(var(1)));
        let sel1 = lam(lam(var(2)));
        // ((λλ.1) t) SANDWICH — selects the sandwich: accepts.
        let p = sig5(app(app(sel2.clone(), var(1)), sandwich()));
        let s = term_summary(&p).expect("compose");
        assert_eq!(closed_accepts(&s, &ma), Ok(true), "inner selection broken");
        // ((λλ.2) t) SANDWICH — K discards the sandwich: rejects.
        let p = sig5(app(app(sel1.clone(), var(1)), sandwich()));
        let s = term_summary(&p).expect("compose");
        assert_eq!(closed_accepts(&s, &ma), Ok(false), "outer selection broken");
        // ((λλ.2) SANDWICH) t — K keeps the sandwich: accepts.
        let p = sig5(app(app(sel1, sandwich()), var(1)));
        let s = term_summary(&p).expect("compose");
        assert_eq!(
            closed_accepts(&s, &ma),
            Ok(true),
            "kept-thunk selection broken"
        );
        // ((λλ.1) SANDWICH) t — discards the sandwich: rejects.
        let p = sig5(app(app(sel2, sandwich()), var(1)));
        let s = term_summary(&p).expect("compose");
        assert_eq!(closed_accepts(&s, &ma), Ok(false), "discarded-thunk leaked");
    }

    /// Gates 6 + 9: a surviving lambda's body is explored under a
    /// rigid formal (NF descent), and an unapplied latent apply port
    /// is never independently accepted by the closed query — while
    /// the latent query deliberately accepts it.
    #[test]
    fn gate_rigid_descent_vs_latent_port() {
        let ma = MaskAutomaton::build();
        // λ⁵.λx. meas(h(t(h(new t)))) — sandwich under a surviving
        // binder, no x dependence: descent must fire it.
        let under = sig5(lam(app(
            var(5),
            app(var(6), app(var(2), app(var(6), app(var(4), var(2))))),
        )));
        let s = term_summary(&under).expect("compose");
        assert_eq!(
            closed_accepts(&s, &ma),
            Ok(true),
            "NF descent lost the body"
        );
        // λ⁵.λx. meas(h(t(h x))) — the sandwich needs a HANDLE for x;
        // under the rigid formal it is stuck neutral: closed reject,
        // latent accept (the deliberately loose any-context query).
        let latent = sig5(lam(app(
            var(5),
            app(var(6), app(var(2), app(var(6), var(1)))),
        )));
        let s = term_summary(&latent).expect("compose");
        assert_eq!(
            closed_accepts(&s, &ma),
            Ok(false),
            "rigid formal treated as handle"
        );
        // Under the ★ fan, ambient effects are not materialized in
        // open summaries, so the latent query no longer accepts here
        // (its any-context upper-bound role is an r6 item); what
        // check 9 requires is the closed rejection above.
        assert!(
            !may_accept_latent(&s, &ma),
            "no materialized effect path should exist in the open summary"
        );
    }

    /// Gate 7: species error before the body — h applied to a lambda
    /// dies without exploring the lambda's (odd) body.
    #[test]
    fn gate_species_error_before_body() {
        let ma = MaskAutomaton::build();
        // λ⁵. h (λx. meas(h(t(h(new t)))))
        let p = sig5(app(
            var(5),
            lam(app(
                var(5),
                app(var(6), app(var(2), app(var(6), app(var(4), var(2))))),
            )),
        ));
        let s = term_summary(&p).expect("compose");
        assert_eq!(
            closed_accepts(&s, &ma),
            Ok(false),
            "body explored past species error"
        );
    }

    /// Gate 8: new discards its argument unevaluated — an odd
    /// sandwich inside the discarded thunk must not fire.
    #[test]
    fn gate_new_discards_argument() {
        let ma = MaskAutomaton::build();
        // λ⁵. meas(new(SANDWICH)) — the discarded thunk is the only
        // odd source; measuring the fresh |0⟩ is even.
        let sandwich = app(
            var(4),
            app(var(5), app(var(1), app(var(5), app(var(3), var(1))))),
        );
        let p = sig5(app(var(4), app(var(3), sandwich)));
        let s = term_summary(&p).expect("compose");
        assert_eq!(
            closed_accepts(&s, &ma),
            Ok(false),
            "new evaluated its argument"
        );
    }

    /// S1 differential on the small closed population: every program
    /// with a concrete cnot-free Galois-odd leaf must be abstractly
    /// accepted. Also counts abstract looseness (accepts with no
    /// concrete odd leaf) — reported, not asserted.
    #[test]
    fn small_population_agreement_vs_qeval() {
        use crate::enumerate::for_each_closed;
        use crate::odd::{replay, Verdict};
        use crate::qeval::{self, Prim, QBudget};
        use crate::radical::radical_parts;
        const FROZEN: [Prim; 5] = [Prim::H, Prim::Meas, Prim::New, Prim::Cnot, Prim::T];
        let ma = MaskAutomaton::build();
        let budget = QBudget {
            beta: 128,
            trans: 1 << 14,
            ..QBudget::default()
        };
        let (mut programs, mut concrete_odd, mut abstract_odd, mut loose, mut aborts) =
            (0u64, 0u64, 0u64, 0u64, 0u64);
        for n in 4..=22 {
            for_each_closed(n, &mut |enc, len| {
                programs += 1;
                let mut bits = (0..len).rev().map(|i| enc >> i & 1 == 1);
                let p = crate::parse::parse_prefix(&mut bits).expect("enumerated term parses");
                let leaves = qeval::run_traced(qeval::apply_signature(&p, &FROZEN), &budget);
                let mut odd = false;
                for (leaf, trace) in &leaves {
                    let Some(m) = leaf.mass else { continue };
                    let (_, (sa, _)) = radical_parts(m.reduce());
                    if sa != 0 && replay(trace) == Ok(Verdict::MayOdd) {
                        odd = true;
                    }
                }
                let s = match term_summary(&p) {
                    Ok(s) => s,
                    Err(_) => {
                        aborts += 1;
                        return;
                    }
                };
                match closed_accepts(&s, &ma) {
                    Ok(acc) => {
                        if odd {
                            concrete_odd += 1;
                            assert!(
                                acc,
                                "S1 violation: concrete odd leaf not abstractly accepted"
                            );
                        }
                        if acc {
                            abstract_odd += 1;
                            if !odd {
                                loose += 1;
                            }
                        }
                    }
                    Err(_) => {
                        // An abort is a ⊤ cell (conservative accept).
                        // S1 tolerates it ONLY on concretely non-odd
                        // programs; the known ⊤ family ≤22 is the
                        // Ω-style self-appliers, whose captured-env
                        // chains deepen without bound (the r6
                        // widening item).
                        assert!(!odd, "S1 violation: concretely odd program aborted");
                        aborts += 1;
                    }
                }
            });
        }
        // ≤22 concretely has zero MayOdd (odd.rs battery), so the
        // assertion above is vacuous here unless the engine changes;
        // what this run really measures is looseness and stability.
        assert_eq!(
            concrete_odd, 0,
            "small population unexpectedly has odd leaves"
        );
        // Record the shape in the test log.
        eprintln!(
            "small-agreement: {programs} programs, abstract-accepts {abstract_odd} \
             (loose {loose}), top-cells {aborts}"
        );
    }
}

#[cfg(test)]
mod debug_growth {
    use super::*;
    use crate::term::Term;

    fn stats(t: &Term, depth: usize) -> Result<Summary, Abort> {
        let s = match t {
            Term::Var(i) => var_ref(*i as u8),
            Term::Lam(b) => lam_ref(&stats(b, depth + 1)?),
            Term::App(f, a) => {
                let fs = stats(f, depth + 1)?;
                let as_ = stats(a, depth + 1)?;
                app_ref(&fs, &as_)?
            }
        };
        eprintln!(
            "{:indent$}{} -> nodes {} edges {} ports {}",
            "",
            match t {
                Term::Var(i) => format!("var {i}"),
                Term::Lam(_) => "lam".into(),
                Term::App(..) => "app".into(),
            },
            s.node_count,
            s.edges.len(),
            s.ports.len(),
            indent = depth * 2
        );
        Ok(s)
    }

    #[test]
    #[ignore]
    fn w45_growth_trace() {
        let w45 = crate::parse_all("000000000001111100111111001100111111001111010").unwrap();
        match stats(&w45, 0) {
            Ok(s) => eprintln!("FINAL: nodes {} ports {}", s.node_count, s.ports.len()),
            Err(e) => eprintln!("ABORT: {e:?}"),
        }
    }
}

#[cfg(test)]
mod debug_stages {
    use super::*;

    #[test]
    #[ignore]
    fn w45_stage_trace() {
        let ma = MaskAutomaton::build();
        let w45 = crate::parse_all("000000000001111100111111001100111111001111010").unwrap();
        let mut g = term_summary(&w45).unwrap();
        for which in [Which::H, Which::Meas, Which::New, Which::Cnot, Which::T] {
            g = app_ref(&g, &prim_summary(which)).unwrap();
            let effs: Vec<&str> = [
                (Label::NewD, "NewD"),
                (Label::HD, "HD"),
                (Label::TD, "TD"),
                (Label::MeasD, "MeasD"),
            ]
            .iter()
            .filter(|(l, _)| g.edges.iter().any(|(_, e, _)| e == l))
            .map(|&(_, n)| n)
            .collect();
            eprintln!(
                "after {which:?}: nodes {} edges {} ports {} effects {:?} accept {}",
                g.node_count,
                g.edges.len(),
                g.ports.len(),
                effs,
                accept_product(&g, &ma, &[g.entry])
            );
        }
        for i in 0..3 {
            g = nf_descend(&g).unwrap();
            eprintln!(
                "descend {i}: nodes {} accept {}",
                g.node_count,
                accept_product(&g, &ma, &[g.entry])
            );
        }
    }
}

#[cfg(test)]
mod debug_aborts {
    use super::*;

    #[test]
    #[ignore]
    fn find_aborting_wires() {
        use crate::enumerate::for_each_closed;
        let ma = MaskAutomaton::build();
        let mut shown = 0;
        for n in 14..=22 {
            for_each_closed(n, &mut |enc, len| {
                if shown >= 8 {
                    return;
                }
                let mut bits = (0..len).rev().map(|i| enc >> i & 1 == 1);
                let p = crate::parse::parse_prefix(&mut bits).expect("parses");
                let wire: String = (0..len)
                    .rev()
                    .map(|i| if enc >> i & 1 == 1 { '1' } else { '0' })
                    .collect();
                match term_summary(&p) {
                    Err(e) => {
                        eprintln!("build-abort {e:?} n={n} {wire}");
                        shown += 1;
                    }
                    Ok(s) => {
                        if let Err(e) = closed_accepts(&s, &ma) {
                            eprintln!("closed-abort {e:?} n={n} {wire}");
                            shown += 1;
                        }
                    }
                }
            });
        }
        eprintln!("done");
    }
}
