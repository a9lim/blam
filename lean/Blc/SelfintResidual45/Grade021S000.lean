import Blc.SelfintCompact45.Base
import Blc.SelfintResidual45.GTable021

set_option Elab.async false
namespace Blc.Floor45.Grade021S000
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000


theorem ex_e9691782713146 : ¬ IsSelfInterpreter e9691782713146 := GTable021.cut (upper_sound GTable021.G e9691782713146 (rho (n := 3) 0 3) 2 (by decide))
#print axioms ex_e9691782713146


theorem ex_e9692185162658 : ¬ IsSelfInterpreter e9692185162658 := GTable021.cut (upper_sound GTable021.G e9692185162658 (rho (n := 3) 0 3) 2 (by decide))
#print axioms ex_e9692185162658
end Blc.Floor45.Grade021S000
