import Blc.SelfintResidual43.Extra
import Blc.SelfintResidual43.Lib3V55

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38 SelfintRecursiveTypes
namespace Lib3
theorem excluded {e : Term} (ty : has tab env e 4 = true) : ¬ IsSelfInterpreter e := by
  intro he
  have hs : has tab (ins 2 [4] env) src 1 = true := (v67 (ins 2 [4] env) rfl rfl) 1 (by decide)
  have hh := substHas tab src e 2 env [4] (by intro x hx; obtain rfl := List.mem_singleton.mp hx; exact ty) 1 hs
  have eq : substDec 2 e src = call e (.lam (.lam (.var 1))) (.lam (.app (.var 0) (.var 0))) (.var 0) [(.lam (.var 0))] := by rfl
  rw [eq] at hh
  obtain ⟨w, hw, hv⟩ := probeJoin (e := e) (c := (.lam (.lam (.var 1)))) (m := (.lam (.app (.var 0) (.var 0)))) (r := (.var 0)) (args := [(.lam (.var 0))]) (u := call e (.lam (.lam (.var 1))) (.lam (.app (.var 0) (.var 0))) (.var 0) [(.lam (.var 0))]) (v := dst) (ps := []) (qs := [[.left,.left],[.left],[]]) (by decide) (by rfl) (by decide) he
  have eq' := normalForm_betas_eq (fun _ => nft_no_beta (by decide : NFt dst)) hv
  subst w
  have neg : has tab env dst 1 = false := (v72 env) 1 (by decide)
  exact Bool.noConfusion (neg.symm.trans (SelfintRecursiveTypes.star hw 1 hh))
#print axioms excluded
end Lib3
end Blc.Floor43
