import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable008

set_option Elab.async false
namespace Blc.Floor45.Grade008S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9691605195674 : ¬ IsSelfInterpreter e9691605195674 := GTable008.cut (upper_sound GTable008.G e9691605195674 (rho (n := 3) 1 0) 1 (by decide))
#print axioms ex_e9691605195674


theorem ex_e9691605196186 : ¬ IsSelfInterpreter e9691605196186 := GTable008.cut (upper_sound GTable008.G e9691605196186 (rho (n := 3) 1 0) 1 (by decide))
#print axioms ex_e9691605196186


theorem ex_e9691606080922 : ¬ IsSelfInterpreter e9691606080922 := GTable008.cut (upper_sound GTable008.G e9691606080922 (rho (n := 3) 1 0) 1 (by decide))
#print axioms ex_e9691606080922


theorem ex_e9691606087066 : ¬ IsSelfInterpreter e9691606087066 := GTable008.cut (upper_sound GTable008.G e9691606087066 (rho (n := 3) 1 0) 1 (by decide))
#print axioms ex_e9691606087066


theorem ex_e9691606104986 : ¬ IsSelfInterpreter e9691606104986 := GTable008.cut (upper_sound GTable008.G e9691606104986 (rho (n := 3) 1 0) 1 (by decide))
#print axioms ex_e9691606104986

end Blc.Floor45.Grade008S000
