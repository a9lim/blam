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
//! The renderer is iterative (an explicit work stack), matching the
//! reference's v1.26 discipline: the wire parser's
//! [`crate::qalc::wire::DEPTH_CAP`] bounds decoded *input* only —
//! stepping builds deeper values (`var` nests lps, recall grows epoch
//! trees), so no depth is safe to recurse on. No error path exists:
//! the domain is typed.

use std::sync::Arc;

use super::term::{Dir, GateName, Path};

/// Dynamic gate identity stored in frames, tickets, virtual booleans, and
/// certificates. Source `c` is deliberately absent: its two persistent
/// output ports have distinct identities `c1` and `c2`.
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord)]
pub enum GateTag {
    H,
    T,
    C1,
    C2,
}

impl GateTag {
    pub fn token(self) -> &'static str {
        match self {
            GateTag::H => "h",
            GateTag::T => "t",
            GateTag::C1 => "c1",
            GateTag::C2 => "c2",
        }
    }

    pub fn source(self) -> Option<GateName> {
        match self {
            GateTag::H => Some(GateName::H),
            GateTag::T => Some(GateName::T),
            GateTag::C1 | GateTag::C2 => None,
        }
    }
}

impl GateName {
    pub fn tag(self) -> Option<GateTag> {
        match self {
            GateName::H => Some(GateTag::H),
            GateName::T => Some(GateTag::T),
            GateName::C => None,
        }
    }
}

/// A logged position `('L', occ, slice)`: a dynamic subterm copy. The
/// slice is a captured log segment, so its entries are log-alphabet
/// values (lp-like only — W0 v1.23 excludes bullets from the log).
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct Lp {
    pub occ: Path,
    pub slice: Vec<LogEntry>,
}

/// Log-alphabet entry: `lp | γ_g | α | RBL` — what `arg`/`bt1`
/// transport. `Rbl` is the composed stratum's synthetic return address
/// (`readback.py`), a log member because the composed rules prepend it
/// to the log and ordinary kernel transport then captures it into lp
/// slices, RS-frame instances, and KS (measured on all 30 Gate-1
/// cores). Bare `RB` is never prepended to the log, so there is no
/// `Rb` variant here by construction.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum LogEntry {
    Lp(Lp),
    Gam(GateName),
    Cgam(CGam),
    Alpha(Alpha),
    Rbl(Rbl),
}

/// One native-CNOT port.
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub enum CPort {
    First,
    Second,
}

impl CPort {
    pub fn number(self) -> u8 {
        match self {
            CPort::First => 1,
            CPort::Second => 2,
        }
    }

    pub fn tag(self) -> GateTag {
        match self {
            CPort::First => GateTag::C1,
            CPort::Second => GateTag::C2,
        }
    }
}

/// Native-CNOT probe marker
/// `('G', 'c', port, invoked, occurrence, first, second, continuation)`.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct CGam {
    pub port: CPort,
    pub invoked: Lp,
    pub occurrence: Path,
    pub first: Path,
    pub second: Path,
    pub continuation: Path,
}

/// Synthetic logged return address `('RBL', parent_function, output,
/// code)` carried by the composed token (`readback.RBL`).
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct Rbl {
    pub parent: Path,
    pub output: Path,
    pub code: Path,
}

/// Readback delimiter `('RB', depth, output, code, pending)` with its
/// output-hole schedule (`readback.RB`) — a top-level tape entry only.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct Rb {
    pub depth: u64,
    pub output: Path,
    pub code: Path,
    pub pending: Vec<Path>,
}

/// Replay-epoch tree (`RecallEpoch.lean`): `('F',)` fresh,
/// `('EA', e)` recall with no old frame, `('EP', e, e′)` recall over an
/// existing frame's epoch. Unbounded in principle; the wire boundary
/// caps decoded depth, runtime recalls grow it. Children are
/// `Arc`-shared so a recall clones pointers, as the reference shares
/// tuples — `RecallOver` nesting makes deep-copy cost exponential.
/// Equality and hashing stay structural.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum Epoch {
    Fresh,
    Recall(Arc<Epoch>),
    RecallOver(Arc<Epoch>, Arc<Epoch>),
}

/// An answer ticket `('AL', g, i, b′, epoch)` — instance-tagged.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct Alpha {
    pub gate: GateTag,
    pub instance: Lp,
    pub bit: u8,
    pub epoch: Epoch,
}

/// A replay frame `('R', g, i, b′, epoch)` — one per (gate, instance)
/// in RS, which is kept canonically sorted by [`frame_repr`].
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct Frame {
    pub gate: GateTag,
    pub instance: Lp,
    pub bit: u8,
    pub epoch: Epoch,
}

/// A certified-erasure bundle key `(g, i)` — the instances a `KD` head
/// names as dead, sorted inside the bundle by [`kd_key_repr`].
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct KdKey {
    pub gate: GateTag,
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
    Cgam(CGam),
    Cmu { port: CPort, invoked: Lp },
    Ans(GateName, u8),
    Alpha(Alpha),
    Rb(Rb),
    Rbl(Rbl),
}

/// One inert storage head; every fire appends exactly one
/// (prefix-freeness across arms, kernel v1.24).
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum KsHead {
    /// `('K', g, i)` — a decoded ticket, bit-free dead record.
    Decode { gate: GateTag, instance: Lp },
    /// `('KD', keys)` — certified erasure's tagged bundle, emitted on
    /// every certified fire, empty included. Keys sorted by repr.
    DeadBundle(Vec<KdKey>),
    /// `('KA', g, i)` — suppressed decode's history head, NOT a dead
    /// record (excluded from dead/bitfree key sets by design).
    Suppressed { gate: GateTag, instance: Lp },
    /// `('K', l)` — a retained-whole which-path spectator. The cargo is
    /// an arrival position: a real lp, or a mismatched ticket.
    RetainWhole(RetainCargo),
    /// Parked first native-CNOT input (`CP`).
    CnotPark {
        invoked: Lp,
        bit: u8,
        descriptor: CDescriptor,
        frames: Vec<FrameDescriptor>,
        occurrence: Path,
        continuation: Path,
    },
    /// Completed native-CNOT history (`CH`).
    CnotHistory {
        invoked: Lp,
        first: CDescriptor,
        first_frames: Vec<FrameDescriptor>,
        second: CDescriptor,
        second_frames: Vec<FrameDescriptor>,
        occurrence: Path,
        continuation: Path,
    },
    /// Bit-free port record consumed by full-NF readback (`CD`).
    CnotDead {
        port: CPort,
        invoked: Lp,
        epoch: Epoch,
        logged: Lp,
        answered: bool,
    },
    /// Bit-free predecessor coordinate for a delivered handle (`CQ`).
    CnotQuery {
        port: CPort,
        invoked: Lp,
        logged: Lp,
    },
    /// Reversible midpoint for a split native-CNOT row (`CS`).
    CnotStage(CStage),
}

/// Bit-free description of one consumed native-CNOT input.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum CDescriptor {
    Alpha {
        gate: GateTag,
        instance: Lp,
        epoch: Epoch,
    },
    /// Conservatively retained arrival head. Compiler-clean carriers use an
    /// `Lp`; `Alpha` keeps the raw table total on a mismatched ticket.
    Logged(RetainCargo),
}

/// One removed replay-frame coordinate; its bit is reconstructed from
/// the CNOT output.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct FrameDescriptor {
    pub gate: GateTag,
    pub instance: Lp,
    pub epoch: Epoch,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub enum CStage {
    Park,
    Fire,
    Deliver,
    AnswerPort,
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

/// One pending unit of rendering work. Nested values go back on the
/// stack (pushed in reverse of output order) instead of down the call
/// stack: stepping builds lp/epoch nesting past any decoded depth, so
/// the renderer must be depth-independent (reference v1.26).
enum Tok<'a> {
    Lit(&'static str),
    Bit(u8),
    Epoch(&'a Epoch),
    Log(&'a LogEntry),
    Lp(&'a Lp),
    Path(&'a Path),
}

fn render(out: &mut String, root: Tok<'_>) {
    let mut stack = vec![root];
    while let Some(t) = stack.pop() {
        match t {
            Tok::Lit(s) => out.push_str(s),
            Tok::Bit(b) => out.push_str(&b.to_string()),
            Tok::Path(p) => push_path(out, p),
            Tok::Epoch(e) => match e {
                Epoch::Fresh => out.push_str("('F',)"),
                Epoch::Recall(t) => {
                    out.push_str("('EA', ");
                    stack.push(Tok::Lit(")"));
                    stack.push(Tok::Epoch(t));
                }
                Epoch::RecallOver(t, o) => {
                    out.push_str("('EP', ");
                    stack.push(Tok::Lit(")"));
                    stack.push(Tok::Epoch(o));
                    stack.push(Tok::Lit(", "));
                    stack.push(Tok::Epoch(t));
                }
            },
            Tok::Log(e) => match e {
                LogEntry::Lp(lp) => stack.push(Tok::Lp(lp)),
                LogEntry::Gam(g) => {
                    out.push_str("('G', ");
                    push_str_repr(out, g.token());
                    out.push(')');
                }
                LogEntry::Cgam(g) => {
                    out.push_str("('G', 'c', ");
                    out.push_str(&g.port.number().to_string());
                    out.push_str(", ");
                    stack.push(Tok::Lit(")"));
                    stack.push(Tok::Path(&g.continuation));
                    stack.push(Tok::Lit(", "));
                    stack.push(Tok::Path(&g.second));
                    stack.push(Tok::Lit(", "));
                    stack.push(Tok::Path(&g.first));
                    stack.push(Tok::Lit(", "));
                    stack.push(Tok::Path(&g.occurrence));
                    stack.push(Tok::Lit(", "));
                    stack.push(Tok::Lp(&g.invoked));
                }
                LogEntry::Rbl(r) => {
                    out.push_str("('RBL', ");
                    push_path(out, &r.parent);
                    out.push_str(", ");
                    push_path(out, &r.output);
                    out.push_str(", ");
                    push_path(out, &r.code);
                    out.push(')');
                }
                LogEntry::Alpha(a) => {
                    out.push_str("('AL', ");
                    push_str_repr(out, a.gate.token());
                    out.push_str(", ");
                    stack.push(Tok::Lit(")"));
                    stack.push(Tok::Epoch(&a.epoch));
                    stack.push(Tok::Lit(", "));
                    stack.push(Tok::Bit(a.bit));
                    stack.push(Tok::Lit(", "));
                    stack.push(Tok::Lp(&a.instance));
                }
            },
            Tok::Lp(lp) => {
                out.push_str("('L', ");
                push_path(out, &lp.occ);
                out.push_str(", (");
                stack.push(Tok::Lit("))"));
                if lp.slice.len() == 1 {
                    stack.push(Tok::Lit(","));
                }
                for (i, e) in lp.slice.iter().enumerate().rev() {
                    stack.push(Tok::Log(e));
                    if i > 0 {
                        stack.push(Tok::Lit(", "));
                    }
                }
            }
        }
    }
}

/// Python `repr` of a replay frame tuple — the RS canonical sort key.
pub fn frame_repr(f: &Frame) -> String {
    let mut out = String::new();
    out.push_str("('R', ");
    push_str_repr(&mut out, f.gate.token());
    out.push_str(", ");
    render(&mut out, Tok::Lp(&f.instance));
    out.push_str(", ");
    out.push_str(&f.bit.to_string());
    out.push_str(", ");
    render(&mut out, Tok::Epoch(&f.epoch));
    out.push(')');
    out
}

/// Python `repr` of a `(gate, instance)` bundle key — the KD-bundle
/// canonical sort key.
pub fn kd_key_repr(k: &KdKey) -> String {
    let mut out = String::new();
    out.push('(');
    push_str_repr(&mut out, k.gate.token());
    out.push_str(", ");
    render(&mut out, Tok::Lp(&k.instance));
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
            gate: GateTag::H,
            instance: Lp {
                occ: vec![Dir::F, Dir::A],
                slice: vec![],
            },
            bit: 0,
            epoch: Epoch::Recall(Arc::new(Epoch::Fresh)),
        };
        assert_eq!(
            frame_repr(&f),
            "('R', 'h', ('L', ('f', 'a'), ()), 0, ('EA', ('F',)))"
        );
        // Singleton path and singleton slice both carry the trailing comma.
        let k = KdKey {
            gate: GateTag::T,
            instance: Lp {
                occ: vec![Dir::B],
                slice: vec![LogEntry::Gam(GateName::H)],
            },
        };
        assert_eq!(kd_key_repr(&k), "('t', ('L', ('b',), (('G', 'h'),)))");
        // A composed-stratum frame whose instance captured an RBL:
        // repr(('R', 'h', ('L', ('a',), (('RBL', ('f',), (), ('b',)),)),
        //       0, ('F',))) — verified against the Python reference.
        let f = Frame {
            gate: GateTag::H,
            instance: Lp {
                occ: vec![Dir::A],
                slice: vec![LogEntry::Rbl(Rbl {
                    parent: vec![Dir::F],
                    output: vec![],
                    code: vec![Dir::B],
                })],
            },
            bit: 0,
            epoch: Epoch::Fresh,
        };
        assert_eq!(
            frame_repr(&f),
            "('R', 'h', ('L', ('a',), (('RBL', ('f',), (), ('b',)),)), 0, ('F',))"
        );
        // RBL nested through an alpha instance, all three path fields
        // distinct (field-order swaps would misrender), singleton slice
        // commas at both nesting levels — verified against Python.
        let inner = Lp {
            occ: vec![],
            slice: vec![LogEntry::Rbl(Rbl {
                parent: vec![],
                output: vec![Dir::B],
                code: vec![Dir::F, Dir::A],
            })],
        };
        let f = Frame {
            gate: GateTag::T,
            instance: Lp {
                occ: vec![Dir::F],
                slice: vec![LogEntry::Alpha(Alpha {
                    gate: GateTag::T,
                    instance: inner,
                    bit: 1,
                    epoch: Epoch::Fresh,
                })],
            },
            bit: 1,
            epoch: Epoch::Fresh,
        };
        assert_eq!(
            frame_repr(&f),
            "('R', 't', ('L', ('f',), (('AL', 't', ('L', (), (('RBL', (), \
             ('b',), ('f', 'a')),)), 1, ('F',)),)), 1, ('F',))"
        );
        let k = KdKey {
            gate: GateTag::H,
            instance: Lp {
                occ: vec![Dir::A, Dir::B],
                slice: vec![LogEntry::Rbl(Rbl {
                    parent: vec![Dir::A],
                    output: vec![Dir::B, Dir::F],
                    code: vec![],
                })],
            },
        };
        assert_eq!(
            kd_key_repr(&k),
            "('h', ('L', ('a', 'b'), (('RBL', ('a',), ('b', 'f'), ()),)))"
        );
    }

    #[test]
    fn renderer_is_depth_independent() {
        // Stepping grows lp/epoch nesting past any decoded depth, so
        // the renderer must survive depths far beyond stack recursion
        // (reference v1.26). Teardown is iterative for the same reason:
        // derived Drop recurses.
        const DEPTH: usize = 1 << 20;
        let mut epoch = Epoch::Fresh;
        for _ in 0..DEPTH {
            epoch = Epoch::Recall(Arc::new(epoch));
        }
        let mut lp = Lp {
            occ: vec![],
            slice: vec![],
        };
        for _ in 0..DEPTH {
            lp = Lp {
                occ: vec![],
                slice: vec![LogEntry::Lp(lp)],
            };
        }
        let f = Frame {
            gate: GateTag::H,
            instance: lp,
            bit: 0,
            epoch,
        };
        let s = frame_repr(&f);
        assert!(s.starts_with("('R', 'h', ('L', (), (('L', (), ("));
        // Head 11 + lp (14/level + 13 innermost) + ", 0, " + epoch
        // (8/level + 6 innermost) + final paren.
        assert_eq!(s.len(), 22 * DEPTH + 36);
        assert!(s.contains("('EA', ('F',))"));
        let Frame {
            instance: mut lp,
            mut epoch,
            ..
        } = f;
        while let Epoch::Recall(inner) = epoch {
            epoch = Arc::try_unwrap(inner).expect("unshared chain");
        }
        while let Some(LogEntry::Lp(inner)) = lp.slice.pop() {
            lp = inner;
        }
    }
}
