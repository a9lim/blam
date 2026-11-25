import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45Clocks
import Blc.SelfintResidual45.H45F9692402989098Proof2
import Blc.SelfintResidual45.H45Literals

set_option Elab.async false
namespace Blc.H45.H45F9692402989098
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def env : Env := SelfintRecursiveTypes.cons s0 (SelfintRecursiveTypes.cons s0 SelfintRecursiveTypes.empty)
theorem excluded : ¬ IsSelfInterpreter e9692402989098 := by
  intro he
  obtain ⟨w, hw, hv⟩ := probeJoin (e := e9692402989098) (c := (.lam (.lam (.var 0)))) (m := (.lam (.var 0))) (r := (.var 0)) (args := []) (u := b30) (v := .var 0) (ps := []) (qs := [[.left],[]]) (by decide) (by decide) (by decide) he
  have eh := normalForm_betas_eq (fun _ h => by cases h) hv
  subst w
  have hx := SelfintRecursiveTypes.star hw 1 ((h99 env sub31) 1 mem49)
  exact (by decide : has tab env (.var 0) 1 ≠ true) hx
#print axioms excluded
end Blc.H45.H45F9692402989098
