import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable047

set_option Elab.async false
namespace Blc.Floor45.Grade047S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e2394982569582 : ¬ IsSelfInterpreter e2394982569582 := GTable047.cut (upper_sound GTable047.G e2394982569582 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e2394982569582


theorem ex_e9557378836342 : ¬ IsSelfInterpreter e9557378836342 := GTable047.cut (upper_sound GTable047.G e9557378836342 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9557378836342
end Blc.Floor45.Grade047S000
