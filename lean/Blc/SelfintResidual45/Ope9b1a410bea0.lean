import Blc.SelfintResidual45.ClockCut

set_option Elab.async false
namespace Blc.Floor45.Ope9b1a410bea0
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000
def op (i j : Fin 6) : Fin 6 := match i.val,j.val with
  | 0,0 => 0
  | 0,1 => 1
  | 0,2 => 1
  | 0,3 => 1
  | 0,4 => 1
  | 0,5 => 2
  | 1,0 => 1
  | 1,1 => 1
  | 1,2 => 4
  | 1,3 => 4
  | 1,4 => 4
  | 1,5 => 4
  | 2,0 => 1
  | 2,1 => 1
  | 2,2 => 4
  | 2,3 => 4
  | 3,0 => 4
  | 3,1 => 4
  | 3,2 => 4
  | 3,3 => 4
  | _,_ => 5
def G : Algebra 5 := ⟨op,0,by decide,by decide,by decide⟩
end Blc.Floor45.Ope9b1a410bea0
