import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45Clocks
import Blc.SelfintResidual45.H45F9692869766666Proof1
import Blc.SelfintResidual45.H45Literals

set_option Elab.async false
namespace Blc.H45.H45F9692869766666
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def env : Env := SelfintRecursiveTypes.cons s0 (SelfintRecursiveTypes.cons s0 SelfintRecursiveTypes.empty)
theorem excluded : ¬ IsSelfInterpreter e9692869766666 := by
  intro he
  obtain ⟨w, hw, hv⟩ := probeJoin (e := e9692869766666) (c := (.lam (.lam (.var 0)))) (m := (.lam (.lam (.var 0)))) (r := (.lam (.lam (.lam (.lam (.lam (.lam (.lam (.lam (.lam (.lam (.lam (.lam (.var 12)))))))))))))) (args := [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))]) (u := b59) (v := .var 0) (ps := []) (qs := [[.left,.left,.left,.left,.left,.left,.left,.left,.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left,.left,.left,.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left,.left,.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left,.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left],[.left,.left,.left,.left],[.left,.left,.left],[.left,.left],[.left],[]]) (by decide) (by decide) (by decide) he
  have eh := normalForm_betas_eq (fun _ h => by cases h) hv
  subst w
  have hx := SelfintRecursiveTypes.star hw 1 ((h70 env sub17) 1 mem19)
  exact (by decide : has tab env (.var 0) 1 ≠ true) hx
#print axioms excluded
end Blc.H45.H45F9692869766666
