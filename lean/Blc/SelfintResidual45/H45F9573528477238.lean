import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45Clocks
import Blc.SelfintResidual45.H45F9573528477238Proof70
import Blc.SelfintResidual45.H45Literals

set_option Elab.async false
namespace Blc.H45.H45F9573528477238
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
def env : Env := SelfintRecursiveTypes.cons s0 (SelfintRecursiveTypes.cons s0 SelfintRecursiveTypes.empty)
theorem excluded : ¬ IsSelfInterpreter e9573528477238 := by
  intro he
  have hp : replay [] (.app e9573528477238 churchTrue) = some b16 := by decide
  obtain ⟨_,hc⟩ := clocks_replay (kCount he) hp
  exact SelfintRecursiveTypes.noClock (m := tab) ((h2502 SelfintRecursiveTypes.empty) 0 mem546) (by decide) hc
#print axioms excluded
end Blc.H45.H45F9573528477238
