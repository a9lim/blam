import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable059

set_option Elab.async false
namespace Blc.Floor45.Grade059S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9676609643482 : ¬ IsSelfInterpreter e9676609643482 := GTable059.cut (upper_sound GTable059.G e9676609643482 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9676609643482

end Blc.Floor45.Grade059S000
