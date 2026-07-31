use blc::term::{app, lam, var, Term};
use blc::{normalize, parse_all, parse_prefix, Budget, OutOfFuel, ParseError};

fn nf(t: &Term, limit: u64) -> Result<Term, OutOfFuel> {
    normalize(t, &mut Budget::new(limit))
}

/// Church numeral: \f.\x. f^n x, i.e. \\ 2 (2 (... (2 1))).
fn church(n: u32) -> Term {
    let mut body = var(1);
    for _ in 0..n {
        body = app(var(2), body);
    }
    lam(lam(body))
}

fn i() -> Term {
    lam(var(1))
}

fn k() -> Term {
    lam(lam(var(2)))
}

fn omega() -> Term {
    let w = lam(app(var(1), var(1)));
    app(w.clone(), w)
}

// -- encoding ---------------------------------------------------------------

#[test]
fn hand_computed_encodings() {
    assert_eq!(i().to_bits(), "0010");
    assert_eq!(k().to_bits(), "0000110");
    assert_eq!(lam(lam(app(var(1), var(1)))).to_bits(), "0000011010");
    assert_eq!(omega().to_bits(), "010001101000011010");
}

#[test]
fn bit_size_matches_encoding_length() {
    for t in [i(), k(), omega(), church(5)] {
        assert_eq!(t.bit_size() as usize, t.to_bits().len());
    }
}

#[test]
fn parse_round_trips() {
    // S combinator among others; build, encode, reparse.
    let s = lam(lam(lam(app(
        app(var(3), var(1)),
        app(var(2), var(1)),
    ))));
    for t in [i(), k(), s, omega(), church(7)] {
        assert_eq!(parse_all(&t.to_bits()).unwrap(), t);
    }
}

#[test]
fn parse_rejects_junk() {
    assert_eq!(parse_all("00"), Err(ParseError::UnexpectedEof));
    assert_eq!(parse_all("1"), Err(ParseError::UnexpectedEof));
    assert_eq!(
        parse_all("0010 0010"),
        Err(ParseError::TrailingBits { consumed: 4 })
    );
    assert_eq!(parse_all("0012"), Err(ParseError::BadChar('2')));
}

#[test]
fn term_code_is_self_delimiting() {
    // A term parses off the front of a stream, leaving the rest untouched:
    // the prefix property that makes the 2^-|p| sum a Kraft sum.
    let stream = format!("{}1101001", k().to_bits());
    let mut bits = stream.chars().map(|c| c == '1');
    let t = parse_prefix(&mut bits).unwrap();
    assert_eq!(t, k());
    let rest: String = bits.map(|b| if b { '1' } else { '0' }).collect();
    assert_eq!(rest, "1101001");
}

#[test]
fn closedness() {
    assert!(i().is_closed());
    assert!(k().is_closed());
    assert!(!var(1).is_closed());
    // \1 2 — the 2 reaches out of the single binder.
    assert!(!lam(app(var(1), var(2))).is_closed());
    assert_eq!(lam(app(var(1), var(3))).max_free(0), 2);
}

// -- reduction --------------------------------------------------------------

#[test]
fn identity_and_k() {
    let ii = app(i(), i());
    assert_eq!(nf(&ii, 10).unwrap(), i());

    // K a b -> a, with a, b closed distinguishable terms.
    let kab = app(app(k(), church(2)), church(3));
    assert_eq!(nf(&kab, 10).unwrap(), church(2));
}

#[test]
fn substitution_respects_binders() {
    // (\x. \y. x) applied under existing binders: classic capture trap.
    // (\ \ 2) 1 inside a lambda: \((\ \ 2) 1) -> \ \ 2  (the free 1 must be
    // shifted to 2 under the surviving binder, not captured as 1).
    let t = lam(app(lam(lam(var(2))), var(1)));
    assert_eq!(nf(&t, 10).unwrap(), lam(lam(var(2))));
}

#[test]
fn church_arithmetic() {
    // succ = \n.\f.\x. f (n f x)
    let succ = lam(lam(lam(app(var(2), app(app(var(3), var(2)), var(1))))));
    assert_eq!(nf(&app(succ.clone(), church(0)), 100).unwrap(), church(1));
    assert_eq!(nf(&app(succ, church(6)), 100).unwrap(), church(7));

    // plus = \m.\n.\f.\x. m f (n f x)
    let plus = lam(lam(lam(lam(app(
        app(var(4), var(2)),
        app(app(var(3), var(2)), var(1)),
    )))));
    assert_eq!(
        nf(&app(app(plus, church(2)), church(3)), 1000).unwrap(),
        church(5)
    );

    // Church exponentiation by application: c2 c2 = c4.
    assert_eq!(nf(&app(church(2), church(2)), 1000).unwrap(), church(4));
}

#[test]
fn normal_order_reaches_nf_where_applicative_would_not() {
    // K I Omega normalizes under normal order despite the diverging argument.
    let t = app(app(k(), i()), omega());
    assert_eq!(nf(&t, 100).unwrap(), i());
}

#[test]
fn omega_exhausts_fuel() {
    let mut fuel = Budget::new(1000);
    assert_eq!(normalize(&omega(), &mut fuel), Err(OutOfFuel::Beta));
    assert_eq!(fuel.steps, 1000);
}

#[test]
fn step_counts() {
    // Each beta contraction is one tick.
    let mut fuel = Budget::new(100);
    normalize(&app(i(), i()), &mut fuel).unwrap();
    assert_eq!(fuel.steps, 1);

    let mut fuel = Budget::new(100);
    normalize(&app(app(k(), i()), i()), &mut fuel).unwrap();
    assert_eq!(fuel.steps, 2);
}
