import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable046

set_option Elab.async false
namespace Blc.Floor45.Grade046S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9557378837742 : ¬ IsSelfInterpreter e9557378837742 := GTable046.cut (upper_sound GTable046.G e9557378837742 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9557378837742
end Blc.Floor45.Grade046S000
