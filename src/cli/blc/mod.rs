//! `blam blc ACTION PROGFILE [ARGS...]` — John Tromp's `blc` tool
//! (`ref/AIT/Main.lhs`, `AIT.lhs`), action for action, without GHC.
//!
//! The program file is λ-notation as `blc` reads it, or — an extension —
//! a `.blc` / `.blc8` wire file. The `run` family applies the program to
//! stdin as a list (of bits for `run`, `runf` and `runO`, of bytes for
//! `run8`) and to each extra argument as a bit list, normalizes on the
//! call-by-need machine ([`blam::classical::lazy`], which shares work the
//! way `blc`'s Haskell evaluator does), and reads the normal form back the
//! way `blc` does ([`blam::classical::io`]), streaming as it goes. Actions that show or
//! encode the program first compile it with `optimize 57 2 1`, as `blc`
//! does; `nf`, `hnf` and the `run` family use the program as written.

mod comb;
mod diagram;
mod encode;

use crate::args::{self, R};
use crate::feed::{Feed, Stdin};
use crate::program::{self, Program};
use blam::blc::notation::{optimize, Expr};
use blam::blc::Term;
use blam::classical::io::{Dialect, ReadError, Reader};
use blam::classical::lazy::{Item as LazyItem, Lazy, Limits, Stop};
use blam::classical::machine::{Node, Pool, SizeSink, StringSink};
use std::io::Write;

const USAGE: &str = "\
blam blc — John Tromp's blc tool, action for action

usage: blam blc ACTION PROGFILE [ARGS...] [--beta N] [--steps N] [--live N]

PROGFILE is λ-notation (Tromp's .lam syntax), or a .blc / .blc8 wire file.
ARGS are bit strings, applied after the input as bit lists.

  run      run the program on standard input bits and ARGS; print the output
  run8     run the program on standard input bytes and ARGS
  runf     like run, but print the whole normal form in de Bruijn notation
  runO     like run, but reading past the end of the input is an error
  print    show the program
  db       show the program in de Bruijn notation
  printlc  show the compiled program in de Bruijn notation
  nf       show the normal form
  hnf      show the head normal form
  nf_size  show the size of the normal form in bits
  blc      encode as binary lambda calculus bits
  blc2     encode with Levenshtein-coded de Bruijn indices
  size     show the size in bits
  size2    show the size with Levenshtein-coded indices
  size0    show the size with Mateusz's context-sensitive encoding
  comb     show the translation to combinatory logic
  combOK   show Oleg Kiselyov's translation to combinatory logic
  comb_nf  normal form through SK reduction
  bcw      show the translation to BCW combinators
  bcl      encode in binary combinatory logic
  blcOK    encode Kiselyov's translation as lambda calculus bits
  diagram  show the ASCII lambda diagram (Diagram: the alternative style)
  boxchar  show the box-drawing lambda diagram (Boxchar: alternative)
  pbm      show the diagram as a portable bitmap (Pbm: alternative)
  tex      show the program as TeX
  html     show the program as HTML (nfhtml: the normal form)
  help     show this text

Normalizing actions run on blam's call-by-need machine, with budgets
--beta N (beta-steps, default none), --steps N (machine steps, default
none) and --live N (live heap objects, default 2^26, a few GB). An endless
output streams until a budget stops it, or until its reader closes the pipe.";

/// The machines and readers are iterative, but the optimizer, the
/// combinator translations and the diagrams recurse on term structure, so
/// the command runs on a thread with a large stack.
pub fn run(argv: &[String]) -> R<()> {
    let argv = argv.to_vec();
    std::thread::Builder::new()
        .stack_size(1 << 30)
        .spawn(move || dispatch(&argv))
        .map_err(|e| format!("blam blc: cannot start the worker thread: {e}"))?
        .join()
        .map_err(|_| "blam blc: the worker thread panicked".to_string())?
}

/// Normalization budgets shared by `blc` and `uni`: the call-by-need
/// machine's [`Limits`], from flags.
#[derive(Clone, Copy, Default)]
pub struct Budget(pub Limits);

impl Budget {
    pub fn parse_flag<'a>(&mut self, p: &mut args::Args<'a>, tok: &'a str) -> R<bool> {
        match tok {
            "--beta" => self.0.beta = p.num(tok)?,
            "--steps" => self.0.work = p.num(tok)?,
            "--live" => self.0.live = p.num(tok)?,
            _ => return Ok(false),
        }
        Ok(true)
    }

    /// Why a run produced no (complete) normal form, for the user.
    fn stopped(&self, cmd: &str, e: Stop) -> String {
        let hint = match e {
            Stop::Beta => format!(" after {} beta-steps; raise --beta", self.0.beta),
            Stop::Work => format!(" after {} steps; raise --steps", self.0.work),
            Stop::Memory => format!(" at {} live objects; raise --live", self.0.live),
            Stop::Loop | Stop::Aborted => String::new(),
        };
        match e {
            Stop::Loop => format!("blam {cmd}: no normal form: {e}"),
            _ => format!("blam {cmd}: stopped: {e}{hint}"),
        }
    }
}

fn dispatch(argv: &[String]) -> R<()> {
    // No arguments shows the actions, as `blc` does.
    if argv.is_empty() || args::wants_help(argv) || argv.first().is_some_and(|a| a == "help") {
        println!("{USAGE}");
        return Ok(());
    }
    let mut budget = Budget::default();
    let mut p = args::Args::new("blc", argv);
    while let Some(tok) = p.next() {
        if budget.parse_flag(&mut p, tok)? {
            continue;
        }
        if tok.starts_with("--") {
            return Err(p.unknown(tok));
        }
        p.push(tok);
    }
    let pos = p.positional();
    let (action, file, extra) = match pos {
        [] => return Err(format!("blam blc: missing ACTION\n{}", args::hint("blc"))),
        [_] => return Err(format!("blam blc: missing PROGFILE\n{}", args::hint("blc"))),
        [a, f, rest @ ..] => (*a, *f, rest),
    };
    if !ACTIONS.contains(&action) {
        return Err(format!(
            "blam blc: action `{action}` not recognized\n{}",
            args::hint("blc")
        ));
    }
    let prog = program::load_file("blc", file)?;
    let mut out = std::io::stdout().lock();
    let w = |out: &mut std::io::StdoutLock, s: &[u8]| {
        out.write_all(s)
            .and_then(|_| out.flush())
            .map_err(|e| format!("blam blc: writing the output: {e}"))
    };
    match action {
        "run" | "runf" | "runO" | "run8" => {
            let term = prog.term("blc", file)?;
            run_action(action, &term, extra, budget)
        }
        "print" => w(&mut out, format!("{}\n", source(&prog, file)?).as_bytes()),
        "db" => w(
            &mut out,
            format!("{}\n", prog.term("blc", file)?).as_bytes(),
        ),
        "nf" | "nfhtml" => {
            let nf = normal_form(&prog.term("blc", file)?, budget, "blc")?;
            let shown = nf.to_string();
            let shown = if action == "nf" { shown } else { html(&shown) };
            w(&mut out, format!("{shown}\n").as_bytes())
        }
        "hnf" => {
            let t = prog.term("blc", file)?;
            let h = encode::hnf(&t, budget.0.beta)
                .ok_or_else(|| budget.stopped("blc hnf", Stop::Beta))?;
            w(&mut out, format!("{h}\n").as_bytes())
        }
        "nf_size" => {
            let t = prog.term("blc", file)?;
            let mut pool = Pool::new();
            let root = pool.from_term(&t);
            let mut sink = SizeSink::default();
            Lazy::new()
                .normalize(&pool, root, budget.0, &mut sink)
                .map_err(|e| budget.stopped("blc nf_size", e))?;
            w(&mut out, format!("{}\n", sink.0).as_bytes())
        }
        "comb_nf" => {
            let t = prog.term("blc", file)?;
            w(&mut out, format!("{}\n", comb::comb_nf(&t)?).as_bytes())
        }
        _ => {
            // Everything else shows or encodes the compiled program.
            let t = optimize(&prog.term("blc", file)?, 57, 2, 1)
                .swap_remove(0)
                .0;
            let s: Vec<u8> = match action {
                "printlc" => format!("{t}\n").into_bytes(),
                "tex" => format!("{}\n", t.to_string().replace('\\', "\\lambda ")).into_bytes(),
                "html" => format!("{}\n", html(&t.to_string())).into_bytes(),
                "blc" => t.to_bits().into_bytes(),
                "blc2" => encode::blc2(&t).into_bytes(),
                "size" => format!("{}\n", t.bit_size()).into_bytes(),
                "size2" => format!("{}\n", encode::blc2(&t).len()).into_bytes(),
                "size0" => format!("{}\n", encode::blc0(&t)?.len()).into_bytes(),
                "comb" => format!("{}\n", comb::comb(&t)).into_bytes(),
                "combOK" => format!("{}\n", comb::comb_ok(&t)?).into_bytes(),
                "blcOK" => comb::blc_ok(&t)?.into_bytes(),
                "bcw" => format!("{}\n", comb::bcw(&t)).into_bytes(),
                "bcl" => comb::bcl(&t)?.into_bytes(),
                "diagram" => diagram::ascii(&t, false).into_bytes(),
                "Diagram" => diagram::ascii(&t, true).into_bytes(),
                "boxchar" => diagram::boxchar(&t, false)?.into_bytes(),
                "Boxchar" => diagram::boxchar(&t, true)?.into_bytes(),
                "pbm" => diagram::pbm(&t, false).into_bytes(),
                "Pbm" => diagram::pbm(&t, true).into_bytes(),
                _ => unreachable!("every action is matched"),
            };
            w(&mut out, &s)
        }
    }
}

const ACTIONS: &[&str] = &[
    "run", "runf", "runO", "run8", "print", "db", "nf", "hnf", "nf_size", "comb_nf", "comb",
    "combOK", "blcOK", "bcw", "bcl", "diagram", "Diagram", "boxchar", "Boxchar", "pbm", "Pbm",
    "tex", "nfhtml", "html", "printlc", "blc", "blc2", "size", "size2", "size0", "help",
];

/// `html`: every `\` becomes `λ `.
fn html(s: &str) -> String {
    s.replace('\\', "λ ")
}

/// The program as `blc print` shows it: the parsed λ-notation, or for a
/// wire file the term with each binder named by its depth (Tromp's
/// `toLC` naming).
fn source(prog: &Program, file: &str) -> R<Expr> {
    match prog {
        Program::Source(e) => Ok(e.clone()),
        Program::Term(_) => {
            let t = prog.term("blc", file)?;
            Ok(named(&t))
        }
    }
}

fn named(t: &Term) -> Expr {
    fn go(t: &Term, depth: u32) -> Expr {
        match t {
            Term::Var(n) => Expr::Var((depth - n).to_string()),
            Term::Lam(b) => Expr::Lam(depth.to_string(), Box::new(go(b, depth + 1))),
            Term::App(f, a) => Expr::App(Box::new(go(f, depth)), Box::new(go(a, depth))),
        }
    }
    go(t, 0)
}

/// The normal form as a term, on the call-by-need machine.
pub fn normal_form(t: &Term, budget: Budget, cmd: &str) -> R<Term> {
    let mut pool = Pool::new();
    let root = pool.from_term(t);
    let mut sink = StringSink::default();
    Lazy::new()
        .normalize(&pool, root, budget.0, &mut sink)
        .map_err(|e| budget.stopped(cmd, e))?;
    Ok(blam::parse_all(&sink.0).expect("the machine emits one well-formed term"))
}

/// What a marker binder stands for: an input value whose evaluation is an
/// error in `blc` (a Haskell `error` thunk).
#[derive(Clone, Copy, PartialEq, Eq)]
enum Marker {
    BadChar,
    PastEnd,
}

impl Marker {
    fn message(self) -> &'static str {
        match self {
            Marker::BadChar => "the program read an input character that is not 0 or 1",
            Marker::PastEnd => "the program read past the end of its input (runO's Omega)",
        }
    }
}

/// One element of an argument's bit list: a bit, or an error marker.
enum Item {
    Bit(bool),
    Marker(Marker),
}

/// Builds input lists straight into a machine pool, sharing every closed
/// piece: one node each for the bits and for the cell variable, one list per
/// byte value, so a cell costs three nodes. (Built as `Term`s first, a byte
/// of input cost about sixty.)
pub struct Lists<'p> {
    pool: &'p mut Pool,
    z: u32,
    tru: u32,
    nil: u32,
    bytes: Vec<Option<u32>>,
}

impl<'p> Lists<'p> {
    pub fn new(pool: &'p mut Pool) -> Self {
        let z = pool.push(Node::Var(1));
        let two = pool.push(Node::Var(2));
        let l = pool.push(Node::Lam(two));
        let tru = pool.push(Node::Lam(l));
        let l = pool.push(Node::Lam(z));
        let nil = pool.push(Node::Lam(l));
        Lists {
            pool,
            z,
            tru,
            nil,
            bytes: vec![None; 256],
        }
    }

    pub fn nil(&self) -> u32 {
        self.nil
    }

    pub fn bit(&self, b: bool) -> u32 {
        if b {
            self.nil
        } else {
            self.tru
        }
    }

    pub fn byte(&mut self, c: u8) -> u32 {
        if let Some(id) = self.bytes[usize::from(c)] {
            return id;
        }
        let mut acc = self.nil;
        for j in 0..8 {
            let b = self.bit(c >> j & 1 == 1);
            acc = self.cell(b, acc);
        }
        self.bytes[usize::from(c)] = Some(acc);
        acc
    }

    /// `λz. z head tail`.
    pub fn cell(&mut self, head: u32, tail: u32) -> u32 {
        let a = self.pool.push(Node::App(self.z, head));
        let a = self.pool.push(Node::App(a, tail));
        self.pool.push(Node::Lam(a))
    }

    /// A list of heads ending in `end`, built from the back. `head(k)` and
    /// `end` are node ids valid at the depth they land at; `head` gets the
    /// cell's 0-based position so an open head can be indexed for it.
    pub fn list(
        &mut self,
        n: usize,
        mut head: impl FnMut(&mut Self, usize) -> u32,
        end: u32,
    ) -> u32 {
        let mut acc = end;
        for k in (0..n).rev() {
            let h = head(self, k);
            acc = self.cell(h, acc);
        }
        acc
    }

    pub fn push(&mut self, node: Node) -> u32 {
        self.pool.push(node)
    }

    /// The cell template `λz. z 2 3` of a lazily read input list: its free
    /// variables are a cell's head and tail ([`Lazy::normalize_input`]).
    pub fn template(&mut self) -> u32 {
        let h = self.pool.push(Node::Var(2));
        let t = self.pool.push(Node::Var(3));
        let a = self.pool.push(Node::App(self.z, h));
        let a = self.pool.push(Node::App(a, t));
        self.pool.push(Node::Lam(a))
    }
}

/// The run family's term, `λI. λm… . (P I) arg₁ … argₖ`, built into `pool`:
/// the input `I` is read lazily ([`Lazy::normalize_input`]); the marker
/// binders are `BadChar` (stdin may hold any byte; an unused binder is
/// harmless) and, for `runO`, `PastEnd`. Arguments are finite bit lists.
struct Applied {
    root: u32,
    cell: u32,
    tru: u32,
    nil: u32,
    bytes: Vec<u32>,
    markers: Vec<Marker>,
}

impl Applied {
    fn level(&self, m: Marker) -> u32 {
        self.markers
            .iter()
            .position(|&x| x == m)
            .expect("a marker of this run") as u32
            + 1
    }
}

fn applied(pool: &mut Pool, prog: &Term, run_o: bool, args: &[Vec<Item>]) -> Applied {
    let markers = if run_o {
        vec![Marker::BadChar, Marker::PastEnd]
    } else {
        vec![Marker::BadChar]
    };
    let w = markers.len() as u32;
    // Marker `m`'s variable under `cells` list binders, just inside the
    // marker binders.
    let index = |m: Marker, cells: u32| {
        let level = markers.iter().position(|&x| x == m).expect("noted") as u32 + 1;
        cells + w - level + 1
    };
    let prog = pool.from_term(prog);
    let mut lists = Lists::new(pool);
    let bytes: Vec<u32> = (0..=255).map(|c| lists.byte(c)).collect();
    let cell = lists.template();
    let mut t = {
        // `I`, from inside the marker binders.
        let i = lists.push(Node::Var(w + 1));
        lists.push(Node::App(prog, i))
    };
    for items in args {
        let nil = lists.nil();
        let a = lists.list(
            items.len(),
            |l, k| match items[k] {
                Item::Bit(b) => l.bit(b),
                // Cell k's head sits under k + 1 cell binders.
                Item::Marker(m) => l.push(Node::Var(index(m, k as u32 + 1))),
            },
            nil,
        );
        t = lists.push(Node::App(t, a));
    }
    for _ in 0..w {
        t = lists.push(Node::Lam(t));
    }
    let root = lists.push(Node::Lam(t));
    let (tru, nil) = (lists.bit(false), lists.nil());
    Applied {
        root,
        cell,
        tru,
        nil,
        bytes,
        markers,
    }
}

fn bit_items(s: &[u8]) -> Vec<Item> {
    s.iter()
        .map(|&c| match c {
            b'0' => Item::Bit(false),
            b'1' => Item::Bit(true),
            _ => Item::Marker(Marker::BadChar),
        })
        .collect()
}

fn run_action(action: &str, prog: &Term, extra: &[&str], budget: Budget) -> R<()> {
    let args: Vec<Vec<Item>> = extra.iter().map(|a| bit_items(a.as_bytes())).collect();
    let mut pool = Pool::new();
    let ap = applied(&mut pool, prog, action == "runO", &args);
    let bad = LazyItem::Marker(ap.level(Marker::BadChar));
    let end = if action == "runO" {
        LazyItem::Marker(ap.level(Marker::PastEnd))
    } else {
        LazyItem::Term(ap.nil)
    };
    let (tru, nil, bytes8) = (ap.tru, ap.nil, ap.bytes.clone());
    let byte_mode = action == "run8";
    let mut feed = Feed {
        stdin: Stdin::new(Vec::new()),
        item: move |c: u8| {
            if byte_mode {
                LazyItem::Term(bytes8[usize::from(c)])
            } else {
                match c {
                    b'0' => LazyItem::Term(tru),
                    b'1' => LazyItem::Term(nil),
                    _ => bad,
                }
            }
        },
        end,
    };
    let k = ap.markers.len() as u32;
    let mut vm = Lazy::new();
    let cmd = format!("blc {action}");
    if action == "runf" {
        // Watch for markers while the normal form streams, not after: an
        // input error must surface even when another part of the normal
        // form never finishes (Haskell meets the error first).
        let mut sink = Marked::new(k);
        let r = vm.normalize_input(&pool, ap.root, ap.cell, k, &mut feed, budget.0, &mut sink);
        if let Some(level) = sink.hit {
            return Err(format!(
                "blam {cmd}: {}",
                ap.markers[level as usize - 1].message()
            ));
        }
        r.map_err(|e| budget.stopped(&cmd, e))?;
        let mut nf = blam::parse_all(&sink.bits).expect("the machine emits one term");
        for _ in 0..k {
            nf = match nf {
                Term::Lam(ref b) => (**b).clone(),
                _ => unreachable!("the markers' binders survive normalization"),
            };
        }
        println!("{nf}");
        return Ok(());
    }
    let mut reader = Reader::new(Dialect::Tromp, k, std::io::stdout().lock());
    let r = vm.normalize_input(&pool, ap.root, ap.cell, k, &mut feed, budget.0, &mut reader);
    finish_read(&cmd, reader, r, budget, &ap.markers, true)
}

/// Report a streamed run's outcome. Output already written stays written.
fn finish_read<W: Write>(
    cmd: &str,
    reader: Reader<W>,
    r: Result<blam::classical::lazy::Stats, Stop>,
    budget: Budget,
    markers: &[Marker],
    newline: bool,
) -> R<()> {
    match (reader.finish(), r) {
        (Ok(mut w), Ok(_)) => {
            if newline {
                w.write_all(b"\n")
                    .and_then(|_| w.flush())
                    .map_err(|e| format!("blam {cmd}: writing the output: {e}"))?;
            }
            Ok(())
        }
        // A closed pipe is the reader's way of saying it has enough.
        (Err(ReadError::Io(e)), _) if e.kind() == std::io::ErrorKind::BrokenPipe => Ok(()),
        (Err(ReadError::Marker(k)), _) => Err(format!(
            "\nblam {cmd}: {}",
            markers[k as usize - 1].message()
        )),
        (Err(ReadError::Incomplete), Err(e)) => Err(format!("\n{}", budget.stopped(cmd, e))),
        (Err(e), _) => Err(format!("\nblam {cmd}: {e}")),
        (Ok(_), Err(e)) => Err(format!("\n{}", budget.stopped(cmd, e))),
    }
}

/// A materializing sink that stops the run at the first variable bound by
/// one of the `markers` outermost binders, recording which (1-based,
/// outermost first).
struct Marked {
    bits: String,
    markers: u32,
    // Bit-level tokens: a pending `0`; then the structure, for the λ depth.
    zero: bool,
    frames: Vec<u8>,
    depth: u32,
    hit: Option<u32>,
}

impl Marked {
    fn new(markers: u32) -> Self {
        Marked {
            bits: String::new(),
            markers,
            zero: false,
            frames: Vec::new(),
            depth: 0,
            hit: None,
        }
    }
}

impl blam::classical::machine::Sink for Marked {
    const CAN_ABORT: bool = true;

    fn zero(&mut self) {
        self.bits.push('0');
        if self.zero {
            self.zero = false;
            self.frames.push(0);
            self.depth += 1;
        } else {
            self.zero = true;
        }
    }

    fn one(&mut self) {
        self.bits.push('1');
        debug_assert!(self.zero, "the machines emit `1` only in `01`");
        self.zero = false;
        self.frames.push(2);
    }

    /// Amortized O(1): each frame is pushed once and popped once.
    fn var(&mut self, n: u32) {
        self.bits.extend(std::iter::repeat_n('1', n as usize));
        self.bits.push('0');
        if n <= self.depth && self.hit.is_none() {
            let level = self.depth + 1 - n;
            if level <= self.markers {
                self.hit = Some(level);
            }
        }
        while let Some(top) = self.frames.last_mut() {
            match *top {
                0 => {
                    self.frames.pop();
                    self.depth -= 1;
                }
                2 => {
                    *top = 1;
                    break;
                }
                _ => {
                    self.frames.pop();
                }
            }
        }
    }

    fn aborted(&self) -> bool {
        self.hit.is_some()
    }
}

/// `uni`'s run: the call-by-need machine on lazily read input, read back
/// under a `uni` dialect.
pub fn run_uni<F: FnMut(u8) -> LazyItem>(
    cmd: &str,
    pool: &Pool,
    root: u32,
    cell: u32,
    feed: &mut Feed<F>,
    bytemode: bool,
    budget: Budget,
) -> R<()> {
    let dialect = if bytemode {
        Dialect::UniBytes
    } else {
        Dialect::UniBits
    };
    // Four marker binders: the canonicalizer's constructors E, C, T, F
    // (`src/cli/uni.rs`), which the uni dialects read as the output itself.
    let mut reader = Reader::new(dialect, 4, std::io::stdout().lock());
    let r = Lazy::new().normalize_input(pool, root, cell, 4, feed, budget.0, &mut reader);
    finish_read(cmd, reader, r, budget, &[], false)
}
