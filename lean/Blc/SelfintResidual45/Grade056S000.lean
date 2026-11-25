import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable056

set_option Elab.async false
namespace Blc.Floor45.Grade056S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9690391484634 : ¬ IsSelfInterpreter e9690391484634 := GTable056.cut (upper_sound GTable056.G e9690391484634 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9690391484634


theorem ex_e9692726546202 : ¬ IsSelfInterpreter e9692726546202 := GTable056.cut (upper_sound GTable056.G e9692726546202 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9692726546202


theorem ex_e9692726552122 : ¬ IsSelfInterpreter e9692726552122 := GTable056.cut (upper_sound GTable056.G e9692726552122 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9692726552122


theorem ex_e9692726552346 : ¬ IsSelfInterpreter e9692726552346 := GTable056.cut (upper_sound GTable056.G e9692726552346 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9692726552346
end Blc.Floor45.Grade056S000
