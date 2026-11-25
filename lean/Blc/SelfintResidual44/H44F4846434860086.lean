import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Clocks
import Blc.SelfintResidual44.H44F4846434860086Proof4
import Blc.SelfintResidual44.H44Literals

set_option Elab.async false
namespace Blc.H44.H44F4846434860086
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def env : Env := SelfintRecursiveTypes.cons s0 (SelfintRecursiveTypes.cons s0 SelfintRecursiveTypes.empty)
theorem excluded : ¬ IsSelfInterpreter e4846434860086 := by
  intro he
  obtain ⟨w, hw, hv⟩ := probeJoin (e := e4846434860086) (c := (.lam (.lam (.var 0)))) (m := (.lam (.app (.var 0) (.var 0)))) (r := (.var 0)) (args := []) (u := b42) (v := .var 0) (ps := [[.left,.left],[.left,.left]]) (qs := [[.left],[]]) (by decide) (by decide) (by decide) he
  have eh := normalForm_betas_eq (fun _ h => by cases h) hv
  subst w
  have hx := SelfintRecursiveTypes.star hw 1 ((h145 env sub46) 1 mem49)
  exact (by decide : has tab env (.var 0) 1 ≠ true) hx
#print axioms excluded
end Blc.H44.H44F4846434860086
