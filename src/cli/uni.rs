//! `blam uni [-b] [PROGRAM...]` — Tromp's universal machine `uni`
//! (`ref/AIT/uni.c`), on blam's call-by-need machine.
//!
//! With no PROGRAM, standard input holds the program followed by its
//! input: in byte mode (the default) the program is read from the bits of
//! the bytes, most significant first, and the rest of its last byte is
//! skipped; in bit mode (`-b`) each byte is one bit, its lowest. The bytes
//! (or, in bit mode, the bits) that follow are the program's input list.
//! The output is read the way uni reads it: by application. A list is
//! anything that, given a handler and an end value, calls the handler on
//! a head and a tail or returns the end; a bit is anything that, given
//! two values and a dummy, picks one; a byte is a list of bits. So
//! `λx.λy.λz.x z` is the bit 0, as it is to uni, though its normal form
//! is not `λx.λy.x`. The machine normalizes the output under a
//! canonicalizer term that performs exactly those applications, lazily,
//! and the result is written raw. A byte worth more than 255 is an error,
//! as in uni.py and uni.rs (uni.c keeps its low eight bits).
//!
//! PROGRAM arguments name the program instead, as files or, as uni.c
//! does, as `$BLCPATH/NAME.blc8` (`NAME.blc` under `-b`); several compose
//! left to right, each reading the previous one's output, and standard
//! input is then all input. A file is read as uni.c reads it, so whatever
//! follows the program in it — whitespace too — is input, which comes
//! before standard input (uni.c's embedded input); in a composition that
//! is an error. `.lam` files are λ-notation, and a `.blc` file in byte
//! mode is ASCII bits, all of it the program.
//!
//! Standard input is read lazily, as the program demands it, as uni does.

use crate::args::{self, R};
use crate::blc::{self, Budget};
use crate::feed::{Feed, Stdin};
use crate::program::{self, unpack};
use blam::blc::{app, lam, var, Term};
use blam::classical::io;
use blam::classical::lazy::Item;
use blam::classical::machine::{Node, Pool};
use blam::parse_prefix;

const USAGE: &str = "\
blam uni — John Tromp's universal machine uni

usage: blam uni [-b] [PROGRAM...] [--beta N] [--steps N] [--live N]

  -b         bit mode: one bit per input byte (its lowest), output 0/1
             characters; the default is byte mode
  PROGRAM    a program file, or NAME for $BLCPATH/NAME.blc8 (.blc with -b);
             several run as a pipeline, left to right
  --beta N   beta-step budget (default: none)
  --steps N  machine-step budget (default: none)
  --live N   live heap objects (default 2^26, a few GB)

Without PROGRAM, standard input is the program followed by its input,
the way uni reads it: `cat prog.blc8 input | blam uni`. Input is read as
the program demands it.";

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut budget = Budget::default();
    let mut bitmode = false;
    let mut p = args::Args::new("uni", argv);
    while let Some(tok) = p.next() {
        if budget.parse_flag(&mut p, tok)? {
            continue;
        }
        match tok {
            "-b" => {
                p.flag(tok)?;
                bitmode = true;
            }
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    let named: Vec<(Term, Vec<u8>)> = p
        .positional()
        .iter()
        .map(|name| named(name, bitmode))
        .collect::<R<_>>()?;
    if named.len() > 1 && named.iter().any(|(_, embedded)| !embedded.is_empty()) {
        return Err(format!(
            "blam uni: program input gets misplaced in composition: a program \
             file carries input after its program\n{}",
            args::hint("uni")
        ));
    }
    // Program first, if it comes on stdin; the rest of stdin is input,
    // read as the program demands it.
    let (progs, prefix, mut stdin) = if named.is_empty() {
        let mut stdin = Stdin::new(Vec::new());
        let prog = from_stdin(&mut stdin, bitmode)?;
        (vec![prog], Vec::new(), stdin)
    } else {
        let mut prefix = Vec::new();
        let progs = named
            .into_iter()
            .map(|(t, embedded)| {
                prefix.extend_from_slice(&embedded);
                t
            })
            .collect();
        (progs, prefix, Stdin::new(Vec::new()))
    };
    if !prefix.is_empty() {
        stdin = Stdin::new(prefix);
    }
    let mut pool = Pool::new();
    let canon = pool.from_term(&canonicalizer(bitmode));
    let progs: Vec<u32> = progs.iter().map(|p| pool.from_term(p)).collect();
    let mut lists = blc::Lists::new(&mut pool);
    let nil = lists.nil();
    let bits = [lists.bit(false), lists.bit(true)];
    let bytes: Vec<u32> = (0..=255).map(|c| lists.byte(c)).collect();
    let cell = lists.template();
    // `λI. λE. canon (pₙ (… (p₁ I)))`: the programs are closed, `canon`
    // refers to `E`, and `I` is the lazily read input.
    let i = lists.push(Node::Var(2));
    let out = progs
        .into_iter()
        .fold(i, |acc, p| lists.push(Node::App(p, acc)));
    let body = lists.push(Node::App(canon, out));
    let under_e = lists.push(Node::Lam(body));
    let root = lists.push(Node::Lam(under_e));
    let mut feed = Feed {
        stdin,
        item: move |c: u8| {
            Item::Term(if bitmode {
                bits[usize::from(c & 1)]
            } else {
                bytes[usize::from(c)]
            })
        },
        end: Item::Term(nil),
    };
    blc::run_uni("uni", &pool, root, cell, &mut feed, !bitmode, budget)
}

/// `Y`.
fn y() -> Term {
    let w = lam(app(var(2), app(var(1), var(1))));
    lam(app(w.clone(), w))
}

/// `clist e`, for use under the end-marker binder `E`: rebuild a list the
/// way uni walks one, applying it to a handler and the end value, with `e`
/// applied to each head: `Y (λrec.λl. l (λh.λt.λ_. cons (e h) (rec t)) E)`.
/// `depth` is the number of binders between this term and `E`.
fn clist(e: Term, depth: u32) -> Term {
    // Inside the cell `λz. z (e h) (rec t)`: z=1, _=2, t=3, h=4, l=5, rec=6.
    let cell = lam(app(app(var(1), app(e, var(4))), app(var(6), var(3))));
    let handler = lam(lam(lam(cell)));
    // Inside `λrec.λl`, E sits two binders further out.
    let body = lam(lam(app(app(var(1), handler), var(depth + 3))));
    app(y(), body)
}

/// uni's output decoder as a term, to be applied to the output under one
/// end-marker binder: `λh. h (K true) (K false) I` for each bit, inside
/// one `clist` for bit mode and two for byte mode. A list ends where it
/// returns the end value, so the canonical output ends with the marker;
/// an output that uses the end value any other way broke the protocol.
pub fn canonicalizer(bitmode: bool) -> Term {
    let k = |t: Term| app(lam(lam(var(2))), t);
    let bit = lam(app(
        app(app(var(1), k(io::tru())), k(io::nil())),
        lam(var(1)),
    ));
    if bitmode {
        clist(bit, 0)
    } else {
        // The inner list sits under the outer one's six binders (rec, l,
        // h, t, _, z).
        clist(clist(bit, 6), 0)
    }
}

/// A PROGRAM argument — a file, or uni.c's `$BLCPATH/NAME.blc[8]` — and
/// any input embedded after the program in that file.
fn named(name: &str, bitmode: bool) -> R<(Term, Vec<u8>)> {
    let path = if std::path::Path::new(name).is_file() {
        name.to_string()
    } else {
        let ext = if bitmode { "blc" } else { "blc8" };
        match std::env::var("BLCPATH") {
            Ok(dir) => format!("{dir}/{name}.{ext}"),
            Err(_) => {
                return Err(format!(
                    "blam uni: `{name}` is not a file, and BLCPATH is not set to look up \
                     {name}.{ext}\n{}",
                    args::hint("uni")
                ))
            }
        }
    };
    let ext = std::path::Path::new(&path)
        .extension()
        .and_then(|e| e.to_str())
        .map(str::to_string);
    let fail = |m: &str| format!("blam uni: {path}: {m}\n{}", args::hint("uni"));
    if ext.as_deref() == Some("lam") {
        let t = program::load_file("uni", &path)?.term("uni", &path)?;
        return Ok((t, Vec::new()));
    }
    let bytes = std::fs::read(&path).map_err(|e| fail(&e.to_string()))?;
    // As uni.c reads a program file: under `-b` one bit per byte (its
    // lowest), otherwise the bits of the bytes, most significant first,
    // the last byte's spare bits skipped. Whatever follows the program —
    // whitespace too — is input. The one extension: a `.blc` file (ASCII
    // bits) in byte mode is read as ASCII bits, all of it the program.
    let (t, used) = if bitmode {
        let mut bits = bytes.iter().map(|&c| c & 1 == 1);
        let t = parse_prefix(&mut bits).map_err(|e| fail(&e.to_string()))?;
        let used = bytes.len() - bits.count();
        (t, used)
    } else if ext.as_deref() == Some("blc") {
        let src = std::str::from_utf8(&bytes).map_err(|e| fail(&e.to_string()))?;
        (
            blam::parse_all(src).map_err(|e| fail(&e.to_string()))?,
            bytes.len(),
        )
    } else {
        let mut bits = unpack(&bytes);
        let t = parse_prefix(&mut bits).map_err(|e| fail(&e.to_string()))?;
        let used_bits = bytes.len() * 8 - bits.count();
        (t, used_bits.div_ceil(8))
    };
    Ok((closed(t)?, bytes[used..].to_vec()))
}

/// Parse the program off the front of stdin, reading only its bytes: in
/// byte mode the rest of its last byte is skipped, as uni does.
fn from_stdin(stdin: &mut Stdin, bitmode: bool) -> R<Term> {
    let eof = || {
        format!(
            "blam uni: standard input ends inside the program\n{}",
            args::hint("uni")
        )
    };
    let mut cur = 0u8;
    let mut left = 0u32;
    let mut none = || {};
    let mut bits = std::iter::from_fn(|| {
        if bitmode {
            return stdin.byte(&mut none).map(|c| c & 1 == 1);
        }
        if left == 0 {
            cur = stdin.byte(&mut none)?;
            left = 8;
        }
        left -= 1;
        Some(cur >> left & 1 == 1)
    });
    let t = parse_prefix(&mut bits).map_err(|_| eof())?;
    closed(t)
}

fn closed(t: Term) -> R<Term> {
    match t.max_free(0) {
        0 => Ok(t),
        k => Err(format!(
            "blam uni: the program is an open term (free index {k})\n{}",
            args::hint("uni")
        )),
    }
}
