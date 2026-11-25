import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692715709398Proof24
import Blc.SelfintResidual45.H45Literals
import Blc.SelfintResidual45.H45OpenClock

set_option Elab.async false
namespace Blc.H45.H45F9692715709398
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def env : Env := SelfintRecursiveTypes.cons s0 (SelfintRecursiveTypes.cons s0 SelfintRecursiveTypes.empty)
theorem excluded : ¬ IsSelfInterpreter e9692715709398 := by
  intro he
  have hp : replay [[.left],[.left],[.left]] (.app e9692715709398 (.var 0)) = some b19 := by decide
  obtain ⟨_,hc⟩ := clocks_replay (argCount (c := .var 0) (k := 0) he (by decide)) hp
  exact noOpenClock (m := tab) ((h888 SelfintRecursiveTypes.empty sub215) 0 mem16) hc
#print axioms excluded
end Blc.H45.H45F9692715709398
