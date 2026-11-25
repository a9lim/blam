import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable031

set_option Elab.async false
namespace Blc.Floor45.Grade031S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9673342907862 : ¬ IsSelfInterpreter e9673342907862 := GTable031.cut (upper_sound GTable031.G e9673342907862 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9673342907862

end Blc.Floor45.Grade031S000
