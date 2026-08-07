//! The BLC wire format: bits in, terms out.

use super::term::Term;
use std::rc::Rc;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum ParseError {
    /// Bit stream ended mid-term.
    UnexpectedEof,
    /// `parse_all` only: valid term followed by leftover bits.
    TrailingBits { consumed: usize },
    /// Input contained a character other than '0'/'1' (whitespace is skipped).
    BadChar(char),
}

/// Deliberately exhaustive (no `#[non_exhaustive]`): the CLI matches on
/// every variant to name the defect back to the user, and a new variant
/// SHOULD break that match rather than fall into a catch-all.
impl std::fmt::Display for ParseError {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            ParseError::UnexpectedEof => write!(f, "bit stream ends mid-term"),
            ParseError::TrailingBits { consumed } => {
                write!(f, "trailing bits past the term (it ends at bit {consumed})")
            }
            ParseError::BadChar(c) => write!(f, "`{c}` is not a 0/1 bit"),
        }
    }
}

impl std::error::Error for ParseError {}

/// A constructor waiting on its children — one frame of the wire
/// decoder's explicit build stack.
#[derive(Debug)]
pub(crate) enum Pending<I> {
    Lam,
    App0,    // waiting for function child
    App1(I), // has function child, waiting for argument
}

/// What the wire decoder builds into. One implementation per arena —
/// `Term` trees here, the two machine pools in their own modules — so
/// the `00`/`01`/`1ⁿ0` grammar below is written exactly once.
pub(crate) trait Build {
    type Id;
    fn var(&mut self, n: u32) -> Self::Id;
    fn lam(&mut self, b: Self::Id) -> Self::Id;
    fn app(&mut self, f: Self::Id, a: Self::Id) -> Self::Id;
}

/// The one decoder for the BLC term grammar. `None` = the stream ended
/// mid-term; callers own their error shape. `work` is caller-owned so a
/// sweep can reuse one buffer across millions of decodes; it is cleared
/// here, and left holding whatever a failed parse accumulated.
///
/// Explicit pending-constructor stack: a λ-tower of depth d costs d heap
/// slots, not d stack frames, so wire-legal input can never overflow.
pub(crate) fn decode<B: Build>(
    bits: &mut impl Iterator<Item = bool>,
    work: &mut Vec<Pending<B::Id>>,
    b: &mut B,
) -> Option<B::Id> {
    work.clear();
    loop {
        // parse one leaf-or-opener
        let mut done: B::Id = match bits.next()? {
            false => match bits.next()? {
                // 00: lambda
                false => {
                    work.push(Pending::Lam);
                    continue;
                }
                // 01: application
                true => {
                    work.push(Pending::App0);
                    continue;
                }
            },
            // 1^n 0: variable n (n >= 1)
            true => {
                let mut n: u32 = 1;
                while bits.next()? {
                    n += 1;
                }
                b.var(n)
            }
        };
        // close as many constructors as `done` completes
        loop {
            match work.pop() {
                None => return Some(done),
                Some(Pending::Lam) => done = b.lam(done),
                Some(Pending::App0) => {
                    work.push(Pending::App1(done));
                    break;
                }
                Some(Pending::App1(f)) => done = b.app(f, done),
            }
        }
    }
}

/// [`Build`] into plain `Rc` term trees.
struct TermBuilder;

impl Build for TermBuilder {
    type Id = Term;
    fn var(&mut self, n: u32) -> Term {
        Term::Var(n)
    }
    fn lam(&mut self, b: Term) -> Term {
        Term::Lam(Rc::new(b))
    }
    fn app(&mut self, f: Term, a: Term) -> Term {
        Term::App(Rc::new(f), Rc::new(a))
    }
}

/// Parse one term off the front of a bit stream, leaving the rest unconsumed.
/// The BLC term code is a prefix code, so this is exactly the "program parses
/// itself off the input stream" step of the prefix machine.
///
/// Stack-safe end to end: a λ-tower of depth d costs d heap slots, not d
/// stack frames, so wire-legal input can never overflow — and neither can
/// anything done with the term it returns. Printing ([`Term::to_bits`],
/// [`std::fmt::Display`]), measuring ([`Term::bit_size`],
/// [`Term::max_free`]), and dropping are iterative too. The derived
/// [`PartialEq`] and [`Debug`] on [`Term`] are the standing exceptions: both
/// recurse with the term's depth.
pub fn parse_prefix(bits: &mut impl Iterator<Item = bool>) -> Result<Term, ParseError> {
    decode(bits, &mut Vec::new(), &mut TermBuilder).ok_or(ParseError::UnexpectedEof)
}

/// Parse a '0'/'1' string (whitespace ignored) that must encode exactly one term.
pub fn parse_all(s: &str) -> Result<Term, ParseError> {
    let mut bits = Vec::with_capacity(s.len());
    for c in s.chars() {
        match c {
            '0' => bits.push(false),
            '1' => bits.push(true),
            c if c.is_whitespace() => {}
            c => return Err(ParseError::BadChar(c)),
        }
    }
    let total = bits.len();
    let mut it = bits.into_iter();
    let term = parse_prefix(&mut it)?;
    let leftover = it.count();
    if leftover > 0 {
        return Err(ParseError::TrailingBits {
            consumed: total - leftover,
        });
    }
    Ok(term)
}

/// Render a packed term as a '0'/'1' string. The packing contract is
/// `len <= 64` (a `u64` holds at most 64 bits); a larger `len` is a
/// caller bug, caught in debug builds.
pub fn enc_to_string(enc: u64, len: u8) -> String {
    debug_assert!(len <= 64, "a u64 packs at most 64 bits");
    (0..len)
        .rev()
        .map(|j| if enc >> j & 1 == 1 { '1' } else { '0' })
        .collect()
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::blc::enumerate::for_each_closed;

    /// The recursive rendering `Display` replaced, kept here as the spec the
    /// iterative printer is differential-tested against.
    fn show_recursive(t: &Term) -> String {
        match t {
            Term::Var(n) => n.to_string(),
            Term::Lam(b) => format!("\\{}", show_recursive(b)),
            Term::App(x, a) => {
                let head = match **x {
                    Term::Lam(_) => format!("({})", show_recursive(x)),
                    _ => show_recursive(x),
                };
                match **a {
                    Term::Var(_) => format!("{head} {}", show_recursive(a)),
                    _ => format!("{head} ({})", show_recursive(a)),
                }
            }
        }
    }

    #[test]
    fn deep_lambda_tower_survives_every_operation() {
        // A million-deep λ tower is wire-legal, so nothing about the term it
        // parses to may consume stack in proportion to its depth. The
        // recursive-descent parser this replaced overflowed on the way in;
        // printing, sizing, and `Rc<Term>`'s derived drop glue each
        // overflowed on the way out.
        const DEPTH: usize = 1_000_000;
        let mut s = String::with_capacity(2 * DEPTH + 2);
        for _ in 0..DEPTH {
            s.push_str("00");
        }
        s.push_str("10");
        let t = parse_all(&s).expect("deep tower parses");

        // Structure, by an explicit reference walk.
        let mut depth = 0usize;
        let mut cur = &t;
        while let Term::Lam(b) = cur {
            depth += 1;
            cur = b;
        }
        assert_eq!(depth, DEPTH);
        assert_eq!(*cur, Term::Var(1));

        assert_eq!(t.bit_size(), 2 * DEPTH as u64 + 2);
        assert_eq!(t.max_free(0), 0);
        assert!(t.is_closed());
        assert_eq!(t.to_bits(), s);

        let shown = t.to_string();
        assert_eq!(shown.len(), DEPTH + 1);
        assert!(shown.ends_with("\\1"));
        assert!(shown.bytes().take(DEPTH).all(|b| b == b'\\'));

        // And an ordinary drop: `impl Drop for Term` is the guarantee now,
        // so the teardown needs no help from the caller.
        drop(t);
    }

    #[test]
    fn display_matches_the_recursive_spec_to_20_bits() {
        for n in 4..=20 {
            for_each_closed(n, &mut |enc, len| {
                let bits = enc_to_string(enc, len);
                let t = parse_all(&bits).expect("closed term parses");
                assert_eq!(t.to_string(), show_recursive(&t), "at n={n} on {bits}");
            });
        }
    }

    #[test]
    fn round_trips_every_closed_term_to_20_bits() {
        for n in 4..=20 {
            for_each_closed(n, &mut |enc, len| {
                let bits = enc_to_string(enc, len);
                let t = parse_all(&bits).expect("closed term parses");
                assert_eq!(t.to_bits(), bits, "round trip at n={n}");
                assert_eq!(t.bit_size(), n as u64);
                assert!(t.is_closed());
            });
        }
    }

    #[test]
    fn prefix_stops_at_the_term_boundary() {
        for n in [4u32, 6, 10, 14, 18] {
            for_each_closed(n, &mut |enc, len| {
                let bits = enc_to_string(enc, len);
                for suffix in ["", "0", "1", "1101", "000000"] {
                    let all: Vec<bool> = bits
                        .chars()
                        .chain(suffix.chars())
                        .map(|c| c == '1')
                        .collect();
                    let mut it = all.into_iter();
                    let t = parse_prefix(&mut it).expect("prefix parses");
                    assert_eq!(t.to_bits(), bits);
                    // Exactly |E| bits consumed: the rest is still there.
                    assert_eq!(it.count(), suffix.len(), "suffix {suffix:?} on {bits}");
                }
            });
        }
    }

    #[test]
    fn strict_prefixes_are_eof() {
        // Ω, K, and the 32-bit loop term.
        for e in [
            "010001101000011010",
            "0000110",
            "01000110001100001011010000110110",
        ] {
            for k in 0..e.len() {
                let mut it = e[..k].chars().map(|c| c == '1');
                assert_eq!(
                    parse_prefix(&mut it),
                    Err(ParseError::UnexpectedEof),
                    "prefix of length {k} of {e}"
                );
            }
            assert!(parse_all(e).is_ok());
        }
    }
}
