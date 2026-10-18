//! `blc`'s head normal form and its two alternative encodings, ported
//! from `Lambda.lhs` (`hnf`, with its own `subst`/`incv`) and `AIT.lhs`
//! (`encode2`, `encode0`). Indices are 1-based here; each port notes the
//! shift from Tromp's 0-based ones.

use crate::args::R;
use blam::blc::{app, lam, Term};

/// `Lambda.lhs`'s `hnf`: head reduction, under the head's lambdas, with
/// arguments left exactly as substitution makes them. Tromp's version
/// head-normalizes a function's body before substituting into it, which
/// performs the same head steps in another order, so the result is the
/// principal head normal form. That lets this run as a call-by-name
/// environment machine that substitutes only when it reads the result
/// back — linear where eager substitution is quadratic. (Call-by-name,
/// not call-by-need: an argument forced in head position must still read
/// back as written.) `None` once `fuel` β-steps are spent.
pub fn hnf(t: &Term, fuel: u64) -> Option<Term> {
    use std::rc::Rc;
    // A binding: a rigid binder level, or a closure.
    #[derive(Clone)]
    enum B {
        Rigid(u32),
        Clo(Rc<Term>, Env),
    }
    #[derive(Clone)]
    struct Env(Option<Rc<(B, Env)>>);
    fn get(env: &Env, n: u32) -> B {
        let mut e = env;
        for _ in 1..n {
            e = &e.0.as_ref().expect("closed").1;
        }
        e.0.as_ref().expect("closed").0.clone()
    }
    fn cons(b: B, env: &Env) -> Env {
        Env(Some(Rc::new((b, env.clone()))))
    }
    // Read a closure back as a term at binder depth `d`: substitution,
    // no reduction.
    fn quote(t: &Term, env: &Env, d: u32) -> Term {
        match t {
            Term::Var(n) => match get(env, *n) {
                B::Rigid(level) => Term::Var(d - level + 1),
                B::Clo(t, e) => quote(&t, &e, d),
            },
            Term::Lam(b) => lam(quote(b, &cons(B::Rigid(d + 1), env), d + 1)),
            Term::App(f, a) => app(quote(f, env, d), quote(a, env, d)),
        }
    }
    let mut fuel = fuel;
    let mut t: Rc<Term> = Rc::new(t.clone());
    let mut env = Env(None);
    let mut args: Vec<(Rc<Term>, Env)> = Vec::new();
    let mut depth = 0u32;
    loop {
        match &*t {
            Term::App(f, a) => {
                args.push((a.clone(), env.clone()));
                t = f.clone();
            }
            Term::Lam(b) => {
                let b = b.clone();
                match args.pop() {
                    Some((a, ae)) => {
                        fuel = fuel.checked_sub(1)?;
                        env = cons(B::Clo(a, ae), &env);
                    }
                    // The head itself is a lambda: go under it.
                    None => {
                        depth += 1;
                        env = cons(B::Rigid(depth), &env);
                    }
                }
                t = b;
            }
            Term::Var(n) => match get(&env, *n) {
                B::Clo(c, e) => {
                    t = c;
                    env = e;
                }
                B::Rigid(level) => {
                    let mut out = Term::Var(depth - level + 1);
                    for (a, ae) in args.iter().rev() {
                        out = app(out, quote(a, ae, depth));
                    }
                    for _ in 0..depth {
                        out = lam(out);
                    }
                    return Some(out);
                }
            },
        }
    }
}

/// The literal port of `Lambda.lhs`'s `hnf` (eager `subst`), kept as the
/// executable spec [`hnf`] is tested against.
#[cfg(test)]
fn hnf_spec(t: &Term, fuel: u64) -> Option<Term> {
    let mut fuel = fuel;
    go(t, &mut fuel)
}

#[cfg(test)]
fn go(t: &Term, fuel: &mut u64) -> Option<Term> {
    let mut t = t.clone();
    loop {
        match &t {
            Term::Var(_) => return Some(t),
            Term::Lam(e) => return Some(lam(go(e, fuel)?)),
            Term::App(f, a) => {
                let f = go(f, fuel)?;
                match &f {
                    Term::Lam(e) => {
                        *fuel = fuel.checked_sub(1)?;
                        let next = subst(0, e, a);
                        t = next;
                    }
                    _ => return Some(app(f, (**a).clone())),
                }
            }
        }
    }
}

/// `subst i t c`: replace 0-based variable `i` by `c`, closing the gap.
#[cfg(test)]
fn subst(i: u32, t: &Term, c: &Term) -> Term {
    match t {
        Term::Var(k) => {
            let j = k - 1;
            if j == i {
                c.clone()
            } else if j > i {
                Term::Var(k - 1)
            } else {
                t.clone()
            }
        }
        Term::App(a, b) => app(subst(i, a, c), subst(i, b, c)),
        Term::Lam(a) => lam(subst(i + 1, a, &incv(0, c))),
    }
}

/// `incv i t`: 0-based variables at or above `i` move up by one.
#[cfg(test)]
fn incv(i: u32, t: &Term) -> Term {
    match t {
        // 0-based `k - 1 >= i`.
        Term::Var(k) if *k > i => Term::Var(k + 1),
        Term::Var(_) => t.clone(),
        Term::App(a, b) => app(incv(i, a), incv(i, b)),
        Term::Lam(a) => lam(incv(i + 1, a)),
    }
}

/// `encode2`: BLC with each variable's 0-based index Levenshtein-coded.
pub fn blc2(t: &Term) -> String {
    fn var(i: u64, out: &mut String) {
        if i == 0 {
            out.push_str("10");
        } else {
            let b = format!("{i:b}");
            out.push('1');
            var(b.len() as u64 - 1, out);
            out.push_str(&b[1..]);
        }
    }
    let mut out = String::new();
    let mut work = vec![t];
    while let Some(t) = work.pop() {
        match t {
            Term::Var(k) => var(u64::from(*k) - 1, &mut out),
            Term::Lam(b) => {
                out.push_str("00");
                work.push(b);
            }
            Term::App(f, a) => {
                out.push_str("01");
                work.push(a);
                work.push(f);
            }
        }
    }
    out
}

/// `encode0`: Mateusz's context-sensitive code for closed terms, which
/// drops the leading `0` of a lambda or application outside every binder
/// and the final `0` of a variable bound by the outermost one.
pub fn blc0(t: &Term) -> R<String> {
    let mut out = String::new();
    let mut work = vec![(t, 0u32)];
    while let Some((t, n)) = work.pop() {
        match t {
            Term::Var(k) => {
                // `prebin n (DBVar i)`, unrolled: one `1` per step outward.
                let (mut n, mut i) = (n, k - 1);
                loop {
                    if n == 0 {
                        return Err("blam blc size0: the program is not closed".into());
                    }
                    if i == 0 {
                        out.push_str(if n == 1 { "1" } else { "10" });
                        break;
                    }
                    out.push('1');
                    n -= 1;
                    i -= 1;
                }
            }
            Term::Lam(b) => {
                if n > 0 {
                    out.push('0');
                }
                out.push('0');
                work.push((b, n + 1));
            }
            Term::App(f, a) => {
                if n > 0 {
                    out.push('0');
                }
                out.push('1');
                work.push((a, n));
                work.push((f, n));
            }
        }
    }
    Ok(out)
}

#[cfg(test)]
mod tests {
    use super::*;
    use blam::blc::var;

    /// `AIT.lhs`'s own table: `map (size2 . DBVar) [0..17]`.
    #[test]
    fn levenshtein_sizes_match_the_table() {
        let want = [2, 3, 5, 5, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 13, 13];
        for (i, &w) in want.iter().enumerate() {
            assert_eq!(blc2(&var(i as u32 + 1)).len(), w, "index {i}");
        }
    }

    #[test]
    fn mateusz_code_drops_the_context_bits() {
        // λx.x: a top-level λ is `0`, its variable `1`.
        assert_eq!(blc0(&lam(var(1))).unwrap(), "01");
        // λx.λy.x y: `0` `00` `01`, then x — one step out, ending at the
        // outermost binder, so `11` — then y, `10`.
        assert_eq!(blc0(&lam(lam(app(var(2), var(1))))).unwrap(), "000011110");
        assert!(blc0(&var(1)).is_err());
    }

    /// The machine against the literal port, on every closed term through
    /// 20 bits (both with the same fuel; divergers run out on both sides).
    #[test]
    fn hnf_matches_the_literal_port() {
        use blam::blc::enumerate::for_each_closed;
        use blam::blc::wire::enc_to_string;
        let mut n_terms = 0;
        for n in 4..=20 {
            for_each_closed(n, &mut |enc, len| {
                let t = blam::parse_all(&enc_to_string(enc, len)).unwrap();
                let fast = hnf(&t, 200);
                let spec = hnf_spec(&t, 200);
                if let (Some(a), Some(b)) = (&fast, &spec) {
                    assert_eq!(a, b, "{t}");
                } else {
                    // Fuel is counted the same way only when both finish;
                    // a diverger must run out on both.
                    assert_eq!(fast.is_none(), hnf_spec(&t, 20_000).is_none(), "{t}");
                }
                n_terms += 1;
            });
        }
        assert_eq!(n_terms, 1972);
    }

    #[test]
    fn hnf_leaves_arguments_alone() {
        // (λx.x) (λy. y ((λz.z) y)): the head redex goes, the one in
        // argument position stays.
        let i = lam(var(1));
        let t = app(i.clone(), lam(app(var(1), app(i.clone(), var(1)))));
        assert_eq!(hnf(&t, 10).unwrap().to_string(), "\\1 ((\\1) 1)");
        // Ω has none.
        let w = lam(app(var(1), var(1)));
        assert!(hnf(&app(w.clone(), w), 1000).is_none());
    }
}
