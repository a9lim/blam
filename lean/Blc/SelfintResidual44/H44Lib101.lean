import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Lib101V55

set_option Elab.async false
namespace Blc.H44
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock SelfintRecursiveTypes
namespace Lib101
theorem excluded {e : Term} (ty : has tab env e 5 = true) : ¬ IsSelfInterpreter e := by
  intro he
  have hs : has tab (ins 2 [5] env) src 4 = true := (v74 (ins 2 [5] env) rfl rfl rfl) 4 (by decide)
  have hh := substHas tab src e 2 env [5] (by intro x hx; obtain rfl := List.mem_singleton.mp hx; exact ty) 4 hs
  have eq : substDec 2 e src = call e (.var 1) (.lam (.lam (.var 1))) (.var 0) [] := by rfl
  rw [eq] at hh
  obtain ⟨w, hw, hv⟩ := probeJoin (e := e) (c := (.var 1)) (m := (.lam (.lam (.var 1)))) (r := (.var 0)) (args := []) (u := call e (.var 1) (.lam (.lam (.var 1))) (.var 0) []) (v := dst) (ps := []) (qs := []) (by decide) (by rfl) (by decide) he
  have eq' := normalForm_betas_eq (fun _ => nft_no_beta (by decide : NFt dst)) hv
  subst w
  have neg : has tab env dst 4 = false := (v78 env rfl rfl) 4 (by decide)
  exact Bool.noConfusion (neg.symm.trans (SelfintRecursiveTypes.star hw 4 hh))
#print axioms excluded
end Lib101
end Blc.H44
