//! qALC invocation terms and positions — the `lam_iam.py` substrate types.
//!
//! De Bruijn indices are 1-indexed (`Var(1)` = innermost binder, repo
//! convention). Positions are root paths over `{f, a, b}`; the *level* of
//! a position is its count of `a` steps (λIAM convention — not `b`
//! steps), and a logged position's slice length is
//! `level(occurrence) − level(binder)`.
//!
//! qALC-local on purpose: the `blc` substrate has no `Gate` leaf, and
//! the pillars stay isolated (`docs/quantum-algebraic/rust-pillar.md`).

/// One path segment: `f` = application function, `a` = application
/// argument, `b` = lambda body.
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord)]
pub enum Dir {
    F,
    A,
    B,
}

impl Dir {
    /// The Python-side character this segment prints as.
    pub fn ch(self) -> char {
        match self {
            Dir::F => 'f',
            Dir::A => 'a',
            Dir::B => 'b',
        }
    }
}

/// A position: the root path to a subterm.
pub type Path = Vec<Dir>;

/// Gate constants. `H` and `T` are the kernel's alphabet; `C` is the
/// Gate-2 native-CNOT constant, present in compiler-image programs only.
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord)]
pub enum GateName {
    H,
    T,
    C,
}

impl GateName {
    /// Python/reference token for this source gate or dynamic port tag.
    pub fn token(self) -> &'static str {
        match self {
            GateName::H => "h",
            GateName::T => "t",
            GateName::C => "c",
        }
    }
}

/// A qALC invocation term. Boxed children, plain owned tree: reference
/// programs are tiny, and sharing tricks live below the semantic line if
/// ever needed.
#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub enum Term {
    /// 1-indexed de Bruijn variable; `Var(0)` is refused everywhere.
    Var(u32),
    Lam(Box<Term>),
    App(Box<Term>, Box<Term>),
    Gate(GateName),
}

/// Copy an ordinary BLC program into the qALC term alphabet.  This is the
/// population bridge used by the census: program bits still describe only
/// `Var`/`Lam`/`App`; invocation-supplied gates are added separately.
///
/// The traversal is iterative so the helper inherits the BLC substrate's
/// stack-safe wire discipline instead of introducing a recursive conversion
/// cliff at the pillar boundary.
pub fn from_blc(program: &crate::blc::Term) -> Term {
    enum Work<'a> {
        Visit(&'a crate::blc::Term),
        Lam,
        App,
    }

    let mut work = vec![Work::Visit(program)];
    let mut values = Vec::new();
    while let Some(item) = work.pop() {
        match item {
            Work::Visit(crate::blc::Term::Var(index)) => values.push(Term::Var(*index)),
            Work::Visit(crate::blc::Term::Lam(body)) => {
                work.push(Work::Lam);
                work.push(Work::Visit(body));
            }
            Work::Visit(crate::blc::Term::App(function, argument)) => {
                work.push(Work::App);
                work.push(Work::Visit(argument));
                work.push(Work::Visit(function));
            }
            Work::Lam => {
                let body = values.pop().expect("visited lambda body");
                values.push(Term::Lam(Box::new(body)));
            }
            Work::App => {
                let argument = values.pop().expect("visited application argument");
                let function = values.pop().expect("visited application function");
                values.push(Term::App(Box::new(function), Box::new(argument)));
            }
        }
    }
    assert_eq!(values.len(), 1, "one BLC root produces one qALC root");
    values.pop().expect("one converted root")
}

/// The canonical Gate-1 invocation convention.  `h` and `t` are machine
/// inputs, not program bits, so callers must retain the original BLC length
/// for Kraft accounting.
pub fn invoke_ht(program: Term) -> Term {
    Term::App(
        Box::new(Term::App(
            Box::new(program),
            Box::new(Term::Gate(GateName::H)),
        )),
        Box::new(Term::Gate(GateName::T)),
    )
}

/// Iterative closedness check for the full qALC source alphabet. Gate leaves
/// are constants; variables remain 1-indexed and must resolve to an enclosing
/// lambda. This is the public input-domain check used by the CLI before total
/// sector selection.
pub fn is_closed(term: &Term) -> bool {
    let mut stack = vec![(term, 0u32)];
    while let Some((term, depth)) = stack.pop() {
        match term {
            Term::Var(index) if *index >= 1 && *index <= depth => {}
            Term::Var(_) => return false,
            Term::Gate(_) => {}
            Term::Lam(body) => {
                let Some(depth) = depth.checked_add(1) else {
                    return false;
                };
                stack.push((body, depth));
            }
            Term::App(function, argument) => {
                stack.push((argument, depth));
                stack.push((function, depth));
            }
        }
    }
    true
}

/// The subterm at `path`, or `None` when the path leaves the term — the
/// typed analogue of `lam_iam.subterm`, total instead of crashing.
pub fn subterm<'t>(mut t: &'t Term, path: &[Dir]) -> Option<&'t Term> {
    for d in path {
        t = match (d, t) {
            (Dir::F, Term::App(f, _)) => f,
            (Dir::A, Term::App(_, a)) => a,
            (Dir::B, Term::Lam(b)) => b,
            _ => return None,
        };
    }
    Some(t)
}

/// λIAM level: the number of `a` steps in the path.
pub fn level(path: &[Dir]) -> usize {
    path.iter().filter(|d| **d == Dir::A).count()
}

/// Absolute path of the lambda binding the variable at `occ` — the typed
/// `lam_iam.binder_path`. `None` when `occ` is not a bound `Var`
/// occurrence of the closed term.
pub fn binder_path(term: &Term, occ: &[Dir]) -> Option<Path> {
    let Term::Var(i) = subterm(term, occ)? else {
        return None;
    };
    let i = *i;
    if i == 0 {
        return None;
    }
    let mut p = occ.to_vec();
    let mut seen = 0u32;
    while let Some(last) = p.pop() {
        if last == Dir::B && matches!(subterm(term, &p), Some(Term::Lam(_))) {
            seen += 1;
            if seen == i {
                return Some(p);
            }
        }
    }
    None
}

#[cfg(test)]
mod tests {
    use super::*;

    fn lam(t: Term) -> Term {
        Term::Lam(Box::new(t))
    }
    fn app(f: Term, a: Term) -> Term {
        Term::App(Box::new(f), Box::new(a))
    }

    #[test]
    fn binder_and_level_match_the_python_substrate() {
        // (λ.(λ. 2 (2 0̂))) h t — the HH wrapper. The outer h occurrence
        // sits at ffbbf; its binder is the outer lambda at ff.
        let zero = lam(lam(Term::Var(2)));
        let body = app(Term::Var(2), app(Term::Var(2), zero));
        let p = app(
            app(lam(lam(body)), Term::Gate(GateName::H)),
            Term::Gate(GateName::T),
        );
        let occ: Path = vec![Dir::F, Dir::F, Dir::B, Dir::B, Dir::F];
        assert_eq!(binder_path(&p, &occ), Some(vec![Dir::F, Dir::F]));
        assert_eq!(level(&occ), 0);
        assert_eq!(level(&[Dir::F, Dir::A, Dir::A, Dir::B]), 2);
        // A free-variable occurrence and a non-Var path both refuse.
        assert_eq!(binder_path(&p, &[Dir::F]), None);
        assert!(subterm(&p, &[Dir::A, Dir::A]).is_none());
        assert!(is_closed(&p));
        assert!(!is_closed(&Term::Var(1)));
    }

    #[test]
    fn ordinary_blc_programs_cross_only_at_invocation() {
        let pure = crate::blc::lam(crate::blc::Term::Var(1));
        let converted = from_blc(&pure);
        assert_eq!(converted, lam(Term::Var(1)));
        assert!(is_closed(&converted));

        let invoked = invoke_ht(converted);
        assert!(is_closed(&invoked));
        assert!(matches!(invoked, Term::App(_, argument) if *argument == Term::Gate(GateName::T)));
    }
}
