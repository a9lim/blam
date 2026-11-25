import Blc.Selfint40Evidence.Indexed
import Blc.SelfintCompact42.Base
import Blc.SelfintResidual42.CodeBridge

set_option Elab.async false
namespace Certgen.R1211203384566
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def V0 : Array (List AClo) := #[[⟨25,[1]⟩],[⟨14,[9,6,5]⟩],[⟨7,[]⟩],[⟨19,[9,6,5]⟩],[⟨28,[1]⟩],[⟨6,[2]⟩],[⟨20,[]⟩],[⟨16,[9,6,5]⟩],[⟨14,[10,7,4]⟩,⟨14,[11,8,3]⟩],[⟨21,[]⟩],[⟨17,[9,6,5]⟩],[⟨16,[10,7,4]⟩,⟨16,[11,8,3]⟩]]
end Certgen.R1211203384566

namespace Certgen.R1211203384566
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def K0 : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨20,[]⟩,1⟩],[⟨⟨17,[9,6,5]⟩,0⟩],[⟨⟨17,[10,7,4]⟩,0⟩],[⟨⟨17,[11,8,3]⟩,4⟩,⟨⟨17,[11,8,3]⟩,5⟩],[⟨⟨16,[9,6,5]⟩,3⟩],[⟨⟨16,[10,7,4]⟩,4⟩],[⟨⟨16,[11,8,3]⟩,5⟩],[⟨⟨14,[9,6,5]⟩,6⟩],[⟨⟨14,[10,7,4]⟩,7⟩],[⟨⟨14,[11,8,3]⟩,8⟩],[⟨⟨19,[9,6,5]⟩,10⟩],[⟨⟨19,[9,6,5]⟩,11⟩],[⟨⟨7,[]⟩,2⟩],[⟨⟨28,[1]⟩,6⟩],[⟨⟨25,[1]⟩,15⟩],[⟨⟨6,[2]⟩,2⟩]]
end Certgen.R1211203384566

namespace Certgen.R1211203384566
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def st0 : Array (AState) := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,14⟩,⟨⟨4,[2]⟩,2⟩,⟨⟨5,[2]⟩,17⟩,⟨⟨6,[2]⟩,12⟩,⟨⟨6,[2]⟩,13⟩,⟨⟨6,[2]⟩,15⟩,⟨⟨7,[]⟩,12⟩,⟨⟨7,[]⟩,13⟩,⟨⟨7,[]⟩,15⟩,⟨⟨7,[]⟩,17⟩,⟨⟨8,[3]⟩,10⟩,⟨⟨8,[3]⟩,11⟩,⟨⟨8,[4]⟩,6⟩,⟨⟨8,[5]⟩,2⟩,⟨⟨9,[6,5]⟩,1⟩,⟨⟨9,[7,4]⟩,3⟩,⟨⟨9,[8,3]⟩,7⟩]
def st20 : Array (AState) := #[⟨⟨9,[8,3]⟩,8⟩,⟨⟨10,[9,6,5]⟩,0⟩,⟨⟨10,[10,7,4]⟩,0⟩,⟨⟨10,[11,8,3]⟩,4⟩,⟨⟨10,[11,8,3]⟩,5⟩,⟨⟨11,[9,6,5]⟩,3⟩,⟨⟨11,[10,7,4]⟩,4⟩,⟨⟨11,[11,8,3]⟩,5⟩,⟨⟨12,[9,6,5]⟩,6⟩,⟨⟨12,[10,7,4]⟩,7⟩,⟨⟨12,[11,8,3]⟩,8⟩,⟨⟨13,[9,6,5]⟩,9⟩,⟨⟨13,[10,7,4]⟩,10⟩,⟨⟨13,[11,8,3]⟩,11⟩,⟨⟨14,[9,6,5]⟩,16⟩,⟨⟨15,[0,9,6,5]⟩,15⟩,⟨⟨16,[10,7,4]⟩,11⟩,⟨⟨16,[11,8,3]⟩,11⟩,⟨⟨17,[9,6,5]⟩,10⟩,⟨⟨17,[9,6,5]⟩,11⟩]
def st40 : Array (AState) := #[⟨⟨18,[9,6,5]⟩,12⟩,⟨⟨18,[9,6,5]⟩,13⟩,⟨⟨21,[]⟩,9⟩,⟨⟨22,[1]⟩,6⟩,⟨⟨23,[1]⟩,15⟩,⟨⟨24,[1]⟩,16⟩]
end Certgen.R1211203384566

namespace Certgen.R1211203384566
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def hs0 : Array (List Nat) := #[[1],[2],[3],[4],[5],[12],[9],[10],[11],[13],[14],[15],[16],[19],[20],[18],[17],[21],[22],[23]]
def hs20 : Array (List Nat) := #[[24],[25],[26],[27],[27],[28],[29],[30],[31],[32],[33],[42],[38],[36,37],[35],[8],[39],[36,37],[40],[41]]
def hs40 : Array (List Nat) := #[[6],[7],[43],[44],[45],[34]]
end Certgen.R1211203384566

namespace Certgen.R1211203384566
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 20,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.lam 9,.lam 10,.app 11 17,.app 12 16,.app 13 14,.var 0,.lam 15,.var 3,.var 0,.app 18 19,.var 2,.var 1,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.lam 29,.app 30 35,.app 31 32,.var 0,.lam 33,.lam 34,.var 1,.lam 36,.app 37 42,.app 38 39,.var 0,.lam 40,.lam 41,.var 0,.lam 43,.app 44 49,.app 45 46,.var 0,.lam 47,.lam 48,.var 1,.opaque]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) : List AClo := (V0[i-0]?.getD [])
def K (i : Nat) : List Frame := (K0[i-0]?.getD [])
def st (i : Nat) : AState := if i < 46 then (if i < 20 then (st0[i-0]?.getD entry) else (if i < 40 then (st20[i-20]?.getD entry) else (st40[i-40]?.getD entry))) else entry
def hs (i : Nat) : List Nat := (if i < 20 then (hs0[i-0]?.getD []) else (if i < 40 then (hs20[i-20]?.getD []) else (hs40[i-40]?.getD [])))
def validState (i : Nat) := FloorIndex.check P V K st i (hs i)
end Certgen.R1211203384566
