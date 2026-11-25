import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402957530Proof52
import Blc.SelfintResidual45.H45Literals
import Blc.SelfintResidual45.H45ProbeClock

set_option Elab.async false
namespace Blc.H45.H45F9692402957530
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def env : Env := SelfintRecursiveTypes.cons s0 (SelfintRecursiveTypes.cons s0 SelfintRecursiveTypes.empty)
theorem excluded : ¬ IsSelfInterpreter e9692402957530 := by
  intro he
  have hp : replay [[.left],[.left],[.left,.left],[.left,.left,.left],[.left,.left],[.left,.left,.right,.under],[.left,.left,.right,.under,.under],[.left,.left,.right,.under,.under,.under,.right,.under]] (.app e9692402957530 diag) = some b88 := by decide
  obtain ⟨_,hc⟩ := clocks_replay (diagCount he) hp
  exact SelfintRecursiveTypes.noClock (m := tab) ((h1836 SelfintRecursiveTypes.empty) 0 mem23) (by decide) hc
#print axioms excluded
end Blc.H45.H45F9692402957530
