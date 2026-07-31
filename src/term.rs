use std::fmt;
use std::rc::Rc;

/// Untyped lambda term with 1-indexed de Bruijn variables, matching the BLC
/// encoding directly: `Var(1)` is bound by the innermost enclosing lambda.
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Term {
    Var(u32),
    Lam(Rc<Term>),
    App(Rc<Term>, Rc<Term>),
}

pub fn var(n: u32) -> Term {
    Term::Var(n)
}

pub fn lam(body: Term) -> Term {
    Term::Lam(Rc::new(body))
}

pub fn app(f: Term, a: Term) -> Term {
    Term::App(Rc::new(f), Rc::new(a))
}

impl Term {
    /// BLC encoding: lambda = "00", application = "01", variable n = "1"*n ++ "0".
    pub fn to_bits(&self) -> String {
        let mut out = String::new();
        self.write_bits(&mut out);
        out
    }

    fn write_bits(&self, out: &mut String) {
        match self {
            Term::Var(n) => {
                for _ in 0..*n {
                    out.push('1');
                }
                out.push('0');
            }
            Term::Lam(b) => {
                out.push_str("00");
                b.write_bits(out);
            }
            Term::App(f, a) => {
                out.push_str("01");
                f.write_bits(out);
                a.write_bits(out);
            }
        }
    }

    /// Size in bits of the BLC encoding.
    pub fn bit_size(&self) -> u64 {
        match self {
            Term::Var(n) => *n as u64 + 1,
            Term::Lam(b) => 2 + b.bit_size(),
            Term::App(f, a) => 2 + f.bit_size() + a.bit_size(),
        }
    }

    /// Largest de Bruijn index reaching above `depth` enclosing lambdas,
    /// i.e. 0 for a closed term.
    pub fn max_free(&self, depth: u32) -> u32 {
        match self {
            Term::Var(n) => n.saturating_sub(depth),
            Term::Lam(b) => b.max_free(depth + 1),
            Term::App(f, a) => f.max_free(depth).max(a.max_free(depth)),
        }
    }

    pub fn is_closed(&self) -> bool {
        self.max_free(0) == 0
    }
}

impl fmt::Display for Term {
    /// De Bruijn notation: `\\2 1` for K, applications left-associated.
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            Term::Var(n) => write!(f, "{n}"),
            Term::Lam(b) => write!(f, "\\{b}"),
            Term::App(x, a) => {
                match **x {
                    Term::Lam(_) => write!(f, "({x})")?,
                    _ => write!(f, "{x}")?,
                }
                match **a {
                    Term::Var(_) => write!(f, " {a}"),
                    _ => write!(f, " ({a})"),
                }
            }
        }
    }
}
