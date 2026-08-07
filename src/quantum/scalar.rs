//! Exact Clifford+T scalar arithmetic: the ring `Z[ω]/√2^k`, ω = e^{iπ/4},
//! plus the Galois accounting layered on it. The same ring carries
//! statevector amplitudes, leaf masses, and census aggregates.
//!
//! A value is (a + b·ω + c·ω² + d·ω³)/√2^k with integer coefficients and
//! ω⁴ = −1. Every amplitude reachable by {H, T, CNOT} from |0…0⟩ lives here
//! exactly (`docs/quantum/architecture.md`, "Exact arithmetic"): H's 1/√2 raises k, T
//! multiplies by ω, CNOT permutes. √2 = ω − ω³ sits in the numerator ring,
//! so denominator alignment is numerator multiplication by √2.
//!
//! All coefficient arithmetic is checked i128; overflow (or a denominator
//! exponent beyond K_CAP) surfaces as `None`, which the evaluator maps to
//! the Capacity fate — a resource verdict, never a wrong number.

/// Denominator-exponent cap: √2^K_CAP ≤ 2^64 keeps census-sum numerators
/// comfortably inside i128 (see qpilot's exact accumulation).
pub const K_CAP: u32 = 128;

/// Accumulator cap for Kraft-weighted sums. Census accumulators exceed
/// `K_CAP`'s per-amplitude bound because `div_pow2` adds 2 per program
/// bit; 96 extra √2-halvings (48 bits of program length) covers Kraft
/// weights at every census size the engines run.
pub const K_CAP_ACCUM: u32 = K_CAP + 96;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Dw {
    pub a: i128,
    pub b: i128,
    pub c: i128,
    pub d: i128,
    /// √2-denominator exponent.
    pub k: u32,
}

#[allow(clippy::should_implement_trait)] // add/sub/neg/mul are the ring's names; fallible (Option) signatures don't fit std ops
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
        if k > K_CAP_ACCUM {
            return None;
        }
        Some(Dw { k, ..self })
    }

    /// The canonical real decomposition: `Some((a, b, k))` with
    /// `value = (a + b·√2)/√2^k` for the reduced form, or `None` when the
    /// value is not real. Reality is `c = 0 ∧ b = −d`, which collapses the
    /// ω/ω³ pair to `b·(ω − ω³) = b·√2`.
    ///
    /// This is the single place that recognises a real element; `is_real`,
    /// `try_sign_real`, and `radical_parts` are all built on it, so they
    /// cannot drift apart on what "real" means.
    pub fn real_parts(&self) -> Option<(i128, i128, u32)> {
        let r = self.reduce();
        (r.c == 0 && r.b == -r.d).then_some((r.a, r.b, r.k))
    }

    /// True iff the value is real (equals its own conjugate).
    pub fn is_real(&self) -> bool {
        self.real_parts().is_some()
    }

    /// Exact sign of a real value, or `None` if the value is not real or
    /// the comparison's squares overflow i128. The fallible form exists so
    /// `cmp_real`'s documented f64 fallback covers the *whole* path — the
    /// panicking `sign_real` is for verdict-grade callers that have already
    /// established reality and magnitude.
    pub fn try_sign_real(&self) -> Option<i32> {
        // value·√2^k = a + b·√2; √2^k > 0, so the numerator carries the sign.
        let (a, b, _) = self.real_parts()?;
        if a == 0 && b == 0 {
            return Some(0);
        }
        if a >= 0 && b >= 0 {
            return Some(1);
        }
        if a <= 0 && b <= 0 {
            return Some(-1);
        }
        // Strictly mixed signs, both nonzero: a + b√2 > 0 ⟺ (a > 0 and
        // a² > 2b²) or (b > 0 and 2b² > a²) — one predicate, since the two
        // cases agree on `(a > 0) == (a² > 2b²)`.
        debug_assert!(
            (a > 0) != (b > 0),
            "mixed-sign arm reached with a sign zero"
        );
        let a2 = a.checked_mul(a)?;
        let b2 = 2i128.checked_mul(b.checked_mul(b)?)?;
        // a² = 2b² has no nonzero integer solution (√2 is irrational), so
        // the equality arms of the old three-way compare were unreachable.
        debug_assert_ne!(a2, b2, "a² = 2b² for nonzero integers: √2 rational?");
        Some(if (a > 0) == (a2 > b2) { 1 } else { -1 })
    }

    /// Exact sign of a real value (a + b√2 form). Panics if not real or if
    /// the magnitude comparison overflows; use `try_sign_real` where either
    /// is a legitimate outcome.
    pub fn sign_real(&self) -> i32 {
        self.try_sign_real()
            .unwrap_or_else(|| panic!("sign_real on non-real or overflowing {:?}", self.reduce()))
    }

    /// Exact comparison of two real values.
    pub fn cmp_real(&self, o: &Dw) -> std::cmp::Ordering {
        match self.sub(*o).and_then(|d| d.try_sign_real()) {
            Some(x) => x.cmp(&0),
            // Overflow (or a non-real operand) during comparison: fall back
            // to f64 (display-grade only).
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

// ---------------------------------------------------------------------------
// Exact aggregate accounting: a loud-overflow accumulator over `Dw` and the
// (rational, √2) decomposition of real reduced masses. One accumulator for
// every quantum sweep — the operator census (`blam q census`, whose
// checkpoint lines it serialises) and both dyadicity-campaign sectors
// (`q galois idiom`, the λ⁵ sector; `q galois complement`, the rest).

/// Overflow state of an [`ExactSum`]. `Overflow` carries the last
/// successfully accumulated partial — a diagnostic, never a total.
#[derive(Clone, Copy)]
enum Sum {
    Value(Dw),
    Overflow(Dw),
}

/// Exact `Dw` accumulator with a loud overflow escape (the radical
/// question is exact or nothing: an overflowed aggregate reports itself
/// rather than a wrong number), plus an f64 mirror for the display
/// columns that must still print something after an overflow.
///
/// The sum is *structurally* protected: there is no field to read past an
/// overflow, only [`ExactSum::value`] (`Option`), [`ExactSum::expect_exact`]
/// (loud), and [`ExactSum::partial`] (explicitly diagnostics-only). This
/// replaces the old `Exact { v, ok }`, whose public `v` read the same
/// whether or not `ok` held, and qcensus's private `Ex` twin.
#[derive(Clone, Copy)]
pub struct ExactSum {
    sum: Sum,
    /// Running f64 mirror. Merge-order dependent in its low bits, so it is
    /// only ever surfaced for overflowed rows — exact rows derive their
    /// display from the exact value (`re`/`im`).
    re: f64,
    im: f64,
}

impl ExactSum {
    pub const ZERO: ExactSum = ExactSum {
        sum: Sum::Value(Dw::ZERO),
        re: 0.0,
        im: 0.0,
    };

    /// Add one term. `None` is an already-overflowed input and poisons the
    /// accumulator; the mirror still tracks every representable term.
    pub fn add(&mut self, d: Option<Dw>) {
        let Some(x) = d else {
            self.poison();
            return;
        };
        self.re += x.to_f64_re();
        self.im += x.to_f64_im();
        if let Sum::Value(v) = self.sum {
            self.sum = match v.add(x) {
                Some(s) => Sum::Value(s),
                None => Sum::Overflow(v),
            };
        }
    }

    /// Fold another accumulator in (rayon reduce). Overflow is absorbing.
    pub fn merge(&mut self, o: &ExactSum) {
        self.re += o.re;
        self.im += o.im;
        match (self.sum, o.sum) {
            (Sum::Value(a), Sum::Value(b)) => {
                self.sum = match a.add(b) {
                    Some(s) => Sum::Value(s),
                    None => Sum::Overflow(a),
                }
            }
            _ => self.poison(),
        }
    }

    fn poison(&mut self) {
        if let Sum::Value(v) = self.sum {
            self.sum = Sum::Overflow(v);
        }
    }

    /// Did every exact operation succeed?
    pub fn is_exact(&self) -> bool {
        matches!(self.sum, Sum::Value(_))
    }

    /// The exact total, or `None` if anything overflowed.
    pub fn value(&self) -> Option<Dw> {
        match self.sum {
            Sum::Value(v) => Some(v),
            Sum::Overflow(_) => None,
        }
    }

    /// The exact total, or a panic naming the caller's aggregate — the loud
    /// accessor for verdict-grade readers (a radical coefficient that
    /// overflowed is not a number to keep computing with).
    pub fn expect_exact(&self, what: &str) -> Dw {
        match self.sum {
            Sum::Value(v) => v,
            Sum::Overflow(_) => panic!("{what}: exact aggregate overflowed"),
        }
    }

    /// The last successfully accumulated partial. DIAGNOSTICS ONLY: after
    /// an overflow this is not the total and must not feed a verdict; the
    /// report lines that print it print `ok=false` beside it.
    pub fn partial(&self) -> Dw {
        match self.sum {
            Sum::Value(v) | Sum::Overflow(v) => v,
        }
    }

    /// `(a,b,c,d,k)` of the reduced exact total, or `OVERFLOW`.
    pub fn exact_str(&self) -> String {
        match self.value() {
            Some(v) => {
                let r = v.reduce();
                format!("({},{},{},{},{})", r.a, r.b, r.c, r.d, r.k)
            }
            None => "OVERFLOW".into(),
        }
    }

    /// Display real part: derived from the exact value while it holds
    /// (correctly rounded and independent of accumulation grouping — the
    /// running f64 mirror's rounding is merge-order dependent, which would
    /// make checkpointed runs differ from monolithic in display low bits);
    /// the mirror only ever surfaces for OVERFLOW rows.
    pub fn re(&self) -> f64 {
        self.value().map_or(self.re, |v| v.reduce().to_f64_re())
    }

    pub fn im(&self) -> f64 {
        self.value().map_or(self.im, |v| v.reduce().to_f64_im())
    }

    /// Append this accumulator to a whitespace-delimited checkpoint line.
    /// Paired with [`ExactSum::parse_ckpt`]; the two are the single codec
    /// for every `ExactSum` a checkpoint carries.
    pub fn write_ckpt(&self, out: &mut String) {
        use std::fmt::Write as _;
        let v = self.partial();
        write!(
            out,
            " {} {} {} {} {} {} {} {}",
            self.is_exact() as u8,
            v.a,
            v.b,
            v.c,
            v.d,
            v.k,
            self.re.to_bits(),
            self.im.to_bits()
        )
        .unwrap();
    }

    /// Inverse of [`ExactSum::write_ckpt`], reading off a shared cursor.
    pub fn parse_ckpt(it: &mut std::str::SplitWhitespace) -> Option<ExactSum> {
        let ok = it.next()?.parse::<u8>().ok()? != 0;
        let a = it.next()?.parse().ok()?;
        let b = it.next()?.parse().ok()?;
        let c = it.next()?.parse().ok()?;
        let d = it.next()?.parse().ok()?;
        let k = it.next()?.parse().ok()?;
        let re = f64::from_bits(it.next()?.parse().ok()?);
        let im = f64::from_bits(it.next()?.parse().ok()?);
        let v = Dw { a, b, c, d, k };
        Some(ExactSum {
            sum: if ok { Sum::Value(v) } else { Sum::Overflow(v) },
            re,
            im,
        })
    }
}

/// (rational part, √2 part) of a reduced REAL Dw, each as (num, 2^denom).
pub fn radical_parts(m: Dw) -> ((i128, u32), (i128, u32)) {
    let (a, b, k) = m
        .real_parts()
        .unwrap_or_else(|| panic!("aggregate must be real: {:?}", m.reduce()));
    if k.is_multiple_of(2) {
        ((a, k / 2), (b, k / 2))
    } else {
        // (a + b√2)/(2^((k−1)/2)·√2) = b/2^((k−1)/2) + (a/2^((k+1)/2))·√2.
        ((b, (k - 1) / 2), (a, k.div_ceil(2)))
    }
}

/// The √2 part alone, re-embedded as a *rational* ring element:
/// s/2^e ↦ Dw{a: s, k: 2e}. This lets √2-coefficients ride their own
/// [`ExactSum`] accumulator, decoupled from the full aggregate — the
/// threshold deliverable survives even if the (much larger) rational part
/// overflows.
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

    #[test]
    fn real_parts_is_the_single_reality_test() {
        // 3 − √2 reduced: numerator (3, −1), k = 0.
        let v = Dw {
            a: 3,
            b: -1,
            c: 0,
            d: 1,
            k: 0,
        };
        assert_eq!(v.real_parts(), Some((3, -1, 0)));
        assert!(v.is_real());
        // ω is not real; every real-only accessor agrees.
        assert_eq!(Dw::OMEGA.real_parts(), None);
        assert!(!Dw::OMEGA.is_real());
        assert_eq!(Dw::OMEGA.try_sign_real(), None);
        // cmp_real falls back to f64 rather than panicking on a non-real
        // operand — the whole path is covered, not just the subtraction.
        assert_eq!(
            Dw::ONE.cmp_real(&Dw::OMEGA),
            std::cmp::Ordering::Greater // 1 > Re(ω) = 1/√2
        );
    }

    #[test]
    fn exact_sum_overflow_is_structural_and_serialisable() {
        let mut s = ExactSum::ZERO;
        s.add(Some(Dw::ONE));
        s.add(Some(Dw::ONE));
        assert!(s.is_exact());
        assert_eq!(s.value().unwrap().reduce(), Dw::ONE.add(Dw::ONE).unwrap());
        assert_eq!(s.expect_exact("test").reduce(), s.partial().reduce());

        // Round-trip through the checkpoint codec, exact row.
        let mut line = String::new();
        s.write_ckpt(&mut line);
        let mut it = line.split_whitespace();
        let back = ExactSum::parse_ckpt(&mut it).unwrap();
        assert!(back.is_exact());
        assert_eq!(back.value().unwrap(), s.value().unwrap());
        assert_eq!(back.re().to_bits(), s.re().to_bits());

        // An overflowed input poisons the sum but keeps the partial for
        // the report line, and the poison is absorbing under merge.
        let mut o = s;
        o.add(None);
        assert!(!o.is_exact());
        assert_eq!(o.value(), None);
        assert_eq!(o.partial().reduce(), s.value().unwrap().reduce());
        assert_eq!(o.exact_str(), "OVERFLOW");
        let mut m = ExactSum::ZERO;
        m.merge(&o);
        assert!(!m.is_exact());
        // Overflowed rows survive the codec as overflowed.
        let mut line = String::new();
        o.write_ckpt(&mut line);
        let mut it = line.split_whitespace();
        assert!(!ExactSum::parse_ckpt(&mut it).unwrap().is_exact());
    }

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
