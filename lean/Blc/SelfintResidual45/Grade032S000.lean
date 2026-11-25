import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable032

set_option Elab.async false
namespace Blc.Floor45.Grade032S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9692402776586 : ¬ IsSelfInterpreter e9692402776586 := GTable032.cut (upper_sound GTable032.G e9692402776586 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9692402776586


theorem ex_e9692869713538 : ¬ IsSelfInterpreter e9692869713538 := GTable032.cut (upper_sound GTable032.G e9692869713538 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9692869713538

end Blc.Floor45.Grade032S000
