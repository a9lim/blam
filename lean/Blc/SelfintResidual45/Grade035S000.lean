import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable035

set_option Elab.async false
namespace Blc.Floor45.Grade035S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9557124516782 : ¬ IsSelfInterpreter e9557124516782 := GTable035.cut (upper_sound GTable035.G e9557124516782 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9557124516782

end Blc.Floor45.Grade035S000
