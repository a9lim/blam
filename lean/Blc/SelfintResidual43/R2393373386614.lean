import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Compact

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2393373386614
open Compact Certgen Certgen.FloorIndex
def en0 : List Nat := [0,4,3]
def en1 : List Nat := []
def en2 : List Nat := [2]
def en3 : List Nat := [1]
def en4 : List Nat := [3]
def en5 : List Nat := [4,3]
def cl0 : AClo := ⟨15, en0⟩
def cl1 : AClo := ⟨16, en0⟩
def cl2 : AClo := ⟨18, en0⟩
def cl3 : AClo := ⟨19, en0⟩
def cl4 : AClo := ⟨20, en1⟩
def cl5 : AClo := ⟨23, en2⟩
def cl6 : AClo := ⟨8, en1⟩
def cl7 : AClo := ⟨6, en3⟩
def cl8 : AClo := ⟨7, en3⟩
def cl9 : AClo := ⟨0, en1⟩
def cl10 : AClo := ⟨1, en1⟩
def cl11 : AClo := ⟨2, en1⟩
def cl12 : AClo := ⟨3, en3⟩
def cl13 : AClo := ⟨4, en3⟩
def cl14 : AClo := ⟨5, en3⟩
def cl15 : AClo := ⟨9, en4⟩
def cl16 : AClo := ⟨10, en5⟩
def cl17 : AClo := ⟨11, en0⟩
def cl18 : AClo := ⟨12, en0⟩
def cl19 : AClo := ⟨13, en0⟩
def cl20 : AClo := ⟨14, en0⟩
def cl21 : AClo := ⟨17, en0⟩
def cl22 : AClo := ⟨21, en2⟩
def cl23 : AClo := ⟨22, en2⟩
def fr0 : Frame := ⟨cl4, 0⟩
def fr1 : Frame := ⟨cl6, 1⟩
def fr2 : Frame := ⟨cl3, 0⟩
def fr3 : Frame := ⟨cl3, 3⟩
def fr4 : Frame := ⟨cl3, 4⟩
def fr5 : Frame := ⟨cl3, 5⟩
def fr6 : Frame := ⟨cl3, 6⟩
def fr7 : Frame := ⟨cl3, 7⟩
def fr8 : Frame := ⟨cl1, 3⟩
def fr9 : Frame := ⟨cl0, 4⟩
def fr10 : Frame := ⟨cl2, 5⟩
def fr11 : Frame := ⟨cl2, 6⟩
def fr12 : Frame := ⟨cl2, 7⟩
def fr13 : Frame := ⟨cl5, 4⟩
def fr14 : Frame := ⟨cl5, 5⟩
def fr15 : Frame := ⟨cl5, 6⟩
def fr16 : Frame := ⟨cl5, 7⟩
def fr17 : Frame := ⟨cl8, 1⟩
def fr18 : Frame := ⟨cl7, 8⟩
def u23 : Term := .var 0
def u21 : Term := .app u23 u23
def u20 : Term := .lam u21
def u19 : Term := .var 1
def u18 : Term := .var 2
def u16 : Term := .app u19 u18
def u13 : Term := .app u19 u23
def u12 : Term := .app u13 u16
def u11 : Term := .app u12 u19
def u10 : Term := .lam u11
def u9 : Term := .lam u10
def u8 : Term := .lam u9
def u3 : Term := .app u21 u23
def u2 : Term := .lam u3
def u1 : Term := .app u2 u8
def u0 : Term := .app u1 u20
def code : Array (Code) := #[.app 1 20,.app 2 8,.lam 3,.app 4 7,.app 5 6,.var 0,.var 0,.var 0,.lam 9,.lam 10,.lam 11,.app 12 19,.app 13 16,.app 14 15,.var 1,.var 0,.app 17 18,.var 1,.var 2,.var 1,.lam 21,.app 22 23,.var 0,.var 0]
def terms : Array (Term) := #[u0,u1,u2,u3,u21,u23,u23,u23,u8,u9,u10,u11,u12,u13,u19,u23,u16,u19,u18,u19,u20,u21,u23,u23]
def v : Array (List AClo) := #[[cl0,cl1,cl2,cl3,cl4,cl5],[cl6],[cl0,cl2,cl5],[cl7,cl0,cl2,cl5],[cl8,cl0,cl1,cl2,cl5]]
def k : Array (List Frame) := #[[],[fr0],[fr1],[fr2,fr3,fr4,fr5,fr6,fr7],[fr8],[fr9],[fr10,fr11,fr12],[fr13,fr14,fr15,fr16],[fr17],[fr18]]
def st : Array (AState) := #[⟨cl9,0⟩,⟨cl10,1⟩,⟨cl11,2⟩,⟨cl12,1⟩,⟨cl13,8⟩,⟨cl14,9⟩,⟨cl7,5⟩,⟨cl7,6⟩,⟨cl7,7⟩,⟨cl8,5⟩,⟨cl8,6⟩,⟨cl8,7⟩,⟨cl6,5⟩,⟨cl6,6⟩,⟨cl6,7⟩,⟨cl6,9⟩,⟨cl15,4⟩,⟨cl15,5⟩,⟨cl15,6⟩,⟨cl15,7⟩,⟨cl15,8⟩,⟨cl16,1⟩,⟨cl16,3⟩,⟨cl16,4⟩,⟨cl16,5⟩,⟨cl16,6⟩,⟨cl16,7⟩,⟨cl17,0⟩,⟨cl17,3⟩,⟨cl17,4⟩,⟨cl17,5⟩,⟨cl17,6⟩,⟨cl17,7⟩,⟨cl18,3⟩,⟨cl19,4⟩,⟨cl20,5⟩,⟨cl0,5⟩,⟨cl0,6⟩,⟨cl0,7⟩,⟨cl1,5⟩,⟨cl1,6⟩,⟨cl1,7⟩,⟨cl21,6⟩,⟨cl2,5⟩,⟨cl2,6⟩,⟨cl2,7⟩,⟨cl3,5⟩,⟨cl3,6⟩,⟨cl3,7⟩,⟨cl4,5⟩,⟨cl4,6⟩,⟨cl4,7⟩,⟨cl22,4⟩,⟨cl22,5⟩,⟨cl22,6⟩,⟨cl22,7⟩,⟨cl23,7⟩,⟨cl5,5⟩,⟨cl5,6⟩,⟨cl5,7⟩]
def hh : Array (List Nat) := #[[1],[2],[3],[4],[5],[15],[12],[13],[14],[12],[13],[14],[16],[17,18,19],[16,17,18,19],[20],[22],[23],[24,25,26],[23,24,25,26],[21],[27],[27,28,29,30,31,32],[28],[29],[30,31,32],[29,30,31,32],[33],[33],[33],[33],[33],[33],[34],[35],[9,36,39,43,57],[36,39,43,46,49,57],[37,40,44,47,50,58],[38,41,45,48,51,59],[42],[42],[42],[10,37,40,44,58],[6,36,43,57],[7,37,44,58],[8,38,45,59],[9,36,39,43,57],[10,37,40,44,58],[11,38,41,45,59],[52],[53,54,55],[52,53,54,55],[56],[56],[56],[56],[38,45,59],[36,43,57],[37,44,58],[38,45,59]]
def good (i : Nat) := Compact.test code v k st hh i
theorem bl0 : rangeOK good 0 12 = true := by decide +kernel
theorem bl12 : rangeOK good 12 12 = true := by decide +kernel
theorem bl24 : rangeOK good 24 12 = true := by decide +kernel
theorem bl36 : rangeOK good 36 12 = true := by decide +kernel
theorem bl48 : rangeOK good 48 12 = true := by decide +kernel
theorem valid (i : Nat) (hi : i < 60) : good i = true := by
  by_cases h24 : i < 24
  · by_cases h12 : i < 12
    · exact rangeOK_at bl0 (by omega) (by omega)
    · exact rangeOK_at bl12 (by omega) (by omega)
  · by_cases h36 : i < 36
    · exact rangeOK_at bl24 (by omega) (by omega)
    · by_cases h48 : i < 48
      · exact rangeOK_at bl36 (by omega) (by omega)
      · exact rangeOK_at bl48 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e2393373386614 := by
  intro he
  have hp : replay [] (.app e2393373386614 diag) = some (item terms 0) := by decide
  obtain ⟨n,hn⟩ := clocks_replay (diagCount he) hp
  exact Compact.noClock (code := code) (v := v) (k := k) (s := st) (h := hh) terms (by decide) (by rfl) (by decide) valid n hn
#print axioms excluded
end R2393373386614
end Blc.Floor43
