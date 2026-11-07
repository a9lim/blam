/- Fixed beta facts supporting floor138.md. The size theorem itself remains handwritten. -/
import Blc.SelfintKnot
import Blc.Wire

namespace Blc.Round3Floor
open Term
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def normalStep : Term → Option Term
  | .var _ => none
  | .lam b => (normalStep b).map .lam
  | .app f a => match f with
    | .lam b => some (contract b a)
    | _ => match normalStep f with
      | some f' => some (.app f' a)
      | none => (normalStep a).map (.app f)

theorem normalStep_sound {t u : Term} (h : normalStep t = some u) : Beta t u := by
  induction t generalizing u with
  | var n => simp [normalStep] at h
  | lam b ih =>
      simp only [normalStep, Option.map_eq_some_iff] at h
      obtain ⟨b', hb, rfl⟩ := h
      exact .lam (ih hb)
  | app f a ihf iha =>
      cases f with
      | var n =>
          simp only [normalStep, Option.map_eq_some_iff] at h
          obtain ⟨a', ha, rfl⟩ := h
          exact .appR _ (iha ha)
      | lam b =>
          simp only [normalStep, Option.some.injEq] at h
          subst u
          exact .beta _ _
      | app g x =>
          change (match normalStep (.app g x) with
            | some f' => some (.app f' a)
            | none => (normalStep a).map (.app (.app g x))) = some u at h
          cases hf : normalStep (.app g x) with
          | none =>
              simp only [hf, Option.map_eq_some_iff] at h
              obtain ⟨a', ha, rfl⟩ := h
              exact .appR _ (iha ha)
          | some f' =>
              simp only [hf, Option.some.injEq] at h
              subst u
              exact .appL _ (ihf hf)

def normalSteps : Nat → Term → Option Term
  | 0, t => some t
  | n+1, t => (normalStep t).bind (normalSteps n)

theorem normalSteps_sound {n : Nat} {t u : Term}
    (h : normalSteps n t = some u) : Betas t u := by
  induction n generalizing t with
  | zero => simp only [normalSteps, Option.some.injEq] at h; subst u; exact .refl _
  | succ n ih =>
      simp only [normalSteps, Option.bind_eq_some_iff] at h
      obtain ⟨v, hv, hrest⟩ := h
      exact .head (normalStep_sound hv) (ih hrest)


def callbackHead : Term → Term
  | .app f _ => callbackHead f
  | t => t

def callbackFree (q d : Nat) : Term → Nat
  | .var n => if n=q+d then 1 else 0
  | .lam b => callbackFree q (d+1) b
  | .app f a => callbackFree q d f + callbackFree q d a

def callbackOutcome (kind : Nat) (t : Term) : Prop :=
  match kind with
  | 0 => t = .var 1 ∨ t = .app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)
  | 2 => callbackHead t = .var 0 ∨ callbackHead t = .var 1
  | 3 => callbackHead t = .var 1 ∨ t = .app (.app (.var 2) (.lam (.lam (.var 1)))) (.var 2)
  | _ => callbackFree 1 0 t = 0 ∨ callbackFree 2 0 t = 0 ∨
      callbackHead t = .var 0 ∨ callbackHead t = .var 1

instance (k : Nat) (t : Term) : Decidable (callbackOutcome k t) := by
  unfold callbackOutcome
  split <;> infer_instance

theorem depth2_four_c_0 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 0 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_1 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 1) ∧ NFt (.var 1) ∧ callbackOutcome 0 (.var 1) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.var 1)), by decide, by decide⟩

theorem depth2_four_c_2 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.lam (.lam (.lam (.var 1))))) (.var 2)) ∧ NFt (.app (.app (.var 1) (.lam (.lam (.lam (.var 1))))) (.var 2)) ∧ callbackOutcome 1 (.app (.app (.var 1) (.lam (.lam (.lam (.var 1))))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.lam (.lam (.lam (.var 1))))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_3 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 1 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_4 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 1) (.lam (.lam (.var 1)))) ∧ NFt (.app (.var 1) (.lam (.lam (.var 1)))) ∧ callbackOutcome 1 (.app (.var 1) (.lam (.lam (.var 1)))) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.var 1) (.lam (.lam (.var 1))))), by decide, by decide⟩

theorem depth2_four_c_5 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 1) (.var 2)) ∧ NFt (.app (.var 1) (.var 2)) ∧ callbackOutcome 1 (.app (.var 1) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.var 1) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_6 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.var 2)) ∧ NFt (.lam (.var 2)) ∧ callbackOutcome 1 (.lam (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.lam (.var 2))), by decide, by decide⟩

theorem depth2_four_c_7 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.var 3)) ∧ NFt (.lam (.var 3)) ∧ callbackOutcome 1 (.lam (.var 3)) :=
  ⟨normalSteps_sound (by decide : normalSteps 6 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.lam (.var 3))), by decide, by decide⟩

theorem depth2_four_c_8 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 3) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 2)) ∧ NFt (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 2)) ∧ callbackOutcome 2 (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 3) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_9 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 2 (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_10 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) ∧ NFt (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) ∧ callbackOutcome 2 (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 0) (.lam (.var 2))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_11 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.var 2)) ∧ NFt (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.var 2)) ∧ callbackOutcome 2 (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_12 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 2) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 2)) ∧ NFt (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 2)) ∧ callbackOutcome 2 (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 2) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_13 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 2 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_14 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) ∧ NFt (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) ∧ callbackOutcome 2 (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.lam (.var 1))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_15 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)) (.var 2)) ∧ NFt (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)) (.var 2)) ∧ callbackOutcome 2 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_16 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 0) (.var 1)) ∧ NFt (.app (.var 0) (.var 1)) ∧ callbackOutcome 2 (.app (.var 0) (.var 1)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.var 0) (.var 1))), by decide, by decide⟩

theorem depth2_four_c_17 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 0) (.var 2)) ∧ NFt (.app (.var 0) (.var 2)) ∧ callbackOutcome 2 (.app (.var 0) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.var 0) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_18 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 1) (.var 0)) ∧ NFt (.app (.var 1) (.var 0)) ∧ callbackOutcome 2 (.app (.var 1) (.var 0)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.var 1) (.var 0))), by decide, by decide⟩

theorem depth2_four_c_19 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 1) (.var 2)) ∧ NFt (.app (.var 1) (.var 2)) ∧ callbackOutcome 2 (.app (.var 1) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.var 1) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_20 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 3 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_21 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 3 (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_22 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 2)) ∧ NFt (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 2)) ∧ callbackOutcome 3 (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_23 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 2)) ∧ NFt (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 2)) ∧ callbackOutcome 3 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_24 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 2)) (.var 2)) ∧ NFt (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 2)) (.var 2)) ∧ callbackOutcome 3 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 2)) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 2)) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_25 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 3 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_26 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.var 2)) (.var 2)) ∧ NFt (.app (.app (.var 1) (.var 2)) (.var 2)) ∧ callbackOutcome 3 (.app (.app (.var 1) (.var 2)) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.var 2)) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_27 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 1) ∧ NFt (.var 1) ∧ callbackOutcome 3 (.var 1) :=
  ⟨normalSteps_sound (by decide : normalSteps 8 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.var 1)), by decide, by decide⟩

theorem depth2_four_c_28 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) ∧ NFt (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) ∧ callbackOutcome 3 (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))), by decide, by decide⟩

theorem depth2_four_c_29 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 1) (.var 2)) ∧ NFt (.app (.var 1) (.var 2)) ∧ callbackOutcome 3 (.app (.var 1) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.var 1) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_30 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 3 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_31 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 3 (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 6 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_32 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 3) (.app (.var 0) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 1)))))) (.var 2)) ∧ NFt (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 1)))))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 1)))))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 3) (.app (.var 0) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 1)))))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_33 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1))))) (.var 2)) ∧ NFt (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1))))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1))))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 3) (.var 0)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1))))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_34 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.var 1))))) (.var 2)) ∧ NFt (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.var 1))))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.var 1))))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.var 1))))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_35 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 3) (.var 0))) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 3) (.var 0))) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_36 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_37 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 3) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.lam (.var 1)))))) (.var 2)) ∧ NFt (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.lam (.var 1)))))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.lam (.var 1)))))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 3) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.lam (.var 1)))))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_38 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 0) (.var 1)) (.var 2)) ∧ NFt (.app (.app (.var 0) (.var 1)) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 0) (.var 1)) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 3)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 0) (.var 1)) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_39 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 3) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 2)) ∧ NFt (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 3) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_40 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 3))) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 3))) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_41 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 3)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 3)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_42 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 3))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 2)) ∧ NFt (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 3))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_43 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_44 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 2))) (.var 2)) ∧ NFt (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 2))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 2))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 2))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_45 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 1)) (.var 2)) ∧ NFt (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 1)) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 1)) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 1)) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_46 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 2)) ∧ NFt (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 1)) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_47 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.var 1)))))) (.var 2)) ∧ NFt (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.var 1)))))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.var 1)))))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 2) (.app (.var 0) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.var 1)))))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_48 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.app (.var 2) (.var 0)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1))))) (.var 2)) ∧ NFt (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1))))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1))))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.app (.var 2) (.var 0)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1))))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_49 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.var 1))))) (.var 2)) ∧ NFt (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.var 1))))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.var 1))))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.var 1))))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_50 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.app (.var 2) (.var 0))) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.app (.var 2) (.var 0))) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_51 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_52 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 2) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))) (.var 2)) ∧ NFt (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 2) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_53 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.var 0)) (.var 2)) ∧ NFt (.app (.app (.var 1) (.var 0)) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 1) (.var 0)) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.var 0)) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_54 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 2) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 2)) ∧ NFt (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 2) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_55 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.app (.var 0) (.var 2))) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.app (.var 0) (.var 2))) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_56 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 2)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 2)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_57 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 2))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 2)) ∧ NFt (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 2))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_58 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_59 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.var 1))) (.var 2)) ∧ NFt (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.var 1))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.var 1))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.var 1))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_60 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 1))))) (.var 0)) (.var 2)) ∧ NFt (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 1))))) (.var 0)) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 1))))) (.var 0)) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.var 1) (.lam (.lam (.lam (.var 1))))) (.var 0)) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_61 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 2)) ∧ NFt (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_62 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 3) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) ∧ NFt (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) ∧ callbackOutcome 4 (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 3) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1)))))), by decide, by decide⟩

theorem depth2_four_c_63 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) ∧ NFt (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) ∧ callbackOutcome 4 (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1))))), by decide, by decide⟩

theorem depth2_four_c_64 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 3) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 0) (.var 2)) ∧ NFt (.app (.var 0) (.var 2)) ∧ callbackOutcome 4 (.app (.var 0) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 3) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.var 0) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_65 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 0) (.var 1)) (.var 2)) ∧ NFt (.app (.app (.var 0) (.var 1)) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 0) (.var 1)) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 0) (.var 1)) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_66 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 3)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 3)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_67 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 3))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 0) (.lam (.var 2))) ∧ NFt (.app (.var 0) (.lam (.var 2))) ∧ callbackOutcome 4 (.app (.var 0) (.lam (.var 2))) :=
  ⟨normalSteps_sound (by decide : normalSteps 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 3))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.var 0) (.lam (.var 2)))), by decide, by decide⟩

theorem depth2_four_c_68 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) ∧ NFt (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) ∧ callbackOutcome 4 (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1))), by decide, by decide⟩

theorem depth2_four_c_69 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 0) (.var 2)) ∧ NFt (.app (.var 0) (.var 2)) ∧ callbackOutcome 4 (.app (.var 0) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.var 0) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_70 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_71 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 0) (.var 1)) (.var 2)) ∧ NFt (.app (.app (.var 0) (.var 1)) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 0) (.var 1)) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 0) (.var 1)) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_72 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.app (.var 2) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))) ∧ NFt (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))) ∧ callbackOutcome 4 (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.app (.var 2) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1)))))), by decide, by decide⟩

theorem depth2_four_c_73 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) ∧ NFt (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) ∧ callbackOutcome 4 (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1))))), by decide, by decide⟩

theorem depth2_four_c_74 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 2) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 1) (.var 2)) ∧ NFt (.app (.var 1) (.var 2)) ∧ callbackOutcome 4 (.app (.var 1) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 2) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.var 1) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_75 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.var 0)) (.var 2)) ∧ NFt (.app (.app (.var 1) (.var 0)) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 1) (.var 0)) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.var 0)) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_76 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 2)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 2)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_77 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 2))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 1) (.lam (.var 1))) ∧ NFt (.app (.var 1) (.lam (.var 1))) ∧ callbackOutcome 4 (.app (.var 1) (.lam (.var 1))) :=
  ⟨normalSteps_sound (by decide : normalSteps 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 2))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.var 1) (.lam (.var 1)))), by decide, by decide⟩

theorem depth2_four_c_78 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)) ∧ NFt (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)) ∧ callbackOutcome 4 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0))), by decide, by decide⟩

theorem depth2_four_c_79 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 1) (.var 2)) ∧ NFt (.app (.var 1) (.var 2)) ∧ callbackOutcome 4 (.app (.var 1) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.var 1) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_80 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) ∧ NFt (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_81 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.app (.var 1) (.var 0)) (.var 2)) ∧ NFt (.app (.app (.var 1) (.var 0)) (.var 2)) ∧ callbackOutcome 4 (.app (.app (.var 1) (.var 0)) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.app (.var 1) (.var 0)) (.var 2))), by decide, by decide⟩

theorem depth2_four_c_82 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.app (.var 1) (.var 2))) ∧ NFt (.lam (.app (.var 1) (.var 2))) ∧ callbackOutcome 4 (.lam (.app (.var 1) (.var 2))) :=
  ⟨normalSteps_sound (by decide : normalSteps 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.lam (.app (.var 1) (.var 2)))), by decide, by decide⟩

theorem depth2_four_c_83 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 0) ∧ NFt (.var 0) ∧ callbackOutcome 4 (.var 0) :=
  ⟨normalSteps_sound (by decide : normalSteps 7 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.var 0)), by decide, by decide⟩

theorem depth2_four_c_84 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.var 3)) ∧ NFt (.lam (.var 3)) ∧ callbackOutcome 4 (.lam (.var 3)) :=
  ⟨normalSteps_sound (by decide : normalSteps 6 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.lam (.var 3))), by decide, by decide⟩

theorem depth2_four_c_85 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 0) ∧ NFt (.var 0) ∧ callbackOutcome 4 (.var 0) :=
  ⟨normalSteps_sound (by decide : normalSteps 7 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.var 0)), by decide, by decide⟩

theorem depth2_four_c_86 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 1) ∧ NFt (.var 1) ∧ callbackOutcome 4 (.var 1) :=
  ⟨normalSteps_sound (by decide : normalSteps 7 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.var 1)), by decide, by decide⟩

theorem depth2_four_c_87 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 2))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.app (.var 2) (.var 1))) ∧ NFt (.lam (.app (.var 2) (.var 1))) ∧ callbackOutcome 4 (.lam (.app (.var 2) (.var 1))) :=
  ⟨normalSteps_sound (by decide : normalSteps 6 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 2))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.lam (.app (.var 2) (.var 1)))), by decide, by decide⟩

theorem depth2_four_c_88 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 1) ∧ NFt (.var 1) ∧ callbackOutcome 4 (.var 1) :=
  ⟨normalSteps_sound (by decide : normalSteps 7 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.var 1)), by decide, by decide⟩

theorem depth2_four_c_89 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.var 3)) ∧ NFt (.lam (.var 3)) ∧ callbackOutcome 4 (.lam (.var 3)) :=
  ⟨normalSteps_sound (by decide : normalSteps 6 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.lam (.var 3))), by decide, by decide⟩

theorem depth2_four_c_90 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 1) ∧ NFt (.var 1) ∧ callbackOutcome 4 (.var 1) :=
  ⟨normalSteps_sound (by decide : normalSteps 7 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.var 1)), by decide, by decide⟩

theorem depth2_four_c_91 : Betas (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 0) ∧ NFt (.var 0) ∧ callbackOutcome 4 (.var 0) :=
  ⟨normalSteps_sound (by decide : normalSteps 7 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.var 0)), by decide, by decide⟩

end Blc.Round3Floor
