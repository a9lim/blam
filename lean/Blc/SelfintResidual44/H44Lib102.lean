import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Lib102V55

set_option Elab.async false
namespace Blc.H44
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock SelfintRecursiveTypes
namespace Lib102
theorem excluded {e : Term} (ty : has tab env e 1 = true) : ¬ IsSelfInterpreter e := by
  intro he
  have hs : has tab (ins 2 [1] env) src 3 = true := (v80 (ins 2 [1] env) rfl rfl) 3 (by decide)
  have hh := substHas tab src e 2 env [1] (by intro x hx; obtain rfl := List.mem_singleton.mp hx; exact ty) 3 hs
  have eq : substDec 2 e src = call e (.lam (.lam (.var 1))) (.lam (.app (.var 0) (.var 0))) (.var 0) [(.lam (.var 0))] := by rfl
  rw [eq] at hh
  obtain ⟨w, hw, hv⟩ := probeJoin (e := e) (c := (.lam (.lam (.var 1)))) (m := (.lam (.app (.var 0) (.var 0)))) (r := (.var 0)) (args := [(.lam (.var 0))]) (u := call e (.lam (.lam (.var 1))) (.lam (.app (.var 0) (.var 0))) (.var 0) [(.lam (.var 0))]) (v := dst) (ps := []) (qs := [[.left,.left],[.left],[]]) (by decide) (by rfl) (by decide) he
  have eq' := normalForm_betas_eq (fun _ => nft_no_beta (by decide : NFt dst)) hv
  subst w
  have neg : has tab env dst 3 = false := (v86 env) 3 (by decide)
  exact Bool.noConfusion (neg.symm.trans (SelfintRecursiveTypes.star hw 3 hh))
#print axioms excluded
end Lib102
end Blc.H44
