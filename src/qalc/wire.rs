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
use super::mark::{Alpha, Epoch, Frame, KdKey, KsHead, LogEntry, Lp, RetainCargo, TapeEntry};
use super::state::{KState, Kind, Residue, RunCore, Vb, Vert};
use super::term::{Dir, GateName, Path, Term};

/// Maximum paren depth the parser admits. Bounds every later traversal
/// (renderer included) by construction; compiled-circuit terms nest
/// linearly in gate count, so the cap sits far above real data while
/// keeping worst-case parser stack use in the hundreds of kilobytes.
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
        "ea" => Epoch::Recall(Box::new(p_epoch(t)?)),
        "ep" => {
            let a = p_epoch(t)?;
            let b = p_epoch(t)?;
            Epoch::RecallOver(Box::new(a), Box::new(b))
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
    let gate = p_gate(t)?;
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
        "al" => Ok(LogEntry::Alpha(p_alpha_body(t)?)),
        x => Err(format!("bad log entry tag '{x}'")),
    }
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
        "an" => {
            let g = p_gate(t)?;
            let b = t.bit()?;
            t.close()?;
            Ok(TapeEntry::Ans(g, b))
        }
        "al" => Ok(TapeEntry::Alpha(p_alpha_body(t)?)),
        x => Err(format!("bad tape entry tag '{x}'")),
    }
}

fn p_frame(t: &mut Toks) -> R<Frame> {
    t.open()?;
    match t.next()? {
        "fr" => {
            let gate = p_gate(t)?;
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
            let gate = p_gate(t)?;
            let instance = p_lp(t)?;
            t.close()?;
            Ok(KdKey { gate, instance })
        }
        x => Err(format!("expected k found '{x}'")),
    }
}

fn p_ks_head(t: &mut Toks) -> R<KsHead> {
    t.open()?;
    match t.next()? {
        "kr" => {
            let gate = p_gate(t)?;
            let instance = p_lp(t)?;
            t.close()?;
            Ok(KsHead::Decode { gate, instance })
        }
        "ka" => {
            let gate = p_gate(t)?;
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
            let gate = p_gate(t)?;
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
        "g" => Term::Gate(p_gate(t)?),
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
    out.push(g.ch());
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
    w_gate(out, a.gate);
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
        LogEntry::Alpha(a) => w_alpha(out, a),
    }
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
        TapeEntry::Ans(g, b) => {
            out.push_str("( an ");
            w_gate(out, *g);
            out.push_str(&format!(" i:{b} )"));
        }
        TapeEntry::Alpha(a) => w_alpha(out, a),
    }
}

fn w_frame(out: &mut String, f: &Frame) {
    out.push_str("( fr ");
    w_gate(out, f.gate);
    out.push(' ');
    w_lp(out, &f.instance);
    out.push_str(&format!(" i:{} ", f.bit));
    w_epoch(out, &f.epoch);
    out.push_str(" )");
}

fn w_kd_key(out: &mut String, k: &KdKey) {
    out.push_str("( k ");
    w_gate(out, k.gate);
    out.push(' ');
    w_lp(out, &k.instance);
    out.push_str(" )");
}

fn w_ks_head(out: &mut String, h: &KsHead) {
    match h {
        KsHead::Decode { gate, instance } => {
            out.push_str("( kr ");
            w_gate(out, *gate);
            out.push(' ');
            w_lp(out, instance);
            out.push_str(" )");
        }
        KsHead::Suppressed { gate, instance } => {
            out.push_str("( ka ");
            w_gate(out, *gate);
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
    }
}

fn w_vb(out: &mut String, vb: &Option<Vb>) {
    match vb {
        None => out.push('n'),
        Some(v) => {
            out.push_str("( vb ");
            w_gate(out, v.gate);
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

#[derive(Debug, Clone, Default)]
pub struct Fixtures {
    pub corpus: Vec<CorpusPair>,
    pub programs: Vec<ProgramFixture>,
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
                x => return Err(fail(n, format!("bad section '{x}'"))),
            },
            x => return Err(fail(n, format!("bad record '{x}'"))),
        }
    }
    Ok(fx)
}

type Lines<'a> = std::iter::Enumerate<std::str::Lines<'a>>;

fn parse_program(name: String, lines: &mut Lines) -> Result<ProgramFixture, (usize, String)> {
    let mut term = None;
    let mut tick_depth = None;
    let mut cert: Option<Option<CertEntries>> = None;
    let mut carrier: Vec<KState> = Vec::new();
    let mut columns = Vec::new();
    let mut commitment = None;
    let mut trace = Vec::new();
    let mut finals = Vec::new();

    while let Some((n, line)) = lines.next() {
        let e = |msg: String| (n, msg);
        if line == "end program" {
            let term = term.ok_or_else(|| e("program without term".into()))?;
            return Ok(ProgramFixture {
                name,
                term,
                tick_depth: tick_depth.ok_or_else(|| e("program without tickdepth".into()))?,
                cert: cert.ok_or_else(|| e("program without cert".into()))?,
                carrier,
                columns,
                commitment: commitment.ok_or_else(|| e("program without commitment".into()))?,
                trace,
                finals,
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
                                    carrier.push(p_state(&mut t)?);
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
                        let row = (|| -> R<(KState, Amp)> {
                            match t.next()? {
                                "fs" => {
                                    let s = p_state(&mut t)?;
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

/// A bundle key's wire bytes — the *certificate-specific* canonical
/// order for popkey lists (distinct from `mark`'s PyReprKey, which
/// orders the state-identity sorts).
pub fn kd_key_bytes(k: &KdKey) -> String {
    let mut out = String::new();
    w_kd_key(&mut out, k);
    out
}
