import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Clocks
import Blc.SelfintResidual44.H44F4846363331614Proof2
import Blc.SelfintResidual44.H44Literals

set_option Elab.async false
namespace Blc.H44.H44F4846363331614
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def env : Env := SelfintRecursiveTypes.cons s0 (SelfintRecursiveTypes.cons s0 SelfintRecursiveTypes.empty)
theorem excluded : ¬ IsSelfInterpreter e4846363331614 := by
  intro he
  have hp : replay [] (.app e4846363331614 diag) = some b16 := by decide
  obtain ⟨_,hc⟩ := clocks_replay (diagCount he) hp
  exact SelfintRecursiveTypes.noClock (m := tab) ((h74 SelfintRecursiveTypes.empty) 0 mem22) (by decide) hc
#print axioms excluded
end Blc.H44.H44F4846363331614
