import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable052

set_option Elab.async false
namespace Blc.Floor45.Grade052S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9673902218966 : ¬ IsSelfInterpreter e9673902218966 := GTable052.cut (upper_sound GTable052.G e9673902218966 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9673902218966

end Blc.Floor45.Grade052S000
