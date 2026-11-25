import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable058

set_option Elab.async false
namespace Blc.Floor45.Grade058S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9540465256362 : ¬ IsSelfInterpreter e9540465256362 := GTable058.cut (upper_sound GTable058.G e9540465256362 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9540465256362


theorem ex_e9557378834102 : ¬ IsSelfInterpreter e9557378834102 := GTable058.cut (upper_sound GTable058.G e9557378834102 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9557378834102


theorem ex_e9558988017498 : ¬ IsSelfInterpreter e9558988017498 := GTable058.cut (upper_sound GTable058.G e9558988017498 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9558988017498


theorem ex_e9566235049322 : ¬ IsSelfInterpreter e9566235049322 := GTable058.cut (upper_sound GTable058.G e9566235049322 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9566235049322


theorem ex_e9573493537478 : ¬ IsSelfInterpreter e9573493537478 := GTable058.cut (upper_sound GTable058.G e9573493537478 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9573493537478

end Blc.Floor45.Grade058S000
