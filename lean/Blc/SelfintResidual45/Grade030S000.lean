import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable030

set_option Elab.async false
namespace Blc.Floor45.Grade030S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9692869766786 : ¬ IsSelfInterpreter e9692869766786 := GTable030.cut (upper_sound GTable030.G e9692869766786 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9692869766786

end Blc.Floor45.Grade030S000
