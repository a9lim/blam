import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable078

set_option Elab.async false
namespace Blc.Floor45.Grade078S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9570803793130 : ¬ IsSelfInterpreter e9570803793130 := GTable078.cut (upper_sound GTable078.G e9570803793130 (rho (n := 4) 1 0) 1 (by decide))
#print axioms ex_e9570803793130

end Blc.Floor45.Grade078S000
