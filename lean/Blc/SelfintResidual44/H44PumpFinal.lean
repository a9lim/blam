import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Literals
import Blc.SelfintResidual44.H44PumpCycle

set_option Elab.async false
namespace Blc.H44.Pump
open Term SelfintSharp SelfintControl SelfintLowerBound WeakHeadClock
theorem excluded : ¬ IsSelfInterpreter Blc.H44.e4846363276054 := by
  intro he
  obtain ⟨n,h⟩ := rawCount he
  have w : weakStep Blc.H44.e4846363276054 = some (den t44) := by decide
  obtain ⟨m,_,hm⟩ := head_decreases h w
  exact neverRoot m hm
#print axioms excluded
end Blc.H44.Pump
