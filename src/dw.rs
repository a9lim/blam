//! Exact Clifford+T amplitude arithmetic: the ring Z[ω]/√2^k, ω = e^{iπ/4}.
//!
//! A value is (a + b·ω + c·ω² + d·ω³)/√2^k with integer coefficients and
//! ω⁴ = −1. Every amplitude reachable by {H, T, CNOT} from |0…0⟩ lives here
//! exactly (DESIGN-QBLC.md "Exact arithmetic"): H's 1/√2 raises k, T
//! multiplies by ω, CNOT permutes. √2 = ω − ω³ sits in the numerator ring,
//! so denominator alignment is numerator multiplication by √2.
//!
//! All coefficient arithmetic is checked i128; overflow (or a denominator
//! exponent beyond K_CAP) surfaces as `None`, which the evaluator maps to
//! the Capacity fate — a resource verdict, never a wrong number.

/// Denominator-exponent cap: √2^K_CAP ≤ 2^64 keeps census-sum numerators
/// comfortably inside i128 (see qpilot's exact accumulation).
pub const K_CAP: u32 = 128;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Dw {
    pub a: i128,
    pub b: i128,
    pub c: i128,
    pub d: i128,
    /// √2-denominator exponent.
    pub k: u32,
}

impl Dw {
    pub const ZERO: Dw = Dw {
        a: 0,
        b: 0,
        c: 0,
        d: 0,
        k: 0,
    };
    pub const ONE: Dw = Dw {
        a: 1,
        b: 0,
        c: 0,
        d: 0,
        k: 0,
    };
    /// ω itself (T-gate phase).
    pub const OMEGA: Dw = Dw {
        a: 0,
        b: 1,
        c: 0,
        d: 0,
        k: 0,
    };

    pub fn is_zero(&self) -> bool {
        self.a == 0 && self.b == 0 && self.c == 0 && self.d == 0
    }

    /// Multiply the numerator by √2 = ω − ω³: (a,b,c,d) ↦ (b−d, a+c, b+d, c−a).
    fn num_mul_sqrt2(self) -> Option<Dw> {
        Some(Dw {
            a: self.b.checked_sub(self.d)?,
            b: self.a.checked_add(self.c)?,
            c: self.b.checked_add(self.d)?,
            d: self.c.checked_sub(self.a)?,
            k: self.k,
        })
    }

    /// Rewrite to denominator exponent `k2 ≥ k` (value unchanged).
    fn raise_k(self, k2: u32) -> Option<Dw> {
        if k2 > K_CAP {
            return None;
        }
        let mut v = self;
        while v.k < k2 {
            v = v.num_mul_sqrt2()?;
            v.k += 1;
        }
        Some(v)
    }

    /// Canonical form: lower k while every coefficient stays integral under
    /// the inverse of num_mul_sqrt2 (A,B,C,D) ↦ ((B−D)/2, (A+C)/2, (B+D)/2, (C−A)/2).
    pub fn reduce(self) -> Dw {
        let mut v = self;
        while v.k > 0 {
            // Inverse of (A,B,C,D) = (b−d, a+c, b+d, c−a):
            //   a = (B−D)/2, b = (A+C)/2, c = (B+D)/2, d = (C−A)/2.
            let (na2, nb2, nc2, nd2) = (v.b - v.d, v.a + v.c, v.b + v.d, v.c - v.a);
            if na2 % 2 != 0 || nb2 % 2 != 0 || nc2 % 2 != 0 || nd2 % 2 != 0 {
                break;
            }
            v = Dw {
                a: na2 / 2,
                b: nb2 / 2,
                c: nc2 / 2,
                d: nd2 / 2,
                k: v.k - 1,
            };
        }
        v
    }

    pub fn add(self, o: Dw) -> Option<Dw> {
        let k = self.k.max(o.k);
        let x = self.raise_k(k)?;
        let y = o.raise_k(k)?;
        Some(Dw {
            a: x.a.checked_add(y.a)?,
            b: x.b.checked_add(y.b)?,
            c: x.c.checked_add(y.c)?,
            d: x.d.checked_add(y.d)?,
            k,
        })
    }

    pub fn sub(self, o: Dw) -> Option<Dw> {
        self.add(o.neg())
    }

    pub fn neg(self) -> Dw {
        Dw {
            a: -self.a,
            b: -self.b,
            c: -self.c,
            d: -self.d,
            k: self.k,
        }
    }

    pub fn mul(self, o: Dw) -> Option<Dw> {
        // (a1 + b1ω + c1ω² + d1ω³)(a2 + b2ω + c2ω² + d2ω³), ω⁴ = −1.
        let m = |x: i128, y: i128| x.checked_mul(y);
        let a = m(self.a, o.a)?
            .checked_sub(m(self.b, o.d)?)?
            .checked_sub(m(self.c, o.c)?)?
            .checked_sub(m(self.d, o.b)?)?;
        let b = m(self.a, o.b)?
            .checked_add(m(self.b, o.a)?)?
            .checked_sub(m(self.c, o.d)?)?
            .checked_sub(m(self.d, o.c)?)?;
        let c = m(self.a, o.c)?
            .checked_add(m(self.b, o.b)?)?
            .checked_add(m(self.c, o.a)?)?
            .checked_sub(m(self.d, o.d)?)?;
        let d = m(self.a, o.d)?
            .checked_add(m(self.b, o.c)?)?
            .checked_add(m(self.c, o.b)?)?
            .checked_add(m(self.d, o.a)?)?;
        let k = self.k.checked_add(o.k)?;
        if k > K_CAP {
            return None;
        }
        Some(Dw { a, b, c, d, k }.reduce())
    }

    /// Complex conjugate: ω̄ = −ω³, so (a,b,c,d) ↦ (a, −d, −c, −b).
    pub fn conj(self) -> Dw {
        Dw {
            a: self.a,
            b: -self.d,
            c: -self.c,
            d: -self.b,
            k: self.k,
        }
    }

    /// |z|² = z·z̄ — always a real ring element (c = 0, b = −d form).
    pub fn norm_sq(self) -> Option<Dw> {
        self.mul(self.conj())
    }

    /// Divide by √2 (value): just raise the denominator exponent.
    pub fn div_sqrt2(self) -> Option<Dw> {
        if self.k + 1 > K_CAP {
            return None;
        }
        Some(Dw {
            k: self.k + 1,
            ..self
        })
    }

    /// Multiply the value by 2^(−e) (Kraft weighting): k += 2e.
    pub fn div_pow2(self, e: u32) -> Option<Dw> {
        let k = self.k.checked_add(2 * e)?;
        if k > K_CAP + 96 {
            // Census accumulators may exceed K_CAP's per-amplitude bound;
            // 96 extra √2-halvings covers Kraft weights at census sizes.
            return None;
        }
        Some(Dw { k, ..self })
    }

    /// True iff the value is real (equals its own conjugate).
    pub fn is_real(&self) -> bool {
        let r = self.reduce();
        r.c == 0 && r.b == -r.d
    }

    /// Exact sign of a real value (a + b√2 form). Panics if not real.
    pub fn sign_real(&self) -> i32 {
        let r = self.reduce();
        assert!(r.c == 0 && r.b == -r.d, "sign_real on non-real {r:?}");
        let (a, b) = (r.a, r.b); // value·√2^k = a + b·√2... (b from ω−ω³ pair)
        if a == 0 && b == 0 {
            return 0;
        }
        if a >= 0 && b >= 0 {
            return 1;
        }
        if a <= 0 && b <= 0 {
            return -1;
        }
        // Mixed signs: a + b√2 > 0 ⟺ (a > 0 and a² > 2b²) or (b > 0 and 2b² > a²).
        let a2 = a.checked_mul(a).expect("sign_real overflow");
        let b2 = 2i128
            .checked_mul(b.checked_mul(b).expect("sign_real overflow"))
            .expect("sign_real overflow");
        if a > 0 {
            if a2 > b2 {
                1
            } else if a2 < b2 {
                -1
            } else {
                0
            }
        } else {
            if b2 > a2 {
                1
            } else if b2 < a2 {
                -1
            } else {
                0
            }
        }
    }

    /// Exact comparison of two real values.
    pub fn cmp_real(&self, o: &Dw) -> std::cmp::Ordering {
        match self.sub(*o) {
            Some(d) => match d.sign_real() {
                x if x > 0 => std::cmp::Ordering::Greater,
                0 => std::cmp::Ordering::Equal,
                _ => std::cmp::Ordering::Less,
            },
            // Overflow during comparison: fall back to f64 (display-grade only).
            None => self
                .to_f64_re()
                .partial_cmp(&o.to_f64_re())
                .unwrap_or(std::cmp::Ordering::Equal),
        }
    }

    /// f64 real part (display only — never feeds a verdict).
    pub fn to_f64_re(&self) -> f64 {
        let s = std::f64::consts::FRAC_1_SQRT_2;
        let num = self.a as f64 + (self.b as f64 - self.d as f64) * s;
        num / 2f64.powf(self.k as f64 / 2.0)
    }

    /// f64 imaginary part (display only).
    pub fn to_f64_im(&self) -> f64 {
        let s = std::f64::consts::FRAC_1_SQRT_2;
        let num = self.c as f64 + (self.b as f64 + self.d as f64) * s;
        num / 2f64.powf(self.k as f64 / 2.0)
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn omega_eighth_root() {
        // ω⁸ = 1, ω⁴ = −1.
        let mut w = Dw::ONE;
        for _ in 0..4 {
            w = w.mul(Dw::OMEGA).unwrap();
        }
        assert_eq!(w, Dw::ONE.neg());
        for _ in 0..4 {
            w = w.mul(Dw::OMEGA).unwrap();
        }
        assert_eq!(w.reduce(), Dw::ONE);
    }

    #[test]
    fn sqrt2_squares_to_two() {
        // (ω − ω³)² = 2.
        let s = Dw {
            a: 0,
            b: 1,
            c: 0,
            d: -1,
            k: 0,
        };
        let two = s.mul(s).unwrap().reduce();
        assert_eq!(
            two,
            Dw {
                a: 2,
                b: 0,
                c: 0,
                d: 0,
                k: 0
            }
        );
        assert_eq!(two.sign_real(), 1);
    }

    #[test]
    fn conj_and_norm() {
        // |ω/√2|² = 1/2.
        let z = Dw::OMEGA.div_sqrt2().unwrap();
        let n = z.norm_sq().unwrap().reduce();
        assert_eq!(
            n,
            Dw {
                a: 1,
                b: 0,
                c: 0,
                d: 0,
                k: 2
            }
        );
        assert!(n.is_real());
        assert_eq!(n.to_f64_re(), 0.5);
    }

    #[test]
    fn add_aligns_denominators() {
        // 1/√2 + 1/√2 = √2 = 2/√2.
        let h = Dw::ONE.div_sqrt2().unwrap();
        let s = h.add(h).unwrap();
        assert_eq!(
            s.reduce(),
            Dw {
                a: 0,
                b: 1,
                c: 0,
                d: -1,
                k: 0
            }
        );
        assert!((s.to_f64_re() - std::f64::consts::SQRT_2).abs() < 1e-12);
    }

    #[test]
    fn reduce_roundtrips() {
        // 2/√2² = 1/1.
        let v = Dw {
            a: 2,
            b: 0,
            c: 0,
            d: 0,
            k: 2,
        };
        assert_eq!(v.reduce(), Dw::ONE);
    }

    #[test]
    fn sign_mixed() {
        // 3 − √2 > 0 (3² > 2·1²), 1 − √2 < 0 (1² < 2·1²).
        assert_eq!(
            Dw {
                a: 3,
                b: -1,
                c: 0,
                d: 1,
                k: 0
            }
            .sign_real(),
            1
        );
        assert_eq!(
            Dw {
                a: 1,
                b: -1,
                c: 0,
                d: 1,
                k: 0
            }
            .sign_real(),
            -1
        );
    }
}
