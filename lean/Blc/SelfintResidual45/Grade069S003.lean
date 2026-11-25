import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable069

set_option Elab.async false
namespace Blc.Floor45.Grade069S003
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9646874131062 : ¬ IsSelfInterpreter e9646874131062 := GTable069.cut (upper_sound GTable069.G e9646874131062 (rho (n := 4) 1 0) 1 (by decide))
#print axioms ex_e9646874131062


theorem ex_e9672518757914 : ¬ IsSelfInterpreter e9672518757914 := GTable069.cut (upper_sound GTable069.G e9672518757914 (rho (n := 4) 1 0) 1 (by decide))
#print axioms ex_e9672518757914


theorem ex_e9672518774298 : ¬ IsSelfInterpreter e9672518774298 := GTable069.cut (upper_sound GTable069.G e9672518774298 (rho (n := 4) 1 0) 1 (by decide))
#print axioms ex_e9672518774298

end Blc.Floor45.Grade069S003
