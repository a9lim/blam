import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Clocks
import Blc.SelfintResidual44.H44F4846434772678Proof21
import Blc.SelfintResidual44.H44Literals

set_option Elab.async false
namespace Blc.H44.H44F4846434772678
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def env : Env := SelfintRecursiveTypes.cons s0 (SelfintRecursiveTypes.cons s0 SelfintRecursiveTypes.empty)
theorem excluded : ¬ IsSelfInterpreter e4846434772678 := by
  intro he
  have hp : replay [] e4846434772678 = some b14 := by decide
  obtain ⟨_,hc⟩ := clocks_replay (rawCount he) hp
  exact SelfintRecursiveTypes.noClock (m := tab) ((h776 SelfintRecursiveTypes.empty) 0 mem1) (by decide) hc
#print axioms excluded
end Blc.H44.H44F4846434772678
