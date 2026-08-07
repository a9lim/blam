use std::fmt;
use std::mem;
use std::rc::Rc;

/// Untyped lambda term with 1-indexed de Bruijn variables, matching the BLC
/// encoding directly: `Var(1)` is bound by the innermost enclosing lambda.
///
/// Parsing, printing, sizing, and dropping are all iterative, so a term
/// nested a million deep is safe to build and use; the derived [`PartialEq`]
/// and [`Debug`] are the exceptions, and recurse with the term's depth.
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Term {
    Var(u32),
    Lam(Rc<Term>),
    App(Rc<Term>, Rc<Term>),
}

/// The de Bruijn variable `n`, counting outward from the innermost binder.
///
/// # Panics
/// If `n` is 0. Indices are 1-based here — the wire format cannot encode a
/// `Var(0)` (`1ⁿ0` needs n ≥ 1), so a 0 is always a caller-side bug.
pub fn var(n: u32) -> Term {
    assert!(
        n >= 1,
        "de Bruijn indices are 1-based; Var(0) is not a term"
    );
    Term::Var(n)
}

/// The abstraction `\body`.
pub fn lam(body: Term) -> Term {
    Term::Lam(Rc::new(body))
}

/// The application `f a`.
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
        let mut work = vec![self];
        while let Some(t) = work.pop() {
            match t {
                Term::Var(n) => {
                    for _ in 0..*n {
                        out.push('1');
                    }
                    out.push('0');
                }
                Term::Lam(b) => {
                    out.push_str("00");
                    work.push(b);
                }
                Term::App(f, a) => {
                    out.push_str("01");
                    // Function before argument: push in reverse.
                    work.push(a);
                    work.push(f);
                }
            }
        }
    }

    /// Size in bits of the BLC encoding.
    pub fn bit_size(&self) -> u64 {
        let mut total = 0u64;
        let mut work = vec![self];
        while let Some(t) = work.pop() {
            match t {
                Term::Var(n) => total += *n as u64 + 1,
                Term::Lam(b) => {
                    total += 2;
                    work.push(b);
                }
                Term::App(f, a) => {
                    total += 2;
                    work.push(f);
                    work.push(a);
                }
            }
        }
        total
    }

    /// Largest de Bruijn index reaching above `depth` enclosing lambdas,
    /// i.e. 0 for a closed term.
    pub fn max_free(&self, depth: u32) -> u32 {
        let mut worst = 0u32;
        let mut work = vec![(self, depth)];
        while let Some((t, d)) = work.pop() {
            match t {
                Term::Var(n) => worst = worst.max(n.saturating_sub(d)),
                Term::Lam(b) => work.push((b, d + 1)),
                Term::App(f, a) => {
                    work.push((f, d));
                    work.push((a, d));
                }
            }
        }
        worst
    }

    /// Does no variable reach above the term's own binders?
    pub fn is_closed(&self) -> bool {
        self.max_free(0) == 0
    }
}

impl fmt::Display for Term {
    /// De Bruijn notation: `\\2 1` for K, applications left-associated.
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        /// Either a subterm still to render or a literal already decided on.
        enum Item<'a> {
            T(&'a Term),
            S(&'static str),
        }
        let mut work = vec![Item::T(self)];
        // Items are emitted in pop order, so each group is pushed in reverse.
        while let Some(item) = work.pop() {
            match item {
                Item::S(s) => f.write_str(s)?,
                Item::T(Term::Var(n)) => write!(f, "{n}")?,
                Item::T(Term::Lam(b)) => {
                    f.write_str("\\")?;
                    work.push(Item::T(b));
                }
                Item::T(Term::App(x, a)) => {
                    // Argument: bare when atomic, parenthesized otherwise.
                    match **a {
                        Term::Var(_) => {
                            work.push(Item::T(a));
                            work.push(Item::S(" "));
                        }
                        _ => {
                            work.push(Item::S(")"));
                            work.push(Item::T(a));
                            work.push(Item::S(" ("));
                        }
                    }
                    // Function: a lambda head needs parentheses to stop its
                    // body from swallowing the argument.
                    match **x {
                        Term::Lam(_) => {
                            work.push(Item::S(")"));
                            work.push(Item::T(x));
                            work.push(Item::S("("));
                        }
                        _ => work.push(Item::T(x)),
                    }
                }
            }
        }
        Ok(())
    }
}

thread_local! {
    /// One shared placeholder to swap into a child slot during [`Drop`], so
    /// detaching a child costs a refcount bump instead of an allocation.
    static SENTINEL: Rc<Term> = Rc::new(Term::Var(1));
}

/// A child slot's stand-in. Shared, so its strong count is never 1 and
/// [`detach`] never tries to take it apart again.
fn sentinel() -> Rc<Term> {
    SENTINEL
        .try_with(Rc::clone)
        // Only reachable if a `Term` outlives TLS teardown on its thread.
        .unwrap_or_else(|_| Rc::new(Term::Var(1)))
}

/// Move `t`'s solely-owned interior children onto `stack`, leaving sentinels
/// behind. Leaf children stay put: dropping a `Var` cannot recurse.
fn detach(t: &mut Term, stack: &mut Vec<Rc<Term>>) {
    fn take(slot: &mut Rc<Term>, stack: &mut Vec<Rc<Term>>) {
        if Rc::strong_count(slot) == 1 && !matches!(**slot, Term::Var(_)) {
            stack.push(mem::replace(slot, sentinel()));
        }
    }
    match t {
        Term::Var(_) => {}
        Term::Lam(b) => take(b, stack),
        Term::App(f, a) => {
            take(f, stack);
            take(a, stack);
        }
    }
}

/// The drop glue `Rc<Term>` would otherwise generate is recursive, and a
/// wire-legal λ-tower is deep enough to blow the stack on the way out. Unwind
/// through an explicit stack instead.
///
/// Each detached child is replaced by a shared sentinel before its `Rc` is
/// taken, so the shallow drop that runs re-entrantly on the unwrapped node
/// finds nothing solely-owned to follow: recursion is one frame deep, always.
impl Drop for Term {
    fn drop(&mut self) {
        // `Vec::new` does not allocate; leaves and shallow terms pay nothing.
        let mut stack: Vec<Rc<Term>> = Vec::new();
        detach(self, &mut stack);
        while let Some(rc) = stack.pop() {
            if let Ok(mut t) = Rc::try_unwrap(rc) {
                detach(&mut t, &mut stack);
            }
        }
    }
}
