import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable043

set_option Elab.async false
namespace Blc.Floor45.Grade043S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9692868951766 : ¬ IsSelfInterpreter e9692868951766 := GTable043.cut (upper_sound GTable043.G e9692868951766 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9692868951766

end Blc.Floor45.Grade043S000
