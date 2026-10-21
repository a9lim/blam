/-
Uniform finite label demand for evaluating a fixed application-only body.
The substituted operand may have arbitrarily many K wrappers: if it is
already in data normal form, those wrappers cost no normalization steps.
-/
import Blc.SelfintGrowthBlue

namespace Blc.SelfintGrowthLabels
open Term SelfintZero SelfintGrowthBlue

def Bounded (l : Nat) : Q → Prop
  | .var _ | .k => True
  | .z i => i ≤ l
  | .lam b => Bounded l b
  | .app f a => Bounded l f ∧ Bounded l a

theorem bounded_mono (t : Q) {l m : Nat} (h : l ≤ m) (ht : Bounded l t) :
    Bounded m t := by
  induction t with
  | var | k => trivial
  | z i => exact Nat.le_trans ht h
  | lam b ih => exact ih ht
  | app f a ihf iha => exact ⟨ihf ht.1, iha ht.2⟩

theorem bounded_shift (t : Q) (c l : Nat) :
    Bounded l (shiftQ c t) ↔ Bounded l t := by
  induction t generalizing c with
  | var n => simp only [shiftQ]; split <;> rfl
  | lam b ih => exact ih (c + 1)
  | app f a ihf iha => exact and_congr (ihf c) (iha c)
  | k | z => rfl

theorem bounded_subst (t s : Q) (j l : Nat) (ht : Bounded l t)
    (hs : Bounded l s) : Bounded l (substQ j s t) := by
  induction t generalizing s j with
  | var n =>
    simp only [substQ]
    split
    · exact hs
    · split <;> trivial
  | lam b ih => exact ih (shiftQ 0 s) (j + 1) ht ((bounded_shift s 0 l).mpr hs)
  | app f a ihf iha => exact ⟨ihf s j ht.1 hs, iha s j ht.2 hs⟩
  | k => trivial
  | z i => exact ht

theorem step_bounded {t u : Q} (h : DataStep t u) (l : Nat)
    (ht : Bounded l t) : Bounded (l + 1) u := by
  induction h generalizing l with
  | k a b => exact bounded_mono a (by omega) ht.1.2
  | z i a =>
    exact ⟨⟨bounded_mono a (by omega) ht.2, trivial⟩,
      by change i + 1 ≤ l + 1; have hi : i ≤ l := ht.1; omega⟩
  | left a h ih => exact ⟨ih l ht.1, bounded_mono a (by omega) ht.2⟩
  | right f h ih => exact ⟨bounded_mono f (by omega) ht.1, ih l ht.2⟩
  | lam h ih => exact ih l ht

inductive CountData : Nat → Q → Q → Prop where
  | refl (t : Q) : CountData 0 t t
  | head {n : Nat} {t u v : Q} : DataStep t u → CountData n u v → CountData (n + 1) t v

theorem CountData.steps {n : Nat} {t u : Q} (h : CountData n t u) : DataSteps t u := by
  induction h with
  | refl => exact .refl _
  | head h _ ih => exact .head h ih

theorem CountData.trans {n m : Nat} {t u v : Q} (h : CountData n t u)
    (g : CountData m u v) : CountData (n + m) t v := by
  induction h with
  | refl => simpa only [Nat.zero_add] using g
  | @head n t u w h hs ih =>
    simpa only [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using CountData.head h (ih g)

theorem CountData.one {t u : Q} (h : DataStep t u) : CountData 1 t u :=
  .head h (.refl _)

theorem CountData.left {n : Nat} {f g : Q} (a : Q) (h : CountData n f g) :
    CountData n (.app f a) (.app g a) := by
  induction h with
  | refl => exact .refl _
  | head h _ ih => exact .head (.left _ h) ih

theorem CountData.right (f : Q) {n : Nat} {a b : Q} (h : CountData n a b) :
    CountData n (.app f a) (.app f b) := by
  induction h with
  | refl => exact .refl _
  | head h _ ih => exact .head (.right _ h) ih

theorem CountData.bounded {n : Nat} {t u : Q} (h : CountData n t u) (l : Nat)
    (ht : Bounded l t) : Bounded (l + n) u := by
  induction h generalizing l with
  | refl => simpa only [Nat.add_zero] using ht
  | @head n t v u h hs ih =>
    have hu := ih (l + 1) (step_bounded h l ht)
    simpa only [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using hu

/-- A bound on every intermediate state of a finite data trace. -/
inductive BoundTrace (l : Nat) : Q → Q → Prop where
  | refl (t : Q) : Bounded l t → BoundTrace l t t
  | head {t u v : Q} : Bounded l t → DataStep t u → BoundTrace l u v → BoundTrace l t v

theorem BoundTrace.start {l : Nat} {t u : Q} (h : BoundTrace l t u) : Bounded l t := by
  cases h with
  | refl t ht => exact ht
  | head ht _ _ => exact ht

theorem BoundTrace.finish {l : Nat} {t u : Q} (h : BoundTrace l t u) : Bounded l u := by
  induction h with
  | refl t ht => exact ht
  | head _ _ _ ih => exact ih

theorem BoundTrace.steps {l : Nat} {t u : Q} (h : BoundTrace l t u) : DataSteps t u := by
  induction h with
  | refl => exact .refl _
  | head _ h _ ih => exact .head h ih

theorem BoundTrace.mono {l m : Nat} {t u : Q} (h : BoundTrace l t u) (hl : l ≤ m) :
    BoundTrace m t u := by
  induction h with
  | refl t ht => exact .refl _ (bounded_mono _ hl ht)
  | head ht h _ ih => exact .head (bounded_mono _ hl ht) h ih

theorem BoundTrace.trans {l : Nat} {t u v : Q} (h : BoundTrace l t u)
    (g : BoundTrace l u v) : BoundTrace l t v := by
  induction h with
  | refl => exact g
  | head ht h _ ih => exact .head ht h (ih g)

theorem BoundTrace.left {l : Nat} {f g : Q} (h : BoundTrace l f g)
    (a : Q) (ha : Bounded l a) : BoundTrace l (.app f a) (.app g a) := by
  induction h with
  | refl f hf => exact .refl _ ⟨hf, ha⟩
  | head hf h _ ih => exact .head ⟨hf, ha⟩ (.left _ h) ih

theorem BoundTrace.right {l : Nat} {a b : Q} (h : BoundTrace l a b)
    (f : Q) (hf : Bounded l f) : BoundTrace l (.app f a) (.app f b) := by
  induction h with
  | refl a ha => exact .refl _ ⟨hf, ha⟩
  | head ha h _ ih => exact .head ⟨hf, ha⟩ (.right _ h) ih

theorem BoundTrace.lam {l : Nat} {b c : Q} (h : BoundTrace l b c) :
    BoundTrace l (.lam b) (.lam c) := by
  induction h with
  | refl b hb => exact .refl _ hb
  | head hb h _ ih => exact .head hb (.lam h) ih

theorem CountData.boundTrace {n : Nat} {t u : Q} (h : CountData n t u) (l : Nat)
    (ht : Bounded l t) : BoundTrace (l + n) t u := by
  induction h generalizing l with
  | refl => exact .refl _ (by simpa only [Nat.add_zero] using ht)
  | @head n t v u h hs ih =>
    have hv := ih (l + 1) (step_bounded h l ht)
    have he : l + 1 + n = l + (n + 1) := by omega
    exact .head (bounded_mono _ (by omega) ht) h (he ▸ hv)

/-- Each table call has at most five actual K/Z contractions. -/
theorem ap_count (u v : V) :
    ∃ n, n ≤ 5 ∧ CountData n (.app (val u) (val v)) (val (ap u v)) := by
  cases u with
  | k => exact ⟨0, by omega, .refl _⟩
  | const u => exact ⟨1, by omega, .one (.k _ _)⟩
  | neu n => exact ⟨0, by omega, .refl _⟩
  | z i =>
    cases v with
    | k => exact ⟨2, by omega, .head (.z _ _) (.one (.k _ _))⟩
    | z j =>
      exact ⟨3, by omega, .head (.z _ _) (.head (.left _ (.z _ _))
        (.head (.left _ (.k _ _)) (.refl _)))⟩
    | neu n => exact ⟨1, by omega, .one (.z _ _)⟩
    | const v =>
      cases v with
      | k => exact ⟨2, by omega, .head (.z _ _) (.head (.left _ (.k _ _)) (.refl _))⟩
      | z j =>
        exact ⟨5, by omega, .head (.z _ _) (.head (.left _ (.k _ _))
          (.head (.z _ _) (.head (.left _ (.z _ _))
            (.head (.left _ (.k _ _)) (.refl _)))))⟩
      | const a =>
        exact ⟨3, by omega, .head (.z _ _) (.head (.left _ (.k _ _)) (.one (.k _ _)))⟩
      | neu n =>
        exact ⟨2, by omega, .head (.z _ _) (.head (.left _ (.k _ _)) (.refl _))⟩

def apps : Q → Nat
  | .var _ | .k | .z _ => 0
  | .lam b => apps b
  | .app f a => apps f + apps a + 1

/-- Evaluating a fixed program-lambda-free body uses at most five data
steps per original application, independent of the operand's size. -/
theorem flat_subst_count (t s : Q) (j : Nat) (ht : red t = 0)
    (hs : norm s = s) :
    ∃ n, n ≤ 5 * apps t ∧ CountData n (substQ j s t) (norm (substQ j s t)) := by
  induction t generalizing j with
  | var k =>
    simp only [substQ]
    split
    · exact ⟨0, by simp [apps], by rw [hs]; exact .refl s⟩
    · split <;> exact ⟨0, by simp [apps], .refl _⟩
  | lam b ih => exact (Nat.succ_ne_zero (red b) ht).elim
  | app f a ihf iha =>
    have hf : red f = 0 := by simp only [red] at ht; omega
    have ha : red a = 0 := by simp only [red] at ht; omega
    obtain ⟨nf, hnf, htf⟩ := ihf j hf
    obtain ⟨na, hna, hta⟩ := iha j ha
    obtain ⟨np, hnp, htp⟩ := ap_count (deep (substQ j s f)) (deep (substQ j s a))
    refine ⟨nf + na + np, ?_, ?_⟩
    · simp only [apps, Nat.mul_add, Nat.mul_one]
      omega
    · exact ((htf.left _).trans (hta.right _)).trans htp
  | k => exact ⟨0, by simp [apps], .refl _⟩
  | z i => exact ⟨0, by simp [apps], .refl _⟩

/-- Every demanded label in this chosen normalization trace has a
uniform bound from the fixed body, even for arbitrarily large operands. -/
theorem flat_subst_bound (t s : Q) (j l : Nat) (ht : red t = 0)
    (hs : norm s = s) (hlt : Bounded l t) (hls : Bounded l s) :
    ∃ n, n ≤ 5 * apps t ∧ BoundTrace (l + n) (substQ j s t) (norm (substQ j s t)) := by
  obtain ⟨n, hn, h⟩ := flat_subst_count t s j ht hs
  exact ⟨n, hn, h.boundTrace l (bounded_subst t s j l hlt hls)⟩

end Blc.SelfintGrowthLabels
