//! oddmin reference side, stage 1a — foundation layer.
//!
//! PROTOTYPE (SPEC-ODDMIN.md §3, r5a-revised domain). This module is
//! the TRUSTED `oddmin_ref` half of the split: interaction-graph
//! types, structural canonicalization with its laws, the interned
//! mask automaton, and the external accept product. The reference
//! transfers (`var_ref`/`lam_ref`/`app_ref`) build on top; nothing
//! here may ever trust search-side output.
//!
//! A summary is a finite colored interaction NFA (SPEC-ODDMIN §3):
//! nodes are anonymous control states, edges carry projected
//! effect letters or interface letters, and PORTS (eval entry +
//! named apply/spine entries referenced by head colors) are the
//! roots that canonicalization must preserve — higher-order values
//! live in the port structure, not in the trace language.
//!
//! Acceptance is NEVER stored in a summary: `may_accept_latent`
//! computes the product with the mask automaton derived from the
//! trusted `odd::step_h`/`step_t`/`step_meas` kernels. A projected
//! word carries at most one `NewD` (the distinguished-allocation
//! guess); `MeasD` retires; any cnot is the `OutOfScope` letter, a
//! sink that stage 1a never accepts.
//!
//! SCHEMA STATUS (r5b): the `Label`/`Head` types here are the
//! foundation cut. The transfer layer requires the r5b revision
//! before it lands: RetIn/RetOut polarity with full `CapRel` on
//! both, `CallTarget` (Free/Formal/Received) replacing bare de
//! Bruijn call indices, alpha-stable binding slots, explicit port
//! roles, `Prim` held-argument state, and the EvalHead/Apply/
//! NF-descent context protocol. SPEC-ODDMIN.md §4 records the
//! revised schema; the canon/product machinery below is
//! label-generic and survives the change.

use crate::odd::{step_h, step_meas, step_t};
use std::collections::{BTreeMap, BTreeSet, VecDeque};

pub type NodeId = u32;
/// Index into a summary's port table.
pub type PortId = u8;

/// Capability half of the interface protocol (SPEC-ODDMIN §3).
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub enum Cap {
    None,
    Cur,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub enum CapAction {
    Keep,
    Create,
    Advance,
    Retire,
    Kill,
}

/// Head colors carried by `Ret` letters. Ports referenced here are
/// colored observations — canonicalization must not merge machines
/// that differ in port structure (the λx.x vs λx.HD;x defect).
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub enum Head {
    Lam { apply: PortId },
    Prim { which: u8, supplied: u8 },
    Handle { cur: bool },
    Neutral { rigid: bool, spine: PortId },
    Dead,
}

/// Edge labels: projected distinguished-lineage effects plus
/// interface letters. Non-D effects are erased (no τ letter).
#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
pub enum Label {
    NewD,
    HD,
    TD,
    MeasD,
    /// Any cnot: the stage-1a out-of-scope sink letter.
    OutOfScope,
    Call {
        i: u8,
        cap_in: Cap,
        action: CapAction,
        cap_out: Cap,
    },
    Ret {
        head: Head,
        cap: Cap,
    },
}

/// A colored interaction NFA. `entry` is the evaluation root;
/// `ports` are the named auxiliary roots (apply/spine targets).
#[derive(Clone, Debug, PartialEq, Eq)]
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
    /// port arity canonicalize byte-equal.
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

/// May any LATENT behavior of `s` realize a Galois-odd accepting
/// measurement? Reachability product of the summary with the mask
/// automaton, started from the entry AND every auxiliary port:
/// `NewD` guesses the distinguished allocation (at most one),
/// `HD`/`TD` step the mask, `MeasD` accepts iff `step_meas` fires
/// and retires, `OutOfScope` is a dead end for stage 1a. Interface
/// letters (`Call`/`Ret`) are epsilon for the product — their
/// semantic content acts at transfer time, not accept time.
///
/// SCOPE (r5b): this over-approximates every behavior reachable in
/// ANY context, including unapplied apply ports — sound for the
/// lower bound, deliberately loose. Closed-program acceptance
/// (qeval's actual NF discipline: head evaluation, rigid descent
/// under surviving binders, species errors before bodies) is the
/// top-level NF driver's job in the transfer layer; that driver
/// runs this product from its single composed root.
pub fn may_accept_latent(s: &Summary, ma: &MaskAutomaton) -> bool {
    let mut succ: BTreeMap<NodeId, Vec<(Label, NodeId)>> = BTreeMap::new();
    for &(a, l, b) in &s.edges {
        succ.entry(a).or_default().push((l, b));
    }
    let mut seen: BTreeSet<(NodeId, DState)> = BTreeSet::new();
    let mut queue: VecDeque<(NodeId, DState)> =
        s.roots().into_iter().map(|r| (r, DState::Absent)).collect();
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
                (Label::Call { .. } | Label::Ret { .. }, d) => Some(d),
            };
            if let Some(d2) = step {
                queue.push_back((b, d2));
            }
        }
    }
    false
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
            i: 1,
            cap_in: Cap::Cur,
            action: CapAction::Keep,
            cap_out: Cap::Cur,
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
        // Two one-state machines whose entries loop identically, but
        // one exposes its state as a port (an apply target). They
        // must NOT canonicalize equal (the λx.x vs λx.HD;x defect
        // class: ports are semantic).
        let plain = Summary {
            node_count: 2,
            edges: vec![(
                0,
                Ret {
                    head: Head::Dead,
                    cap: Cap::None,
                },
                1,
            )],
            entry: 0,
            ports: vec![],
        };
        let ported = Summary {
            node_count: 2,
            edges: vec![(
                0,
                Ret {
                    head: Head::Dead,
                    cap: Cap::None,
                },
                1,
            )],
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
                Ret {
                    head: Head::Lam { apply: 0 },
                    cap: Cap::None,
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
                Ret {
                    head: Head::Neutral {
                        rigid: true,
                        spine: 0,
                    },
                    cap: Cap::None,
                },
                1,
            )],
            entry: 0,
            ports: vec![1],
        };
        assert_ne!(lam0.canon(), neut.canon());
    }
}
