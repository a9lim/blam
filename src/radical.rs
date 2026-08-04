//! Exact radical-aggregate accounting shared by the dyadicity-decision
//! bins (`qradical`, phase 1: the λ⁵-idiom sector; `qcomplement`, phase 2:
//! the non-λ⁵ complement): a loud-overflow accumulator over `Dw` and the
//! (rational, √2) decomposition of real reduced masses.

use crate::dw::Dw;

/// Exact Dw accumulator with a loud overflow escape (the radical question
/// is exact or nothing: an overflowed aggregate reports `ok = false`
/// rather than a wrong number).
#[derive(Clone, Copy)]
pub struct Exact {
    pub v: Dw,
    pub ok: bool,
}

impl Exact {
    pub const ZERO: Exact = Exact {
        v: Dw::ZERO,
        ok: true,
    };

    pub fn add(&mut self, d: Option<Dw>) {
        match d {
            Some(x) if self.ok => match self.v.add(x) {
                Some(s) => self.v = s,
                None => self.ok = false,
            },
            Some(_) => {}
            None => self.ok = false,
        }
    }

    pub fn merge(&mut self, o: &Exact) {
        if !o.ok {
            self.ok = false;
        } else {
            self.add(Some(o.v));
        }
    }
}

/// (rational part, √2 part) of a reduced REAL Dw, each as (num, 2^denom).
pub fn radical_parts(m: Dw) -> ((i128, u32), (i128, u32)) {
    let r = m.reduce();
    assert!(r.c == 0 && r.d == -r.b, "aggregate must be real: {r:?}");
    if r.k.is_multiple_of(2) {
        ((r.a, r.k / 2), (r.b, r.k / 2))
    } else {
        ((r.b, (r.k - 1) / 2), (r.a, r.k.div_ceil(2)))
    }
}

/// The √2 part alone, re-embedded as a *rational* ring element:
/// s/2^e ↦ Dw{a: s, k: 2e}. This lets √2-coefficients ride their own
/// `Exact` accumulator, decoupled from the full aggregate — the threshold
/// deliverable survives even if the (much larger) rational part overflows.
pub fn sqrt2_part(m: Dw) -> Dw {
    let (_, (s, e)) = radical_parts(m);
    Dw {
        a: s,
        b: 0,
        c: 0,
        d: 0,
        k: 2 * e,
    }
}

pub fn is_dyadic(m: Dw) -> bool {
    let r = m.reduce();
    r.b == 0 && r.c == 0 && r.d == 0 && r.k.is_multiple_of(2)
}

/// Render decomposed parts for the per-size report lines.
pub fn show_parts(parts: ((i128, u32), (i128, u32))) -> String {
    let ((ra, re), (sa, se)) = parts;
    format!("{ra}/2^{re} + ({sa}/2^{se})·√2")
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn sqrt2_part_roundtrip() {
        // (2−√2)/4 = (2 − √2)/√2^4: P53's halting mass. Its √2 part is
        // −1/4, which re-embeds as Dw{a: −1, k: 4}.
        let m = Dw {
            a: 2,
            b: -1,
            c: 0,
            d: 1,
            k: 4,
        };
        let s = sqrt2_part(m);
        assert_eq!((s.a, s.b, s.c, s.d, s.k), (-1, 0, 0, 0, 4));
        assert!(!is_dyadic(m));
        assert!(is_dyadic(Dw::ONE));
        // Dyadic masses have zero √2 part.
        assert!(sqrt2_part(Dw::ONE).is_zero());
    }
}
