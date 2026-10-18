//! `blc`'s combinatory-logic actions, ported from `Lambda.lhs` and
//! `AIT.lhs`: Tromp's improved bracket abstraction (`toCL`), Oleg
//! Kiselyov's compositional one (`toCLOK`), the BCW translation
//! (`toBCW`), SK normalization (`strongCL`), and the two encoders (`bcl`,
//! `blcOK`). Variables are 0-based here, as in the Haskell, so `comb`
//! prints them the way `blc` does.
//!
//! `evalCL` is lazy in the Haskell — `K u x` never evaluates `x`, and `S`
//! shares its third argument — so the port evaluates through memoized
//! thunks, which keeps it terminating exactly where `blc comb_nf` does.

use crate::args::R;
use blam::blc::Term;
use std::cell::RefCell;
use std::fmt;
use std::rc::Rc;

/// How deep the translations and the lazy SK evaluator may recurse
/// before `comb_nf` gives up (Tromp's runs until the heap is gone): far
/// inside the CLI's 1 GiB stack.
const MAX_NEST: usize = 1_000_000;

thread_local! {
    static NEST: std::cell::Cell<usize> = const { std::cell::Cell::new(0) };
}

/// The panic payload a too-deep recursion unwinds with.
struct TooDeep;

/// One level of recursion, released when dropped.
struct Nest;

fn deeper() -> Nest {
    let n = NEST.with(|c| {
        let n = c.get() + 1;
        c.set(n);
        n
    });
    if n > MAX_NEST {
        std::panic::panic_any(TooDeep);
    }
    Nest
}

impl Drop for Nest {
    fn drop(&mut self) {
        NEST.with(|c| c.set(c.get() - 1));
    }
}

#[derive(Clone)]
enum Cl {
    Var(u32),
    S,
    K,
    I,
    B,
    C,
    R,
    App(Rc<Cl>, Rc<Cl>),
    /// An unevaluated `evalCL` / `eval2`, forced on inspection.
    Lazy(Thunk),
}

#[derive(Clone)]
struct Thunk(Rc<RefCell<Th>>);

enum Th {
    Todo(Box<dyn FnOnce() -> Cl>),
    Busy,
    Done(Cl),
}

impl Thunk {
    /// A suspended computation, as a term.
    fn lazy(f: impl FnOnce() -> Cl + 'static) -> Cl {
        Cl::Lazy(Thunk(Rc::new(RefCell::new(Th::Todo(Box::new(f))))))
    }
}

/// Weak head: the term with any thunk at its root evaluated (memoized).
fn force(c: &Cl) -> Cl {
    let _nest = deeper();
    let mut c = c.clone();
    while let Cl::Lazy(t) = &c {
        let state = std::mem::replace(&mut *t.0.borrow_mut(), Th::Busy);
        let v = match state {
            Th::Done(v) => v,
            Th::Todo(f) => f(),
            Th::Busy => panic!("blam blc: comb_nf: an evaluation needs its own value"),
        };
        *t.0.borrow_mut() = Th::Done(v.clone());
        c = v;
    }
    c
}

/// Structural equality, forcing as it goes (Haskell's derived `Eq`).
fn same(x: &Cl, y: &Cl) -> bool {
    let _nest = deeper();
    match (force(x), force(y)) {
        (Cl::Var(i), Cl::Var(j)) => i == j,
        (Cl::S, Cl::S)
        | (Cl::K, Cl::K)
        | (Cl::I, Cl::I)
        | (Cl::B, Cl::B)
        | (Cl::C, Cl::C)
        | (Cl::R, Cl::R) => true,
        (Cl::App(a, b), Cl::App(c, d)) => same(&a, &c) && same(&b, &d),
        _ => false,
    }
}

fn ap(x: Cl, y: Cl) -> Cl {
    Cl::App(Rc::new(x), Rc::new(y))
}

fn is(c: &Cl, k: fn(&Cl) -> bool) -> bool {
    k(&force(c))
}

/// `CApp (CApp CombS CombK) _`, the pattern `abstract`, `freeIn` and `drip`
/// all treat as a constant.
fn is_sk_app(c: &Cl) -> bool {
    match force(c) {
        Cl::App(f, _) => match force(&f) {
            Cl::App(s, k) => is(&s, |c| matches!(c, Cl::S)) && is(&k, |c| matches!(c, Cl::K)),
            _ => false,
        },
        _ => false,
    }
}

/// `Show CL`: variables as 0-based numbers, application left-associated.
impl fmt::Display for Cl {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        fn go(c: &Cl, prec: u8, f: &mut fmt::Formatter<'_>) -> fmt::Result {
            let _nest = deeper();
            match force(c) {
                Cl::Var(v) => write!(f, "{v}"),
                Cl::S => f.write_str("S"),
                Cl::K => f.write_str("K"),
                Cl::I => f.write_str("I"),
                Cl::B => f.write_str("B"),
                Cl::C => f.write_str("C"),
                Cl::R => f.write_str("R"),
                Cl::App(x, a) => {
                    if prec > 1 {
                        f.write_str("(")?;
                    }
                    go(&x, 1, f)?;
                    f.write_str(" ")?;
                    go(&a, 2, f)?;
                    if prec > 1 {
                        f.write_str(")")?;
                    }
                    Ok(())
                }
                Cl::Lazy(_) => unreachable!("forced"),
            }
        }
        go(self, 0, f)
    }
}

/// `drip`: every variable moves in by one; `S K _` is left alone.
fn drip(c: &Cl) -> Cl {
    let _nest = deeper();
    if is_sk_app(c) {
        return force(c);
    }
    match force(c) {
        Cl::Var(0) => panic!("blam blc: Can't drip CVar 0"),
        Cl::Var(i) => Cl::Var(i - 1),
        Cl::App(x, y) => ap(drip(&x), drip(&y)),
        x => x,
    }
}

/// `bump`: every variable moves out by one.
fn bump(c: &Cl) -> Cl {
    let _nest = deeper();
    match force(c) {
        Cl::Var(i) => Cl::Var(i + 1),
        Cl::App(x, y) => ap(bump(&x), bump(&y)),
        x => x,
    }
}

/// `freeIn` as `abstract` defines it: `S K _` has no free variables.
fn free_in(fv: &dyn Fn(u32) -> bool, c: &Cl) -> bool {
    let _nest = deeper();
    if is_sk_app(c) {
        return false;
    }
    match force(c) {
        Cl::App(x, y) => free_in(fv, &x) || free_in(fv, &y),
        Cl::Var(i) => fv(i),
        _ => false,
    }
}

fn free0(c: &Cl) -> bool {
    free_in(&|i| i == 0, c)
}

fn is_const(c: &Cl) -> bool {
    !free_in(&|_| true, c)
}

fn to_cl(t: &Term) -> Cl {
    match t {
        Term::Var(k) => Cl::Var(k - 1),
        Term::App(x, y) => ap(to_cl(x), to_cl(y)),
        Term::Lam(e) => abstract_(&to_cl(e)),
    }
}

/// Tromp's improved bracket abstraction `[x] e`, rule by rule.
fn abstract_(e: &Cl) -> Cl {
    let _nest = deeper();
    // [x] (S K M) ≡ S K
    if is_sk_app(e) {
        if let Cl::App(sk, _) = force(e) {
            return force(&sk);
        }
    }
    if free0(e) {
        occabstract(e)
    } else {
        // [x] M ≡ K M
        ap(Cl::K, drip(e))
    }
}

/// The pieces of `CApp x y`, forced.
fn split(c: &Cl) -> Option<(Cl, Cl)> {
    match force(c) {
        Cl::App(x, y) => Some((force(&x), force(&y))),
        _ => None,
    }
}

fn occabstract(e: &Cl) -> Cl {
    let _nest = deeper();
    let e = force(e);
    // [x] x ≡ I
    if matches!(e, Cl::Var(0)) {
        return Cl::I;
    }
    if let Some((m, x)) = split(&e) {
        // [x] (M x) ≡ M
        if matches!(x, Cl::Var(0)) && !free0(&m) {
            return drip(&m);
        }
    }
    if let Some((lm, l2)) = split(&e) {
        if let Some((l, m)) = split(&lm) {
            // [x] (L M L) ≡ [x] (S S K L M)
            if same(&l, &l2) {
                return occabstract(&ap(ap(ap(ap(Cl::S, Cl::S), Cl::K), l), m));
            }
        }
    }
    if let Some((m, nl)) = split(&e) {
        if let Some((n, l)) = split(&nl) {
            // [x] (M (N L)) ≡ [x] (S ([x] M) N L)
            if is_const(&m) && is_const(&n) {
                return occabstract(&ap(ap(ap(Cl::S, abstract_(&m)), n), l));
            }
        }
    }
    // [x] (S (K M) (S (K N) L)) ≡ [x] (S (K (S (K M) N))) L
    if let Some((skm, sknl)) = split(&e) {
        if let (Some((s1, km)), Some((skn, l))) = (split(&skm), split(&sknl)) {
            if let (Some((k1, m)), Some((s2, kn))) = (split(&km), split(&skn)) {
                if let Some((k2, n)) = split(&kn) {
                    if matches!(s1, Cl::S)
                        && matches!(k1, Cl::K)
                        && matches!(s2, Cl::S)
                        && matches!(k2, Cl::K)
                    {
                        let inner = ap(ap(Cl::S, ap(Cl::K, m)), n);
                        return occabstract(&ap(ap(Cl::S, ap(Cl::K, inner)), l));
                    }
                }
            }
        }
    }
    if let Some((mn, l)) = split(&e) {
        if let Some((m, n)) = split(&mn) {
            // [x] ((M N) L) ≡ [x] (S M ([x] L) N)
            if is_const(&m) && is_const(&l) {
                return occabstract(&ap(ap(ap(Cl::S, m), abstract_(&l)), n));
            }
        }
    }
    if let Some((ml, nl)) = split(&e) {
        if let (Some((m, l)), Some((n, l2))) = (split(&ml), split(&nl)) {
            // [x] ((M L) (N L)) ≡ [x] (S M N L)
            if same(&l, &l2) && is_const(&m) && is_const(&n) {
                return occabstract(&ap(ap(ap(Cl::S, m), n), l));
            }
        }
    }
    match split(&e) {
        // [x] (M N) ≡ S ([x] M) ([x] N)
        Some((e1, e2)) => ap(ap(Cl::S, abstract_(&e1)), abstract_(&e2)),
        None => panic!("blam blc: Impossible occabstract argument"),
    }
}

/// `evalCL`: S/K reduction, lazily.
fn eval_cl(c: &Cl) -> Cl {
    let _nest = deeper();
    match force(c) {
        Cl::App(x, y) => {
            let x = eval_cl(&x);
            let y = Thunk::lazy(move || eval_cl(&y));
            eval2(x, y)
        }
        x => x,
    }
}

/// `eval2`, with the S rule's tail call turned into a loop: Haskell runs
/// it as a jump, and a recursive Rust call per S-step overflows any stack
/// on a long reduction.
fn eval2(u: Cl, v: Cl) -> Cl {
    let _nest = deeper();
    let (mut u, mut v) = (u, v);
    loop {
        u = force(&u);
        if let Cl::App(f, a) = &u {
            let f = force(f);
            // eval2 (K u) _ = u
            if matches!(f, Cl::K) {
                return force(a);
            }
            // eval2 (S u v) w = eval2 (eval2 u w) (eval2 v w)
            if let Cl::App(s, uu) = &f {
                if is(s, |c| matches!(c, Cl::S)) {
                    let (uu, vv) = ((**uu).clone(), (**a).clone());
                    let w2 = v.clone();
                    let left = eval2(uu, v);
                    v = Thunk::lazy(move || eval2(vv, w2));
                    u = left;
                    continue;
                }
            }
        }
        return ap(u, v);
    }
}

/// `strongCL`: SK-normalize, abstracting partial applications back.
fn strong_cl(c: &Cl) -> Cl {
    let _nest = deeper();
    strong(&eval_cl(c))
}

fn strong(c: &Cl) -> Cl {
    let _nest = deeper();
    let c = force(c);
    if let Some((f, x)) = split(&c) {
        if matches!(f, Cl::K) {
            return abstract_(&strong(&x));
        }
        if let Some((s, _)) = split(&f) {
            if matches!(s, Cl::S) {
                return abstract_(&strong_cl(&ap(bump(&c), Cl::Var(0))));
            }
        }
        if matches!(f, Cl::S) {
            let applied = ap(ap(bump(&bump(&c)), Cl::Var(1)), Cl::Var(0));
            return abstract_(&abstract_(&strong_cl(&applied)));
        }
        return ap(strong(&f), strong(&x));
    }
    c
}

/// `toBCW`'s abstraction: B, C, K, I and S by where the variable occurs.
fn abstract_bcw(e: &Cl) -> Cl {
    fn fin(c: &Cl) -> bool {
        match force(c) {
            Cl::App(x, y) => fin(&x) || fin(&y),
            Cl::Var(i) => i == 0,
            _ => false,
        }
    }
    let e = force(e);
    if !fin(&e) {
        return ap(Cl::K, drip(&e));
    }
    if matches!(e, Cl::Var(0)) {
        return Cl::I;
    }
    let Some((e1, e2)) = split(&e) else {
        panic!("blam blc: Impossible occabstract argument")
    };
    if matches!(e2, Cl::Var(0)) && !fin(&e1) {
        return drip(&e1);
    }
    match (fin(&e1), fin(&e2)) {
        (false, true) => ap(ap(Cl::B, drip(&e1)), abstract_bcw(&e2)),
        (true, false) => ap(ap(Cl::C, abstract_bcw(&e1)), drip(&e2)),
        (true, true) => ap(ap(Cl::S, abstract_bcw(&e1)), abstract_bcw(&e2)),
        (false, false) => panic!("blam blc: Impossible free variable in occabstract"),
    }
}

fn to_bcw_cl(t: &Term) -> Cl {
    match t {
        Term::Var(k) => Cl::Var(k - 1),
        Term::App(x, y) => ap(to_bcw_cl(x), to_bcw_cl(y)),
        Term::Lam(e) => abstract_bcw(&to_bcw_cl(e)),
    }
}

/// Kiselyov's compositional bracket abstraction (`toCLOK`).
fn to_cl_ok(t: &Term) -> R<Cl> {
    let (lvl, cl) = convert(t);
    if lvl.is_empty() {
        Ok(cl)
    } else {
        Err("blam blc: Kiselyov abstraction failed".into())
    }
}

fn convert(t: &Term) -> (Vec<bool>, Cl) {
    match t {
        Term::Var(1) => (vec![true], Cl::I),
        Term::Var(k) => {
            let (mut n, c) = convert(&Term::Var(k - 1));
            n.insert(0, false);
            (n, c)
        }
        Term::Lam(e) => {
            let (n, d) = convert(e);
            match n.split_first() {
                None => (vec![], abstract_(&d)),
                Some((false, rest)) => {
                    let rest = rest.to_vec();
                    (rest.clone(), hash((vec![], Cl::K), (rest, d)))
                }
                Some((true, rest)) => (rest.to_vec(), d),
            }
        }
        Term::App(e1, e2) => {
            let t1 = convert(e1);
            let t2 = convert(e2);
            (zip_or(&t1.0, &t2.0), hash(t1, t2))
        }
    }
}

fn zip_or(xs: &[bool], ys: &[bool]) -> Vec<bool> {
    let n = xs.len().max(ys.len());
    (0..n)
        .map(|i| xs.get(i).copied().unwrap_or(false) || ys.get(i).copied().unwrap_or(false))
        .collect()
}

fn is_i(c: &Cl) -> bool {
    matches!(force(c), Cl::I)
}

/// Kiselyov's `#`, its equations in order.
fn hash(a: (Vec<bool>, Cl), b: (Vec<bool>, Cl)) -> Cl {
    let (n1, d1) = a;
    let (n2, d2) = b;
    match (n1.as_slice(), n2.as_slice()) {
        ([], []) => ap(d1, d2),
        ([], [true]) if is_i(&d2) => d1,
        ([], [true, rest @ ..]) => hash((vec![], ap(Cl::B, d1)), (rest.to_vec(), d2)),
        ([], [false, rest @ ..]) => hash((vec![], d1), (rest.to_vec(), d2)),
        ([true], []) if is_i(&d1) => ap(ap(Cl::C, Cl::I), d2),
        ([true], [false, rest @ ..]) if is_i(&d1) => {
            hash((vec![], ap(Cl::C, Cl::I)), (rest.to_vec(), d2))
        }
        ([true, rest @ ..], []) => hash((vec![], ap(Cl::R, d2)), (rest.to_vec(), d1)),
        ([false, rest @ ..], []) => hash((rest.to_vec(), d1), (vec![], d2)),
        ([false, ..], [true]) if is_i(&d2) => d1,
        ([b1, r1 @ ..], [b2, r2 @ ..]) => {
            let r1 = r1.to_vec();
            let inner = (r1.clone(), d1);
            let combined = match (b1, b2) {
                (true, true) => hash((vec![], Cl::S), inner),
                (false, true) => hash((vec![], Cl::B), inner),
                (true, false) => hash((vec![], Cl::C), inner),
                (false, false) => inner.1,
            };
            hash((r1, combined), (r2.to_vec(), d2))
        }
    }
}

/// `encode` on `CL`: binary combinatory logic over S and K.
fn bcl_bits(c: &Cl, out: &mut String) -> R<()> {
    match force(c) {
        Cl::K => out.push_str("00"),
        Cl::S => out.push_str("01"),
        Cl::I => out.push_str("11010000"),
        Cl::App(x, y) => {
            out.push('1');
            bcl_bits(&x, out)?;
            bcl_bits(&y, out)?;
        }
        Cl::Var(_) => return Err("blam blc: can't encode variables".into()),
        Cl::B => return Err("blam blc: can't encode B".into()),
        Cl::C => return Err("blam blc: can't encode C".into()),
        Cl::R => return Err("blam blc: can't encode R".into()),
        Cl::Lazy(_) => unreachable!("forced"),
    }
    Ok(())
}

/// `encodeOK`: each combinator as its lambda term's BLC bits.
fn ok_bits(c: &Cl, out: &mut String) -> R<()> {
    match force(c) {
        Cl::I => out.push_str("0010"),
        Cl::K => out.push_str("0000110"),
        Cl::B => out.push_str("0000000111100111010"),
        Cl::C => out.push_str("0000000101111010110"),
        Cl::S => out.push_str("00000001011110100111010"),
        Cl::R => out.push_str("0000000101110101110"),
        Cl::App(x, y) => {
            out.push_str("01");
            ok_bits(&x, out)?;
            ok_bits(&y, out)?;
        }
        Cl::Var(_) => return Err("blam blc: can't encode variables".into()),
        Cl::Lazy(_) => unreachable!("forced"),
    }
    Ok(())
}

pub fn comb(t: &Term) -> String {
    to_cl(t).to_string()
}

/// `strongCL . toCL`. A reduction that recurses past [`MAX_NEST`] levels
/// is reported, not followed into a stack overflow.
pub fn comb_nf(t: &Term) -> R<String> {
    // Silence the default hook for the one payload this unwinds with.
    let hook = std::panic::take_hook();
    std::panic::set_hook(Box::new(move |info| {
        if !info.payload().is::<TooDeep>() {
            hook(info)
        }
    }));
    let r = std::panic::catch_unwind(std::panic::AssertUnwindSafe(|| {
        strong_cl(&to_cl(t)).to_string()
    }));
    NEST.with(|c| c.set(0));
    match r {
        Ok(s) => Ok(s),
        Err(e) if e.is::<TooDeep>() => Err(format!(
            "blam blc comb_nf: SK reduction nested deeper than {MAX_NEST} levels; \
             it may not terminate"
        )),
        Err(e) => std::panic::resume_unwind(e),
    }
}

pub fn comb_ok(t: &Term) -> R<String> {
    Ok(to_cl_ok(t)?.to_string())
}

pub fn blc_ok(t: &Term) -> R<String> {
    let mut out = String::new();
    ok_bits(&to_cl_ok(t)?, &mut out)?;
    Ok(out)
}

pub fn bcw(t: &Term) -> String {
    to_bcw_cl(t).to_string()
}

pub fn bcl(t: &Term) -> R<String> {
    let mut out = String::new();
    bcl_bits(&to_cl(t), &mut out)?;
    Ok(out)
}

#[cfg(test)]
mod tests {
    use super::*;
    use blam::blc::{app, lam, var};

    #[test]
    fn small_translations() {
        let i = lam(var(1));
        let k = lam(lam(var(2)));
        assert_eq!(comb(&i), "I");
        assert_eq!(comb(&k), "K");
        assert_eq!(bcw(&k), "K");
        assert_eq!(comb_ok(&i).unwrap(), "I");
        assert_eq!(bcl(&k).unwrap(), "00");
        // λx.λy.y x — C I under BCW.
        let t = lam(lam(app(var(1), var(2))));
        assert_eq!(bcw(&t), "C I");
    }

    #[test]
    fn sk_normalization_is_lazy() {
        // K I Ω: Ω is discarded unevaluated.
        let w = lam(app(var(1), var(1)));
        let t = app(app(lam(lam(var(2))), lam(var(1))), app(w.clone(), w));
        assert_eq!(comb_nf(&t).unwrap(), "I");
    }
}
