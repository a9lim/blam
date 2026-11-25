import Blc.SelfintResidual45.ClockCut

set_option Elab.async false
namespace Blc.Floor45.Op64d01e7a837a
open Term SelfintLowerBound SelfintControl SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000
def op (i j : Fin 5) : Fin 5 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 0
  | 0,2 => 0
  | 0,3 => 0
  | 0,4 => 2
  | 1,0 => 0
  | 1,1 => 1
  | 1,2 => 1
  | 1,3 => 1
  | 2,0 => 1
  | 2,1 => 1
  | 2,2 => 1
  | 2,3 => 2
  | 3,0 => 2
  | 3,1 => 2
  | 3,2 => 2
  | 3,3 => 2
  | _,_ => 4
def G : Algebra 4 := ⟨op,0,by decide,by decide,by decide⟩
end Blc.Floor45.Op64d01e7a837a
