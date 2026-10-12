//! A small owned de Bruijn term for the self-interpreter searches.
//!
//! `blam::Term` is the engine's representation (1-indexed, `Rc`, iterative
//! drop); the searches here only ever hold terms of a few hundred bits and
//! want cheap structural equality, hashing, and 0-based indices that match
//! the Python tools, so they get their own.

use std::fmt::Write as _;

#[derive(Clone, PartialEq, Eq, Hash, Debug)]
pub enum T {
    /// 0-based de Bruijn index.
    V(u32),
    L(Box<T>),
    A(Box<T>, Box<T>),
}

pub fn v(i: u32) -> T {
    T::V(i)
}
pub fn l(b: T) -> T {
    T::L(Box::new(b))
}
pub fn a(f: T, x: T) -> T {
    T::A(Box::new(f), Box::new(x))
}

impl T {
    pub fn parse(bits: &str) -> Option<T> {
        let b: Vec<u8> = bits.bytes().filter(|c| !c.is_ascii_whitespace()).collect();
        let mut i = 0;
        let t = parse_at(&b, &mut i)?;
        (i == b.len()).then_some(t)
    }

    pub fn bits(&self) -> String {
        let mut s = String::new();
        self.write_bits(&mut s);
        s
    }

    fn write_bits(&self, s: &mut String) {
        match self {
            T::V(i) => {
                for _ in 0..=*i {
                    s.push('1');
                }
                s.push('0');
            }
            T::L(b) => {
                s.push_str("00");
                b.write_bits(s);
            }
            T::A(f, x) => {
                s.push_str("01");
                f.write_bits(s);
                x.write_bits(s);
            }
        }
    }

    pub fn size(&self) -> u32 {
        match self {
            T::V(i) => i + 2,
            T::L(b) => 2 + b.size(),
            T::A(f, x) => 2 + f.size() + x.size(),
        }
    }

    pub fn shift(&self, d: i64, c: u32) -> T {
        match self {
            T::V(i) if *i >= c => T::V((*i as i64 + d) as u32),
            T::V(i) => T::V(*i),
            T::L(b) => l(b.shift(d, c + 1)),
            T::A(f, x) => a(f.shift(d, c), x.shift(d, c)),
        }
    }

    fn subst(&self, j: u32, s: &T) -> T {
        match self {
            T::V(i) if *i == j => s.clone(),
            T::V(i) => T::V(*i),
            T::L(b) => l(b.subst(j + 1, &s.shift(1, 0))),
            T::A(f, x) => a(f.subst(j, s), x.subst(j, s)),
        }
    }

    /// Contract `(\body) arg`.
    pub fn beta(body: &T, arg: &T) -> T {
        body.subst(0, &arg.shift(1, 0)).shift(-1, 0)
    }

    #[cfg(test)]
    pub fn occurs(&self, j: u32) -> bool {
        match self {
            T::V(i) => *i == j,
            T::L(b) => b.occurs(j + 1),
            T::A(f, x) => f.occurs(j) || x.occurs(j),
        }
    }

    /// Reduce every β-redex except a knot `(\x. x x) (\...)`, in normal
    /// order, until none remain. For a self-interpreter this inlines every
    /// let and keeps the fixpoint. Normal order matters: a let can bind the
    /// knot's own argument, which only becomes a λ once the outer lets have
    /// been substituted.
    pub fn inline_lets(&self) -> T {
        let mut fuel = u32::MAX;
        self.inline_bounded(&mut fuel).expect("unbounded fuel")
    }

    /// `inline_lets` with a contraction budget; `None` when it runs out.
    pub fn inline_bounded(&self, fuel: &mut u32) -> Option<T> {
        match self {
            T::V(i) => Some(T::V(*i)),
            T::L(b) => Some(l(b.inline_bounded(fuel)?)),
            T::A(f, x) => {
                let f = f.head(fuel)?;
                match f {
                    T::L(ref body) if !f.is_self_app() => {
                        *fuel = fuel.checked_sub(1)?;
                        T::beta(body, x).inline_bounded(fuel)
                    }
                    T::L(ref body) => {
                        let x = x.inline_bounded(fuel)?;
                        if matches!(x, T::L(_)) {
                            return Some(a(f, x));
                        }
                        *fuel = fuel.checked_sub(1)?;
                        T::beta(body, &x).inline_bounded(fuel)
                    }
                    f => Some(a(f.inline_bounded(fuel)?, x.inline_bounded(fuel)?)),
                }
            }
        }
    }

    /// Leftmost-outermost reduction until the head is a λ, a variable, or a
    /// knot; the knot test normalizes the knot's argument.
    fn head(&self, fuel: &mut u32) -> Option<T> {
        match self {
            T::A(f, x) => {
                let f = f.head(fuel)?;
                match f {
                    T::L(ref body) if !f.is_self_app() => {
                        *fuel = fuel.checked_sub(1)?;
                        T::beta(body, x).head(fuel)
                    }
                    T::L(ref body) => {
                        let x = x.inline_bounded(fuel)?;
                        if matches!(x, T::L(_)) {
                            return Some(a(f, x));
                        }
                        *fuel = fuel.checked_sub(1)?;
                        T::beta(body, &x).head(fuel)
                    }
                    f => Some(a(f, (**x).clone())),
                }
            }
            t => Some(t.clone()),
        }
    }

    fn is_self_app(&self) -> bool {
        matches!(self, T::L(b) if **b == a(v(0), v(0)))
    }

    /// η-normal form.
    #[cfg(test)]
    pub fn eta(&self) -> T {
        match self {
            T::V(i) => T::V(*i),
            T::A(f, x) => a(f.eta(), x.eta()),
            T::L(b) => {
                let b = b.eta();
                if let T::A(f, x) = &b {
                    if **x == T::V(0) && !f.occurs(0) {
                        return f.shift(-1, 0);
                    }
                }
                l(b)
            }
        }
    }

    /// Lambda-calculus notation with generated names, for logs.
    pub fn show(&self) -> String {
        let mut s = String::new();
        show_at(self, 0, 0, &mut s);
        s
    }
}

fn parse_at(b: &[u8], i: &mut usize) -> Option<T> {
    match (b.get(*i)?, b.get(*i + 1)) {
        (b'0', Some(b'0')) => {
            *i += 2;
            Some(l(parse_at(b, i)?))
        }
        (b'0', Some(b'1')) => {
            *i += 2;
            let f = parse_at(b, i)?;
            Some(a(f, parse_at(b, i)?))
        }
        (b'1', _) => {
            let mut n = 0;
            while *b.get(*i)? == b'1' {
                n += 1;
                *i += 1;
            }
            *i += 1;
            Some(T::V(n - 1))
        }
        _ => None,
    }
}

fn name(k: u32) -> String {
    let c = (b'a' + (k % 26) as u8) as char;
    if k < 26 {
        c.to_string()
    } else {
        format!("{c}{}", k / 26)
    }
}

/// `prec`: 0 = top, 1 = function position, 2 = argument position.
fn show_at(t: &T, depth: u32, prec: u8, s: &mut String) {
    match t {
        T::V(i) => {
            if *i < depth {
                s.push_str(&name(depth - 1 - i));
            } else {
                let _ = write!(s, "#{}", i - depth);
            }
        }
        T::L(_) => {
            if prec > 0 {
                s.push('(');
            }
            s.push('\\');
            let mut b = t;
            let mut d = depth;
            let mut first = true;
            while let T::L(inner) = b {
                if !first {
                    s.push(' ');
                }
                s.push_str(&name(d));
                first = false;
                d += 1;
                b = inner;
            }
            s.push_str(". ");
            show_at(b, d, 0, s);
            if prec > 0 {
                s.push(')');
            }
        }
        T::A(f, x) => {
            if prec > 1 {
                s.push('(');
            }
            show_at(f, depth, 1, s);
            s.push(' ');
            show_at(x, depth, 2, s);
            if prec > 1 {
                s.push(')');
            }
        }
    }
}

/// Tromp/AIT `2cfa384`: Sean Palmer's 168-bit `int.lam`.
pub const INT168: &str = "010001101000010000010000011000000101110011011110010111111010010110101000011110000101110011110000001111000000101110111001101111001111100001111100001011110100111010011010";

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn roundtrip_and_size() {
        let t = T::parse(INT168).unwrap();
        assert_eq!(t.bits(), INT168);
        assert_eq!(t.size(), 168);
    }

    #[test]
    fn inlining_the_168_gives_its_179_bit_core() {
        let core = T::parse(INT168).unwrap().inline_lets();
        assert_eq!(core.size(), 179);
        assert_eq!(core.eta(), core, "the core is η-normal");
    }
}
