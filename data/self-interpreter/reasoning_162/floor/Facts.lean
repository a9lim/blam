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

theorem reader162_zero : Betas (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 3) (.var 1)) :=
  normalSteps_sound (by decide : normalSteps 5 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) = some (.app (.var 3) (.var 1)))

theorem reader162_var1 : Betas (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 2)) :=
  normalSteps_sound (by decide : normalSteps 18 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) = some (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 2)))

theorem reader162_var2 : Betas (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 2)) :=
  normalSteps_sound (by decide : normalSteps 22 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))) = some (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 2)))

theorem reader162_var4 : Betas (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 7)))))))))))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))) (.var 2)) :=
  normalSteps_sound (by decide : normalSteps 30 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 7)))))))))))) = some (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))) (.var 2)))

theorem reader162_var9 : Betas (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 12)))))))))))))))))))))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 11)))))))))))))))))))) (.var 2)) :=
  normalSteps_sound (by decide : normalSteps 50 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 12)))))))))))))))))))))) = some (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 11)))))))))))))))))))) (.var 2)))

theorem reader165_zero : Betas (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 4))))) (.var 3)))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 3) (.var 1)) :=
  normalSteps_sound (by decide : normalSteps 14 (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 4))))) (.var 3)))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) = some (.app (.var 3) (.var 1)))

theorem reader165_var1 : Betas (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 4))))) (.var 3)))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 2)) :=
  normalSteps_sound (by decide : normalSteps 16 (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 4))))) (.var 3)))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) = some (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 2)))

theorem reader165_var2 : Betas (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 4))))) (.var 3)))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 2)) :=
  normalSteps_sound (by decide : normalSteps 20 (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 4))))) (.var 3)))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))) = some (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 2)))

theorem reader165_var4 : Betas (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 4))))) (.var 3)))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 7)))))))))))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))) (.var 2)) :=
  normalSteps_sound (by decide : normalSteps 28 (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 4))))) (.var 3)))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 7)))))))))))) = some (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))) (.var 2)))

theorem reader165_var9 : Betas (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 4))))) (.var 3)))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 12)))))))))))))))))))))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 11)))))))))))))))))))) (.var 2)) :=
  normalSteps_sound (by decide : normalSteps 48 (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 4))))) (.var 3)))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 12)))))))))))))))))))))) = some (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 11)))))))))))))))))))) (.var 2)))

theorem stream_square : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.lam (.var 3)) :=
  normalSteps_sound (by decide : normalSteps 9 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) = some (.lam (.var 3)))

theorem stream_constant_suffix : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 3))) (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) :=
  normalSteps_sound (by decide : normalSteps 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.var 3))) = some (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))))

theorem constant_on_stream : Betas (.app (.lam (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 2) :=
  normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) = some (.var 2))

theorem constant_on_suffix : Betas (.app (.lam (.var 3)) (.lam (.var 3))) (.var 2) :=
  normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.var 3)) (.lam (.var 3))) = some (.var 2))

theorem constant_on_neutral : Betas (.app (.lam (.var 3)) (.app (.var 0) (.var 1))) (.var 2) :=
  normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.var 3)) (.app (.var 0) (.var 1))) = some (.var 2))

theorem stream_on_neutral : Betas (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.app (.var 0) (.var 1))) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) :=
  normalSteps_sound (by decide : normalSteps 1 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.app (.var 0) (.var 1))) = some (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))))

theorem next_zero : Betas (.app (.app (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))) (.app (.var 3) (.lam (.app (.var 3) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))))) (.lam (.lam (.var 1)))) (.var 2)) (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3))))))))))) (.var 2)) :=
  normalSteps_sound (by decide : normalSteps 3 (.app (.app (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))) (.app (.var 3) (.lam (.app (.var 3) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))))) (.lam (.lam (.var 1)))) (.var 2)) = some (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3))))))))))) (.var 2)))

theorem next_one : Betas (.app (.app (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))) (.app (.var 3) (.lam (.app (.var 3) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))))) (.lam (.lam (.var 0)))) (.var 2)) (.app (.app (.var 1) (.lam (.app (.var 2) (.lam (.app (.var 2) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))) (.var 2)) :=
  normalSteps_sound (by decide : normalSteps 3 (.app (.app (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))) (.app (.var 3) (.lam (.app (.var 3) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))))) (.lam (.lam (.var 0)))) (.var 2)) = some (.app (.app (.var 1) (.lam (.app (.var 2) (.lam (.app (.var 2) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))) (.var 2)))

theorem next_form_0_size : (blcCode (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))))) (.app (.var 2) (.lam (.app (.var 3) (.lam (.app (.var 3) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))))).length = 99 := by decide
theorem next_form_0_free : SelfintLowerBound.freeLeaves 0 (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))))) (.app (.var 2) (.lam (.app (.var 3) (.lam (.app (.var 3) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))))) = 5 := by decide

theorem next_form_1_size : (blcCode (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3))))))))))) (.lam (.app (.var 3) (.lam (.app (.var 3) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))))).length = 93 := by decide
theorem next_form_1_free : SelfintLowerBound.freeLeaves 0 (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3))))))))))) (.lam (.app (.var 3) (.lam (.app (.var 3) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))))) = 4 := by decide

theorem next_form_2_size : (blcCode (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))) (.app (.var 3) (.lam (.app (.var 3) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))))).length = 92 := by decide
theorem next_form_2_free : SelfintLowerBound.freeLeaves 0 (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))) (.app (.var 3) (.lam (.app (.var 3) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))))) = 4 := by decide

theorem next_form_3_size : (blcCode (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))))) (.lam (.app (.app (.var 3) (.lam (.app (.var 4) (.lam (.app (.var 4) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))) (.var 0)))))).length = 108 := by decide
theorem next_form_3_free : SelfintLowerBound.freeLeaves 0 (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))))) (.lam (.app (.app (.var 3) (.lam (.app (.var 4) (.lam (.app (.var 4) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))) (.var 0))))) = 5 := by decide

theorem next_form_4_size : (blcCode (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 3) (.lam (.app (.var 3) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3))))))))))) (.var 0)))) (.app (.var 2) (.lam (.app (.var 3) (.lam (.app (.var 3) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))))).length = 107 := by decide
theorem next_form_4_free : SelfintLowerBound.freeLeaves 0 (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 3) (.lam (.app (.var 3) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3))))))))))) (.var 0)))) (.app (.var 2) (.lam (.app (.var 3) (.lam (.app (.var 3) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))))) = 5 := by decide

theorem next_form_5_size : (blcCode (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 3) (.lam (.app (.var 3) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3))))))))))) (.var 0)))) (.lam (.app (.app (.var 3) (.lam (.app (.var 4) (.lam (.app (.var 4) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))) (.var 0)))))).length = 116 := by decide
theorem next_form_5_free : SelfintLowerBound.freeLeaves 0 (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 3) (.lam (.app (.var 3) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3))))))))))) (.var 0)))) (.lam (.app (.app (.var 3) (.lam (.app (.var 4) (.lam (.app (.var 4) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))) (.var 0))))) = 5 := by decide

theorem next_form_6_size : (blcCode (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 3) (.lam (.app (.var 3) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3))))))))))) (.var 0))) (.app (.app (.var 3) (.lam (.app (.var 4) (.lam (.app (.var 4) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))) (.var 0)))))).length = 115 := by decide
theorem next_form_6_free : SelfintLowerBound.freeLeaves 0 (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 3) (.lam (.app (.var 3) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3))))))))))) (.var 0))) (.app (.app (.var 3) (.lam (.app (.var 4) (.lam (.app (.var 4) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))) (.var 0))))) = 5 := by decide

theorem next_form_7_size : (blcCode (.lam (.lam (.app (.app (.var 3) (.app (.app (.var 1) (.lam (.app (.var 3) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3))))))))))) (.lam (.app (.var 4) (.lam (.app (.var 4) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))) (.var 0))))).length = 104 := by decide
theorem next_form_7_free : SelfintLowerBound.freeLeaves 0 (.lam (.lam (.app (.app (.var 3) (.app (.app (.var 1) (.lam (.app (.var 3) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3))))))))))) (.lam (.app (.var 4) (.lam (.app (.var 4) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))) (.var 0)))) = 4 := by decide

theorem next_form_8_size : (blcCode (.lam (.lam (.app (.app (.var 3) (.lam (.app (.app (.var 2) (.app (.var 3) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))) (.app (.var 4) (.lam (.app (.var 4) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))) (.var 0))))).length = 103 := by decide
theorem next_form_8_free : SelfintLowerBound.freeLeaves 0 (.lam (.lam (.app (.app (.var 3) (.lam (.app (.app (.var 2) (.app (.var 3) (.lam (.lam (.app (.var 2) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 3)))))))))) (.app (.var 4) (.lam (.app (.var 4) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))) (.var 0)))) = 4 := by decide

end Blc.Round3Floor
