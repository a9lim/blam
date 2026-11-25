import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable076

set_option Elab.async false
namespace Blc.Floor45.Grade076S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9692402104842 : ¬ IsSelfInterpreter e9692402104842 := GTable076.cut (upper_sound GTable076.G e9692402104842 (rho (n := 4) 0 4) 2 (by decide))
#print axioms ex_e9692402104842


theorem ex_e9692869545602 : ¬ IsSelfInterpreter e9692869545602 := GTable076.cut (upper_sound GTable076.G e9692869545602 (rho (n := 4) 0 4) 2 (by decide))
#print axioms ex_e9692869545602
end Blc.Floor45.Grade076S000
