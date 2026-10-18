//! Tromp's λ-notation: the `.lam` source language of tromp/AIT, its two
//! printed forms, and its compiler to closed BLC terms.
//!
//! - [`parse`] reads the language of `Lambda.lhs`'s `Read (LC Id)`:
//!   `\x. body` (the dot is optional, so `\x\y x` is `\x.\y.x`),
//!   application by juxtaposition, parentheses, `--` line comments, and
//!   `let a = A; b = B; in body` blocks. A definition that mentions its own
//!   name is recursive, through Tromp's fixpoint `\f (\x x x) (\x f (x x))`;
//!   each definition sees the ones before it. Identifiers are runs of
//!   letters, digits, `_` and `'`; `let` and `in` are reserved. As an
//!   extension, `λ` may stand for `\`.
//! - [`Expr::to_term`] is `toDB`: names to 1-indexed de Bruijn indices.
//! - [`optimize`] is `AIT.lhs`'s beam search over size-reducing β- and
//!   η-steps, and [`compile`] is the whole `blc blc` pipeline,
//!   `optimize 57 2 1` included. The checked-in `.blc` goldens of tromp/AIT
//!   are that pipeline's output, so [`compile`] reproduces them bit for bit.
//! - [`parse_db`] reads `Read DB`: de Bruijn notation such as `\\2 (\1 1)`,
//!   which is exactly what [`Term`]'s `Display` prints (Tromp's `Show DB`).
//!   [`Expr`]'s `Display` is Tromp's `Show (LC Id)`.
//!
//! Every function here bounds its recursion by [`MAX_DEPTH`], which the
//! parsers enforce on the trees they build, except [`optimize`]: its
//! β-contractions can deepen a term, so it recurses with the depth of the
//! terms it explores (the `blam` CLI runs it on a large stack).

use crate::blc::Term;
use std::collections::HashMap;
use std::fmt;
use std::rc::Rc;

/// The deepest tree, and the deepest syntactic nesting, the parsers accept.
/// It keeps every recursive walk over an [`Expr`] — conversion, printing,
/// dropping — far inside a default thread stack.
pub const MAX_DEPTH: usize = 10_000;

/// A λ-term with named variables: Tromp's `LC Id`.
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Expr {
    Var(String),
    Lam(String, Box<Expr>),
    App(Box<Expr>, Box<Expr>),
}

/// Why a source text is not a closed λ-term.
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum LamError {
    /// The text does not match the grammar. `line` and `column` are
    /// 1-based and count characters; `found` is `None` at end of input.
    Syntax {
        line: usize,
        column: usize,
        expected: &'static str,
        found: Option<char>,
    },
    /// The term nests deeper than [`MAX_DEPTH`].
    TooDeep { line: usize, column: usize },
    /// A variable no enclosing binder or definition names.
    Unbound(String),
    /// A de Bruijn index of 0: [`parse_db`]'s indices are 1-based.
    ZeroIndex { line: usize, column: usize },
}

impl fmt::Display for LamError {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            LamError::Syntax {
                line,
                column,
                expected,
                found,
            } => {
                write!(f, "line {line}, column {column}: expected {expected}, found ")?;
                match found {
                    Some(c) => write!(f, "`{}`", c.escape_debug()),
                    None => f.write_str("end of input"),
                }
            }
            LamError::TooDeep { line, column } => write!(
                f,
                "line {line}, column {column}: nested deeper than {MAX_DEPTH} levels"
            ),
            LamError::Unbound(v) => write!(f, "unbound variable `{v}`"),
            LamError::ZeroIndex { line, column } => write!(
                f,
                "line {line}, column {column}: de Bruijn indices are 1-based, so 0 is not a variable"
            ),
        }
    }
}

impl std::error::Error for LamError {}

/// Parse Tromp's λ-notation into a named term. `let` blocks come back
/// desugared, exactly as `Lambda.lhs` builds them: `let x = e in b` is
/// `(\x. b) e`, with `e` wrapped in the fixpoint when it mentions `x`.
pub fn parse(src: &str) -> Result<Expr, LamError> {
    let mut p = Parser::new(src);
    let (e, _) = p.lc()?;
    p.end()?;
    Ok(e)
}

/// Parse de Bruijn notation (`Read DB`): `\` binds, variables are 1-based
/// indices, application is juxtaposition. The result may be open; check
/// [`Term::is_closed`] if it must not be.
pub fn parse_db(src: &str) -> Result<Term, LamError> {
    let mut p = Parser::new(src);
    let (t, _) = p.db()?;
    p.end()?;
    Ok(t)
}

/// Compile λ-notation the way `blc blc` does: parse, convert to de Bruijn
/// form, and keep the smallest result of `optimize 57 2 1`.
pub fn compile(src: &str) -> Result<Term, LamError> {
    let t = parse(src)?.to_term()?;
    Ok(optimize(&t, 57, 2, 1).swap_remove(0).0)
}

impl Expr {
    /// Convert to de Bruijn form (`toDB`), failing on the first unbound
    /// variable met in a left-to-right walk.
    pub fn to_term(&self) -> Result<Term, LamError> {
        fn go(e: &Expr, scope: &mut Vec<String>) -> Result<Term, LamError> {
            Ok(match e {
                Expr::Var(v) => match scope.iter().rev().position(|s| s == v) {
                    Some(k) => Term::Var(k as u32 + 1),
                    None => return Err(LamError::Unbound(v.clone())),
                },
                Expr::Lam(v, b) => {
                    scope.push(v.clone());
                    let b = go(b, scope);
                    scope.pop();
                    crate::blc::lam(b?)
                }
                Expr::App(f, a) => crate::blc::app(go(f, scope)?, go(a, scope)?),
            })
        }
        go(self, &mut Vec::new())
    }

    /// Does `name` occur free?
    pub fn occurs_free(&self, name: &str) -> bool {
        match self {
            Expr::Var(v) => v == name,
            Expr::Lam(v, b) => v != name && b.occurs_free(name),
            Expr::App(f, a) => f.occurs_free(name) || a.occurs_free(name),
        }
    }
}

/// Tromp's `Show (LC Id)`: `\x.body`, left-associated application, a
/// lambda parenthesized wherever it is not the last thing in its scope.
impl fmt::Display for Expr {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        fn go(e: &Expr, prec: u8, f: &mut fmt::Formatter<'_>) -> fmt::Result {
            match e {
                Expr::Var(v) => f.write_str(v),
                Expr::Lam(v, b) => {
                    if prec > 0 {
                        f.write_str("(")?;
                    }
                    write!(f, "\\{v}.")?;
                    go(b, 0, f)?;
                    if prec > 0 {
                        f.write_str(")")?;
                    }
                    Ok(())
                }
                Expr::App(x, a) => {
                    if prec > 1 {
                        f.write_str("(")?;
                    }
                    go(x, 1, f)?;
                    f.write_str(" ")?;
                    go(a, 2, f)?;
                    if prec > 1 {
                        f.write_str(")")?;
                    }
                    Ok(())
                }
            }
        }
        go(self, 0, f)
    }
}

/// Tromp's `fix = \f (\x x x) (\x f (x x))`, with his variable names, so
/// a desugared recursive definition prints the way `blc print` shows it.
fn fix() -> Expr {
    let v = |s: &str| Expr::Var(s.to_string());
    let lam = |s: &str, b: Expr| Expr::Lam(s.to_string(), Box::new(b));
    let app = |f: Expr, a: Expr| Expr::App(Box::new(f), Box::new(a));
    lam(
        "f",
        app(
            lam("x", app(v("x"), v("x"))),
            lam("x", app(v("f"), app(v("x"), v("x")))),
        ),
    )
}

fn is_ident(c: char) -> bool {
    c.is_alphanumeric() || c == '_' || c == '\''
}

/// One recursive-descent parser for both notations. Comments are blanked
/// to spaces up front, so every position still names the original text.
struct Parser {
    s: Vec<char>,
    i: usize,
    nest: usize,
}

impl Parser {
    fn new(src: &str) -> Parser {
        // `λ` is accepted for `\` (an extension: Tromp's parser would read
        // it as the start of an identifier, so no `.lam` file uses it).
        let mut s: Vec<char> = src
            .chars()
            .map(|c| if c == 'λ' { '\\' } else { c })
            .collect();
        // `stripComments`: `--` to the end of the line, wherever it occurs.
        let mut i = 0;
        while i + 1 < s.len() {
            if s[i] == '-' && s[i + 1] == '-' {
                while i < s.len() && s[i] != '\n' {
                    s[i] = ' ';
                    i += 1;
                }
            } else {
                i += 1;
            }
        }
        Parser { s, i: 0, nest: 0 }
    }

    fn pos(&self) -> (usize, usize) {
        let mut line = 1;
        let mut column = 1;
        for &c in &self.s[..self.i.min(self.s.len())] {
            if c == '\n' {
                line += 1;
                column = 1;
            } else {
                column += 1;
            }
        }
        (line, column)
    }

    fn fail(&self, expected: &'static str) -> LamError {
        let (line, column) = self.pos();
        LamError::Syntax {
            line,
            column,
            expected,
            found: self.s.get(self.i).copied(),
        }
    }

    fn too_deep(&self) -> LamError {
        let (line, column) = self.pos();
        LamError::TooDeep { line, column }
    }

    fn ws(&mut self) {
        while self.s.get(self.i).is_some_and(|c| c.is_whitespace()) {
            self.i += 1;
        }
    }

    fn peek(&mut self) -> Option<char> {
        self.ws();
        self.s.get(self.i).copied()
    }

    /// The identifier at the cursor, without consuming it.
    fn word(&mut self) -> &[char] {
        self.ws();
        let end = self.s[self.i..]
            .iter()
            .position(|&c| !is_ident(c))
            .map_or(self.s.len(), |k| self.i + k);
        &self.s[self.i..end]
    }

    fn word_is(&mut self, w: &str) -> bool {
        self.word().iter().copied().eq(w.chars())
    }

    fn reserved(word: &[char]) -> bool {
        word.iter().copied().eq("let".chars()) || word.iter().copied().eq("in".chars())
    }

    /// A variable name: an identifier that is not a reserved word.
    fn name(&mut self, expected: &'static str) -> Result<String, LamError> {
        let w = self.word();
        if w.is_empty() || Self::reserved(w) {
            return Err(self.fail(expected));
        }
        let name: String = w.iter().collect();
        self.i += w.len();
        Ok(name)
    }

    fn expect(&mut self, c: char, expected: &'static str) -> Result<(), LamError> {
        if self.peek() == Some(c) {
            self.i += 1;
            Ok(())
        } else {
            Err(self.fail(expected))
        }
    }

    fn end(&mut self) -> Result<(), LamError> {
        match self.peek() {
            None => Ok(()),
            Some(_) => Err(self.fail("end of input")),
        }
    }

    fn enter(&mut self) -> Result<(), LamError> {
        self.nest += 1;
        if self.nest > MAX_DEPTH {
            return Err(self.too_deep());
        }
        Ok(())
    }

    /// A node of the given tree depth, refused past [`MAX_DEPTH`].
    fn node<T>(&self, t: T, depth: usize) -> Result<(T, usize), LamError> {
        if depth > MAX_DEPTH {
            return Err(self.too_deep());
        }
        Ok((t, depth))
    }

    /// `pLC = pLCLam +++ pLCApp +++ pLCLet`, returning the tree's depth.
    fn lc(&mut self) -> Result<(Expr, usize), LamError> {
        self.enter()?;
        let r = if self.peek() == Some('\\') {
            self.i += 1;
            let v = self.name("a variable name after `\\`")?;
            if self.peek() == Some('.') {
                self.i += 1;
            }
            let (b, d) = self.lc()?;
            self.node(Expr::Lam(v, Box::new(b)), d + 1)?
        } else if self.word_is("let") {
            self.let_block()?
        } else {
            self.app()?
        };
        self.nest -= 1;
        Ok(r)
    }

    /// `let d1; d2; ... [;] in body`, desugared right to left.
    fn let_block(&mut self) -> Result<(Expr, usize), LamError> {
        self.i += 3;
        let mut defs: Vec<(String, Expr, usize)> = Vec::new();
        let mut trailing = false;
        if !self.word_is("in") && self.peek() != Some(';') {
            defs.push(self.def()?);
            while self.peek() == Some(';') {
                self.i += 1;
                if self.word_is("in") {
                    trailing = true;
                    break;
                }
                defs.push(self.def()?);
            }
        }
        if !trailing && self.peek() == Some(';') {
            self.i += 1;
        }
        if !self.word_is("in") {
            return Err(self.fail("`in` or `;`"));
        }
        self.i += 2;
        let (mut body, mut d) = self.lc()?;
        // `foldr lcLet body defs`, where
        // `lcLet (x, e) b = App (Lam x b) (letrec x e)`.
        for (x, e, de) in defs.into_iter().rev() {
            let (e, de) = if e.occurs_free(&x) {
                let lam = Expr::Lam(x.clone(), Box::new(e));
                (Expr::App(Box::new(fix()), Box::new(lam)), 1 + 6.max(de + 1))
            } else {
                (e, de)
            };
            let lam = Expr::Lam(x, Box::new(body));
            let depth = 1 + (d + 1).max(de);
            (body, d) = self.node(Expr::App(Box::new(lam), Box::new(e)), depth)?;
        }
        Ok((body, d))
    }

    fn def(&mut self) -> Result<(String, Expr, usize), LamError> {
        let x = self.name("a definition's name")?;
        self.expect('=', "`=`")?;
        let (e, d) = self.lc()?;
        Ok((x, e, d))
    }

    /// `many1 pLCAtom`, left-associated. Stops at anything that cannot
    /// start an atom, including the reserved words.
    fn app(&mut self) -> Result<(Expr, usize), LamError> {
        let mut acc: Option<(Expr, usize)> = None;
        loop {
            let (atom, da) = match self.peek() {
                Some('(') => {
                    self.i += 1;
                    let r = self.lc()?;
                    self.expect(')', "`)`")?;
                    r
                }
                Some(c) if is_ident(c) => {
                    if Self::reserved(self.word()) {
                        break;
                    }
                    (Expr::Var(self.name("a variable")?), 1)
                }
                _ => break,
            };
            acc = Some(match acc {
                None => (atom, da),
                Some((f, df)) => {
                    self.node(Expr::App(Box::new(f), Box::new(atom)), 1 + df.max(da))?
                }
            });
        }
        acc.ok_or_else(|| self.fail("a term"))
    }

    /// `pDB = pDBLam +++ pDBApp` over 1-based indices.
    fn db(&mut self) -> Result<(Term, usize), LamError> {
        self.enter()?;
        let r = if self.peek() == Some('\\') {
            self.i += 1;
            let (b, d) = self.db()?;
            self.node(crate::blc::lam(b), d + 1)?
        } else {
            let mut acc: Option<(Term, usize)> = None;
            loop {
                let (atom, da) = match self.peek() {
                    Some('(') => {
                        self.i += 1;
                        let r = self.db()?;
                        self.expect(')', "`)`")?;
                        r
                    }
                    Some(c) if c.is_ascii_digit() => (self.index()?, 1),
                    _ => break,
                };
                acc = Some(match acc {
                    None => (atom, da),
                    Some((f, df)) => self.node(crate::blc::app(f, atom), 1 + df.max(da))?,
                });
            }
            acc.ok_or_else(|| self.fail("a de Bruijn term"))?
        };
        self.nest -= 1;
        Ok(r)
    }

    fn index(&mut self) -> Result<Term, LamError> {
        let start = self.i;
        let mut n: u32 = 0;
        while let Some(d) = self.s.get(self.i).and_then(|c| c.to_digit(10)) {
            n = match n.checked_mul(10).and_then(|n| n.checked_add(d)) {
                Some(n) => n,
                None => return Err(self.fail("an index below 2^32")),
            };
            self.i += 1;
        }
        if n == 0 {
            self.i = start;
            let (line, column) = self.pos();
            return Err(LamError::ZeroIndex { line, column });
        }
        Ok(Term::Var(n))
    }
}

/// `AIT.lhs`'s `optimize width slack n t`: every candidate the beam search
/// keeps, smallest first, each with its BLC size. Lambdas whose body is
/// `f x` with `x` not free in `f` are η-reduced; applications of a lambda
/// are β-contracted when that shrinks the term, and up to `n` times along
/// a path when it does not; at each application node the candidates are
/// pruned to the `width` smallest distinct ones within `slack` bits of the
/// best. The head of the list is what `blc blc` encodes, at `57 2 1`.
///
/// Every candidate is β-convertible to `t` modulo η, so they share `t`'s
/// normal form up to η. The term need not be closed.
///
/// # Panics
/// If `width` is 0: a beam that keeps nothing has no answer.
pub fn optimize(t: &Term, width: usize, slack: u64, n: u32) -> Vec<(Term, u64)> {
    assert!(width > 0, "optimize needs a beam width of at least 1");
    let mut a = Arena {
        width,
        slack,
        ..Arena::default()
    };
    let root = a.import(t);
    let best = a.opt(i64::from(n), root);
    best.iter()
        .map(|&(id, size)| (a.export(id), size))
        .collect()
}

/// A hash-consed 0-based de Bruijn node: equal ids are equal terms, so the
/// beam's duplicate test and every memo key are O(1).
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
enum N {
    V(u32),
    L(u32),
    A(u32, u32),
}

/// A beam: candidate ids with their sizes, smallest first.
type Beam = Rc<Vec<(u32, u64)>>;

#[derive(Default)]
struct Arena {
    nodes: Vec<N>,
    size: Vec<u64>,
    ids: HashMap<N, u32>,
    occurs: HashMap<(u32, u32), bool>,
    shift: HashMap<(u32, u32, u32), u32>,
    subst: HashMap<(u32, u32, u32), u32>,
    opt: HashMap<(i64, u32), Beam>,
    width: usize,
    slack: u64,
}

impl Arena {
    fn mk(&mut self, n: N) -> u32 {
        if let Some(&id) = self.ids.get(&n) {
            return id;
        }
        let s = match n {
            N::V(i) => u64::from(i) + 2,
            N::L(b) => 2 + self.size[b as usize],
            N::A(f, a) => 2 + self.size[f as usize] + self.size[a as usize],
        };
        let id = self.nodes.len() as u32;
        self.nodes.push(n);
        self.size.push(s);
        self.ids.insert(n, id);
        id
    }

    fn import(&mut self, t: &Term) -> u32 {
        enum W<'a> {
            T(&'a Term),
            L,
            A,
        }
        let mut work = vec![W::T(t)];
        let mut done: Vec<u32> = Vec::new();
        while let Some(w) = work.pop() {
            match w {
                W::T(Term::Var(k)) => {
                    let id = self.mk(N::V(k - 1));
                    done.push(id);
                }
                W::T(Term::Lam(b)) => {
                    work.push(W::L);
                    work.push(W::T(b));
                }
                W::T(Term::App(f, a)) => {
                    work.push(W::A);
                    work.push(W::T(a));
                    work.push(W::T(f));
                }
                W::L => {
                    let b = done.pop().expect("lambda body");
                    let id = self.mk(N::L(b));
                    done.push(id);
                }
                W::A => {
                    let a = done.pop().expect("argument");
                    let f = done.pop().expect("function");
                    let id = self.mk(N::A(f, a));
                    done.push(id);
                }
            }
        }
        done.pop().expect("one term")
    }

    fn export(&self, id: u32) -> Term {
        enum W {
            T(u32),
            L,
            A,
        }
        let mut work = vec![W::T(id)];
        let mut done: Vec<Term> = Vec::new();
        while let Some(w) = work.pop() {
            match w {
                W::T(id) => match self.nodes[id as usize] {
                    N::V(i) => done.push(Term::Var(i + 1)),
                    N::L(b) => {
                        work.push(W::L);
                        work.push(W::T(b));
                    }
                    N::A(f, a) => {
                        work.push(W::A);
                        work.push(W::T(a));
                        work.push(W::T(f));
                    }
                },
                W::L => {
                    let b = done.pop().expect("lambda body");
                    done.push(crate::blc::lam(b));
                }
                W::A => {
                    let a = done.pop().expect("argument");
                    let f = done.pop().expect("function");
                    done.push(crate::blc::app(f, a));
                }
            }
        }
        done.pop().expect("one term")
    }

    /// `occurs n t`: is variable `n` (0-based, relative to `t`) free in `t`?
    fn occurs(&mut self, n: u32, t: u32) -> bool {
        if let Some(&r) = self.occurs.get(&(n, t)) {
            return r;
        }
        let r = match self.nodes[t as usize] {
            N::V(i) => i == n,
            N::L(b) => self.occurs(n + 1, b),
            N::A(f, a) => self.occurs(n, f) || self.occurs(n, a),
        };
        self.occurs.insert((n, t), r);
        r
    }

    /// `adjust n e`: free variables of `e` at or above `n` move up by `o`.
    fn adjust(&mut self, n: u32, e: u32, o: u32) -> u32 {
        if o == 0 {
            return e;
        }
        if let Some(&r) = self.shift.get(&(n, e, o)) {
            return r;
        }
        let r = match self.nodes[e as usize] {
            N::V(j) if j >= n => self.mk(N::V(j + o)),
            N::V(_) => e,
            N::L(b) => {
                let b = self.adjust(n + 1, b, o);
                self.mk(N::L(b))
            }
            N::A(f, a) => {
                let f = self.adjust(n, f, o);
                let a = self.adjust(n, a, o);
                self.mk(N::A(f, a))
            }
        };
        self.shift.insert((n, e, o), r);
        r
    }

    /// `AIT.lhs`'s `subst o x t`: replace variable `o` by `x` (shifted to
    /// depth `o`) and close the gap. `x = None` is the η case, where the
    /// variable is known not to occur.
    fn subst(&mut self, o: u32, x: Option<u32>, t: u32) -> u32 {
        let key = (o, x.unwrap_or(u32::MAX), t);
        if let Some(&r) = self.subst.get(&key) {
            return r;
        }
        let r = match self.nodes[t as usize] {
            N::V(i) if i == o => {
                let x = x.expect("the eta-reduced variable does not occur");
                self.adjust(0, x, o)
            }
            N::V(i) if i > o => self.mk(N::V(i - 1)),
            N::V(_) => t,
            N::L(b) => {
                let b = self.subst(o + 1, x, b);
                self.mk(N::L(b))
            }
            N::A(f, a) => {
                let f = self.subst(o, x, f);
                let a = self.subst(o, x, a);
                self.mk(N::A(f, a))
            }
        };
        self.subst.insert(key, r);
        r
    }

    fn opt(&mut self, n: i64, t: u32) -> Beam {
        if let Some(r) = self.opt.get(&(n, t)) {
            return r.clone();
        }
        let res = match self.nodes[t as usize] {
            N::V(_) => vec![(t, self.size[t as usize])],
            N::L(body) => {
                let bodies = self.opt(n, body);
                let mut out = Vec::with_capacity(bodies.len());
                for &(b, _) in bodies.iter() {
                    let node = self.nodes[b as usize];
                    let x = match node {
                        N::A(f, a) if self.nodes[a as usize] == N::V(0) && !self.occurs(0, f) => {
                            self.subst(0, None, f)
                        }
                        _ => self.mk(N::L(b)),
                    };
                    out.push((x, self.size[x as usize]));
                }
                out
            }
            N::A(fun, arg) => {
                let funs = self.opt(n, fun);
                let args = self.opt(n, arg);
                let mut cands: Vec<(u32, u64)> = Vec::new();
                for &(f, fs) in funs.iter() {
                    for &(a, asz) in args.iter() {
                        let tt = self.mk(N::A(f, a));
                        let ts = 2 + fs + asz;
                        match self.nodes[f as usize] {
                            N::L(body) => {
                                if self.occurs(0, body) {
                                    cands.push((tt, ts));
                                }
                                let t2 = self.subst(0, Some(a), body);
                                let n2 = if self.size[t2 as usize] < ts {
                                    n
                                } else {
                                    n - 1
                                };
                                if n2 >= 0 {
                                    cands.extend(self.opt(n2, t2).iter().copied());
                                }
                            }
                            _ => cands.push((tt, ts)),
                        }
                    }
                }
                // `prune`: a stable sort by size, everything within
                // `slack` of the best, consecutive duplicates collapsed,
                // the first `width` kept.
                cands.sort_by_key(|&(_, s)| s);
                let (_, best) = *cands.first().expect("an application has a candidate");
                let mut out: Vec<(u32, u64)> = Vec::new();
                for &c in cands.iter().take_while(|&&(_, s)| s <= best + self.slack) {
                    if out.last() != Some(&c) {
                        out.push(c);
                    }
                }
                out.truncate(self.width);
                out
            }
        };
        let res = Rc::new(res);
        self.opt.insert((n, t), res.clone());
        res
    }
}
