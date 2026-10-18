//! Programs as users hand them over: wire bits on the command line,
//! λ-notation on the command line, or a file in one of tromp/AIT's three
//! formats.
//!
//! A file's format follows its extension — `.lam` is λ-notation, `.blc`
//! ASCII bits, `.blc8` and `.Blc` packed bytes (MSB first) — and an
//! extensionless file is sniffed: only `0`, `1` and whitespace means ASCII
//! bits, other valid UTF-8 means λ-notation, anything else packed bytes.

use crate::args::{hint, R};
use blam::blc::notation::{self, Expr, LamError};
use blam::{parse_all, parse_prefix, Term};
use std::path::Path;

/// A loaded program. λ-notation keeps its names, for `blc print`.
pub enum Program {
    Source(Expr),
    Term(Term),
}

impl Program {
    /// The program as a closed de Bruijn term (`toDB`, no optimization).
    pub fn term(&self, cmd: &str, what: &str) -> R<Term> {
        let t = match self {
            Program::Source(e) => e.to_term().map_err(|e| fail(cmd, what, &e.to_string()))?,
            Program::Term(t) => t.clone(),
        };
        closed(cmd, what, t)
    }
}

fn fail(cmd: &str, what: &str, msg: &str) -> String {
    format!("blam {cmd}: {what}: {msg}\n{}", hint(cmd))
}

fn closed(cmd: &str, what: &str, t: Term) -> R<Term> {
    match t.max_free(0) {
        0 => Ok(t),
        k => Err(fail(cmd, what, &format!("open term: free index {k}"))),
    }
}

/// The wire format of a file, by extension or by sniffing its bytes.
#[derive(Clone, Copy, PartialEq, Eq)]
enum Format {
    Lam,
    Ascii,
    Packed,
}

fn format_of(path: &str, bytes: &[u8]) -> Format {
    match Path::new(path).extension().and_then(|e| e.to_str()) {
        Some("lam") => Format::Lam,
        Some("blc") => Format::Ascii,
        Some("blc8" | "Blc") => Format::Packed,
        _ if !bytes.is_empty() && bytes.iter().all(|b| b"01 \t\r\n".contains(b)) => Format::Ascii,
        _ if std::str::from_utf8(bytes).is_ok() => Format::Lam,
        _ => Format::Packed,
    }
}

/// The bits of `bytes`, most significant first.
pub fn unpack(bytes: &[u8]) -> impl Iterator<Item = bool> + '_ {
    bytes
        .iter()
        .flat_map(|&b| (0..8).rev().map(move |j| b >> j & 1 == 1))
}

/// Read a program file.
pub fn load_file(cmd: &str, path: &str) -> R<Program> {
    let bytes = std::fs::read(path).map_err(|e| fail(cmd, path, &e.to_string()))?;
    match format_of(path, &bytes) {
        Format::Lam => {
            let src = std::str::from_utf8(&bytes).map_err(|e| fail(cmd, path, &e.to_string()))?;
            notation::parse(src)
                .map(Program::Source)
                .map_err(|e| fail(cmd, path, &e.to_string()))
        }
        Format::Ascii => {
            let src = std::str::from_utf8(&bytes).map_err(|e| fail(cmd, path, &e.to_string()))?;
            parse_all(src)
                .map(Program::Term)
                .map_err(|e| fail(cmd, path, &e.to_string()))
        }
        Format::Packed => {
            let mut bits = unpack(&bytes);
            let t = parse_prefix(&mut bits).map_err(|e| fail(cmd, path, &e.to_string()))?;
            // The last byte's spare bits are padding; whole bytes after the
            // program are a mistake (input belongs on stdin).
            let spare = bits.count();
            if spare >= 8 {
                return Err(fail(
                    cmd,
                    path,
                    &format!("{} byte(s) after the program", spare / 8),
                ));
            }
            Ok(Program::Term(t))
        }
    }
}

/// A term argument: wire bits, an existing file, or λ-notation (named,
/// or de Bruijn when every free name is a number). Always closed.
pub fn term_arg(cmd: &str, arg: &str) -> R<Term> {
    if !arg.is_empty()
        && arg
            .chars()
            .all(|c| c == '0' || c == '1' || c.is_whitespace())
    {
        return crate::args::parse_program(cmd, arg);
    }
    if Path::new(arg).is_file() {
        return load_file(cmd, arg)?.term(cmd, arg);
    }
    let what = format!("`{arg}`");
    let t = notation_term(arg).map_err(|e| {
        fail(
            cmd,
            &what,
            &format!("{e} (a term argument is wire bits, a file, or λ-notation)"),
        )
    })?;
    closed(cmd, &what, t)
}

/// Named λ-notation, falling back to de Bruijn notation when the named
/// reading fails only on unbound numerals.
pub fn notation_term(src: &str) -> Result<Term, LamError> {
    let named = notation::parse(src).and_then(|e| e.to_term());
    match named {
        Err(LamError::Unbound(v)) if v.chars().all(|c| c.is_ascii_digit()) => {
            notation::parse_db(src).map_err(|_| LamError::Unbound(v))
        }
        r => r,
    }
}
