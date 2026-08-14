//! The kernel-stratum state-grammar alphabet, typed, plus `PyReprKey` —
//! the byte-exact Python `repr` renderer for the two state-identity
//! sorts.
//!
//! The Python reference keeps RS canonically sorted by `repr` of the
//! frame tuples (`kernel.rs_insert`) and sorts certified `KD` bundle
//! keys by `repr`. State identity depends on those orders, and the
//! reference is frozen — so this module reproduces the exact repr
//! strings for exactly that domain: [`Frame`] and [`KdKey`] (and the
//! values nested inside them). Nothing else is repr-rendered; full
//! states travel through the typed wire format instead
//! (`docs/quantum-algebraic/rust-pillar.md` §4).
//!
//! Ordering is byte-lexicographic comparison of the rendered UTF-8,
//! which equals Python's code-point `str <` (UTF-8 preserves code-point
//! order; the alphabet's one non-ASCII member is the BULLET, which lives
//! in tape entries and never inside the sort domain). Python's `sorted`
//! is stable; callers preserving fixture order rely on comparison only,
//! never on re-sorting equal keys.
//!
//! Renderer recursion is bounded by construction: every rendered value
//! was built by the wire parser, which enforces [`crate::qalc::wire::DEPTH_CAP`]
//! — so no input can drive the renderer (or a sort comparator built on
//! it) to stack overflow. No error path exists: the domain is typed.

use super::term::{Dir, GateName, Path};

/// A logged position `('L', occ, slice)`: a dynamic subterm copy. The
/// slice is a captured log segment, so its entries are log-alphabet
/// values (lp-like only — W0 v1.23 excludes bullets from the log).
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct Lp {
    pub occ: Path,
    pub slice: Vec<LogEntry>,
}

/// Log-alphabet entry: `lp | γ_g | α` — what `arg`/`bt1` transport.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum LogEntry {
    Lp(Lp),
    Gam(GateName),
    Alpha(Alpha),
}

/// Replay-epoch tree (`RecallEpoch.lean`): `('F',)` fresh,
/// `('EA', e)` recall with no old frame, `('EP', e, e′)` recall over an
/// existing frame's epoch. Unbounded in principle, depth-capped at the
/// wire boundary.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum Epoch {
    Fresh,
    Recall(Box<Epoch>),
    RecallOver(Box<Epoch>, Box<Epoch>),
}

/// An answer ticket `('AL', g, i, b′, epoch)` — instance-tagged.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct Alpha {
    pub gate: GateName,
    pub instance: Lp,
    pub bit: u8,
    pub epoch: Epoch,
}

/// A replay frame `('R', g, i, b′, epoch)` — one per (gate, instance)
/// in RS, which is kept canonically sorted by [`frame_repr`].
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct Frame {
    pub gate: GateName,
    pub instance: Lp,
    pub bit: u8,
    pub epoch: Epoch,
}

/// A certified-erasure bundle key `(g, i)` — the instances a `KD` head
/// names as dead, sorted inside the bundle by [`kd_key_repr`].
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct KdKey {
    pub gate: GateName,
    pub instance: Lp,
}

/// Tape-alphabet entry. `BulletBa` is the composed stratum's `("BA",)`
/// application marker (kernel-internal tapes carry plain bullets; the
/// readback adapter translates at the boundary — phase 2 consumes it,
/// the grammar carries it from the start).
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum TapeEntry {
    Bullet,
    BulletBa,
    Rho,
    Lp(Lp),
    Gam(GateName),
    Mu(GateName),
    Ans(GateName, u8),
    Alpha(Alpha),
}

/// One inert storage head; every fire appends exactly one
/// (prefix-freeness across arms, kernel v1.24).
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum KsHead {
    /// `('K', g, i)` — a decoded ticket, bit-free dead record.
    Decode { gate: GateName, instance: Lp },
    /// `('KD', keys)` — certified erasure's tagged bundle, emitted on
    /// every certified fire, empty included. Keys sorted by repr.
    DeadBundle(Vec<KdKey>),
    /// `('KA', g, i)` — suppressed decode's history head, NOT a dead
    /// record (excluded from dead/bitfree key sets by design).
    Suppressed { gate: GateName, instance: Lp },
    /// `('K', l)` — a retained-whole which-path spectator. The cargo is
    /// an arrival position: a real lp, or a mismatched ticket.
    RetainWhole(RetainCargo),
}

/// Retain-whole cargo: what an arrival classifier can carry.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum RetainCargo {
    Lp(Lp),
    Alpha(Alpha),
}

// ---------------------------------------------------------------------------
// PyReprKey: byte-exact Python repr of the sort domain.

fn push_str_repr(out: &mut String, s: &str) {
    // Every string in the sort domain is a short quote-free tag or gate
    // name; Python reprs those as 'x' with no escaping (measured over
    // the full reachable suite; pinned by the fixture corpus).
    out.push('\'');
    out.push_str(s);
    out.push('\'');
}

fn push_path(out: &mut String, p: &[Dir]) {
    // Python tuple repr: "()", "('f',)", "('f', 'a')".
    out.push('(');
    for (i, d) in p.iter().enumerate() {
        if i > 0 {
            out.push_str(", ");
        }
        out.push('\'');
        out.push(d.ch());
        out.push('\'');
    }
    if p.len() == 1 {
        out.push(',');
    }
    out.push(')');
}

fn push_epoch(out: &mut String, e: &Epoch) {
    match e {
        Epoch::Fresh => out.push_str("('F',)"),
        Epoch::Recall(t) => {
            out.push_str("('EA', ");
            push_epoch(out, t);
            out.push(')');
        }
        Epoch::RecallOver(t, o) => {
            out.push_str("('EP', ");
            push_epoch(out, t);
            out.push_str(", ");
            push_epoch(out, o);
            out.push(')');
        }
    }
}

fn push_log_entry(out: &mut String, e: &LogEntry) {
    match e {
        LogEntry::Lp(lp) => push_lp(out, lp),
        LogEntry::Gam(g) => {
            out.push_str("('G', ");
            push_str_repr(out, &g.ch().to_string());
            out.push(')');
        }
        LogEntry::Alpha(a) => push_alpha(out, a),
    }
}

fn push_lp(out: &mut String, lp: &Lp) {
    out.push_str("('L', ");
    push_path(out, &lp.occ);
    out.push_str(", ");
    // The slice tuple.
    out.push('(');
    for (i, e) in lp.slice.iter().enumerate() {
        if i > 0 {
            out.push_str(", ");
        }
        push_log_entry(out, e);
    }
    if lp.slice.len() == 1 {
        out.push(',');
    }
    out.push_str("))");
}

fn push_alpha(out: &mut String, a: &Alpha) {
    out.push_str("('AL', ");
    push_str_repr(out, &a.gate.ch().to_string());
    out.push_str(", ");
    push_lp(out, &a.instance);
    out.push_str(", ");
    out.push_str(&a.bit.to_string());
    out.push_str(", ");
    push_epoch(out, &a.epoch);
    out.push(')');
}

/// Python `repr` of a replay frame tuple — the RS canonical sort key.
pub fn frame_repr(f: &Frame) -> String {
    let mut out = String::new();
    out.push_str("('R', ");
    push_str_repr(&mut out, &f.gate.ch().to_string());
    out.push_str(", ");
    push_lp(&mut out, &f.instance);
    out.push_str(", ");
    out.push_str(&f.bit.to_string());
    out.push_str(", ");
    push_epoch(&mut out, &f.epoch);
    out.push(')');
    out
}

/// Python `repr` of a `(gate, instance)` bundle key — the KD-bundle
/// canonical sort key.
pub fn kd_key_repr(k: &KdKey) -> String {
    let mut out = String::new();
    out.push('(');
    push_str_repr(&mut out, &k.gate.ch().to_string());
    out.push_str(", ");
    push_lp(&mut out, &k.instance);
    out.push(')');
    out
}

/// Is `rs` in the Python reference's canonical RS order? (Comparison
/// only — never re-sorts, so Python's stable-sort behavior on equal
/// keys is respected by construction.)
pub fn rs_is_canonical(rs: &[Frame]) -> bool {
    rs.windows(2)
        .all(|w| frame_repr(&w[0]).as_bytes() <= frame_repr(&w[1]).as_bytes())
}

/// Are a KD bundle's keys in canonical order?
pub fn kd_is_canonical(keys: &[KdKey]) -> bool {
    keys.windows(2)
        .all(|w| kd_key_repr(&w[0]).as_bytes() <= kd_key_repr(&w[1]).as_bytes())
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn repr_matches_python_by_hand() {
        // repr(('R', 'h', ('L', ('f', 'a'), ()), 0, ('EA', ('F',))))
        let f = Frame {
            gate: GateName::H,
            instance: Lp {
                occ: vec![Dir::F, Dir::A],
                slice: vec![],
            },
            bit: 0,
            epoch: Epoch::Recall(Box::new(Epoch::Fresh)),
        };
        assert_eq!(
            frame_repr(&f),
            "('R', 'h', ('L', ('f', 'a'), ()), 0, ('EA', ('F',)))"
        );
        // Singleton path and singleton slice both carry the trailing comma.
        let k = KdKey {
            gate: GateName::T,
            instance: Lp {
                occ: vec![Dir::B],
                slice: vec![LogEntry::Gam(GateName::H)],
            },
        };
        assert_eq!(kd_key_repr(&k), "('t', ('L', ('b',), (('G', 'h'),)))");
    }
}
