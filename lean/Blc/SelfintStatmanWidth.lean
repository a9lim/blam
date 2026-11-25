import Blc.SelfintStatman

namespace Blc.SelfintSingleObject
open Term SelfintFloor SelfintLowerBound

/-- Width at most two at the root, tested by any three occurring slots. -/
def TwoFree (t : Term) : Prop := ∀ i j k, 0 < occ i t → 0 < occ j t → 0 < occ k t →
  i = j ∨ i = k ∨ j = k

/-- Hereditary source width at most two, including open subterms. -/
def WidthTwo : Term → Prop
  | .var _ => True
  | .app f a => TwoFree (.app f a) ∧ WidthTwo f ∧ WidthTwo a
  | .lam b => TwoFree (.lam b) ∧ WidthTwo b

theorem narrow_of_widthTwo (t : Term) (h : WidthTwo t) : NarrowBinders t := by
  induction t with
  | var => trivial
  | app f a hf ha => exact ⟨hf h.2.1,ha h.2.2⟩
  | lam b ih =>
    refine ⟨ih h.2,?_⟩
    intro hl i j hi hj
    cases b with
    | var k =>
      change (if k = i+1 then 1 else 0) > 0 at hi
      change (if k = j+1 then 1 else 0) > 0 at hj
      split at hi <;> split at hj <;> omega
    | app f a =>
      have he := h.2.1 0 (i+1) (j+1) hl hi hj
      omega
    | lam b =>
      have he := h.2.1 0 (i+1) (j+1) hl hi hj
      omega

/-- Statman's two-variable obstruction for arbitrary open lambda terms. -/
theorem widthTwo_not_join_s {t : Term} (h : WidthTwo t) : ¬ BetaJoin t sTerm :=
  narrow_not_join_s (narrow_of_widthTwo t h)

#print axioms widthTwo_not_join_s
end Blc.SelfintSingleObject
