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

/// One ring element: the value (a + b·ω + c·ω² + d·ω³)/√2^k, with ω =
/// e^{iπ/4} and ω⁴ = −1.
///
/// The representation is deliberately NOT canonical — `k` may sit higher
/// than the value needs — and `PartialEq`/`Eq` are structural, so two
/// `Dw` denoting the same number can compare unequal. [`Dw::reduce`] is
/// the canonicaliser; every accessor that must see through the
/// representation (`real_parts` and everything built on it, `is_dyadic`)
/// reduces first. Amplitudes are stored as the ring operations leave
/// them, so *adding* a reduction anywhere moves stored values and breaks
/// bit-identity with the frozen census — the structural comparison is
/// the contract, not an implementation detail.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Dw {
    /// Rational coefficient — the ω⁰ term of the numerator.
    pub a: i128,
    /// ω coefficient of the numerator.
    pub b: i128,
    /// ω² coefficient of the numerator (ω² = i).
    pub c: i128,
    /// ω³ coefficient of the numerator.
    pub d: i128,
    /// √2-denominator exponent: the whole numerator is over √2^k.
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
    ///
    /// Two √2-multiplications are exactly a doubling — (ω − ω³)² = 2 — so
    /// Δk costs at most one [`Dw::num_mul_sqrt2`] plus one shift by
    /// 2^(Δk/2), instead of Δk numerator multiplications.
    ///
    /// The `None` contract is preserved point for point. Iterated doubling
    /// is non-decreasing in max |coefficient| (|A+C| + |C−A| ≥ 2|A| and its
    /// three siblings), and an out-of-range coefficient always forces an
    /// out-of-range successor, so the iterated form returns `None` exactly
    /// when the *final* value's coefficients leave i128 — which is what the
    /// `checked_mul` by 2^(Δk/2) tests. Zeros are the one case where the
    /// shortcut could invent an overflow the loop never hits (the factor
    /// itself is built with `checked_pow`), so an all-zero numerator skips
    /// the factor entirely. `K_CAP` bounds Δk/2 ≤ 64, so within the
    /// contract the factor always fits and only the coefficients can fail.
    fn raise_k(self, k2: u32) -> Option<Dw> {
        if k2 > K_CAP {
            return None;
        }
        if k2 <= self.k {
            return Some(self);
        }
        let delta = k2 - self.k;
        // One √2 for the odd bit, then the rest is a power of two.
        let v = if delta % 2 == 1 {
            self.num_mul_sqrt2()?
        } else {
            self
        };
        let half = delta / 2;
        let v = if half == 0 || v.is_zero() {
            v
        } else {
            let f = 2i128.checked_pow(half)?;
            Dw {
                a: v.a.checked_mul(f)?,
                b: v.b.checked_mul(f)?,
                c: v.c.checked_mul(f)?,
                d: v.d.checked_mul(f)?,
                k: v.k,
            }
        };
        Some(Dw { k: k2, ..v })
    }

    /// Canonical form: lower k while every coefficient stays integral under
    /// the inverse of num_mul_sqrt2 (A,B,C,D) ↦ ((B−D)/2, (A+C)/2, (B+D)/2, (C−A)/2).
    pub fn reduce(self) -> Dw {
        let mut v = self;
        // Pair fast path: two inverse steps compose to a plain halving
        // ((b−d)/2, (a+c)/2, (b+d)/2, (c−a)/2 applied twice returns
        // (A/2, B/2, C/2, D/2)), and all four coefficients even makes both
        // of those steps integral — so this can never over-reduce, and the
        // single-step loop below still handles the tail.
        while v.k >= 2 && (v.a | v.b | v.c | v.d) & 1 == 0 {
            v = Dw {
                a: v.a >> 1,
                b: v.b >> 1,
                c: v.c >> 1,
                d: v.d >> 1,
                k: v.k - 2,
            };
        }
        while v.k > 0 {
            // Inverse of (A,B,C,D) = (b−d, a+c, b+d, c−a):
            //   a = (B−D)/2, b = (A+C)/2, c = (B+D)/2, d = (C−A)/2.
            //
            // Checked like the rest of the ring. `reduce` has no fallible
            // signature — it changes representation, it does not compute a
            // result — so an overflowing inverse step stops the descent
            // instead: the value returned is the last k this form can be
            // *proved* down to. Less reduced, never a wrong number.
            //
            // `overflowing_*` rather than `checked_*`: this loop runs on
            // every ring multiplication and every H butterfly amplitude,
            // and the four `Option<i128>` the checked form materialises
            // are 128 bytes of stack traffic per iteration — measured at
            // +9% on a 4..30 operator census. The values stay in
            // registers here and the four flags fold into one test; the
            // wrapped values are never read, since the flag test breaks
            // first.
            let (na2, o1) = v.b.overflowing_sub(v.d);
            let (nb2, o2) = v.a.overflowing_add(v.c);
            let (nc2, o3) = v.b.overflowing_add(v.d);
            let (nd2, o4) = v.c.overflowing_sub(v.a);
            if o1 | o2 | o3 | o4 {
                break;
            }
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
        // Align once, then subtract coefficientwise. Routing through
        // `add(o.neg())` made the difference of a legally-representable
        // pair depend on whether the *negation* was representable, which
        // is a strictly narrower question at the i128 edge.
        let k = self.k.max(o.k);
        let x = self.raise_k(k)?;
        let y = o.raise_k(k)?;
        Some(Dw {
            a: x.a.checked_sub(y.a)?,
            b: x.b.checked_sub(y.b)?,
            c: x.c.checked_sub(y.c)?,
            d: x.d.checked_sub(y.d)?,
            k,
        })
    }

    /// Sum and difference in one alignment: `(self + o, self − o)`.
    ///
    /// The H butterfly wants both, and [`Dw::add`]/[`Dw::sub`] each pay
    /// their own pair of [`Dw::raise_k`] calls to reach the common
    /// denominator. Result and `None` placement are the pair's exactly:
    /// the two share the alignment prefix verbatim, and this returns
    /// `None` iff either of them would — so a caller that took `add` then
    /// `sub` in that order, failing on the first `None`, sees the same
    /// outcome (both failures are the same fate) and the same partially
    /// updated state.
    pub fn add_sub(self, o: Dw) -> Option<(Dw, Dw)> {
        let k = self.k.max(o.k);
        let x = self.raise_k(k)?;
        let y = o.raise_k(k)?;
        let sum = Dw {
            a: x.a.checked_add(y.a)?,
            b: x.b.checked_add(y.b)?,
            c: x.c.checked_add(y.c)?,
            d: x.d.checked_add(y.d)?,
            k,
        };
        let diff = Dw {
            a: x.a.checked_sub(y.a)?,
            b: x.b.checked_sub(y.b)?,
            c: x.c.checked_sub(y.c)?,
            d: x.d.checked_sub(y.d)?,
            k,
        };
        Some((sum, diff))
    }

    /// Additive inverse. `None` on the one unnegatable coefficient
    /// (`i128::MIN`) — checked like every other operation in the ring, so
    /// overflow surfaces as Capacity rather than as a wrapped sign.
    pub fn neg(self) -> Option<Dw> {
        Some(Dw {
            a: self.a.checked_neg()?,
            b: self.b.checked_neg()?,
            c: self.c.checked_neg()?,
            d: self.d.checked_neg()?,
            k: self.k,
        })
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

    /// Multiply by ω — the T gate's phase, `mul(Dw::OMEGA)` specialised.
    ///
    /// ω·(a + bω + cω² + dω³) = −d + aω + bω² + cω³, so the whole product
    /// is the coefficient rotation (a,b,c,d) ↦ (−d, a, b, c).
    ///
    /// Bit-identical to the generic path, `None` cases included. In
    /// [`Dw::mul`] with `o = OMEGA` every `checked_mul` is by 0 or 1 and
    /// so never overflows; the four coefficient chains collapse to
    /// `0 − d`, `a`, `b`, `c`, and only the first can fail — exactly when
    /// `checked_neg` does. `OMEGA.k = 0` makes the `checked_add` of the
    /// exponents infallible and leaves the `k > K_CAP` rejection reading
    /// `self.k`. The trailing `reduce` is the generic path's own.
    pub fn mul_omega(self) -> Option<Dw> {
        let a = self.d.checked_neg()?;
        if self.k > K_CAP {
            return None;
        }
        Some(
            Dw {
                a,
                b: self.a,
                c: self.b,
                d: self.c,
                k: self.k,
            }
            .reduce(),
        )
    }

    /// Multiply by i = ω² — the S gate's phase, `mul(i_unit)` specialised.
    ///
    /// i·(a + bω + cω² + dω³) = −c − dω + aω² + bω³: the rotation applied
    /// twice, (a,b,c,d) ↦ (−c, −d, a, b). Same equivalence argument as
    /// [`Dw::mul_omega`], with two negations instead of one.
    pub fn mul_i(self) -> Option<Dw> {
        let a = self.c.checked_neg()?;
        let b = self.d.checked_neg()?;
        if self.k > K_CAP {
            return None;
        }
        Some(
            Dw {
                a,
                b,
                c: self.a,
                d: self.b,
                k: self.k,
            }
            .reduce(),
        )
    }

    /// Complex conjugate: ω̄ = −ω³, so (a,b,c,d) ↦ (a, −d, −c, −b).
    /// `None` on an unnegatable coefficient, as [`Dw::neg`].
    pub fn conj(self) -> Option<Dw> {
        Some(Dw {
            a: self.a,
            b: self.d.checked_neg()?,
            c: self.c.checked_neg()?,
            d: self.b.checked_neg()?,
            k: self.k,
        })
    }

    /// |z|² = z·z̄ — always a real ring element (c = 0, b = −d form).
    pub fn norm_sq(self) -> Option<Dw> {
        self.mul(self.conj()?)
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
        num / sqrt2_pow(self.k)
    }

    /// f64 imaginary part (display only).
    pub fn to_f64_im(&self) -> f64 {
        let s = std::f64::consts::FRAC_1_SQRT_2;
        let num = self.c as f64 + (self.b as f64 + self.d as f64) * s;
        num / sqrt2_pow(self.k)
    }
}

/// √2^k as f64, memoised over the exponent range the ring admits.
///
/// [`ExactSum::add`] takes both f64 parts of every accumulated term, so
/// this divisor is computed twice per program per census, and `powf` is
/// the whole cost of the conversion. The table is built BY CALLING
/// `powf` once per `k`, so a cached divisor is bit-identical to the call
/// it replaces and no display or checkpoint column moves. `K_CAP_ACCUM`
/// bounds every `k` the accumulators reach; anything past it falls back
/// to the call.
fn sqrt2_pow(k: u32) -> f64 {
    const N: usize = K_CAP_ACCUM as usize + 1;
    static TABLE: std::sync::OnceLock<[f64; N]> = std::sync::OnceLock::new();
    let t = TABLE.get_or_init(|| std::array::from_fn(|k| 2f64.powf(k as f64 / 2.0)));
    match t.get(k as usize) {
        Some(&v) => v,
        None => 2f64.powf(k as f64 / 2.0),
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
#[derive(Debug, Clone, Copy)]
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
/// whether or not `ok` held, and the private twin the operator census
/// used to carry beside it.
#[derive(Debug, Clone, Copy)]
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

    /// The pre-optimisation `raise_k`: one `num_mul_sqrt2` per unit of Δk.
    /// Kept verbatim as the equivalence oracle for the shift form — value
    /// AND `None` placement, which is the part that had to be argued.
    fn raise_k_iterated(v: Dw, k2: u32) -> Option<Dw> {
        if k2 > K_CAP {
            return None;
        }
        let mut v = v;
        while v.k < k2 {
            v = v.num_mul_sqrt2()?;
            v.k += 1;
        }
        Some(v)
    }

    /// The pre-optimisation `reduce`: single inverse steps only, no pair
    /// fast path.
    fn reduce_single_step(v: Dw) -> Dw {
        let mut v = v;
        while v.k > 0 {
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

    #[test]
    fn raise_k_matches_iterated_form_exhaustively() {
        // Grid of small values × Δk 0..=40: covers Δk zero, odd, and even,
        // every sign pattern, and both parities of the starting k.
        let coeffs = [-3i128, -2, -1, 0, 1, 2, 5];
        let mut cases = 0u64;
        for &a in &coeffs {
            for &b in &coeffs {
                for &c in &coeffs {
                    for &d in &coeffs {
                        for k in [0u32, 1, 3, 8] {
                            let v = Dw { a, b, c, d, k };
                            for dk in 0..=40u32 {
                                let k2 = k + dk;
                                assert_eq!(
                                    v.raise_k(k2),
                                    raise_k_iterated(v, k2),
                                    "{v:?} raised to k2={k2}"
                                );
                                cases += 1;
                            }
                            // Below the current k the rewrite is a no-op,
                            // and past K_CAP it is None — both regardless
                            // of the coefficients.
                            assert_eq!(v.raise_k(0), raise_k_iterated(v, 0));
                            assert_eq!(v.raise_k(K_CAP + 1), None);
                        }
                    }
                }
            }
        }
        assert_eq!(cases, 7 * 7 * 7 * 7 * 4 * 41);
    }

    #[test]
    fn raise_k_overflow_boundary_matches_iterated_form() {
        // Coefficients within one doubling of the i128 edge, including the
        // asymmetric −2^127 that fits where +2^127 does not, and mixed
        // pairs where the (b−d)/(a+c)/(c−a) combinations are what overflow.
        let big = [
            i128::MAX,
            i128::MIN,
            i128::MAX / 2,
            i128::MIN / 2,
            1i128 << 126,
            -(1i128 << 126),
            (1i128 << 126) - 1,
            (1i128 << 100) + 7,
        ];
        let check = |v: Dw| {
            for k2 in 0..=16u32 {
                assert_eq!(v.raise_k(k2), raise_k_iterated(v, k2), "{v:?} k2={k2}");
            }
        };
        for &x in &big {
            for slot in 0..4 {
                let mut v = Dw::ZERO;
                match slot {
                    0 => v.a = x,
                    1 => v.b = x,
                    2 => v.c = x,
                    _ => v.d = x,
                }
                check(v);
            }
            // Cancelling pairs: a+c = 0 while c−a saturates, and b−d = 0
            // while b+d saturates.
            check(Dw {
                a: x,
                b: 0,
                c: x.wrapping_neg(),
                d: 0,
                k: 0,
            });
            check(Dw {
                a: 0,
                b: x,
                c: 0,
                d: x,
                k: 0,
            });
        }
    }

    #[test]
    fn raise_k_on_zero_never_overflows() {
        // Iterated doubling of a zero numerator never overflows, so the
        // shortcut must not manufacture one at any reachable Δk.
        for k2 in 0..=K_CAP {
            let got = Dw::ZERO.raise_k(k2);
            assert_eq!(got, raise_k_iterated(Dw::ZERO, k2), "k2={k2}");
            assert_eq!(got, Some(Dw { k: k2, ..Dw::ZERO }));
        }
        assert_eq!(Dw::ZERO.raise_k(K_CAP + 1), None);
    }

    #[test]
    fn reduce_pair_fast_path_matches_single_step() {
        let coeffs = [-12i128, -8, -3, -2, -1, 0, 1, 2, 4, 9];
        for &a in &coeffs {
            for &b in &coeffs {
                for &c in &coeffs {
                    for &d in &coeffs {
                        for k in 0..=9u32 {
                            let v = Dw { a, b, c, d, k };
                            assert_eq!(v.reduce(), reduce_single_step(v), "{v:?}");
                        }
                    }
                }
            }
        }
    }

    /// The grid the three specialisations are proved on: every sign
    /// pattern over small magnitudes, both i128 extremes, values one step
    /// off each extreme (where a negation succeeds but a sum does not),
    /// and k at 0, mid-range, and either side of `K_CAP`.
    fn equivalence_grid() -> Vec<Dw> {
        let coeffs = [
            0i128,
            1,
            -1,
            2,
            -3,
            i128::MAX,
            i128::MIN,
            i128::MAX - 1,
            i128::MIN + 1,
            1i128 << 126,
            -(1i128 << 126),
        ];
        let ks = [0u32, 1, 2, 7, K_CAP - 1, K_CAP, K_CAP + 1, K_CAP_ACCUM];
        let mut out = Vec::new();
        // Dense small cross product first — the range amplitudes actually
        // live in, where every sign combination of all four coefficients
        // matters and both k parities are reachable.
        for a in -2i128..=2 {
            for b in -2i128..=2 {
                for c in -2i128..=2 {
                    for d in -2i128..=2 {
                        for k in 0..=2u32 {
                            out.push(Dw { a, b, c, d, k });
                        }
                    }
                }
            }
        }
        // One extreme at a time against small neighbours, plus the fully
        // small cross product: the interesting failures are single
        // saturated coefficients, and a dense sweep of all four would be
        // 11⁴·8 cases for no extra coverage.
        for &k in &ks {
            for &x in &coeffs {
                for slot in 0..4 {
                    let mut v = Dw { k, ..Dw::ZERO };
                    match slot {
                        0 => v.a = x,
                        1 => v.b = x,
                        2 => v.c = x,
                        _ => v.d = x,
                    }
                    out.push(v);
                }
                for &y in &coeffs[..5] {
                    out.push(Dw {
                        a: x,
                        b: y,
                        c: x,
                        d: y,
                        k,
                    });
                    out.push(Dw {
                        a: y,
                        b: x,
                        c: y,
                        d: x,
                        k,
                    });
                }
            }
        }
        out
    }

    #[test]
    fn phase_specialisations_match_generic_mul() {
        // ×ω and ×i are `mul` with a constant folded in. Bit-identity is
        // the whole point: the census's stored amplitudes go through
        // these, so a differing `None` placement or a differing
        // representation would move frozen output.
        let i_unit = Dw {
            a: 0,
            b: 0,
            c: 1,
            d: 0,
            k: 0,
        };
        let mut cases = 0u64;
        for v in equivalence_grid() {
            assert_eq!(v.mul_omega(), v.mul(Dw::OMEGA), "mul_omega {v:?}");
            assert_eq!(v.mul_i(), v.mul(i_unit), "mul_i {v:?}");
            cases += 1;
        }
        // 5⁴·3 dense small + 8 k values × 11 coefficients × (4 slots + 5
        // mirrored pairs ×2). Pinned so a grid that silently narrows fails
        // loudly instead of passing on less.
        assert_eq!(cases, 5 * 5 * 5 * 5 * 3 + 8 * 11 * (4 + 10));

        // ×i is ×ω twice — the algebra behind the two rotations, checked
        // on values small enough that `reduce` is a true canonical form.
        // (At the i128 edge the two agree as NUMBERS but not as structs:
        // `mul` reduces after each step, and a reduction the chained form
        // can prove may overflow out of the single step's reach.)
        for a in -2i128..=2 {
            for b in -2i128..=2 {
                for k in 0..=3u32 {
                    let v = Dw {
                        a,
                        b,
                        c: b,
                        d: a,
                        k,
                    };
                    let twice = v.mul_omega().unwrap().mul_omega().unwrap();
                    assert_eq!(twice.reduce(), v.mul_i().unwrap().reduce(), "{v:?}");
                }
            }
        }
    }

    #[test]
    fn add_sub_matches_the_separate_pair() {
        // The fused butterfly must agree with `add`/`sub` on value AND on
        // where it stops: `apply_h` returns the same Capacity fate either
        // way, so the only thing that could drift is *which* amplitude
        // index the run aborts at.
        let grid = equivalence_grid();
        for &x in &grid {
            for &y in &grid {
                // Only the k-compatible pairs are meaningful volume; a
                // full square of the grid is 3M pairs, which is fine at
                // release but not in a debug run.
                let got = x.add_sub(y);
                let want = match (x.add(y), x.sub(y)) {
                    (Some(s), Some(d)) => Some((s, d)),
                    _ => None,
                };
                assert_eq!(got, want, "add_sub {x:?} {y:?}");
            }
        }
    }

    #[test]
    fn sqrt2_pow_table_is_bit_identical_to_powf() {
        // The cache is only legitimate if it is the same f64. Includes
        // the fallback range past the table.
        for k in 0..=(K_CAP_ACCUM + 8) {
            assert_eq!(
                sqrt2_pow(k).to_bits(),
                2f64.powf(k as f64 / 2.0).to_bits(),
                "k={k}"
            );
        }
    }

    #[test]
    fn omega_eighth_root() {
        // ω⁸ = 1, ω⁴ = −1.
        let mut w = Dw::ONE;
        for _ in 0..4 {
            w = w.mul(Dw::OMEGA).unwrap();
        }
        assert_eq!(w, Dw::ONE.neg().unwrap());
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
