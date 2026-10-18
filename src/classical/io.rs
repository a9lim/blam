//! Tromp's I/O conventions: how a BLC program receives its input and how
//! its normal form is read back as output (`AIT.lhs`, `uni.c`).
//!
//! A program runs applied to its input list, and its normal form is read
//! as a list. Lists are right-nested pairs `λz. z head tail` ending in
//! `nil = λx.λy.y`. A bit is a boolean in the wire's inverted polarity —
//! `0` is `true = λx.λy.x`, `1` is `false = λx.λy.y` (which is also nil) —
//! and a byte is a list of eight bits, most significant first.
//!
//! - [`list`], [`bits`] and [`bytes`] build input lists (`bitstoLC`,
//!   `bytestoLC`).
//! - [`bshow`] is `AIT.lhs`'s reading of a normal form, the one `blc run`
//!   prints: a list of bits or bytes shows as those bits or bytes, any other
//!   pair as `<x,y>`, and anything else as `(term)` in de Bruijn notation.
//! - [`Reader`] is a [`Sink`] that performs a reading *while* the machine
//!   streams the normal form, so an endless output list prints as it is
//!   produced. It speaks `blc run`'s reading ([`Dialect::Tromp`]) and the
//!   stricter readings of `uni`'s bit and byte modes, where output that is
//!   not a list of bits (or of bytes) is an error.

use crate::blc::{app, lam, var, Term};
use crate::classical::machine::Sink;
use std::cell::{Cell, RefCell};
use std::io::{self, Write};
use std::rc::Rc;
use std::time::{Duration, Instant};

/// `true = λx.λy.x`, the bit `0`.
pub fn tru() -> Term {
    lam(lam(var(2)))
}

/// `false = λx.λy.y`: the bit `1`, and the empty list.
pub fn nil() -> Term {
    lam(lam(var(1)))
}

/// A list of `items` ending in `end` (Tromp's `foldr cons end`), where
/// `cons x y = λz. z x y`. Each item and `end` is read in the scope the
/// list itself sits in, and is shifted under the cell binders that end up
/// enclosing it, so open items keep pointing where they did.
pub fn list<I>(items: I, end: Term) -> Term
where
    I: IntoIterator<Item = Term>,
    I::IntoIter: DoubleEndedIterator + ExactSizeIterator,
{
    let items = items.into_iter();
    let mut k = items.len() as u32;
    let mut acc = shift(&end, k);
    for item in items.rev() {
        // Cell k (0-based) sits under k cells; its head under one more.
        k -= 1;
        let head = shift(&item, k + 1);
        acc = lam(app(app(var(1), head), acc));
    }
    acc
}

/// The bit `b` (`bittoLC`): `0` is `true`, `1` is `false`.
pub fn bit(b: bool) -> Term {
    if b {
        nil()
    } else {
        tru()
    }
}

/// The byte `c`: its eight bits, most significant first, ending in nil.
pub fn byte(c: u8) -> Term {
    list((0..8).rev().map(|j| bit(c >> j & 1 == 1)), nil())
}

/// `bitstoLC end`: one boolean per bit.
pub fn bits(bits: &[bool], end: Term) -> Term {
    list(bits.iter().map(|&b| bit(b)), end)
}

/// `bytestoLC end`: one eight-bit list per byte.
pub fn bytes(bytes: &[u8], end: Term) -> Term {
    list(bytes.iter().map(|&c| byte(c)), end)
}

/// Free variables of `t` move out by `by` (closed terms come back as is).
fn shift(t: &Term, by: u32) -> Term {
    if by == 0 || t.is_closed() {
        return t.clone();
    }
    fn go(t: &Term, by: u32, depth: u32) -> Term {
        match t {
            Term::Var(n) if *n > depth => Term::Var(n + by),
            Term::Var(_) => t.clone(),
            Term::Lam(b) => lam(go(b, by, depth + 1)),
            Term::App(f, a) => app(go(f, by, depth), go(a, by, depth)),
        }
    }
    go(t, by, 0)
}

/// What a list cell's head means under a reading: a character code, or
/// the first component of a pair.
enum Head<'a> {
    Char(i64),
    Pair(&'a Term),
}

/// `λz. z x y` → `(x, y)`.
fn cell(t: &Term) -> Option<(&Term, &Term)> {
    let Term::Lam(b) = t else { return None };
    let Term::App(fx, y) = &**b else { return None };
    let Term::App(z, x) = &**fx else { return None };
    (**z == Term::Var(1)).then_some((&**x, &**y))
}

/// `λx.λy.y` / `λx.λy.x` → the bit 1 / 0.
fn as_bit(t: &Term) -> Option<bool> {
    let Term::Lam(b) = t else { return None };
    let Term::Lam(b) = &**b else { return None };
    match **b {
        Term::Var(1) => Some(true),
        Term::Var(2) => Some(false),
        _ => None,
    }
}

fn is_nil(t: &Term) -> bool {
    as_bit(t) == Some(true)
}

/// `bshow`'s byte pattern, exactly as `AIT.lhs` writes it: eight cells
/// whose heads are `λx.λy.v` for *any* variable `v`, then nil, read as
/// `foldr (\b z -> 2*z + 1 - b) 0` over the 0-based indices (first cell
/// most significant). Bits give a byte; other indices give whatever that
/// sum is, which `chr` then has to accept.
fn byte8(mut t: &Term) -> Option<i64> {
    let mut x = 0i64;
    for _ in 0..8 {
        let (h, rest) = cell(t)?;
        let Term::Lam(b) = h else { return None };
        let Term::Lam(b) = &**b else { return None };
        let Term::Var(k) = **b else { return None };
        x = 2 * x + 1 - (i64::from(k) - 1);
        t = rest;
    }
    is_nil(t).then_some(x)
}

/// Write character code `c` the way blam writes `blc run`'s output: codes
/// up to 255 as that raw byte, larger valid code points in UTF-8 (`blc`
/// itself writes every code above 127 in the locale's encoding), and
/// anything `chr` would reject is an error.
fn put_char(c: i64, out: &mut Vec<u8>) -> Result<(), ReadError> {
    match c {
        0..=255 => out.push(c as u8),
        _ => match u32::try_from(c).ok().and_then(char::from_u32) {
            Some(ch) => out.extend_from_slice(ch.encode_utf8(&mut [0; 4]).as_bytes()),
            None => return Err(ReadError::BadChar(c)),
        },
    }
    Ok(())
}

fn tromp_head(x: &Term) -> Head<'_> {
    match as_bit(x) {
        Some(true) => Head::Char(i64::from(b'1')),
        Some(false) => Head::Char(i64::from(b'0')),
        None => match byte8(x) {
            Some(c) => Head::Char(c),
            None => Head::Pair(x),
        },
    }
}

/// `AIT.lhs`'s `bshow`: the output `blc run` prints for a normal form
/// (without the newline it appends). Bytes come back raw; everything else
/// is ASCII. The one failure is [`ReadError::BadChar`]: a byte pattern
/// whose sum is not a character.
pub fn bshow(t: &Term) -> Result<Vec<u8>, ReadError> {
    let mut out = Vec::new();
    bshow_into(t, &mut out)?;
    Ok(out)
}

fn bshow_into(t: &Term, out: &mut Vec<u8>) -> Result<(), ReadError> {
    enum W<'a> {
        T(&'a Term),
        S(&'static [u8]),
    }
    let mut work = vec![W::T(t)];
    while let Some(w) = work.pop() {
        match w {
            W::S(s) => out.extend_from_slice(s),
            W::T(t) if is_nil(t) => {}
            W::T(t) => match cell(t) {
                Some((x, y)) => match tromp_head(x) {
                    Head::Char(c) => {
                        put_char(c, out)?;
                        work.push(W::T(y));
                    }
                    Head::Pair(x) => {
                        out.push(b'<');
                        work.push(W::S(b">"));
                        work.push(W::T(y));
                        work.push(W::S(b","));
                        work.push(W::T(x));
                    }
                },
                None => {
                    out.push(b'(');
                    out.extend_from_slice(t.to_string().as_bytes());
                    out.push(b')');
                }
            },
        }
    }
    Ok(())
}

/// Which reading a [`Reader`] performs.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Dialect {
    /// `blc run`'s [`bshow`]: never fails.
    Tromp,
    /// `uni`'s bit mode: the output must be a list of bits, written as the
    /// ASCII characters `0` and `1`.
    UniBits,
    /// `uni`'s byte mode: the output must be a list of bit lists, each
    /// worth at most 255, written as raw bytes.
    UniBytes,
}

/// Why a [`Reader`] stopped short.
#[derive(Debug)]
pub enum ReadError {
    /// Writing the output failed (a closed pipe, for instance).
    Io(io::Error),
    /// The normal form used marker binder `k` (1-based, outermost first).
    Marker(u32),
    /// Under a `uni` dialect: the output is not a list.
    NotAList,
    /// Under [`Dialect::UniBits`]: a list element is not a bit.
    NotABit,
    /// Under [`Dialect::UniBytes`]: a list element is not a list of bits
    /// worth at most 255.
    NotAByte,
    /// Under [`Dialect::Tromp`]: a byte pattern whose value is not a
    /// character (Haskell's `chr` would fail).
    BadChar(i64),
    /// The machine stopped before the normal form was complete.
    Incomplete,
}

impl std::fmt::Display for ReadError {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            ReadError::Io(e) => write!(f, "writing the output: {e}"),
            ReadError::Marker(k) => write!(f, "the normal form uses marker binder {k}"),
            ReadError::NotAList => f.write_str("the output is not a list"),
            ReadError::NotABit => f.write_str("an output element is not a bit"),
            ReadError::NotAByte => f.write_str("an output element is not a byte"),
            ReadError::BadChar(c) => {
                write!(f, "an output byte pattern has value {c}, not a character")
            }
            ReadError::Incomplete => f.write_str("the normal form is incomplete"),
        }
    }
}

impl std::error::Error for ReadError {}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
enum Tok {
    Lam,
    App,
    Var(u32),
}

/// Rebuilds one subterm from its tokens and says when it is complete.
/// `lams` counts the lambdas open at the cursor.
#[derive(Default)]
struct Builder {
    stack: Vec<Pending>,
    lams: u32,
}

enum Pending {
    Lam,
    App,
    AppArg(Term),
}

impl Builder {
    fn push(&mut self, tok: Tok) -> Option<Term> {
        let mut done = match tok {
            Tok::Lam => {
                self.stack.push(Pending::Lam);
                self.lams += 1;
                return None;
            }
            Tok::App => {
                self.stack.push(Pending::App);
                return None;
            }
            Tok::Var(n) => Term::Var(n),
        };
        loop {
            match self.stack.pop() {
                None => return Some(done),
                Some(Pending::Lam) => {
                    self.lams -= 1;
                    done = lam(done);
                }
                Some(Pending::App) => {
                    self.stack.push(Pending::AppArg(done));
                    return None;
                }
                Some(Pending::AppArg(f)) => done = app(f, done),
            }
        }
    }
}

/// What a frame is reading.
enum Mode {
    /// The opening tokens of a subterm (at most four), until they show it
    /// to be nil, a list cell, or neither.
    Start([Tok; 4], u8),
    /// A cell's head under [`Dialect::Tromp`], as a position in `bshow`'s
    /// patterns.
    Head(Pat),
    /// A cell's head under a `uni` dialect, as a position in uni's shape.
    UniHead(UniPat),
    /// A subterm that is not a list, kept whole to print (its `(` is out).
    Rest(Builder),
    /// Waiting while the frame above reads this cell's head as the first
    /// component of a pair.
    Pair,
}

/// One `bshow` in progress. The reader keeps a stack of them: one per pair
/// whose first component is still being read, so a pair streams both its
/// components.
struct Frame {
    mode: Mode,
    /// Cells this frame has entered; each stays open until the frame ends.
    cells: u32,
    /// `>`s owed when this frame's subterm ends.
    closers: usize,
}

impl Frame {
    fn new() -> Frame {
        Frame {
            mode: Mode::Start([Tok::Lam; 4], 0),
            cells: 0,
            closers: 0,
        }
    }

    /// λs open at the cursor inside this frame, in O(1).
    fn local(&self) -> u32 {
        self.cells
            + match &self.mode {
                Mode::Start(seen, n) => seen[..*n as usize]
                    .iter()
                    .filter(|&&t| t == Tok::Lam)
                    .count() as u32,
                Mode::Head(p) => p.depth(),
                Mode::UniHead(p) => p.depth(),
                Mode::Rest(b) => b.lams,
                Mode::Pair => 0,
            }
    }
}

/// `bshow`'s byte pattern as a token template: eight cells
/// `λ @ @ 1 λ λ v` (`v` any variable), then nil `λ λ 1`.
const BYTE_LEN: u8 = 59;

fn byte_template(i: u8) -> Option<Tok> {
    use Tok::*;
    if i < 56 {
        [
            Some(Lam),
            Some(App),
            Some(App),
            Some(Var(1)),
            Some(Lam),
            Some(Lam),
            None,
        ][usize::from(i % 7)]
    } else {
        [Some(Lam), Some(Lam), Some(Var(1))][usize::from(i - 56)]
    }
}

/// λs open after the first `i` tokens of the byte template.
fn byte_depth(i: u8) -> u32 {
    if i < 56 {
        let (c, o) = (u32::from(i / 7), i % 7);
        c + u32::from(o > 0) + u32::from(o > 4) + u32::from(o > 5)
    } else {
        8 + u32::from(i > 56) + u32::from(i > 57)
    }
}

/// How far a cell's head has matched `bshow`'s equations, in their order:
/// a bit `λλ1` / `λλ2`, then the byte pattern; the first token that rules
/// both out makes the head the first component of a pair, at once, as
/// Haskell's pattern match does.
#[derive(Clone, Copy)]
struct Pat {
    /// Tokens consumed.
    i: u8,
    /// The second token: `Lam` for the bit path, `App` for the byte path.
    path: Option<Tok>,
    ks: [u32; 8],
    x: i64,
}

enum Matched {
    More(Pat),
    Char(i64),
    /// Not a bit or a byte: the tokens consumed so far, the last one
    /// included, to replay into the pair's first component.
    Pair(Vec<Tok>),
}

impl Pat {
    fn new() -> Pat {
        Pat {
            i: 0,
            path: None,
            ks: [0; 8],
            x: 0,
        }
    }

    fn depth(&self) -> u32 {
        match self.path {
            None => u32::from(self.i),
            Some(Tok::Lam) => 2,
            Some(_) => byte_depth(self.i),
        }
    }

    /// The tokens this pattern has matched, rebuilt.
    fn replay(&self) -> Vec<Tok> {
        match self.path {
            None => vec![Tok::Lam; usize::from(self.i)],
            Some(Tok::Lam) => vec![Tok::Lam, Tok::Lam],
            Some(_) => (0..self.i)
                .map(|i| byte_template(i).unwrap_or_else(|| Tok::Var(self.ks[usize::from(i / 7)])))
                .collect(),
        }
    }

    fn push(mut self, tok: Tok) -> Matched {
        use Tok::*;
        let pair = |p: &Pat| {
            let mut toks = p.replay();
            toks.push(tok);
            Matched::Pair(toks)
        };
        match (self.i, self.path, tok) {
            (0, _, Lam) => {
                self.i = 1;
                Matched::More(self)
            }
            (1, None, Lam | App) => {
                self.i = 2;
                self.path = Some(tok);
                Matched::More(self)
            }
            (2, Some(Lam), Var(1)) => Matched::Char(i64::from(b'1')),
            (2, Some(Lam), Var(2)) => Matched::Char(i64::from(b'0')),
            (i, Some(App), _) => match (byte_template(i), tok) {
                (Some(want), got) if want == got => {
                    self.i += 1;
                    if self.i == BYTE_LEN {
                        Matched::Char(self.x)
                    } else {
                        Matched::More(self)
                    }
                }
                (None, Var(k)) => {
                    self.ks[usize::from(i / 7)] = k;
                    self.x = 2 * self.x + 1 - (i64::from(k) - 1);
                    self.i += 1;
                    Matched::More(self)
                }
                _ => pair(&self),
            },
            _ => pair(&self),
        }
    }
}

/// A cell's head against uni's shape: a bit `λλ1` / `λλ2`, or (bytes) a
/// list of bits, which the canonicalizer ends with the end marker (or
/// nil). `c` cells passed, `o` tokens into the current one, `x` the value.
#[derive(Clone, Copy)]
struct UniPat {
    bytes: bool,
    c: u32,
    o: u8,
    /// On the nil path (`λ λ 1`) of a byte, rather than a cell.
    nil: bool,
    x: u64,
}

enum UniMatched {
    More(UniPat),
    Done(u8),
    Bad,
}

impl UniPat {
    fn new(bytes: bool) -> UniPat {
        UniPat {
            bytes,
            c: 0,
            o: 0,
            nil: false,
            x: 0,
        }
    }

    fn depth(&self) -> u32 {
        if !self.bytes {
            return u32::from(self.o);
        }
        if self.nil {
            return self.c + u32::from(self.o);
        }
        self.c + u32::from(self.o > 0) + u32::from(self.o > 4) + u32::from(self.o > 5)
    }

    /// Is the cursor where a byte's list may end?
    fn at_boundary(&self) -> bool {
        self.bytes && self.o == 0
    }

    fn end(self) -> UniMatched {
        UniMatched::Done(self.x as u8)
    }

    fn push(mut self, tok: Tok) -> UniMatched {
        use Tok::*;
        if !self.bytes {
            return match (self.o, tok) {
                (0 | 1, Lam) => {
                    self.o += 1;
                    UniMatched::More(self)
                }
                (2, Var(1)) => UniMatched::Done(b'1'),
                (2, Var(2)) => UniMatched::Done(b'0'),
                _ => UniMatched::Bad,
            };
        }
        if self.nil {
            return match (self.o, tok) {
                (1, Lam) => {
                    self.o = 2;
                    UniMatched::More(self)
                }
                (2, Var(1)) => self.end(),
                _ => UniMatched::Bad,
            };
        }
        match (self.o, tok) {
            (0, Lam) | (4, Lam) | (5, Lam) | (2, App) | (3, Var(1)) => {
                self.o += 1;
                UniMatched::More(self)
            }
            (1, App) => {
                self.o = 2;
                UniMatched::More(self)
            }
            (1, Lam) => {
                self.nil = true;
                self.o = 2;
                UniMatched::More(self)
            }
            (6, Var(k @ (1 | 2))) => {
                self.x = 2 * self.x + u64::from(k == 1);
                if self.x > 255 {
                    return UniMatched::Bad;
                }
                self.c += 1;
                self.o = 0;
                UniMatched::More(self)
            }
            _ => UniMatched::Bad,
        }
    }
}

/// Where the output goes, buffered, with a clock for the periodic flush.
struct Out<W: Write> {
    w: W,
    buf: Vec<u8>,
    last: Instant,
}

impl<W: Write> Out<W> {
    fn flush(&mut self) -> io::Result<()> {
        if !self.buf.is_empty() {
            self.w.write_all(&self.buf)?;
            self.buf.clear();
        }
        self.last = Instant::now();
        self.w.flush()
    }
}

/// A [`Sink`] that reads the normal form as output while the machine
/// produces it, writing the output to `W`.
///
/// It reads the normal form of `λm₁ … λm_k. M` for `k` *marker* binders
/// given to [`Reader::new`]: the markers are skipped, and if `M` ever uses
/// one, the read stops with [`ReadError::Marker`]. A marker stands for an
/// input value that would be an error if a lazy evaluator ever forced it
/// (Tromp's `run` on a byte that is not `0`/`1`, `runO` reading past the
/// end): a normal-order normal form contains the marker exactly when the
/// value is forced.
///
/// A list cell's head is held until it is complete and then written;
/// pairs `<x,y>` write `x` whole and stream `y`. Output is flushed every
/// 64 KiB and, while the machine runs, at least every 50 ms. A failed
/// write stops the machine (the reader polls as a [`Sink::CAN_ABORT`]
/// sink).
pub struct Reader<W: Write> {
    dialect: Dialect,
    markers: u32,
    // Marker binders not yet seen.
    skip: u32,
    // Bit-level tokenizer: a `0` waiting for its partner, or the `1`s of
    // a variable read so far.
    zero: bool,
    ones: u32,
    // Applications whose spine head has not arrived. A spine headed by a
    // marker is one erroneous node, so nothing may act on these until
    // its head shows whether it is one.
    apps: u32,
    frames: Vec<Frame>,
    // Cells of every frame below the top one: with the top frame's own
    // depth, the λ depth at the cursor, kept in O(1).
    below: u32,
    done: bool,
    out: RefCell<Out<W>>,
    polls: Cell<u32>,
    error: Rc<RefCell<Option<ReadError>>>,
    failed: Cell<bool>,
}

impl<W: Write> Reader<W> {
    pub fn new(dialect: Dialect, markers: u32, w: W) -> Self {
        Reader {
            dialect,
            markers,
            skip: markers,
            zero: false,
            ones: 0,
            apps: 0,
            frames: vec![Frame::new()],
            below: 0,
            done: false,
            out: RefCell::new(Out {
                w,
                buf: Vec::new(),
                last: Instant::now(),
            }),
            polls: Cell::new(0),
            error: Rc::new(RefCell::new(None)),
            failed: Cell::new(false),
        }
    }

    /// Has the whole output been read?
    pub fn is_done(&self) -> bool {
        self.done
    }

    /// Flush and hand back the writer, or say why the read stopped short:
    /// a decoding or write error, or [`ReadError::Incomplete`] if the
    /// normal form never finished.
    pub fn finish(self) -> Result<W, ReadError> {
        let mut out = self.out.into_inner();
        let flushed = out.flush();
        if let Some(e) = self.error.borrow_mut().take() {
            return Err(e);
        }
        flushed.map_err(ReadError::Io)?;
        if self.done {
            Ok(out.w)
        } else {
            Err(ReadError::Incomplete)
        }
    }

    fn fail(&mut self, e: ReadError) {
        if !self.failed.get() {
            *self.error.borrow_mut() = Some(e);
            self.failed.set(true);
        }
    }

    fn emit(&mut self, bytes: &[u8]) {
        let out = self.out.get_mut();
        out.buf.extend_from_slice(bytes);
        let flushed = if out.buf.len() >= 1 << 16 {
            out.flush()
        } else {
            Ok(())
        };
        if let Err(e) = flushed {
            self.fail(ReadError::Io(e));
        }
    }

    fn top(&mut self) -> &mut Frame {
        self.frames.last_mut().expect("a frame while not done")
    }

    fn flush_apps(&mut self) {
        for _ in 0..std::mem::take(&mut self.apps) {
            self.dispatch(Tok::App);
        }
    }

    fn token(&mut self, tok: Tok) {
        if self.failed.get() || self.done {
            return;
        }
        match tok {
            Tok::Lam if self.skip > 0 => self.skip -= 1,
            Tok::App => self.apps += 1,
            Tok::Lam => {
                // A spine headed by a lambda (only in a term that is not a
                // normal form) is no marker's: its applications go first.
                self.flush_apps();
                self.dispatch(tok);
            }
            Tok::Var(n) => {
                if self.markers > 0 {
                    // A variable reaching past every binder of the output
                    // itself is a marker (the output sits directly under
                    // the marker binders).
                    let local = self.below + self.frames.last().map_or(0, Frame::local);
                    if n > local && n - local <= self.markers {
                        return self.marker(self.markers - (n - local) + 1);
                    }
                }
                self.flush_apps();
                self.dispatch(tok);
            }
        }
    }

    /// A marker at the cursor. Under `blc run` it is the error. Under a
    /// `uni` dialect the one marker is the canonicalizer's end value: in
    /// the place of a list's end it ends that list, and anywhere else the
    /// output broke the protocol.
    fn marker(&mut self, level: u32) {
        if self.dialect != Dialect::Tromp && self.apps == 0 {
            match self.top().mode {
                Mode::Start(_, 0) => return self.end_frame(),
                Mode::UniHead(p) if p.at_boundary() => {
                    self.top().mode = Mode::Start([Tok::Lam; 4], 0);
                    let UniMatched::Done(c) = p.end() else {
                        unreachable!("a byte ends at a boundary")
                    };
                    return self.emit(&[c]);
                }
                _ => {}
            }
        }
        self.fail(ReadError::Marker(level));
    }

    /// Hand one token to the top frame.
    fn dispatch(&mut self, tok: Tok) {
        if self.failed.get() || self.done {
            return;
        }
        let dialect = self.dialect;
        let top = self.top();
        match std::mem::replace(&mut top.mode, Mode::Pair) {
            Mode::Start(mut seen, n) => {
                seen[usize::from(n)] = tok;
                let n = n + 1;
                use Tok::*;
                match &seen[..usize::from(n)] {
                    [Lam] | [Lam, Lam] | [Lam, App] | [Lam, App, App] => {
                        top.mode = Mode::Start(seen, n);
                    }
                    [Lam, Lam, Var(1)] => self.end_frame(),
                    [Lam, App, App, Var(1)] => {
                        top.cells += 1;
                        top.mode = match dialect {
                            Dialect::Tromp => Mode::Head(Pat::new()),
                            Dialect::UniBits => Mode::UniHead(UniPat::new(false)),
                            Dialect::UniBytes => Mode::UniHead(UniPat::new(true)),
                        };
                    }
                    _ if dialect != Dialect::Tromp => self.fail(ReadError::NotAList),
                    seen => {
                        // Neither nil nor a cell: `bshow`'s last equation,
                        // which writes its `(` before it looks further.
                        let mut b = Builder::default();
                        let mut whole = None;
                        for &t in seen {
                            whole = b.push(t);
                        }
                        self.emit(b"(");
                        match whole {
                            Some(t) => self.rest(&t),
                            None => self.top().mode = Mode::Rest(b),
                        }
                    }
                }
            }
            Mode::Head(p) => match p.push(tok) {
                Matched::More(p) => top.mode = Mode::Head(p),
                Matched::Char(c) => {
                    top.mode = Mode::Start([Tok::Lam; 4], 0);
                    let mut s = Vec::new();
                    match put_char(c, &mut s) {
                        Ok(()) => self.emit(&s),
                        Err(e) => self.fail(e),
                    }
                }
                Matched::Pair(toks) => {
                    // `"<" ++ bshow x ++ "," ++ bshow y ++ ">"`: the head is
                    // read by a frame of its own, from its first token.
                    top.closers += 1;
                    self.below += top.cells;
                    self.emit(b"<");
                    self.frames.push(Frame::new());
                    for t in toks {
                        self.dispatch(t);
                    }
                }
            },
            Mode::UniHead(p) => match p.push(tok) {
                UniMatched::More(p) => top.mode = Mode::UniHead(p),
                UniMatched::Done(c) => {
                    top.mode = Mode::Start([Tok::Lam; 4], 0);
                    self.emit(&[c]);
                }
                UniMatched::Bad => self.fail(if dialect == Dialect::UniBits {
                    ReadError::NotABit
                } else {
                    ReadError::NotAByte
                }),
            },
            Mode::Rest(mut b) => match b.push(tok) {
                None => top.mode = Mode::Rest(b),
                Some(t) => self.rest(&t),
            },
            Mode::Pair => unreachable!("a waiting frame is never on top"),
        }
    }

    /// A non-list subterm, complete: the rest of `(term)`.
    fn rest(&mut self, t: &Term) {
        let mut s = t.to_string().into_bytes();
        s.push(b')');
        self.emit(&s);
        self.end_frame();
    }

    /// The top frame's subterm has ended: pay its `>`s, and either finish
    /// or go on to the second component of the pair below.
    fn end_frame(&mut self) {
        let f = self.frames.pop().expect("a frame to end");
        let closers = vec![b'>'; f.closers];
        self.emit(&closers);
        match self.frames.last_mut() {
            None => self.done = true,
            Some(below) => {
                self.below -= below.cells;
                below.mode = Mode::Start([Tok::Lam; 4], 0);
                self.emit(b",");
            }
        }
    }
}

impl<W: Write> std::fmt::Debug for Reader<W> {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.debug_struct("Reader")
            .field("dialect", &self.dialect)
            .field("markers", &self.markers)
            .field("done", &self.is_done())
            .field("failed", &self.failed.get())
            .finish_non_exhaustive()
    }
}

impl<W: Write> Sink for Reader<W> {
    const CAN_ABORT: bool = true;

    fn zero(&mut self) {
        if self.ones > 0 {
            let n = std::mem::take(&mut self.ones);
            self.token(Tok::Var(n));
        } else if self.zero {
            self.zero = false;
            self.token(Tok::Lam);
        } else {
            self.zero = true;
        }
    }

    fn one(&mut self) {
        if self.zero {
            self.zero = false;
            self.token(Tok::App);
        } else {
            self.ones += 1;
        }
    }

    fn var(&mut self, n: u32) {
        debug_assert!(!self.zero && self.ones == 0, "a variable between tokens");
        self.token(Tok::Var(n));
    }

    fn idle(&self) {
        if self.failed.get() {
            return;
        }
        if let Err(e) = self.out.borrow_mut().flush() {
            *self.error.borrow_mut() = Some(ReadError::Io(e));
            self.failed.set(true);
        }
    }

    fn aborted(&self) -> bool {
        if self.failed.get() {
            return true;
        }
        let p = self.polls.get().wrapping_add(1);
        self.polls.set(p);
        // The machines poll every step (KN) or every 256 (lazy); either
        // way, look at the clock only now and then.
        if p & 0xFF == 0 {
            let mut out = self.out.borrow_mut();
            if !out.buf.is_empty() && out.last.elapsed() >= Duration::from_millis(50) {
                if let Err(e) = out.flush() {
                    *self.error.borrow_mut() = Some(ReadError::Io(e));
                    self.failed.set(true);
                    return true;
                }
            }
        }
        false
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::blc::enumerate::for_each_closed;

    fn stream(t: &Term, dialect: Dialect, markers: u32) -> Result<Vec<u8>, ReadError> {
        let mut r = Reader::new(dialect, markers, Vec::new());
        for c in t.to_bits().chars() {
            match c {
                '0' => r.zero(),
                _ => r.one(),
            }
        }
        r.finish()
    }

    /// Feed bits the way the machine does: `00`, `01`, and `var(n)`.
    fn stream_tokens(t: &Term, dialect: Dialect) -> Result<Vec<u8>, ReadError> {
        let mut r = Reader::new(dialect, 0, Vec::new());
        let mut work = vec![t];
        while let Some(t) = work.pop() {
            match t {
                Term::Var(n) => r.var(*n),
                Term::Lam(b) => {
                    r.zero();
                    r.zero();
                    work.push(b);
                }
                Term::App(f, a) => {
                    r.zero();
                    r.one();
                    work.push(a);
                    work.push(f);
                }
            }
        }
        r.finish()
    }

    #[test]
    fn bit_and_byte_lists_read_back() {
        let bs = [false, true, true, false];
        let show = |t: &Term| bshow(t).unwrap();
        assert_eq!(show(&bits(&bs, nil())), b"0110");
        assert_eq!(show(&bytes(b"hi\xff", nil())), b"hi\xff");
        assert_eq!(show(&nil()), b"");
        assert_eq!(show(&tru()), b"(\\\\2)");
        // A pair of lists, and a list ending in something else.
        let pair = list([bits(&[true, false], nil())], bits(&[false], nil()));
        assert_eq!(show(&pair), b"<10,0>");
        let odd = bits(&[true], tru());
        assert_eq!(show(&odd), b"1(\\\\2)");
        // Tromp's byte pattern takes any index: eight heads λx.λy.3 (the
        // variable of the cell around them) read as 1 - 2 = -1 each, so the
        // value is -255, which `chr` refuses.
        let raw_cell = |h: Term, t: Term| lam(app(app(var(1), h), t));
        let byte = (0..8).fold(nil(), |t, _| raw_cell(lam(lam(var(3))), t));
        let odd_byte = raw_cell(byte, nil());
        assert!(matches!(bshow(&odd_byte), Err(ReadError::BadChar(-255))));
    }

    #[test]
    fn open_items_are_shifted_under_their_cells() {
        // Under one outer binder, a list whose second item is that binder.
        let l = lam(list([tru(), var(1)], var(1)));
        assert_eq!(
            l,
            lam(lam(app(
                app(var(1), tru()),
                lam(app(app(var(1), var(3)), var(3)))
            )))
        );
    }

    /// The streaming reader agrees with `bshow` on every closed term up to
    /// 18 bits, plus a few long lists — through both ways bits arrive.
    #[test]
    fn streaming_matches_bshow() {
        let mut terms = Vec::new();
        for n in 4..=18 {
            for_each_closed(n, &mut |enc, len| {
                terms.push(crate::parse_all(&crate::blc::wire::enc_to_string(enc, len)).unwrap())
            });
        }
        terms.push(bytes(b"Hello, world!", nil()));
        terms.push(list(
            [bytes(b"ab", nil()), bits(&[true], tru())],
            bits(&[false, false], nil()),
        ));
        for t in &terms {
            match bshow(t) {
                Ok(want) => {
                    assert_eq!(stream(t, Dialect::Tromp, 0).unwrap(), want, "{t}");
                    assert_eq!(stream_tokens(t, Dialect::Tromp).unwrap(), want, "{t}");
                }
                Err(e) => {
                    let got = stream(t, Dialect::Tromp, 0);
                    assert!(
                        matches!(got, Err(ReadError::BadChar(_))),
                        "{t}: {e} vs {got:?}"
                    );
                }
            }
        }
    }

    #[test]
    fn uni_dialects_are_strict() {
        let b = bits(&[false, true], nil());
        assert_eq!(stream(&b, Dialect::UniBits, 0).unwrap(), b"01");
        assert!(matches!(
            stream(&tru(), Dialect::UniBits, 0),
            Err(ReadError::NotAList)
        ));
        let by = bytes(b"ok", nil());
        assert_eq!(stream(&by, Dialect::UniBytes, 0).unwrap(), b"ok");
        assert!(matches!(
            stream(&by, Dialect::UniBits, 0),
            Err(ReadError::NotABit)
        ));
        // uni reads a short bit list as a small byte, a long one only if
        // its value fits.
        let short = list([bits(&[true, false, true], nil())], nil());
        assert_eq!(stream(&short, Dialect::UniBytes, 0).unwrap(), [5]);
        let long = list([bits(&[true; 9], nil())], nil());
        assert!(matches!(
            stream(&long, Dialect::UniBytes, 0),
            Err(ReadError::NotAByte)
        ));
    }

    /// The output written before a marker stops the read is exactly
    /// what `blc run` writes before its error: `bshow` writes `(` and `<`
    /// as soon as a pattern fails, and a marker-headed spine is one
    /// erroneous node, met at its first token. Each case is `λm. M`.
    #[test]
    fn output_before_a_marker_is_trompian() {
        let raw_cell = |h: Term, t: Term| lam(app(app(var(1), h), t));
        let read = |body: Term| {
            let mut buf = Vec::new();
            let mut r = Reader::new(Dialect::Tromp, 1, &mut buf);
            for c in lam(body).to_bits().chars() {
                if c == '0' {
                    r.zero()
                } else {
                    r.one()
                }
            }
            let e = r.finish().map(|_| ()).unwrap_err();
            assert!(matches!(e, ReadError::Marker(1)), "{e}");
            buf
        };
        // m itself, m applied, and λλm: nothing is written.
        assert_eq!(read(var(1)), b"");
        assert_eq!(read(lam(app(var(2), var(1)))), b"");
        assert_eq!(read(lam(lam(var(3)))), b"");
        // A bit, then λλλm: not a list, so `(` goes out first.
        assert_eq!(read(raw_cell(tru(), lam(lam(lam(var(5)))))), b"0(");
        // A head that is no bit or byte opens a pair at once.
        assert_eq!(read(raw_cell(lam(lam(lam(var(5)))), nil())), b"<(");
    }

    #[test]
    fn markers_stop_the_read() {
        // λm. <cell 0, then m>: the marker is reached after one bit.
        let t = lam(list([tru()], var(1)));
        let mut r = Reader::new(Dialect::Tromp, 1, Vec::new());
        for c in t.to_bits().chars() {
            if c == '0' {
                r.zero()
            } else {
                r.one()
            }
        }
        assert!(matches!(r.finish(), Err(ReadError::Marker(1))));
        // A marker binder the body never uses is invisible.
        let t = lam(bits(&[true], nil()));
        assert_eq!(stream(&t, Dialect::Tromp, 1).unwrap(), b"1");
    }
}
