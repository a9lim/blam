import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45Clocks
import Blc.SelfintResidual45.H45F9676763418166Proof2
import Blc.SelfintResidual45.H45Literals

set_option Elab.async false
namespace Blc.H45.H45F9676763418166
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def env : Env := SelfintRecursiveTypes.cons s0 (SelfintRecursiveTypes.cons s0 SelfintRecursiveTypes.empty)
theorem excluded : ¬ IsSelfInterpreter e9676763418166 := by
  intro he
  obtain ⟨w, hw, hv⟩ := probeJoin (e := e9676763418166) (c := (.lam (.lam (.var 0)))) (m := (.lam (.lam (.var 0)))) (r := (.var 0)) (args := []) (u := b34) (v := .var 0) (ps := []) (qs := [[.left],[]]) (by decide) (by decide) (by decide) he
  have eh := normalForm_betas_eq (fun _ h => by cases h) hv
  subst w
  have hx := SelfintRecursiveTypes.star hw 1 ((h91 env sub29) 1 mem32)
  exact (by decide : has tab env (.var 0) 1 ≠ true) hx
#print axioms excluded
end Blc.H45.H45F9676763418166
