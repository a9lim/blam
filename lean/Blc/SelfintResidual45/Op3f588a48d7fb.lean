import Blc.SelfintResidual45.ClockCut

set_option Elab.async false
namespace Blc.Floor45.Op3f588a48d7fb
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000
def op (i j : Fin 4) : Fin 4 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 2
  | 1,0 => 0
  | 1,1 => 2
  | _,_ => 3
def G : Algebra 3 := ⟨op,0,by decide,by decide,by decide⟩
end Blc.Floor45.Op3f588a48d7fb
