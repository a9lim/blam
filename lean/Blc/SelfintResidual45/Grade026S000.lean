import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable026

set_option Elab.async false
namespace Blc.Floor45.Grade026S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9557379048918 : ¬ IsSelfInterpreter e9557379048918 := GTable026.cut (upper_sound GTable026.G e9557379048918 (rho (n := 3) 0 0) 1 (by decide))
#print axioms ex_e9557379048918

end Blc.Floor45.Grade026S000
