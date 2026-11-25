import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Clocks
import Blc.SelfintResidual44.H44T4846363331350V55

set_option Elab.async false
namespace Blc.H44
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock SelfintRecursiveTypes
namespace T4846363331350
theorem excluded : ¬ IsSelfInterpreter e4846363331350 := by
  intro he
  have hp : replay [] e4846363331350 = some src := by decide
  obtain ⟨_,hc⟩ := clocks_replay (rawCount he) hp
  exact SelfintRecursiveTypes.noClock (m := tab) (by exact (v78 SelfintRecursiveTypes.empty) 0 (by decide)) (by decide) hc
#print axioms excluded
end T4846363331350
end Blc.H44
