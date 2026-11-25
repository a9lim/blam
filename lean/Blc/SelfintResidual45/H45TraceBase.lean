import Blc.SelfintResidual45.H45Base

set_option Elab.async false
namespace Blc.H45.Trace
open Term SelfintLowerBound SelfintSharp SelfintControl SelfintProbe
def run : Nat → Term → Option Term
  | 0,t => some t
  | n+1,t => (weakStep t).bind (run n)
theorem sound {t u : Term} {n} (h : run n t = some u) : Betas t u := by
  induction n generalizing t with
  | zero => exact Option.some.inj h ▸ Betas.refl _
  | succ n ih =>
    cases hw : weakStep t with
    | none => simp [run,hw] at h
    | some t' => exact .head (weakStep_beta hw) (ih (by simpa [run,hw] using h))
theorem lamVar {b : Term} {i : Nat} : ¬ BetaJoin (.lam b) (.var i) := by
  rintro ⟨v,h₁,h₂⟩
  obtain ⟨_,eq,_⟩ := lam_betas_shape h₁
  have hv := normalForm_betas_eq (fun _ h => by cases h) h₂
  simp_all
end Blc.H45.Trace
