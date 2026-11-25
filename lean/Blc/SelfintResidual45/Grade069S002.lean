import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable069

set_option Elab.async false
namespace Blc.Floor45.Grade069S002
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9624768455018 : ¬ IsSelfInterpreter e9624768455018 := GTable069.cut (upper_sound GTable069.G e9624768455018 (rho (n := 4) 1 0) 1 (by decide))
#print axioms ex_e9624768455018

end Blc.Floor45.Grade069S002
