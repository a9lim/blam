use crate::term::Term;
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

/// Parse one term off the front of a bit stream, leaving the rest unconsumed.
/// The BLC term code is a prefix code, so this is exactly the "program parses
/// itself off the input stream" step of the prefix machine.
pub fn parse_prefix(bits: &mut impl Iterator<Item = bool>) -> Result<Term, ParseError> {
    match bits.next() {
        Some(false) => match bits.next() {
            // 00: lambda
            Some(false) => Ok(Term::Lam(Rc::new(parse_prefix(bits)?))),
            // 01: application
            Some(true) => {
                let f = parse_prefix(bits)?;
                let a = parse_prefix(bits)?;
                Ok(Term::App(Rc::new(f), Rc::new(a)))
            }
            None => Err(ParseError::UnexpectedEof),
        },
        Some(true) => {
            // 1^n 0: variable n (n >= 1)
            let mut n: u32 = 1;
            loop {
                match bits.next() {
                    Some(true) => n += 1,
                    Some(false) => return Ok(Term::Var(n)),
                    None => return Err(ParseError::UnexpectedEof),
                }
            }
        }
        None => Err(ParseError::UnexpectedEof),
    }
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
