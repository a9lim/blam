import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Clocks
import Blc.SelfintResidual44.H44F4846363266838Proof19
import Blc.SelfintResidual44.H44Literals

set_option Elab.async false
namespace Blc.H44.H44F4846363266838
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def env : Env := SelfintRecursiveTypes.cons s0 (SelfintRecursiveTypes.cons s0 SelfintRecursiveTypes.empty)
theorem excluded : ¬ IsSelfInterpreter e4846363266838 := by
  intro he
  obtain ⟨w, hw, hv⟩ := probeJoin (e := e4846363266838) (c := (.lam (.lam (.var 0)))) (m := (.lam (.var 0))) (r := (.var 0)) (args := []) (u := b30) (v := .var 0) (ps := []) (qs := [[.left],[]]) (by decide) (by decide) (by decide) he
  have eh := normalForm_betas_eq (fun _ h => by cases h) hv
  subst w
  have hx := SelfintRecursiveTypes.star hw 1 ((h612 env sub374) 1 mem263)
  exact (by decide : has tab env (.var 0) 1 ≠ true) hx
#print axioms excluded
end Blc.H44.H44F4846363266838
