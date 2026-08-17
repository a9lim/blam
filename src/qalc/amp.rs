//! `Amp` — the qALC amplitude: `quantum::scalar::Dw` held to a
//! *stored ⇒ canonical* invariant.
//!
//! The Python reference ring (`qalc/dw.py`) reduces eagerly after every
//! add/mul; the engine's `Dw` deliberately does not (its non-canonical
//! representation is qBLC-census contract, so `scalar.rs` is untouched
//! and gains no trait impls). This wrapper reconciles the two: every
//! operation reduces its result, so structural equality on `Amp` is
//! value equality and fixture comparison needs no normalization pass
//! (`docs/quantum-algebraic/rust-pillar.md` §3).
//!
//! Capacity discipline: every operation is fallible (`None` = i128
//! overflow or a `K_CAP` exit) — a typed resource outcome, never a
//! wrong number. Callers make evolution steps transactional (phase 1).
//! There is no public `raise_k`: it is intentionally noncanonical and
//! must never be a stored result.

use crate::quantum::scalar::Dw;

/// A canonical (fully reduced) ring element. The field is private; the
/// only ways in are the ring constants, the ring operations (which
/// canonicalize), and [`Amp::from_parts_strict`] (which *rejects*
/// noncanonical input rather than normalizing it — a normalizing decoder
/// would hide exporter defects).
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Amp(Dw);

/// A raw `(a, b, c, d, k)` that is not in canonical (reduced) form.
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub struct NonCanonical;

// `Dw` itself carries no Hash (its representation is deliberately
// noncanonical over there, and this pillar adds no trait impls to it).
// `Amp`'s canonical invariant is exactly what makes hashing the parts
// sound: equal values have equal representations.
impl std::hash::Hash for Amp {
    fn hash<H: std::hash::Hasher>(&self, state: &mut H) {
        self.parts().hash(state);
    }
}

#[allow(clippy::should_implement_trait)] // add/sub/neg/mul are the ring's names (as in scalar::Dw); fallible (Option) signatures don't fit std ops
impl Amp {
    pub const ZERO: Amp = Amp(Dw::ZERO);
    pub const ONE: Amp = Amp(Dw::ONE);
    /// ω, the T-gate phase.
    pub const OMEGA: Amp = Amp(Dw::OMEGA);

    /// Strict decode: accept exactly the canonical representation.
    pub fn from_parts_strict(
        a: i128,
        b: i128,
        c: i128,
        d: i128,
        k: u32,
    ) -> Result<Amp, NonCanonical> {
        let v = Dw { a, b, c, d, k };
        if v.reduce() == v {
            Ok(Amp(v))
        } else {
            Err(NonCanonical)
        }
    }

    /// The canonical `(a, b, c, d, k)` — the serialization surface.
    pub fn parts(self) -> (i128, i128, i128, i128, u32) {
        (self.0.a, self.0.b, self.0.c, self.0.d, self.0.k)
    }

    /// Cross the runtime/aggregate boundary inside the qALC pillar.  Public
    /// callers never receive the raw `Dw`; the production call site in
    /// `semantics::finite_m` immediately Kraft-weights it into `ExactSum`.
    pub(crate) fn into_dw(self) -> Dw {
        self.0
    }

    pub fn is_zero(self) -> bool {
        self.0.is_zero()
    }

    fn wrap(v: Option<Dw>) -> Option<Amp> {
        v.map(|v| Amp(v.reduce()))
    }

    pub fn add(self, o: Amp) -> Option<Amp> {
        Self::wrap(self.0.add(o.0))
    }

    pub fn sub(self, o: Amp) -> Option<Amp> {
        Self::wrap(self.0.sub(o.0))
    }

    pub fn mul(self, o: Amp) -> Option<Amp> {
        // Dw::mul already reduces; the wrap's defensive reduce is a
        // no-op on its output and keeps the invariant local to read.
        Self::wrap(self.0.mul(o.0))
    }

    /// ×ω — the T phase.
    pub fn mul_omega(self) -> Option<Amp> {
        Self::wrap(self.0.mul_omega())
    }

    pub fn div_sqrt2(self) -> Option<Amp> {
        Self::wrap(self.0.div_sqrt2())
    }

    pub fn neg(self) -> Option<Amp> {
        Self::wrap(self.0.neg())
    }

    pub fn conj(self) -> Option<Amp> {
        Self::wrap(self.0.conj())
    }

    /// |z|² — always real.
    pub fn norm_sq(self) -> Option<Amp> {
        Self::wrap(self.0.norm_sq())
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn the_invariant_holds_through_the_op_table() {
        // 1/√2 + 1/√2 = √2: the sum's raw form is 2/√2² and must come
        // back reduced — this is exactly where Python and raw Dw differ.
        let h = Amp::ONE.div_sqrt2().unwrap();
        let s = h.add(h).unwrap();
        assert_eq!(s.parts(), (0, 1, 0, -1, 0)); // √2 = ω − ω³, k = 0
                                                 // The same value built the raw-Dw way is NOT canonical, and the
                                                 // strict decoder refuses it.
        assert_eq!(Amp::from_parts_strict(2, 0, 0, 0, 2), Err(NonCanonical));
        assert_eq!(Amp::from_parts_strict(0, 1, 0, -1, 0).unwrap(), s);
        // Every op closes over canonical forms.
        for v in [
            Amp::ONE,
            Amp::OMEGA,
            h,
            s,
            s.mul_omega().unwrap(),
            s.neg().unwrap(),
            s.conj().unwrap(),
            s.norm_sq().unwrap(),
            h.mul(h).unwrap(),
            s.sub(h).unwrap(),
        ] {
            let (a, b, c, d, k) = v.parts();
            assert!(Amp::from_parts_strict(a, b, c, d, k).is_ok(), "{v:?}");
        }
    }

    #[test]
    fn capacity_surfaces_as_none() {
        // ω at the K_CAP edge: one more halving must refuse, typed.
        let mut v = Amp::ONE;
        for _ in 0..crate::quantum::scalar::K_CAP {
            v = v.div_sqrt2().unwrap();
        }
        assert_eq!(v.div_sqrt2(), None);
        assert_eq!(
            Amp::from_parts_strict(i128::MIN, 0, 0, 0, 0).unwrap().neg(),
            None
        );
    }
}
