/- Fixed beta facts supporting floor138.md. The size theorem itself remains handwritten. -/
import Blc.SelfintKnot
import Blc.Wire
import Blc.SelfintWireCost

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

theorem shallow_S_S : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.lam (.var 3)) ∧ NFt (.lam (.var 3)) :=
  ⟨normalSteps_sound (by decide : normalSteps 9 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) = some (.lam (.var 3))), by decide⟩

theorem shallow_S_F : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) ∧ NFt (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 0)))) = some (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))), by decide⟩

theorem shallow_S_P : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) ∧ NFt (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))), by decide⟩

theorem shallow_S_I : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) (.lam (.var 0)) ∧ NFt (.lam (.var 0)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 0))) = some (.lam (.var 0))), by decide⟩

theorem shallow_S_W : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 3))) (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) ∧ NFt (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) :=
  ⟨normalSteps_sound (by decide : normalSteps 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 3))) = some (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))), by decide⟩

theorem shallow_F_S : Betas (.app (.lam (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.lam (.var 0)) ∧ NFt (.lam (.var 0)) :=
  ⟨normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) = some (.lam (.var 0))), by decide⟩

theorem shallow_F_F : Betas (.app (.lam (.lam (.var 0))) (.lam (.lam (.var 0)))) (.lam (.var 0)) ∧ NFt (.lam (.var 0)) :=
  ⟨normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.lam (.var 0))) (.lam (.lam (.var 0)))) = some (.lam (.var 0))), by decide⟩

theorem shallow_F_P : Betas (.app (.lam (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.var 0)) ∧ NFt (.lam (.var 0)) :=
  ⟨normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.lam (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.lam (.var 0))), by decide⟩

theorem shallow_F_I : Betas (.app (.lam (.lam (.var 0))) (.lam (.var 0))) (.lam (.var 0)) ∧ NFt (.lam (.var 0)) :=
  ⟨normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.lam (.var 0))) (.lam (.var 0))) = some (.lam (.var 0))), by decide⟩

theorem shallow_F_W : Betas (.app (.lam (.lam (.var 0))) (.lam (.var 3))) (.lam (.var 0)) ∧ NFt (.lam (.var 0)) :=
  ⟨normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.lam (.var 0))) (.lam (.var 3))) = some (.lam (.var 0))), by decide⟩

theorem shallow_P_S : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.lam (.var 0)) ∧ NFt (.lam (.var 0)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) = some (.lam (.var 0))), by decide⟩

theorem shallow_P_F : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 0)))) (.var 2) ∧ NFt (.var 2) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 0)))) = some (.var 2)), by decide⟩

theorem shallow_P_P : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.var 3)) ∧ NFt (.lam (.var 3)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.lam (.var 3))), by decide⟩

theorem shallow_P_I : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) (.lam (.var 3)) ∧ NFt (.lam (.var 3)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 0))) = some (.lam (.var 3))), by decide⟩

theorem shallow_P_W : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 3))) (.app (.var 2) (.var 2)) ∧ NFt (.app (.var 2) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.var 3))) = some (.app (.var 2) (.var 2))), by decide⟩

theorem shallow_I_S : Betas (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) ∧ NFt (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) :=
  ⟨normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) = some (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))), by decide⟩

theorem shallow_I_F : Betas (.app (.lam (.var 0)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 0))) ∧ NFt (.lam (.lam (.var 0))) :=
  ⟨normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.var 0)) (.lam (.lam (.var 0)))) = some (.lam (.lam (.var 0)))), by decide⟩

theorem shallow_I_P : Betas (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) ∧ NFt (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) :=
  ⟨normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))), by decide⟩

theorem shallow_I_I : Betas (.app (.lam (.var 0)) (.lam (.var 0))) (.lam (.var 0)) ∧ NFt (.lam (.var 0)) :=
  ⟨normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.var 0)) (.lam (.var 0))) = some (.lam (.var 0))), by decide⟩

theorem shallow_I_W : Betas (.app (.lam (.var 0)) (.lam (.var 3))) (.lam (.var 3)) ∧ NFt (.lam (.var 3)) :=
  ⟨normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.var 0)) (.lam (.var 3))) = some (.lam (.var 3))), by decide⟩

theorem shallow_W_S : Betas (.app (.lam (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 2) ∧ NFt (.var 2) :=
  ⟨normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) = some (.var 2)), by decide⟩

theorem shallow_W_F : Betas (.app (.lam (.var 3)) (.lam (.lam (.var 0)))) (.var 2) ∧ NFt (.var 2) :=
  ⟨normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.var 3)) (.lam (.lam (.var 0)))) = some (.var 2)), by decide⟩

theorem shallow_W_P : Betas (.app (.lam (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 2) ∧ NFt (.var 2) :=
  ⟨normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) = some (.var 2)), by decide⟩

theorem shallow_W_I : Betas (.app (.lam (.var 3)) (.lam (.var 0))) (.var 2) ∧ NFt (.var 2) :=
  ⟨normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.var 3)) (.lam (.var 0))) = some (.var 2)), by decide⟩

theorem shallow_W_W : Betas (.app (.lam (.var 3)) (.lam (.var 3))) (.var 2) ∧ NFt (.var 2) :=
  ⟨normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.var 3)) (.lam (.var 3))) = some (.var 2)), by decide⟩

theorem shallow_zero_square : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.var 4)) ∧ NFt (.lam (.var 4)) :=
  ⟨normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) = some (.lam (.var 4))), by decide⟩

theorem shallow_zero_constant : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 4))) (.app (.var 3) (.var 3)) ∧ NFt (.app (.var 3) (.var 3)) :=
  ⟨normalSteps_sound (by decide : normalSteps 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 4))) = some (.app (.var 3) (.var 3))), by decide⟩

theorem shallow_zero_erase : Betas (.app (.lam (.var 4)) (.var 0)) (.var 3) ∧ NFt (.var 3) :=
  ⟨normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.var 4)) (.var 0)) = some (.var 3)), by decide⟩

theorem shallow_zero_neutral : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1))) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) ∧ NFt (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) :=
  ⟨normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.app (.var 0) (.var 1))) = some (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3))), by decide⟩

theorem shallow_one_neutral : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.app (.var 0) (.var 1))) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) ∧ NFt (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) :=
  ⟨normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.app (.var 0) (.var 1))) = some (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))), by decide⟩

theorem closed_linear_callback_1 : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0))) (.lam (.var 4)) ∧ NFt (.lam (.var 4)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 0))) = some (.lam (.var 4))), by decide⟩

theorem closed_binary_callback_1 : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))) ∧ NFt (.lam (.lam (.var 1))) :=
  ⟨normalSteps_sound (by decide : normalSteps 4 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.app (.var 0) (.var 0)))) = some (.lam (.lam (.var 1)))), by decide⟩

theorem closed_linear_callback_2 : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.var 0)))) (.var 3) ∧ NFt (.var 3) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.var 0)))) = some (.var 3)), by decide⟩

theorem closed_binary_callback_2 : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 3) (.var 3)) ∧ NFt (.app (.var 3) (.var 3)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.app (.var 0) (.var 0))))) = some (.app (.var 3) (.var 3))), by decide⟩

theorem closed_linear_callback_3 : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.lam (.var 0))))) (.lam (.var 0)) ∧ NFt (.lam (.var 0)) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.lam (.var 0))))) = some (.lam (.var 0))), by decide⟩

theorem closed_binary_callback_3 : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))) ∧ NFt (.lam (.app (.var 0) (.var 0))) :=
  ⟨normalSteps_sound (by decide : normalSteps 3 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) = some (.lam (.app (.var 0) (.var 0)))), by decide⟩

theorem hole_callback_on_zero : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 2))) (.app (.var 1) (.var 3)) ∧ NFt (.app (.var 1) (.var 3)) :=
  ⟨normalSteps_sound (by decide : normalSteps 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.var 2))) = some (.app (.var 1) (.var 3))), by decide⟩

theorem known_two_lambda_zero : Betas (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3))))) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 3) (.var 1)) ∧ NFt (.app (.var 3) (.var 1)) :=
  ⟨normalSteps_sound (by decide : normalSteps 15 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3))))) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) = some (.app (.var 3) (.var 1))), by decide⟩

theorem known_two_lambda_1 : Betas (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3))))) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 2)) ∧ NFt (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 15 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3))))) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) = some (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 2))), by decide⟩

theorem known_two_lambda_2 : Betas (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3))))) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 2)) ∧ NFt (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 19 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3))))) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))) = some (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 2))), by decide⟩

theorem known_two_lambda_4 : Betas (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3))))) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 7)))))))))))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))) (.var 2)) ∧ NFt (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 27 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3))))) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 7)))))))))))) = some (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))) (.var 2))), by decide⟩

theorem known_two_lambda_9 : Betas (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3))))) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 12)))))))))))))))))))))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 11)))))))))))))))))))) (.var 2)) ∧ NFt (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 11)))))))))))))))))))) (.var 2)) :=
  ⟨normalSteps_sound (by decide : normalSteps 47 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3))))) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 12)))))))))))))))))))))) = some (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 11)))))))))))))))))))) (.var 2))), by decide⟩


open SelfintWireCost SelfintLowerBound

theorem shallow_linear_beta_shrinks (b a : Term)
    (ho : occ 0 b = 1) (ha : freeLeaves 0 a ≤ 7)
    (hd : occDepth 0 b ≤ 1) (hb : 1 ≤ freeLeaves 1 b) :
    wire (contract b a) < wire (.app (.lam b) a) := by
  have h := linear_beta_delta b a ho
  have hD : occDepth 0 b = 0 ∨ occDepth 0 b = 1 := by omega
  rcases hD with hD | hD
  · rw [hD] at h
    simp only [Int.natCast_zero, Int.mul_zero] at h
    omega
  · rw [hD] at h
    simp only [Int.natCast_one, Int.mul_one] at h
    omega

theorem shallow_linear_beta_nonincrease (b a : Term)
    (ho : occ 0 b = 1) (ha : freeLeaves 0 a ≤ 4)
    (hd : occDepth 0 b ≤ 2) :
    wire (contract b a) ≤ wire (.app (.lam b) a) := by
  have h := linear_beta_delta b a ho
  have hD : occDepth 0 b = 0 ∨ occDepth 0 b = 1 ∨ occDepth 0 b = 2 := by omega
  rcases hD with hD | hD | hD
  · rw [hD] at h
    simp only [Int.natCast_zero, Int.mul_zero] at h
    omega
  · rw [hD] at h
    simp only [Int.natCast_one, Int.mul_one] at h
    omega
  · rw [hD] at h
    change (wire (contract b a) : Int) - wire (.app (.lam b) a) =
      ((freeLeaves 0 a : Int) - 1) * 2 - 6 - freeLeaves 1 b at h
    omega

theorem shallow_linear_beta_nonincrease_one (b a : Term)
    (ho : occ 0 b = 1) (ha : freeLeaves 0 a ≤ 7)
    (hd : occDepth 0 b ≤ 1) :
    wire (contract b a) ≤ wire (.app (.lam b) a) := by
  have h := linear_beta_delta b a ho
  have hD : occDepth 0 b = 0 ∨ occDepth 0 b = 1 := by omega
  rcases hD with hD | hD
  · rw [hD] at h
    simp only [Int.natCast_zero, Int.mul_zero] at h
    omega
  · rw [hD] at h
    simp only [Int.natCast_one, Int.mul_one] at h
    omega

-- Pure arithmetic completeness for the remaining f=3, depth-two strip.
-- The source-count and semantic exclusion hypotheses are handwritten.
theorem depth_two_three_c_lambda_inventory (l v x w : Nat)
    (hl : 3 ≤ l) (hv : 7 ≤ v) (hx : 3 ≤ x)
    (hw0 : 43 ≤ w) (hw1 : w ≤ 45)
    (he : w + 4 = 2*l + 4*v + x + 8)
    (h4 : ¬ (l = 4 ∧ v = 7 ∧ x = 3))
    (h5 : ¬ (l = 5 ∧ v = 7 ∧ x = 3)) :
    (l = 3 ∧ v = 7 ∧ x = 5) ∨
    (l = 3 ∧ v = 7 ∧ x = 6) ∨
    (l = 3 ∧ v = 7 ∧ x = 7) ∨
    (l = 3 ∧ v = 8 ∧ x = 3) ∨
    (l = 4 ∧ v = 7 ∧ x = 4) ∨
    (l = 4 ∧ v = 7 ∧ x = 5) := by omega

theorem depth_two_three_c_app_inventory (l v x w : Nat)
    (hl : 3 ≤ l) (hv : 8 ≤ v)
    (hw0 : 43 ≤ w) (hw1 : w ≤ 45)
    (he : w + 4 = 2*l + 4*v + x + 8) :
    (l = 3 ∧ v = 8 ∧ x = 1) ∨
    (l = 3 ∧ v = 8 ∧ x = 2) ∨
    (l = 3 ∧ v = 8 ∧ x = 3) ∨
    (l = 4 ∧ v = 8 ∧ x = 0) ∨
    (l = 4 ∧ v = 8 ∧ x = 1) := by omega

end Blc.Round3Floor
