import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable014

set_option Elab.async false
namespace Blc.Floor45.Grade014S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e2394982567770 : ¬ IsSelfInterpreter e2394982567770 := GTable014.cut (upper_sound GTable014.G e2394982567770 (rho (n := 3) 0 3) 2 (by decide))
#print axioms ex_e2394982567770
end Blc.Floor45.Grade014S000
