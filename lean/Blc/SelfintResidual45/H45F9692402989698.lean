import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45Clocks
import Blc.SelfintResidual45.H45F9692402989698Proof1
import Blc.SelfintResidual45.H45Literals

set_option Elab.async false
namespace Blc.H45.H45F9692402989698
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def env : Env := SelfintRecursiveTypes.cons s0 (SelfintRecursiveTypes.cons s0 SelfintRecursiveTypes.empty)
theorem excluded : ¬ IsSelfInterpreter e9692402989698 := by
  intro he
  have hp : replay [[.left],[.left],[.left,.left]] (.app e9692402989698 diag) = some b24 := by decide
  obtain ⟨_,hc⟩ := clocks_replay (diagCount he) hp
  exact SelfintRecursiveTypes.noClock (m := tab) ((h47 SelfintRecursiveTypes.empty) 0 mem12) (by decide) hc
#print axioms excluded
end Blc.H45.H45F9692402989698
