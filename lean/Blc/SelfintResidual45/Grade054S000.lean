import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable054

set_option Elab.async false
namespace Blc.Floor45.Grade054S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9690028652174 : ¬ IsSelfInterpreter e9690028652174 := GTable054.cut (upper_sound GTable054.G e9690028652174 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9690028652174


theorem ex_e9690029020814 : ¬ IsSelfInterpreter e9690029020814 := GTable054.cut (upper_sound GTable054.G e9690029020814 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9690029020814


theorem ex_e9690029021838 : ¬ IsSelfInterpreter e9690029021838 := GTable054.cut (upper_sound GTable054.G e9690029021838 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9690029021838


theorem ex_e9690029045390 : ¬ IsSelfInterpreter e9690029045390 := GTable054.cut (upper_sound GTable054.G e9690029045390 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9690029045390


theorem ex_e9690032584334 : ¬ IsSelfInterpreter e9690032584334 := GTable054.cut (upper_sound GTable054.G e9690032584334 (rho (n := 3) 0 0) 2 (by decide))
#print axioms ex_e9690032584334

end Blc.Floor45.Grade054S000
