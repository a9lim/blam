//! The qALC differential fixture wire format, v1.
//!
//! A versioned, strictly typed, line-oriented text format shared
//! byte-for-byte with the Python exporter (`qalc/export_rust_fixtures.py`)
//! — the interchange half of the codec split in
//! `docs/quantum-algebraic/rust-pillar.md` §4 (ordering is `mark`'s
//! `PyReprKey`; this format never carries Python reprs except as the
//! opaque payload of corpus `repr` lines).
//!
//! Token grammar: records are single LF-terminated lines of
//! space-separated tokens; `(` and `)` are standalone tokens; `i:<dec>`
//! is an integer; `n` is Python `None`; everything else is a bare
//! lowercase tag. There are no strings, no escapes, and no comments.
//! The parser is recursive descent with [`DEPTH_CAP`] enforced at every
//! open paren, so every value that parses is safe to traverse (and to
//! render with `PyReprKey`) without unbounded recursion — out-of-grammar
//! or over-deep input is a returned [`WireError`], never a panic.
//!
//! Round-trip is the contract: `serialize(parse(file)) == file` byte
//! for byte, tested over every checked-in fixture. The serializer is
//! therefore the single normative statement of the encoding.

use super::amp::Amp;
use super::mark::{
    Alpha, CDescriptor, CGam, CPort, CStage, Epoch, Frame, FrameDescriptor, GateTag, KdKey, KsHead,
    LogEntry, Lp, Rb, Rbl, RetainCargo, TapeEntry,
};
use super::state::{
    BinderIdentity, BinderMark, ErrorGarbage, ErrorKind, KState, Kind, Nf, NfRun, NfState,
    NfTerminal, Residue, RunCore, ScopeResidue, TerminalCarrier, TerminalGarbage, Vb, Vert, Zipper,
};
use std::sync::Arc;

use super::term::{Dir, GateName, Path, Term};

/// Maximum paren depth the parser admits. Bounds the parser's own
/// recursion only — stepping builds values deeper than any decoded
/// input, so downstream traversals are iterative rather than
/// cap-trusting. Compiled-circuit terms nest linearly in gate count, so
/// the cap sits far above real data while keeping worst-case parser
/// stack use in the hundreds of kilobytes.
pub const DEPTH_CAP: usize = 4096;

/// The header line every fixture file must open with.
pub const HEADER: &str = "qalc-fixtures v1";

/// A parse failure: the line number (1-based) and what went wrong.
/// Always a returned value — the parser has no panicking path.
#[derive(Debug, Clone, PartialEq, Eq)]
pub struct WireError {
    pub line: usize,
    pub what: String,
}

impl std::fmt::Display for WireError {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f, "fixture line {}: {}", self.line, self.what)
    }
}

type R<T> = Result<T, String>;

// ---------------------------------------------------------------------------
// Tokenizer: a line as a cursor over space-separated tokens.

struct Toks<'a> {
    toks: Vec<&'a str>,
    at: usize,
    depth: usize,
}

impl<'a> Toks<'a> {
    fn new(s: &'a str) -> Toks<'a> {
        Toks {
            toks: s.split(' ').filter(|t| !t.is_empty()).collect(),
            at: 0,
            depth: 0,
        }
    }

    fn next(&mut self) -> R<&'a str> {
        let t = self
            .toks
            .get(self.at)
            .ok_or_else(|| "unexpected end of line".to_string())?;
        self.at += 1;
        Ok(t)
    }

    fn peek(&self) -> Option<&'a str> {
        self.toks.get(self.at).copied()
    }

    fn open(&mut self) -> R<()> {
        let t = self.next()?;
        if t != "(" {
            return Err(format!("expected '(' found '{t}'"));
        }
        self.depth += 1;
        if self.depth > DEPTH_CAP {
            return Err(format!("nesting depth over the cap ({DEPTH_CAP})"));
        }
        Ok(())
    }

    fn close(&mut self) -> R<()> {
        let t = self.next()?;
        if t != ")" {
            return Err(format!("expected ')' found '{t}'"));
        }
        self.depth -= 1;
        Ok(())
    }

    fn at_close(&self) -> bool {
        self.peek() == Some(")")
    }

    fn done(&self) -> R<()> {
        if self.at == self.toks.len() {
            Ok(())
        } else {
            Err(format!("trailing tokens from '{}'", self.toks[self.at]))
        }
    }

    fn int(&mut self) -> R<i128> {
        let t = self.next()?;
        let d = t
            .strip_prefix("i:")
            .ok_or_else(|| format!("expected i:<int> found '{t}'"))?;
        d.parse().map_err(|_| format!("bad integer '{t}'"))
    }

    fn uint<T: TryFrom<i128>>(&mut self, what: &str) -> R<T> {
        let v = self.int()?;
        T::try_from(v).map_err(|_| format!("{what} out of range: {v}"))
    }

    fn bit(&mut self) -> R<u8> {
        let b: u8 = self.uint("bit")?;
        if b > 1 {
            return Err(format!("bit out of {{0,1}}: {b}"));
        }
        Ok(b)
    }
}

// ---------------------------------------------------------------------------
// Typed parsers. Each `p_*` consumes one value from the cursor.

fn p_gate(t: &mut Toks) -> R<GateName> {
    match t.next()? {
        "h" => Ok(GateName::H),
        "t" => Ok(GateName::T),
        "c" => Ok(GateName::C),
        x => Err(format!("bad gate '{x}'")),
    }
}

fn p_tag(t: &mut Toks) -> R<GateTag> {
    match t.next()? {
        "h" => Ok(GateTag::H),
        "t" => Ok(GateTag::T),
        "c1" => Ok(GateTag::C1),
        "c2" => Ok(GateTag::C2),
        x => Err(format!("bad dynamic gate tag '{x}'")),
    }
}

fn p_cport(t: &mut Toks) -> R<CPort> {
    match t.uint::<u8>("CNOT port")? {
        1 => Ok(CPort::First),
        2 => Ok(CPort::Second),
        p => Err(format!("CNOT port out of {{1,2}}: {p}")),
    }
}

fn p_path(t: &mut Toks) -> R<Path> {
    t.open()?;
    let mut p = Vec::new();
    while !t.at_close() {
        p.push(match t.next()? {
            "f" => Dir::F,
            "a" => Dir::A,
            "b" => Dir::B,
            x => return Err(format!("bad path segment '{x}'")),
        });
    }
    t.close()?;
    Ok(p)
}

fn p_epoch(t: &mut Toks) -> R<Epoch> {
    if t.peek() == Some("ef") {
        t.next()?;
        return Ok(Epoch::Fresh);
    }
    t.open()?;
    let e = match t.next()? {
        "ea" => Epoch::Recall(Arc::new(p_epoch(t)?)),
        "ep" => {
            let a = p_epoch(t)?;
            let b = p_epoch(t)?;
            Epoch::RecallOver(Arc::new(a), Arc::new(b))
        }
        x => return Err(format!("bad epoch tag '{x}'")),
    };
    t.close()?;
    Ok(e)
}

fn p_lp_body(t: &mut Toks) -> R<Lp> {
    // Caller consumed "( lp"; parse "<path> ( <log-entry>* ) )".
    let occ = p_path(t)?;
    t.open()?;
    let mut slice = Vec::new();
    while !t.at_close() {
        slice.push(p_log_entry(t)?);
    }
    t.close()?;
    t.close()?;
    Ok(Lp { occ, slice })
}

fn p_lp(t: &mut Toks) -> R<Lp> {
    t.open()?;
    match t.next()? {
        "lp" => p_lp_body(t),
        x => Err(format!("expected lp found '{x}'")),
    }
}

fn p_alpha_body(t: &mut Toks) -> R<Alpha> {
    let gate = p_tag(t)?;
    let instance = p_lp(t)?;
    let bit = t.bit()?;
    let epoch = p_epoch(t)?;
    t.close()?;
    Ok(Alpha {
        gate,
        instance,
        bit,
        epoch,
    })
}

fn p_log_entry(t: &mut Toks) -> R<LogEntry> {
    t.open()?;
    match t.next()? {
        "lp" => Ok(LogEntry::Lp(p_lp_body(t)?)),
        "gm" => {
            let g = p_gate(t)?;
            t.close()?;
            Ok(LogEntry::Gam(g))
        }
        "cg" => Ok(LogEntry::Cgam(p_cgam_body(t)?)),
        "al" => Ok(LogEntry::Alpha(p_alpha_body(t)?)),
        "rbl" => Ok(LogEntry::Rbl(p_rbl_body(t)?)),
        x => Err(format!("bad log entry tag '{x}'")),
    }
}

fn p_cgam_body(t: &mut Toks) -> R<CGam> {
    let port = p_cport(t)?;
    let invoked = p_lp(t)?;
    let occurrence = p_path(t)?;
    let first = p_path(t)?;
    let second = p_path(t)?;
    let continuation = p_path(t)?;
    t.close()?;
    Ok(CGam {
        port,
        invoked,
        occurrence,
        first,
        second,
        continuation,
    })
}

fn p_rbl_body(t: &mut Toks) -> R<Rbl> {
    // Caller consumed "( rbl"; parse "<path> <path> <path> )".
    let parent = p_path(t)?;
    let output = p_path(t)?;
    let code = p_path(t)?;
    t.close()?;
    Ok(Rbl {
        parent,
        output,
        code,
    })
}

fn p_rb_body(t: &mut Toks) -> R<Rb> {
    // Caller consumed "( rb"; parse "i:<depth> <path> <path> ( <path>* ) )".
    let depth = t.uint("rb depth")?;
    let output = p_path(t)?;
    let code = p_path(t)?;
    t.open()?;
    let mut pending = Vec::new();
    while !t.at_close() {
        pending.push(p_path(t)?);
    }
    t.close()?;
    t.close()?;
    Ok(Rb {
        depth,
        output,
        code,
        pending,
    })
}

fn p_tape_entry(t: &mut Toks) -> R<TapeEntry> {
    match t.peek() {
        Some("bu") => {
            t.next()?;
            return Ok(TapeEntry::Bullet);
        }
        Some("ba") => {
            t.next()?;
            return Ok(TapeEntry::BulletBa);
        }
        Some("rho") => {
            t.next()?;
            return Ok(TapeEntry::Rho);
        }
        _ => {}
    }
    t.open()?;
    match t.next()? {
        "lp" => Ok(TapeEntry::Lp(p_lp_body(t)?)),
        "gm" => {
            let g = p_gate(t)?;
            t.close()?;
            Ok(TapeEntry::Gam(g))
        }
        "mu" => {
            let g = p_gate(t)?;
            t.close()?;
            Ok(TapeEntry::Mu(g))
        }
        "cg" => Ok(TapeEntry::Cgam(p_cgam_body(t)?)),
        "cm" => {
            let port = p_cport(t)?;
            let invoked = p_lp(t)?;
            t.close()?;
            Ok(TapeEntry::Cmu { port, invoked })
        }
        "an" => {
            let g = p_gate(t)?;
            let b = t.bit()?;
            t.close()?;
            Ok(TapeEntry::Ans(g, b))
        }
        "al" => Ok(TapeEntry::Alpha(p_alpha_body(t)?)),
        "rb" => Ok(TapeEntry::Rb(p_rb_body(t)?)),
        "rbl" => Ok(TapeEntry::Rbl(p_rbl_body(t)?)),
        x => Err(format!("bad tape entry tag '{x}'")),
    }
}

fn p_frame(t: &mut Toks) -> R<Frame> {
    t.open()?;
    match t.next()? {
        "fr" => {
            let gate = p_tag(t)?;
            let instance = p_lp(t)?;
            let bit = t.bit()?;
            let epoch = p_epoch(t)?;
            t.close()?;
            Ok(Frame {
                gate,
                instance,
                bit,
                epoch,
            })
        }
        x => Err(format!("expected fr found '{x}'")),
    }
}

fn p_kd_key(t: &mut Toks) -> R<KdKey> {
    t.open()?;
    match t.next()? {
        "k" => {
            let gate = p_tag(t)?;
            let instance = p_lp(t)?;
            t.close()?;
            Ok(KdKey { gate, instance })
        }
        x => Err(format!("expected k found '{x}'")),
    }
}

fn p_cdescriptor(t: &mut Toks) -> R<CDescriptor> {
    t.open()?;
    let out = match t.next()? {
        "da" => CDescriptor::Alpha {
            gate: p_tag(t)?,
            instance: p_lp(t)?,
            epoch: p_epoch(t)?,
        },
        "dl" => {
            t.open()?;
            let cargo = match t.next()? {
                "lp" => RetainCargo::Lp(p_lp_body(t)?),
                "al" => RetainCargo::Alpha(p_alpha_body(t)?),
                x => return Err(format!("bad CNOT logged descriptor tag '{x}'")),
            };
            CDescriptor::Logged(cargo)
        }
        x => return Err(format!("bad CNOT descriptor tag '{x}'")),
    };
    t.close()?;
    Ok(out)
}

fn p_frame_descriptor(t: &mut Toks) -> R<FrameDescriptor> {
    t.open()?;
    if t.next()? != "fd" {
        return Err("expected frame descriptor".into());
    }
    let out = FrameDescriptor {
        gate: p_tag(t)?,
        instance: p_lp(t)?,
        epoch: p_epoch(t)?,
    };
    t.close()?;
    Ok(out)
}

fn p_cstage(t: &mut Toks) -> R<CStage> {
    match t.next()? {
        "park" => Ok(CStage::Park),
        "fire" => Ok(CStage::Fire),
        "deliver" => Ok(CStage::Deliver),
        "answer" => Ok(CStage::AnswerPort),
        x => Err(format!("bad CNOT stage '{x}'")),
    }
}

fn p_ks_head(t: &mut Toks) -> R<KsHead> {
    t.open()?;
    match t.next()? {
        "kr" => {
            let gate = p_tag(t)?;
            let instance = p_lp(t)?;
            t.close()?;
            Ok(KsHead::Decode { gate, instance })
        }
        "ka" => {
            let gate = p_tag(t)?;
            let instance = p_lp(t)?;
            t.close()?;
            Ok(KsHead::Suppressed { gate, instance })
        }
        "kd" => {
            t.open()?;
            let mut keys = Vec::new();
            while !t.at_close() {
                keys.push(p_kd_key(t)?);
            }
            t.close()?;
            t.close()?;
            Ok(KsHead::DeadBundle(keys))
        }
        "kw" => {
            t.open()?;
            let cargo = match t.next()? {
                "lp" => RetainCargo::Lp(p_lp_body(t)?),
                "al" => RetainCargo::Alpha(p_alpha_body(t)?),
                x => return Err(format!("bad retain-whole cargo tag '{x}'")),
            };
            t.close()?;
            Ok(KsHead::RetainWhole(cargo))
        }
        "cp" => {
            let invoked = p_lp(t)?;
            let bit = t.bit()?;
            let descriptor = p_cdescriptor(t)?;
            let frames = p_seq(t, p_frame_descriptor)?;
            let occurrence = p_path(t)?;
            let continuation = p_path(t)?;
            t.close()?;
            Ok(KsHead::CnotPark {
                invoked,
                bit,
                descriptor,
                frames,
                occurrence,
                continuation,
            })
        }
        "ch" => {
            let invoked = p_lp(t)?;
            let first = p_cdescriptor(t)?;
            let first_frames = p_seq(t, p_frame_descriptor)?;
            let second = p_cdescriptor(t)?;
            let second_frames = p_seq(t, p_frame_descriptor)?;
            let occurrence = p_path(t)?;
            let continuation = p_path(t)?;
            t.close()?;
            Ok(KsHead::CnotHistory {
                invoked,
                first,
                first_frames,
                second,
                second_frames,
                occurrence,
                continuation,
            })
        }
        "cd" => {
            let port = p_cport(t)?;
            let invoked = p_lp(t)?;
            let epoch = p_epoch(t)?;
            let logged = p_lp(t)?;
            let answered = t.bit()? != 0;
            t.close()?;
            Ok(KsHead::CnotDead {
                port,
                invoked,
                epoch,
                logged,
                answered,
            })
        }
        "cq" => {
            let port = p_cport(t)?;
            let invoked = p_lp(t)?;
            let logged = p_lp(t)?;
            t.close()?;
            Ok(KsHead::CnotQuery {
                port,
                invoked,
                logged,
            })
        }
        "cs" => {
            let stage = p_cstage(t)?;
            t.close()?;
            Ok(KsHead::CnotStage(stage))
        }
        x => Err(format!("bad ks head tag '{x}'")),
    }
}

fn p_vb(t: &mut Toks) -> R<Option<Vb>> {
    if t.peek() == Some("n") {
        t.next()?;
        return Ok(None);
    }
    t.open()?;
    match t.next()? {
        "vb" => {
            let gate = p_tag(t)?;
            let bit = t.bit()?;
            let k: u8 = t.uint("vb phase")?;
            if k > 2 {
                return Err(format!("vb phase out of {{0,1,2}}: {k}"));
            }
            t.close()?;
            Ok(Some(Vb { gate, bit, k }))
        }
        x => Err(format!("expected vb found '{x}'")),
    }
}

fn p_seq<T>(t: &mut Toks, mut item: impl FnMut(&mut Toks) -> R<T>) -> R<Vec<T>> {
    t.open()?;
    let mut out = Vec::new();
    while !t.at_close() {
        out.push(item(t)?);
    }
    t.close()?;
    Ok(out)
}

fn p_run_body(t: &mut Toks) -> R<RunCore> {
    let path = p_path(t)?;
    let d = match t.next()? {
        "d" => Vert::D,
        "u" => Vert::U,
        x => return Err(format!("bad direction '{x}'")),
    };
    let log = p_seq(t, p_log_entry)?;
    let tape = p_seq(t, p_tape_entry)?;
    let vb = p_vb(t)?;
    let rs = p_seq(t, p_frame)?;
    let ks = p_seq(t, p_ks_head)?;
    t.close()?;
    Ok(RunCore {
        path,
        d,
        log,
        tape,
        vb,
        rs,
        ks,
    })
}

fn p_kind(t: &mut Toks) -> R<Kind> {
    match t.next()? {
        "halt0" => Ok(Kind::Halt0),
        "halt1" => Ok(Kind::Halt1),
        "haltI" => Ok(Kind::HaltI),
        "err" => Ok(Kind::Err),
        x => Err(format!("bad kind '{x}'")),
    }
}

fn p_residue(t: &mut Toks) -> R<Residue> {
    t.open()?;
    match t.next()? {
        "r7" => Ok(Residue::Full(Box::new(p_run_body(t)?))),
        "r4" => {
            let log = p_seq(t, p_log_entry)?;
            let tape = p_seq(t, p_tape_entry)?;
            let rs = p_seq(t, p_frame)?;
            let ks = p_seq(t, p_ks_head)?;
            t.close()?;
            Ok(Residue::Root { log, tape, rs, ks })
        }
        x => Err(format!("bad residue tag '{x}'")),
    }
}

/// Parse one state s-expression.
fn p_state(t: &mut Toks) -> R<KState> {
    t.open()?;
    match t.next()? {
        "run" => Ok(KState::Run(p_run_body(t)?)),
        "rd" => {
            let kind = p_kind(t)?;
            let residue = p_residue(t)?;
            t.close()?;
            Ok(KState::RunDone { kind, residue })
        }
        "dn" => {
            let kind = p_kind(t)?;
            let residue = p_residue(t)?;
            let tick: u64 = t.uint("tick")?;
            t.close()?;
            Ok(KState::Done {
                kind,
                residue,
                tick,
            })
        }
        x => Err(format!("bad state tag '{x}'")),
    }
}

// ---------------------------------------------------------------------------
// Composed-stratum records (`readback.py`'s state grammar).

fn p_nf(t: &mut Toks) -> R<Nf> {
    match t.peek() {
        Some("hu") => {
            t.next()?;
            return Ok(Nf::Hole { armed: false });
        }
        Some("ha") => {
            t.next()?;
            return Ok(Nf::Hole { armed: true });
        }
        _ => {}
    }
    t.open()?;
    let out = match t.next()? {
        "nv" => {
            let i: u64 = t.uint("nf var index")?;
            if i == 0 {
                return Err("NFVar(0) refused (1-indexed)".into());
            }
            Nf::Var(i)
        }
        "nl" => Nf::Lam(Arc::new(p_nf(t)?)),
        "na" => {
            let f = p_nf(t)?;
            let a = p_nf(t)?;
            Nf::App(Arc::new(f), Arc::new(a))
        }
        "ng" => Nf::Gate(p_gate(t)?),
        x => return Err(format!("bad nf tag '{x}'")),
    };
    t.close()?;
    Ok(out)
}

fn p_binder_identity(t: &mut Toks) -> R<BinderIdentity> {
    t.open()?;
    let out = match t.next()? {
        "src" => {
            let path = p_path(t)?;
            let log = p_seq(t, p_log_entry)?;
            BinderIdentity::Source { path, log }
        }
        "vrt" => {
            let gate = p_tag(t)?;
            let instance = p_lp(t)?;
            let phase = t.bit()?;
            let code = p_path(t)?;
            BinderIdentity::Virtual {
                gate,
                instance,
                phase,
                code,
            }
        }
        x => return Err(format!("bad binder identity tag '{x}'")),
    };
    t.close()?;
    Ok(out)
}

fn p_binder_mark(t: &mut Toks) -> R<BinderMark> {
    t.open()?;
    match t.next()? {
        "bm" => {
            let output = p_path(t)?;
            let identity = p_binder_identity(t)?;
            t.close()?;
            Ok(BinderMark { output, identity })
        }
        x => Err(format!("expected bm found '{x}'")),
    }
}

fn p_scope_residue(t: &mut Toks) -> R<ScopeResidue> {
    t.open()?;
    let out = match t.next()? {
        "rex" => {
            let output = p_path(t)?;
            let prefix = p_seq(t, p_tape_entry)?;
            ScopeResidue::Exact { output, prefix }
        }
        "rvr" => {
            let output = p_path(t)?;
            let gate = p_tag(t)?;
            let instance = p_lp(t)?;
            let epoch = p_epoch(t)?;
            ScopeResidue::Virtual {
                output,
                gate,
                instance,
                epoch,
            }
        }
        "rpu" => ScopeResidue::Pure { output: p_path(t)? },
        "rnp" => {
            let binder_path = p_path(t)?;
            let binder_log = p_seq(t, p_log_entry)?;
            let logged_argument = p_lp(t)?;
            ScopeResidue::NeutralProbe {
                binder_path,
                binder_log,
                logged_argument,
            }
        }
        x => return Err(format!("bad scope residue tag '{x}'")),
    };
    t.close()?;
    Ok(out)
}

fn p_terminal_carrier(t: &mut Toks) -> R<Option<TerminalCarrier>> {
    if t.peek() == Some("none") {
        t.next()?;
        return Ok(None);
    }
    t.open()?;
    let out = match t.next()? {
        "cex" => {
            let output = p_path(t)?;
            let prefix = p_seq(t, p_tape_entry)?;
            TerminalCarrier::Exact { output, prefix }
        }
        "cvr" => {
            let output = p_path(t)?;
            let gate = p_tag(t)?;
            let instance = p_lp(t)?;
            let epoch = p_epoch(t)?;
            TerminalCarrier::Virtual {
                output,
                gate,
                instance,
                epoch,
            }
        }
        x => return Err(format!("bad terminal carrier tag '{x}'")),
    };
    t.close()?;
    Ok(Some(out))
}

fn p_terminal_garbage(t: &mut Toks) -> R<TerminalGarbage> {
    t.open()?;
    match t.next()? {
        "tg" => {
            let carrier = p_terminal_carrier(t)?;
            let frames = p_seq(t, p_frame)?;
            let storage = p_seq(t, p_ks_head)?;
            let binders = p_seq(t, p_binder_mark)?;
            let residues = p_seq(t, p_scope_residue)?;
            t.close()?;
            Ok(TerminalGarbage {
                carrier,
                frames,
                storage,
                binders,
                residues,
            })
        }
        x => Err(format!("expected tg found '{x}'")),
    }
}

fn p_zipper(t: &mut Toks) -> R<Zipper> {
    t.open()?;
    match t.next()? {
        "zp" => {
            let tree = p_nf(t)?;
            let cursor = if t.peek() == Some("none") {
                t.next()?;
                None
            } else {
                Some(p_path(t)?)
            };
            let binders = p_seq(t, p_binder_mark)?;
            let residues = p_seq(t, p_scope_residue)?;
            t.close()?;
            Ok(Zipper {
                tree,
                cursor,
                binders,
                residues,
            })
        }
        x => Err(format!("expected zp found '{x}'")),
    }
}

/// A bare word token: composed error kinds and fault categories. The
/// vocabulary is closed lowercase-kebab, so the reserved structural
/// tokens can never collide with it — refused on decode anyway.
fn p_word(t: &mut Toks, what: &str) -> R<String> {
    let w = t.next()?;
    if w == "(" || w == ")" || w == "none" {
        return Err(format!("bad {what} token '{w}'"));
    }
    Ok(w.to_string())
}

fn p_error_kind(t: &mut Toks) -> R<ErrorKind> {
    t.open()?;
    let out = match t.next()? {
        "ek" => ErrorKind::Typed(p_word(t, "error kind")?),
        "ef" => ErrorKind::Fault(p_word(t, "fault category")?),
        x => return Err(format!("bad error kind tag '{x}'")),
    };
    t.close()?;
    Ok(out)
}

fn p_error_garbage(t: &mut Toks) -> R<ErrorGarbage> {
    t.open()?;
    let out = match t.next()? {
        "egc" => {
            t.open()?;
            match t.next()? {
                "run" => {}
                x => return Err(format!("expected run found '{x}'")),
            }
            let token = p_run_body(t)?;
            let zipper = p_zipper(t)?;
            ErrorGarbage::Composed { token, zipper }
        }
        "egk" => {
            t.open()?;
            match t.next()? {
                "run" => {}
                x => return Err(format!("expected run found '{x}'")),
            }
            let token = p_run_body(t)?;
            let zipper = p_zipper(t)?;
            let residue = p_residue(t)?;
            ErrorGarbage::Kernel {
                token,
                zipper,
                residue,
            }
        }
        "egi" => {
            t.open()?;
            match t.next()? {
                "run" => {}
                x => return Err(format!("expected run found '{x}'")),
            }
            let token = p_run_body(t)?;
            let zipper = p_zipper(t)?;
            let target = Box::new(p_state(t)?);
            ErrorGarbage::InvalidKernelTarget {
                token,
                zipper,
                target,
            }
        }
        "egf" => ErrorGarbage::Fault {
            source: Box::new(p_nf_state(t)?),
        },
        x => return Err(format!("bad error garbage tag '{x}'")),
    };
    t.close()?;
    Ok(out)
}

fn p_nf_terminal(t: &mut Toks) -> R<NfTerminal> {
    t.open()?;
    let out = match t.next()? {
        "th" => {
            let output = p_nf(t)?;
            let garbage = p_terminal_garbage(t)?;
            NfTerminal::Halt { output, garbage }
        }
        "te" => {
            let kind = p_error_kind(t)?;
            let garbage = p_error_garbage(t)?;
            NfTerminal::Error { kind, garbage }
        }
        x => return Err(format!("bad nf terminal tag '{x}'")),
    };
    t.close()?;
    Ok(out)
}

/// Parse one composed state s-expression.
fn p_nf_state(t: &mut Toks) -> R<NfState> {
    t.open()?;
    let out = match t.next()? {
        "nr" => {
            t.open()?;
            match t.next()? {
                "run" => {}
                x => return Err(format!("expected run found '{x}'")),
            }
            let token = p_run_body(t)?;
            let zipper = p_zipper(t)?;
            NfState::Run(NfRun { token, zipper })
        }
        "nrd" => NfState::RunDone(p_nf_terminal(t)?),
        "nd" => {
            let terminal = p_nf_terminal(t)?;
            let tick: u64 = t.uint("nf tick")?;
            NfState::Done { terminal, tick }
        }
        x => return Err(format!("bad nf state tag '{x}'")),
    };
    t.close()?;
    Ok(out)
}

fn p_term(t: &mut Toks) -> R<Term> {
    t.open()?;
    let out = match t.next()? {
        "v" => {
            let i: u32 = t.uint("de Bruijn index")?;
            if i == 0 {
                return Err("Var(0) refused (1-indexed)".into());
            }
            Term::Var(i)
        }
        "l" => Term::Lam(Box::new(p_term(t)?)),
        "ap" => {
            let f = p_term(t)?;
            let a = p_term(t)?;
            Term::App(Box::new(f), Box::new(a))
        }
        "g" => {
            let gate = p_gate(t)?;
            Term::Gate(gate)
        }
        x => return Err(format!("bad term tag '{x}'")),
    };
    t.close()?;
    Ok(out)
}

fn p_amp(t: &mut Toks) -> R<Amp> {
    t.open()?;
    match t.next()? {
        "dw" => {
            let a = t.int()?;
            let b = t.int()?;
            let c = t.int()?;
            let d = t.int()?;
            let k: u32 = t.uint("denominator exponent")?;
            t.close()?;
            Amp::from_parts_strict(a, b, c, d, k)
                .map_err(|_| format!("noncanonical amplitude ({a},{b},{c},{d},{k})"))
        }
        x => Err(format!("expected dw found '{x}'")),
    }
}

fn p_rule(t: &mut Toks) -> R<String> {
    let x = t.next()?;
    if x.is_empty()
        || !x
            .bytes()
            .all(|b| b.is_ascii_lowercase() || b.is_ascii_digit() || b == b'-')
    {
        return Err(format!("bad rule token '{x}'"));
    }
    Ok(x.to_string())
}

// ---------------------------------------------------------------------------
// Serializers — the normative encoding. One writer per parser.

fn w_gate(out: &mut String, g: GateName) {
    out.push_str(g.token());
}

fn w_tag(out: &mut String, g: GateTag) {
    out.push_str(g.token());
}

fn w_cport(out: &mut String, p: CPort) {
    out.push_str(&format!("i:{}", p.number()));
}

fn w_path(out: &mut String, p: &[Dir]) {
    out.push_str("( ");
    for d in p {
        out.push(d.ch());
        out.push(' ');
    }
    out.push(')');
}

fn w_epoch(out: &mut String, e: &Epoch) {
    match e {
        Epoch::Fresh => out.push_str("ef"),
        Epoch::Recall(t) => {
            out.push_str("( ea ");
            w_epoch(out, t);
            out.push_str(" )");
        }
        Epoch::RecallOver(t, o) => {
            out.push_str("( ep ");
            w_epoch(out, t);
            out.push(' ');
            w_epoch(out, o);
            out.push_str(" )");
        }
    }
}

fn w_lp(out: &mut String, lp: &Lp) {
    out.push_str("( lp ");
    w_path(out, &lp.occ);
    out.push_str(" ( ");
    for e in &lp.slice {
        w_log_entry(out, e);
        out.push(' ');
    }
    out.push_str(") )");
}

fn w_alpha(out: &mut String, a: &Alpha) {
    out.push_str("( al ");
    w_tag(out, a.gate);
    out.push(' ');
    w_lp(out, &a.instance);
    out.push_str(&format!(" i:{} ", a.bit));
    w_epoch(out, &a.epoch);
    out.push_str(" )");
}

fn w_log_entry(out: &mut String, e: &LogEntry) {
    match e {
        LogEntry::Lp(lp) => w_lp(out, lp),
        LogEntry::Gam(g) => {
            out.push_str("( gm ");
            w_gate(out, *g);
            out.push_str(" )");
        }
        LogEntry::Cgam(g) => w_cgam(out, g),
        LogEntry::Alpha(a) => w_alpha(out, a),
        LogEntry::Rbl(r) => w_rbl(out, r),
    }
}

fn w_cgam(out: &mut String, g: &CGam) {
    out.push_str("( cg ");
    w_cport(out, g.port);
    out.push(' ');
    w_lp(out, &g.invoked);
    for p in [&g.occurrence, &g.first, &g.second, &g.continuation] {
        out.push(' ');
        w_path(out, p);
    }
    out.push_str(" )");
}

fn w_rbl(out: &mut String, r: &Rbl) {
    out.push_str("( rbl ");
    w_path(out, &r.parent);
    out.push(' ');
    w_path(out, &r.output);
    out.push(' ');
    w_path(out, &r.code);
    out.push_str(" )");
}

fn w_rb(out: &mut String, r: &Rb) {
    out.push_str(&format!("( rb i:{} ", r.depth));
    w_path(out, &r.output);
    out.push(' ');
    w_path(out, &r.code);
    out.push_str(" ( ");
    for p in &r.pending {
        w_path(out, p);
        out.push(' ');
    }
    out.push_str(") )");
}

fn w_tape_entry(out: &mut String, e: &TapeEntry) {
    match e {
        TapeEntry::Bullet => out.push_str("bu"),
        TapeEntry::BulletBa => out.push_str("ba"),
        TapeEntry::Rho => out.push_str("rho"),
        TapeEntry::Lp(lp) => w_lp(out, lp),
        TapeEntry::Gam(g) => {
            out.push_str("( gm ");
            w_gate(out, *g);
            out.push_str(" )");
        }
        TapeEntry::Mu(g) => {
            out.push_str("( mu ");
            w_gate(out, *g);
            out.push_str(" )");
        }
        TapeEntry::Cgam(g) => w_cgam(out, g),
        TapeEntry::Cmu { port, invoked } => {
            out.push_str("( cm ");
            w_cport(out, *port);
            out.push(' ');
            w_lp(out, invoked);
            out.push_str(" )");
        }
        TapeEntry::Ans(g, b) => {
            out.push_str("( an ");
            w_gate(out, *g);
            out.push_str(&format!(" i:{b} )"));
        }
        TapeEntry::Alpha(a) => w_alpha(out, a),
        TapeEntry::Rb(r) => w_rb(out, r),
        TapeEntry::Rbl(r) => w_rbl(out, r),
    }
}

fn w_frame(out: &mut String, f: &Frame) {
    out.push_str("( fr ");
    w_tag(out, f.gate);
    out.push(' ');
    w_lp(out, &f.instance);
    out.push_str(&format!(" i:{} ", f.bit));
    w_epoch(out, &f.epoch);
    out.push_str(" )");
}

fn w_kd_key(out: &mut String, k: &KdKey) {
    out.push_str("( k ");
    w_tag(out, k.gate);
    out.push(' ');
    w_lp(out, &k.instance);
    out.push_str(" )");
}

fn w_cdescriptor(out: &mut String, d: &CDescriptor) {
    match d {
        CDescriptor::Alpha {
            gate,
            instance,
            epoch,
        } => {
            out.push_str("( da ");
            w_tag(out, *gate);
            out.push(' ');
            w_lp(out, instance);
            out.push(' ');
            w_epoch(out, epoch);
            out.push_str(" )");
        }
        CDescriptor::Logged(cargo) => {
            out.push_str("( dl ");
            match cargo {
                RetainCargo::Lp(lp) => w_lp(out, lp),
                RetainCargo::Alpha(a) => w_alpha(out, a),
            }
            out.push_str(" )");
        }
    }
}

fn w_frame_descriptor(out: &mut String, d: &FrameDescriptor) {
    out.push_str("( fd ");
    w_tag(out, d.gate);
    out.push(' ');
    w_lp(out, &d.instance);
    out.push(' ');
    w_epoch(out, &d.epoch);
    out.push_str(" )");
}

fn w_cstage(out: &mut String, s: CStage) {
    out.push_str(match s {
        CStage::Park => "park",
        CStage::Fire => "fire",
        CStage::Deliver => "deliver",
        CStage::AnswerPort => "answer",
    });
}

fn w_ks_head(out: &mut String, h: &KsHead) {
    match h {
        KsHead::Decode { gate, instance } => {
            out.push_str("( kr ");
            w_tag(out, *gate);
            out.push(' ');
            w_lp(out, instance);
            out.push_str(" )");
        }
        KsHead::Suppressed { gate, instance } => {
            out.push_str("( ka ");
            w_tag(out, *gate);
            out.push(' ');
            w_lp(out, instance);
            out.push_str(" )");
        }
        KsHead::DeadBundle(keys) => {
            out.push_str("( kd ( ");
            for k in keys {
                w_kd_key(out, k);
                out.push(' ');
            }
            out.push_str(") )");
        }
        KsHead::RetainWhole(c) => {
            out.push_str("( kw ");
            match c {
                RetainCargo::Lp(lp) => w_lp(out, lp),
                RetainCargo::Alpha(a) => w_alpha(out, a),
            }
            out.push_str(" )");
        }
        KsHead::CnotPark {
            invoked,
            bit,
            descriptor,
            frames,
            occurrence,
            continuation,
        } => {
            out.push_str("( cp ");
            w_lp(out, invoked);
            out.push_str(&format!(" i:{bit} "));
            w_cdescriptor(out, descriptor);
            out.push(' ');
            w_seq(out, frames, w_frame_descriptor);
            out.push(' ');
            w_path(out, occurrence);
            out.push(' ');
            w_path(out, continuation);
            out.push_str(" )");
        }
        KsHead::CnotHistory {
            invoked,
            first,
            first_frames,
            second,
            second_frames,
            occurrence,
            continuation,
        } => {
            out.push_str("( ch ");
            w_lp(out, invoked);
            out.push(' ');
            w_cdescriptor(out, first);
            out.push(' ');
            w_seq(out, first_frames, w_frame_descriptor);
            out.push(' ');
            w_cdescriptor(out, second);
            out.push(' ');
            w_seq(out, second_frames, w_frame_descriptor);
            out.push(' ');
            w_path(out, occurrence);
            out.push(' ');
            w_path(out, continuation);
            out.push_str(" )");
        }
        KsHead::CnotDead {
            port,
            invoked,
            epoch,
            logged,
            answered,
        } => {
            out.push_str("( cd ");
            w_cport(out, *port);
            out.push(' ');
            w_lp(out, invoked);
            out.push(' ');
            w_epoch(out, epoch);
            out.push(' ');
            w_lp(out, logged);
            out.push_str(&format!(" i:{} )", u8::from(*answered)));
        }
        KsHead::CnotQuery {
            port,
            invoked,
            logged,
        } => {
            out.push_str("( cq ");
            w_cport(out, *port);
            out.push(' ');
            w_lp(out, invoked);
            out.push(' ');
            w_lp(out, logged);
            out.push_str(" )");
        }
        KsHead::CnotStage(stage) => {
            out.push_str("( cs ");
            w_cstage(out, *stage);
            out.push_str(" )");
        }
    }
}

fn w_vb(out: &mut String, vb: &Option<Vb>) {
    match vb {
        None => out.push('n'),
        Some(v) => {
            out.push_str("( vb ");
            w_tag(out, v.gate);
            out.push_str(&format!(" i:{} i:{} )", v.bit, v.k));
        }
    }
}

fn w_seq<T>(out: &mut String, xs: &[T], mut item: impl FnMut(&mut String, &T)) {
    out.push_str("( ");
    for x in xs {
        item(out, x);
        out.push(' ');
    }
    out.push(')');
}

fn w_run_body(out: &mut String, r: &RunCore) {
    w_path(out, &r.path);
    out.push(' ');
    out.push(match r.d {
        Vert::D => 'd',
        Vert::U => 'u',
    });
    out.push(' ');
    w_seq(out, &r.log, w_log_entry);
    out.push(' ');
    w_seq(out, &r.tape, w_tape_entry);
    out.push(' ');
    w_vb(out, &r.vb);
    out.push(' ');
    w_seq(out, &r.rs, w_frame);
    out.push(' ');
    w_seq(out, &r.ks, w_ks_head);
    out.push_str(" )");
}

fn w_residue(out: &mut String, r: &Residue) {
    match r {
        Residue::Full(c) => {
            out.push_str("( r7 ");
            w_run_body(out, c);
        }
        Residue::Root { log, tape, rs, ks } => {
            out.push_str("( r4 ");
            w_seq(out, log, w_log_entry);
            out.push(' ');
            w_seq(out, tape, w_tape_entry);
            out.push(' ');
            w_seq(out, rs, w_frame);
            out.push(' ');
            w_seq(out, ks, w_ks_head);
            out.push_str(" )");
        }
    }
}

/// Serialize one state s-expression (the normative encoding).
pub fn w_state(out: &mut String, s: &KState) {
    match s {
        KState::Run(r) => {
            out.push_str("( run ");
            w_run_body(out, r);
        }
        KState::RunDone { kind, residue } => {
            out.push_str("( rd ");
            out.push_str(kind.token());
            out.push(' ');
            w_residue(out, residue);
            out.push_str(" )");
        }
        KState::Done {
            kind,
            residue,
            tick,
        } => {
            out.push_str("( dn ");
            out.push_str(kind.token());
            out.push(' ');
            w_residue(out, residue);
            out.push_str(&format!(" i:{tick} )"));
        }
    }
}

fn w_token(out: &mut String, r: &RunCore) {
    out.push_str("( run ");
    w_run_body(out, r);
}

fn w_nf(out: &mut String, n: &Nf) {
    match n {
        Nf::Hole { armed: false } => out.push_str("hu"),
        Nf::Hole { armed: true } => out.push_str("ha"),
        Nf::Var(i) => out.push_str(&format!("( nv i:{i} )")),
        Nf::Lam(b) => {
            out.push_str("( nl ");
            w_nf(out, b);
            out.push_str(" )");
        }
        Nf::App(f, a) => {
            out.push_str("( na ");
            w_nf(out, f);
            out.push(' ');
            w_nf(out, a);
            out.push_str(" )");
        }
        Nf::Gate(g) => {
            out.push_str("( ng ");
            w_gate(out, *g);
            out.push_str(" )");
        }
    }
}

fn w_binder_identity(out: &mut String, i: &BinderIdentity) {
    match i {
        BinderIdentity::Source { path, log } => {
            out.push_str("( src ");
            w_path(out, path);
            out.push(' ');
            w_seq(out, log, w_log_entry);
            out.push_str(" )");
        }
        BinderIdentity::Virtual {
            gate,
            instance,
            phase,
            code,
        } => {
            out.push_str("( vrt ");
            w_tag(out, *gate);
            out.push(' ');
            w_lp(out, instance);
            out.push_str(&format!(" i:{phase} "));
            w_path(out, code);
            out.push_str(" )");
        }
    }
}

fn w_binder_mark(out: &mut String, b: &BinderMark) {
    out.push_str("( bm ");
    w_path(out, &b.output);
    out.push(' ');
    w_binder_identity(out, &b.identity);
    out.push_str(" )");
}

fn w_scope_residue(out: &mut String, r: &ScopeResidue) {
    match r {
        ScopeResidue::Exact { output, prefix } => {
            out.push_str("( rex ");
            w_path(out, output);
            out.push(' ');
            w_seq(out, prefix, w_tape_entry);
            out.push_str(" )");
        }
        ScopeResidue::Virtual {
            output,
            gate,
            instance,
            epoch,
        } => {
            out.push_str("( rvr ");
            w_path(out, output);
            out.push(' ');
            w_tag(out, *gate);
            out.push(' ');
            w_lp(out, instance);
            out.push(' ');
            w_epoch(out, epoch);
            out.push_str(" )");
        }
        ScopeResidue::Pure { output } => {
            out.push_str("( rpu ");
            w_path(out, output);
            out.push_str(" )");
        }
        ScopeResidue::NeutralProbe {
            binder_path,
            binder_log,
            logged_argument,
        } => {
            out.push_str("( rnp ");
            w_path(out, binder_path);
            out.push(' ');
            w_seq(out, binder_log, w_log_entry);
            out.push(' ');
            w_lp(out, logged_argument);
            out.push_str(" )");
        }
    }
}

fn w_terminal_carrier(out: &mut String, c: &Option<TerminalCarrier>) {
    match c {
        None => out.push_str("none"),
        Some(TerminalCarrier::Exact { output, prefix }) => {
            out.push_str("( cex ");
            w_path(out, output);
            out.push(' ');
            w_seq(out, prefix, w_tape_entry);
            out.push_str(" )");
        }
        Some(TerminalCarrier::Virtual {
            output,
            gate,
            instance,
            epoch,
        }) => {
            out.push_str("( cvr ");
            w_path(out, output);
            out.push(' ');
            w_tag(out, *gate);
            out.push(' ');
            w_lp(out, instance);
            out.push(' ');
            w_epoch(out, epoch);
            out.push_str(" )");
        }
    }
}

fn w_terminal_garbage(out: &mut String, g: &TerminalGarbage) {
    out.push_str("( tg ");
    w_terminal_carrier(out, &g.carrier);
    out.push(' ');
    w_seq(out, &g.frames, w_frame);
    out.push(' ');
    w_seq(out, &g.storage, w_ks_head);
    out.push(' ');
    w_seq(out, &g.binders, w_binder_mark);
    out.push(' ');
    w_seq(out, &g.residues, w_scope_residue);
    out.push_str(" )");
}

fn w_zipper(out: &mut String, z: &Zipper) {
    out.push_str("( zp ");
    w_nf(out, &z.tree);
    out.push(' ');
    match &z.cursor {
        None => out.push_str("none"),
        Some(p) => w_path(out, p),
    }
    out.push(' ');
    w_seq(out, &z.binders, w_binder_mark);
    out.push(' ');
    w_seq(out, &z.residues, w_scope_residue);
    out.push_str(" )");
}

fn w_error_kind(out: &mut String, k: &ErrorKind) {
    match k {
        ErrorKind::Typed(s) => out.push_str(&format!("( ek {s} )")),
        ErrorKind::Fault(s) => out.push_str(&format!("( ef {s} )")),
    }
}

fn w_error_garbage(out: &mut String, g: &ErrorGarbage) {
    match g {
        ErrorGarbage::Composed { token, zipper } => {
            out.push_str("( egc ");
            w_token(out, token);
            out.push(' ');
            w_zipper(out, zipper);
            out.push_str(" )");
        }
        ErrorGarbage::Kernel {
            token,
            zipper,
            residue,
        } => {
            out.push_str("( egk ");
            w_token(out, token);
            out.push(' ');
            w_zipper(out, zipper);
            out.push(' ');
            w_residue(out, residue);
            out.push_str(" )");
        }
        ErrorGarbage::InvalidKernelTarget {
            token,
            zipper,
            target,
        } => {
            out.push_str("( egi ");
            w_token(out, token);
            out.push(' ');
            w_zipper(out, zipper);
            out.push(' ');
            w_state(out, target);
            out.push_str(" )");
        }
        ErrorGarbage::Fault { source } => {
            out.push_str("( egf ");
            w_nf_state(out, source);
            out.push_str(" )");
        }
    }
}

fn w_nf_terminal(out: &mut String, t: &NfTerminal) {
    match t {
        NfTerminal::Halt { output, garbage } => {
            out.push_str("( th ");
            w_nf(out, output);
            out.push(' ');
            w_terminal_garbage(out, garbage);
            out.push_str(" )");
        }
        NfTerminal::Error { kind, garbage } => {
            out.push_str("( te ");
            w_error_kind(out, kind);
            out.push(' ');
            w_error_garbage(out, garbage);
            out.push_str(" )");
        }
    }
}

/// Serialize one composed state s-expression (the normative encoding).
pub fn w_nf_state(out: &mut String, s: &NfState) {
    match s {
        NfState::Run(r) => {
            out.push_str("( nr ");
            w_token(out, &r.token);
            out.push(' ');
            w_zipper(out, &r.zipper);
            out.push_str(" )");
        }
        NfState::RunDone(t) => {
            out.push_str("( nrd ");
            w_nf_terminal(out, t);
            out.push_str(" )");
        }
        NfState::Done { terminal, tick } => {
            out.push_str("( nd ");
            w_nf_terminal(out, terminal);
            out.push_str(&format!(" i:{tick} )"));
        }
    }
}

fn w_term(out: &mut String, t: &Term) {
    match t {
        Term::Var(i) => out.push_str(&format!("( v i:{i} )")),
        Term::Lam(b) => {
            out.push_str("( l ");
            w_term(out, b);
            out.push_str(" )");
        }
        Term::App(f, a) => {
            out.push_str("( ap ");
            w_term(out, f);
            out.push(' ');
            w_term(out, a);
            out.push_str(" )");
        }
        Term::Gate(g) => {
            out.push_str("( g ");
            w_gate(out, *g);
            out.push_str(" )");
        }
    }
}

fn w_amp(out: &mut String, a: &Amp) {
    let (x, b, c, d, k) = a.parts();
    out.push_str(&format!("( dw i:{x} i:{b} i:{c} i:{d} i:{k} )"));
}

// ---------------------------------------------------------------------------
// The fixture file.

/// One corpus pair: a typed sort-domain value and the exact Python repr
/// bytes it must render to.
#[derive(Debug, Clone)]
pub enum CorpusValue {
    Frame(Frame),
    KdKey(KdKey),
}

#[derive(Debug, Clone)]
pub struct CorpusPair {
    pub value: CorpusValue,
    pub repr_bytes: Vec<u8>,
}

/// A parsed certificate: `(position, popkeys)` entries.
pub type CertEntries = Vec<(Path, Vec<KdKey>)>;
/// One unmerged column row: `(coefficient, rule, target id)`.
pub type ColRow = (Amp, String, usize);
/// One source's exact ordered rows, unmerged: `(source id, rows)`.
pub type Column = (usize, Vec<ColRow>);

/// One program's phase-0/1 pins.
#[derive(Debug, Clone)]
pub struct ProgramFixture {
    pub name: String,
    pub term: Term,
    pub tick_depth: u64,
    /// `None` = the canonical no-certificate (plain) reading.
    pub cert: Option<CertEntries>,
    /// Carrier states by id (BFS discovery order from the exporter).
    pub carrier: Vec<KState>,
    /// `source id → ordered unmerged rows (amp, rule, target id)`.
    pub columns: Vec<Column>,
    /// SHA-256 over the exact bytes of the `col` lines (each with its
    /// trailing newline), in order.
    pub commitment: String,
    /// Per-step dynamic-trace digest chain `(step, support, sha256)`.
    pub trace: Vec<(u64, u64, String)>,
    /// The absorption-step sparse map, sorted by state wire bytes.
    pub finals: Vec<(KState, Amp)>,
}

/// One probe row: exact coefficient, rule, and full target state
/// (probe targets may be off-carrier, so no id indirection).
pub type ProbeRow = (Amp, String, NfState);

/// One composed core's phase-2 pins: the same shape as
/// [`ProgramFixture`] over composed states, plus totalization/inverse
/// probes — off-carrier sources with their exact expected rows.
#[derive(Debug, Clone)]
pub struct ComposedFixture {
    pub name: String,
    pub term: Term,
    pub tick_depth: u64,
    pub cert: Option<CertEntries>,
    pub carrier: Vec<NfState>,
    pub columns: Vec<Column>,
    pub commitment: String,
    pub trace: Vec<(u64, u64, String)>,
    pub finals: Vec<(NfState, Amp)>,
    pub probes: Vec<(NfState, Vec<ProbeRow>)>,
}

#[derive(Debug, Clone, Default)]
pub struct Fixtures {
    pub corpus: Vec<CorpusPair>,
    pub programs: Vec<ProgramFixture>,
    pub composed: Vec<ComposedFixture>,
}

fn hex64(s: &str) -> R<String> {
    if s.len() == 64
        && s.bytes()
            .all(|b| b.is_ascii_hexdigit() && !b.is_ascii_uppercase())
    {
        Ok(s.to_string())
    } else {
        Err(format!("bad sha256 hex '{s}'"))
    }
}

/// Parse a whole fixture file. Every structural defect is a returned
/// [`WireError`] naming its line.
pub fn parse_fixtures(text: &str) -> Result<Fixtures, WireError> {
    let mut fx = Fixtures::default();
    let mut lines = text.lines().enumerate();
    let fail = |n: usize, what: String| WireError { line: n + 1, what };

    let Some((n0, head)) = lines.next() else {
        return Err(fail(0, "empty file".into()));
    };
    if head != HEADER {
        return Err(fail(n0, format!("bad header '{head}'")));
    }

    while let Some((n, line)) = lines.next() {
        let mut t = Toks::new(line);
        match t.next().map_err(|e| fail(n, e))? {
            "begin" => match t.next().map_err(|e| fail(n, e))? {
                "corpus" => {
                    t.done().map_err(|e| fail(n, e))?;
                    loop {
                        let Some((n, line)) = lines.next() else {
                            return Err(fail(n, "unterminated corpus".into()));
                        };
                        if line == "end corpus" {
                            break;
                        }
                        let mut t = Toks::new(line);
                        let value = (|| -> R<CorpusValue> {
                            match t.next()? {
                                "pair" => match t.next()? {
                                    "frame" => Ok(CorpusValue::Frame(p_frame(&mut t)?)),
                                    "kdkey" => Ok(CorpusValue::KdKey(p_kd_key(&mut t)?)),
                                    x => Err(format!("bad corpus kind '{x}'")),
                                },
                                x => Err(format!("expected pair found '{x}'")),
                            }
                        })()
                        .map_err(|e| fail(n, e))?;
                        t.done().map_err(|e| fail(n, e))?;
                        let Some((n2, rline)) = lines.next() else {
                            return Err(fail(n, "pair without repr line".into()));
                        };
                        let repr = rline.strip_prefix("repr ").ok_or_else(|| {
                            fail(n2, format!("expected repr line, got '{rline}'"))
                        })?;
                        fx.corpus.push(CorpusPair {
                            value,
                            repr_bytes: repr.as_bytes().to_vec(),
                        });
                    }
                }
                "program" => {
                    let name = t.next().map_err(|e| fail(n, e))?.to_string();
                    t.done().map_err(|e| fail(n, e))?;
                    let p = parse_program(name, &mut lines).map_err(|(pn, e)| fail(pn, e))?;
                    fx.programs.push(p);
                }
                "cprogram" => {
                    let name = t.next().map_err(|e| fail(n, e))?.to_string();
                    t.done().map_err(|e| fail(n, e))?;
                    let p = parse_cprogram(name, &mut lines).map_err(|(pn, e)| fail(pn, e))?;
                    fx.composed.push(p);
                }
                x => return Err(fail(n, format!("bad section '{x}'"))),
            },
            x => return Err(fail(n, format!("bad record '{x}'"))),
        }
    }
    Ok(fx)
}

/// Parse one canonical qALC invocation term without wrapping it in a fixture
/// section.  This is the text boundary used by the `blam qalc run`, `gram`,
/// and `compile --term-only` pipeline.  A term is exactly one line and must
/// consume the complete input; trailing records are never ignored.
pub fn parse_term(text: &str) -> Result<Term, WireError> {
    if text.contains(['\n', '\r']) {
        return Err(WireError {
            line: 1,
            what: "a standalone term must occupy exactly one line".into(),
        });
    }
    let mut toks = Toks::new(text);
    let term = p_term(&mut toks).map_err(|what| WireError { line: 1, what })?;
    toks.done().map_err(|what| WireError { line: 1, what })?;
    Ok(term)
}

type Lines<'a> = std::iter::Enumerate<std::str::Lines<'a>>;

/// One parsed probe over states of type `S`.
type Probe<S> = (S, Vec<(Amp, String, S)>);

/// The section fields shared by kernel and composed program blocks,
/// generic over the state parser so the two grammars cannot drift.
struct ProgramBody<S> {
    term: Term,
    tick_depth: u64,
    cert: Option<CertEntries>,
    carrier: Vec<S>,
    columns: Vec<Column>,
    commitment: String,
    trace: Vec<(u64, u64, String)>,
    finals: Vec<(S, Amp)>,
    probes: Vec<Probe<S>>,
}

fn parse_program(name: String, lines: &mut Lines) -> Result<ProgramFixture, (usize, String)> {
    let b = parse_program_body(&name, lines, "end program", false, p_state)?;
    Ok(ProgramFixture {
        name,
        term: b.term,
        tick_depth: b.tick_depth,
        cert: b.cert,
        carrier: b.carrier,
        columns: b.columns,
        commitment: b.commitment,
        trace: b.trace,
        finals: b.finals,
    })
}

fn parse_cprogram(name: String, lines: &mut Lines) -> Result<ComposedFixture, (usize, String)> {
    let b = parse_program_body(&name, lines, "end cprogram", true, p_nf_state)?;
    Ok(ComposedFixture {
        name,
        term: b.term,
        tick_depth: b.tick_depth,
        cert: b.cert,
        carrier: b.carrier,
        columns: b.columns,
        commitment: b.commitment,
        trace: b.trace,
        finals: b.finals,
        probes: b.probes,
    })
}

fn parse_program_body<S>(
    name: &str,
    lines: &mut Lines,
    end: &str,
    probes_allowed: bool,
    p_st: impl Fn(&mut Toks) -> R<S>,
) -> Result<ProgramBody<S>, (usize, String)> {
    let mut term = None;
    let mut tick_depth = None;
    let mut cert: Option<Option<CertEntries>> = None;
    let mut carrier: Vec<S> = Vec::new();
    let mut columns = Vec::new();
    let mut commitment = None;
    let mut trace = Vec::new();
    let mut finals = Vec::new();
    let mut probes: Vec<Probe<S>> = Vec::new();

    while let Some((n, line)) = lines.next() {
        let e = |msg: String| (n, msg);
        if line == end {
            let term = term.ok_or_else(|| e("program without term".into()))?;
            return Ok(ProgramBody {
                term,
                tick_depth: tick_depth.ok_or_else(|| e("program without tickdepth".into()))?,
                cert: cert.ok_or_else(|| e("program without cert".into()))?,
                carrier,
                columns,
                commitment: commitment.ok_or_else(|| e("program without commitment".into()))?,
                trace,
                finals,
                probes,
            });
        }
        let mut t = Toks::new(line);
        let tag = t.next().map_err(e)?;
        match tag {
            "term" => {
                term = Some(p_term(&mut t).map_err(e)?);
                t.done().map_err(e)?;
            }
            "tickdepth" => {
                tick_depth = Some(t.uint("tick depth").map_err(e)?);
                t.done().map_err(e)?;
            }
            "cert" => {
                match t.next().map_err(e)? {
                    "none" => cert = Some(None),
                    x => return Err(e(format!("bad cert record '{x}'"))),
                }
                t.done().map_err(e)?;
            }
            "begin" => match t.next().map_err(e)? {
                "cert" => {
                    let mut entries = Vec::new();
                    for (n, line) in lines.by_ref() {
                        if line == "end cert" {
                            break;
                        }
                        let mut t = Toks::new(line);
                        let entry = (|| -> R<(Path, Vec<KdKey>)> {
                            match t.next()? {
                                "centry" => {
                                    let pos = p_path(&mut t)?;
                                    let keys = p_seq(&mut t, p_kd_key)?;
                                    t.done()?;
                                    Ok((pos, keys))
                                }
                                x => Err(format!("expected centry found '{x}'")),
                            }
                        })()
                        .map_err(|m| (n, m))?;
                        // The reference certificate is a dict: one entry
                        // per fire position. First-match lookup over a
                        // Vec only equals dict lookup if the decoder
                        // refuses duplicates.
                        if entries.iter().any(|(p, _)| *p == entry.0) {
                            return Err((n, "duplicate cert position".into()));
                        }
                        entries.push(entry);
                    }
                    cert = Some(Some(entries));
                }
                "carrier" => {
                    let count: usize = t.uint("carrier count").map_err(e)?;
                    t.done().map_err(e)?;
                    for (n, line) in lines.by_ref() {
                        if line == "end carrier" {
                            break;
                        }
                        let mut t = Toks::new(line);
                        (|| -> R<()> {
                            match t.next()? {
                                "st" => {
                                    let id: usize = t.uint("state id")?;
                                    if id != carrier.len() {
                                        return Err(format!(
                                            "state id {id} out of sequence (expected {})",
                                            carrier.len()
                                        ));
                                    }
                                    carrier.push(p_st(&mut t)?);
                                    t.done()
                                }
                                x => Err(format!("expected st found '{x}'")),
                            }
                        })()
                        .map_err(|m| (n, m))?;
                    }
                    if carrier.len() != count {
                        return Err(e(format!(
                            "carrier count {} != declared {count}",
                            carrier.len()
                        )));
                    }
                }
                "columns" => {
                    t.done().map_err(e)?;
                    for (n, line) in lines.by_ref() {
                        if line == "end columns" {
                            break;
                        }
                        let mut t = Toks::new(line);
                        let col = (|| -> R<Column> {
                            match t.next()? {
                                "col" => {
                                    let src: usize = t.uint("source id")?;
                                    let rows = p_seq(&mut t, |t| {
                                        t.open()?;
                                        let a = p_amp(t)?;
                                        let rule = p_rule(t)?;
                                        let tgt: usize = t.uint("target id")?;
                                        t.close()?;
                                        Ok((a, rule, tgt))
                                    })?;
                                    t.done()?;
                                    Ok((src, rows))
                                }
                                x => Err(format!("expected col found '{x}'")),
                            }
                        })()
                        .map_err(|m| (n, m))?;
                        columns.push(col);
                    }
                }
                "trace" => {
                    let steps: usize = t.uint("trace steps").map_err(e)?;
                    t.done().map_err(e)?;
                    for (n, line) in lines.by_ref() {
                        if line == "end trace" {
                            break;
                        }
                        let mut t = Toks::new(line);
                        let row = (|| -> R<(u64, u64, String)> {
                            match t.next()? {
                                "tr" => {
                                    let step: u64 = t.uint("step")?;
                                    let support: u64 = t.uint("support")?;
                                    let h = hex64(t.next()?)?;
                                    t.done()?;
                                    Ok((step, support, h))
                                }
                                x => Err(format!("expected tr found '{x}'")),
                            }
                        })()
                        .map_err(|m| (n, m))?;
                        trace.push(row);
                    }
                    if trace.len() != steps {
                        return Err(e(format!("trace rows {} != declared {steps}", trace.len())));
                    }
                }
                "final" => {
                    t.done().map_err(e)?;
                    for (n, line) in lines.by_ref() {
                        if line == "end final" {
                            break;
                        }
                        let mut t = Toks::new(line);
                        let row = (|| -> R<(S, Amp)> {
                            match t.next()? {
                                "fs" => {
                                    let s = p_st(&mut t)?;
                                    let a = p_amp(&mut t)?;
                                    t.done()?;
                                    Ok((s, a))
                                }
                                x => Err(format!("expected fs found '{x}'")),
                            }
                        })()
                        .map_err(|m| (n, m))?;
                        finals.push(row);
                    }
                }
                "probes" if probes_allowed => {
                    t.done().map_err(e)?;
                    for (n, line) in lines.by_ref() {
                        if line == "end probes" {
                            break;
                        }
                        let mut t = Toks::new(line);
                        (|| -> R<()> {
                            match t.next()? {
                                "psrc" => {
                                    probes.push((p_st(&mut t)?, Vec::new()));
                                    t.done()
                                }
                                "prow" => {
                                    let a = p_amp(&mut t)?;
                                    let rule = p_rule(&mut t)?;
                                    let s = p_st(&mut t)?;
                                    t.done()?;
                                    probes
                                        .last_mut()
                                        .ok_or_else(|| "prow before any psrc".to_string())?
                                        .1
                                        .push((a, rule, s));
                                    Ok(())
                                }
                                x => Err(format!("expected psrc/prow found '{x}'")),
                            }
                        })()
                        .map_err(|m| (n, m))?;
                    }
                }
                x => return Err(e(format!("bad program section '{x}'"))),
            },
            "commitment" => {
                let h = t.next().map_err(e)?;
                commitment = Some(hex64(h).map_err(e)?);
                t.done().map_err(e)?;
            }
            x => return Err(e(format!("bad program record '{x}'"))),
        }
    }
    Err((usize::MAX, format!("unterminated program {name}")))
}

/// Serialize a whole fixture file — the byte-for-byte inverse of
/// [`parse_fixtures`] on every well-formed file, which the codec test
/// asserts over all checked-in fixtures.
pub fn serialize_fixtures(fx: &Fixtures) -> String {
    let mut out = String::new();
    out.push_str(HEADER);
    out.push('\n');
    if !fx.corpus.is_empty() {
        out.push_str("begin corpus\n");
        for p in &fx.corpus {
            match &p.value {
                CorpusValue::Frame(f) => {
                    out.push_str("pair frame ");
                    w_frame(&mut out, f);
                }
                CorpusValue::KdKey(k) => {
                    out.push_str("pair kdkey ");
                    w_kd_key(&mut out, k);
                }
            }
            out.push('\n');
            out.push_str("repr ");
            out.push_str(std::str::from_utf8(&p.repr_bytes).expect("corpus repr is UTF-8"));
            out.push('\n');
        }
        out.push_str("end corpus\n");
    }
    for p in &fx.programs {
        out.push_str(&format!("begin program {}\n", p.name));
        out.push_str("term ");
        w_term(&mut out, &p.term);
        out.push('\n');
        out.push_str(&format!("tickdepth i:{}\n", p.tick_depth));
        match &p.cert {
            None => out.push_str("cert none\n"),
            Some(entries) => {
                out.push_str("begin cert\n");
                for (pos, keys) in entries {
                    out.push_str("centry ");
                    w_path(&mut out, pos);
                    out.push(' ');
                    w_seq(&mut out, keys, w_kd_key);
                    out.push('\n');
                }
                out.push_str("end cert\n");
            }
        }
        out.push_str(&format!("begin carrier i:{}\n", p.carrier.len()));
        for (i, s) in p.carrier.iter().enumerate() {
            out.push_str(&format!("st i:{i} "));
            w_state(&mut out, s);
            out.push('\n');
        }
        out.push_str("end carrier\n");
        out.push_str("begin columns\n");
        for (src, rows) in &p.columns {
            out.push_str(&col_line(*src, rows));
            out.push('\n');
        }
        out.push_str("end columns\n");
        out.push_str(&format!("commitment {}\n", p.commitment));
        out.push_str(&format!("begin trace i:{}\n", p.trace.len()));
        for (step, support, h) in &p.trace {
            out.push_str(&format!("tr i:{step} i:{support} {h}\n"));
        }
        out.push_str("end trace\n");
        out.push_str("begin final\n");
        for (s, a) in &p.finals {
            out.push_str("fs ");
            w_state(&mut out, s);
            out.push(' ');
            w_amp(&mut out, a);
            out.push('\n');
        }
        out.push_str("end final\n");
        out.push_str("end program\n");
    }
    for p in &fx.composed {
        out.push_str(&format!("begin cprogram {}\n", p.name));
        out.push_str("term ");
        w_term(&mut out, &p.term);
        out.push('\n');
        out.push_str(&format!("tickdepth i:{}\n", p.tick_depth));
        match &p.cert {
            None => out.push_str("cert none\n"),
            Some(entries) => {
                out.push_str("begin cert\n");
                for (pos, keys) in entries {
                    out.push_str("centry ");
                    w_path(&mut out, pos);
                    out.push(' ');
                    w_seq(&mut out, keys, w_kd_key);
                    out.push('\n');
                }
                out.push_str("end cert\n");
            }
        }
        out.push_str(&format!("begin carrier i:{}\n", p.carrier.len()));
        for (i, s) in p.carrier.iter().enumerate() {
            out.push_str(&format!("st i:{i} "));
            w_nf_state(&mut out, s);
            out.push('\n');
        }
        out.push_str("end carrier\n");
        out.push_str("begin columns\n");
        for (src, rows) in &p.columns {
            out.push_str(&col_line(*src, rows));
            out.push('\n');
        }
        out.push_str("end columns\n");
        out.push_str(&format!("commitment {}\n", p.commitment));
        out.push_str(&format!("begin trace i:{}\n", p.trace.len()));
        for (step, support, h) in &p.trace {
            out.push_str(&format!("tr i:{step} i:{support} {h}\n"));
        }
        out.push_str("end trace\n");
        out.push_str("begin final\n");
        for (s, a) in &p.finals {
            out.push_str("fs ");
            w_nf_state(&mut out, s);
            out.push(' ');
            w_amp(&mut out, a);
            out.push('\n');
        }
        out.push_str("end final\n");
        if !p.probes.is_empty() {
            out.push_str("begin probes\n");
            for (src, rows) in &p.probes {
                out.push_str("psrc ");
                w_nf_state(&mut out, src);
                out.push('\n');
                for (a, rule, s) in rows {
                    out.push_str("prow ");
                    w_amp(&mut out, a);
                    out.push(' ');
                    out.push_str(rule);
                    out.push(' ');
                    w_nf_state(&mut out, s);
                    out.push('\n');
                }
            }
            out.push_str("end probes\n");
        }
        out.push_str("end cprogram\n");
    }
    out
}

/// The exact `col` line for one source — shared by the serializer and
/// the commitment recomputation so the hashed bytes cannot drift from
/// the written bytes.
pub fn col_line(src: usize, rows: &[ColRow]) -> String {
    let mut out = String::new();
    out.push_str(&format!("col i:{src} "));
    w_seq(&mut out, rows, |o, (a, rule, tgt)| {
        o.push_str("( ");
        w_amp(o, a);
        o.push(' ');
        o.push_str(rule);
        o.push_str(&format!(" i:{tgt} )"));
    });
    out
}

/// Recompute a program's column commitment from its parsed columns.
pub fn column_commitment(columns: &[Column]) -> String {
    let mut bytes = Vec::new();
    for (src, rows) in columns {
        bytes.extend_from_slice(col_line(*src, rows).as_bytes());
        bytes.push(b'\n');
    }
    crate::hash::sha256_hex(&bytes)
}

/// Serialize one state to its wire bytes (canonical state order:
/// byte-lexicographic on this encoding).
pub fn state_bytes(s: &KState) -> String {
    let mut out = String::new();
    w_state(&mut out, s);
    out
}

/// One composed state's wire bytes — the canonical identity the
/// composed carrier ordering, digests, and finals use.
pub fn nf_state_bytes(s: &NfState) -> String {
    let mut out = String::new();
    w_nf_state(&mut out, s);
    out
}

/// One full-normal-form output's canonical fixture bytes.  The census uses
/// this stable identity for sparse `M` coordinates and checkpoint records.
pub fn nf_bytes(n: &Nf) -> String {
    let mut out = String::new();
    w_nf(&mut out, n);
    out
}

/// One invocation term's canonical fixture bytes.
pub fn term_bytes(t: &Term) -> String {
    let mut out = String::new();
    w_term(&mut out, t);
    out
}

/// One amplitude's wire bytes — the token the trace-digest payloads
/// and `fs` lines carry.
pub fn amp_bytes(a: &Amp) -> String {
    let mut out = String::new();
    w_amp(&mut out, a);
    out
}

/// A bundle key's wire bytes — the *certificate-specific* canonical
/// order for popkey lists (distinct from `mark`'s PyReprKey, which
/// orders the state-identity sorts).
pub fn kd_key_bytes(k: &KdKey) -> String {
    let mut out = String::new();
    w_kd_key(&mut out, k);
    out
}
