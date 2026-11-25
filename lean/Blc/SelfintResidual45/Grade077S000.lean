import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable077

set_option Elab.async false
namespace Blc.Floor45.Grade077S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9569468202218 : ¬ IsSelfInterpreter e9569468202218 := GTable077.cut (upper_sound GTable077.G e9569468202218 (rho (n := 4) 0 0) 2 (by decide))
#print axioms ex_e9569468202218


theorem ex_e9692402104962 : ¬ IsSelfInterpreter e9692402104962 := GTable077.cut (upper_sound GTable077.G e9692402104962 (rho (n := 4) 0 0) 2 (by decide))
#print axioms ex_e9692402104962


theorem ex_e11219262978690 : ¬ IsSelfInterpreter e11219262978690 := GTable077.cut (upper_sound GTable077.G e11219262978690 (rho (n := 4) 0 0) 2 (by decide))
#print axioms ex_e11219262978690
end Blc.Floor45.Grade077S000
