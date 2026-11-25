import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402711770Proof8
import Blc.SelfintResidual45.H45Literals
import Blc.SelfintResidual45.H45ProbeClock

set_option Elab.async false
namespace Blc.H45.H45F9692402711770
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def env : Env := SelfintRecursiveTypes.cons s0 (SelfintRecursiveTypes.cons s0 SelfintRecursiveTypes.empty)
theorem excluded : ¬ IsSelfInterpreter e9692402711770 := by
  intro he
  have hp : replay [[.left],[.left],[.left,.left],[.left,.left,.left],[.left,.left],[.left,.left],[.left],[.left],[.left],[.left,.left,.left],[.left,.left,.left],[.left,.left]] (.app e9692402711770 (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) = some b215 := by decide
  obtain ⟨_,hc⟩ := clocks_replay (argCount (c := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (k := 4) he (by decide)) hp
  exact SelfintRecursiveTypes.noClock (m := tab) ((h298 SelfintRecursiveTypes.empty) 0 mem15) (by decide) hc
#print axioms excluded
end Blc.H45.H45F9692402711770
