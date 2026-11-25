import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable051

set_option Elab.async false
namespace Blc.Floor45.Grade051S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9573493536986 : ¬ IsSelfInterpreter e9573493536986 := GTable051.cut (upper_sound GTable051.G e9573493536986 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9573493536986


theorem ex_e9573493559066 : ¬ IsSelfInterpreter e9573493559066 := GTable051.cut (upper_sound GTable051.G e9573493559066 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9573493559066

end Blc.Floor45.Grade051S000
