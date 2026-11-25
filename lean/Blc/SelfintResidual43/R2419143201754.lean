import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Compact

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2419143201754
open Compact Certgen Certgen.FloorIndex
def en0 : List Nat := []
def en1 : List Nat := [8,7,5]
def en2 : List Nat := [6,4,3]
def en3 : List Nat := [2,1,0]
def en4 : List Nat := [5]
def en5 : List Nat := [7,5]
def en6 : List Nat := [0]
def en7 : List Nat := [1,0]
def en8 : List Nat := [3]
def en9 : List Nat := [4,3]
def cl0 : AClo := ⟨28, en0⟩
def cl1 : AClo := ⟨10, en1⟩
def cl2 : AClo := ⟨13, en1⟩
def cl3 : AClo := ⟨11, en1⟩
def cl4 : AClo := ⟨35, en2⟩
def cl5 : AClo := ⟨23, en3⟩
def cl6 : AClo := ⟨24, en3⟩
def cl7 : AClo := ⟨15, en0⟩
def cl8 : AClo := ⟨27, en3⟩
def cl9 : AClo := ⟨40, en0⟩
def cl10 : AClo := ⟨43, en0⟩
def cl11 : AClo := ⟨39, en2⟩
def cl12 : AClo := ⟨36, en2⟩
def cl13 : AClo := ⟨14, en1⟩
def cl14 : AClo := ⟨0, en0⟩
def cl15 : AClo := ⟨1, en0⟩
def cl16 : AClo := ⟨2, en0⟩
def cl17 : AClo := ⟨3, en0⟩
def cl18 : AClo := ⟨4, en4⟩
def cl19 : AClo := ⟨5, en5⟩
def cl20 : AClo := ⟨6, en1⟩
def cl21 : AClo := ⟨7, en1⟩
def cl22 : AClo := ⟨8, en1⟩
def cl23 : AClo := ⟨9, en1⟩
def cl24 : AClo := ⟨12, en1⟩
def cl25 : AClo := ⟨16, en0⟩
def cl26 : AClo := ⟨17, en6⟩
def cl27 : AClo := ⟨18, en7⟩
def cl28 : AClo := ⟨19, en3⟩
def cl29 : AClo := ⟨20, en3⟩
def cl30 : AClo := ⟨21, en3⟩
def cl31 : AClo := ⟨22, en3⟩
def cl32 : AClo := ⟨29, en8⟩
def cl33 : AClo := ⟨30, en9⟩
def cl34 : AClo := ⟨31, en2⟩
def cl35 : AClo := ⟨32, en2⟩
def cl36 : AClo := ⟨33, en2⟩
def cl37 : AClo := ⟨34, en2⟩
def fr0 : Frame := ⟨cl10, 0⟩
def fr1 : Frame := ⟨cl9, 1⟩
def fr2 : Frame := ⟨cl2, 11⟩
def fr3 : Frame := ⟨cl0, 3⟩
def fr4 : Frame := ⟨cl0, 14⟩
def fr5 : Frame := ⟨cl8, 10⟩
def fr6 : Frame := ⟨cl8, 12⟩
def fr7 : Frame := ⟨cl7, 2⟩
def fr8 : Frame := ⟨cl6, 5⟩
def fr9 : Frame := ⟨cl5, 7⟩
def fr10 : Frame := ⟨cl11, 10⟩
def fr11 : Frame := ⟨cl11, 12⟩
def fr12 : Frame := ⟨cl12, 9⟩
def fr13 : Frame := ⟨cl4, 10⟩
def fr14 : Frame := ⟨cl13, 0⟩
def fr15 : Frame := ⟨cl3, 12⟩
def fr16 : Frame := ⟨cl1, 13⟩
def u71 : Term := .var 4
def u70 : Term := .var 1
def u69 : Term := .lam u70
def u68 : Term := .lam u69
def u67 : Term := .var 0
def u66 : Term := .app u67 u68
def u65 : Term := .app u66 u71
def u64 : Term := .lam u65
def u62 : Term := .lam u67
def u61 : Term := .lam u62
def u59 : Term := .app u67 u61
def u58 : Term := .app u59 u64
def u57 : Term := .lam u58
def u51 : Term := .app u66 u57
def u50 : Term := .lam u51
def u44 : Term := .app u66 u50
def u43 : Term := .lam u44
def u37 : Term := .var 2
def u36 : Term := .app u37 u70
def u33 : Term := .app u37 u67
def u32 : Term := .app u33 u36
def u31 : Term := .app u32 u67
def u30 : Term := .lam u31
def u29 : Term := .lam u30
def u28 : Term := .lam u29
def u15 : Term := .app u28 u28
def u2 : Term := .app u28 u15
def u1 : Term := .app u2 u61
def u0 : Term := .app u1 u43
def code : Array (Code) := #[.app 1 43,.app 2 40,.app 3 15,.lam 4,.lam 5,.lam 6,.app 7 14,.app 8 11,.app 9 10,.var 2,.opaque,.app 12 13,.var 2,.opaque,.opaque,.app 16 28,.lam 17,.lam 18,.lam 19,.app 20 27,.app 21 24,.app 22 23,.var 2,.var 0,.opaque,.opaque,.opaque,.var 0,.lam 29,.lam 30,.lam 31,.app 32 39,.app 33 36,.app 34 35,.var 2,.var 0,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque]
def terms : Array (Term) := #[u0,u1,u2,u28,u29,u30,u31,u32,u33,u37,u67,u36,u37,u70,u67,u15,u28,u29,u30,u31,u32,u33,u37,u67,u36,u37,u70,u67,u28,u29,u30,u31,u32,u33,u37,u67,u36,u37,u70,u67,u61,u62,u67,u43,u44,u66,u67,u68,u69,u70,u50,u51,u66,u67,u68,u69,u70,u57,u58,u59,u67,u61,u62,u67,u64,u65,u66,u67,u68,u69,u70,u71]
def v : Array (List AClo) := #[[cl0],[cl1,cl2],[cl3,cl4],[cl5],[cl6],[cl7],[cl8],[cl9],[cl10]]
def k : Array (List Frame) := #[[],[fr0],[fr1],[fr2],[fr3,fr4],[fr5,fr6],[fr7],[fr8],[fr9],[fr10,fr11],[fr12],[fr13],[fr14],[fr15],[fr16]]
def st : Array (AState) := #[⟨cl14,0⟩,⟨cl15,1⟩,⟨cl16,2⟩,⟨cl17,6⟩,⟨cl18,2⟩,⟨cl19,1⟩,⟨cl20,0⟩,⟨cl21,12⟩,⟨cl22,13⟩,⟨cl23,14⟩,⟨cl3,11⟩,⟨cl24,3⟩,⟨cl7,3⟩,⟨cl7,14⟩,⟨cl25,4⟩,⟨cl26,3⟩,⟨cl26,14⟩,⟨cl27,11⟩,⟨cl27,13⟩,⟨cl28,10⟩,⟨cl28,12⟩,⟨cl29,5⟩,⟨cl30,7⟩,⟨cl31,8⟩,⟨cl5,11⟩,⟨cl8,11⟩,⟨cl0,8⟩,⟨cl32,7⟩,⟨cl33,5⟩,⟨cl34,10⟩,⟨cl34,12⟩,⟨cl35,9⟩,⟨cl36,10⟩,⟨cl37,11⟩,⟨cl4,11⟩]
def hh : Array (List Nat) := #[[1],[2],[3],[4],[5],[6],[7],[8],[9],[13],[11],[12],[14],[14],[15,16],[17],[18],[19],[20],[21],[21],[22],[23],[26],[10,34],[10,34],[27],[28],[29,30],[31],[31],[32],[33],[24],[25]]
def good (i : Nat) := Compact.test code v k st hh i
theorem bl0 : rangeOK good 0 12 = true := by decide +kernel
theorem bl12 : rangeOK good 12 12 = true := by decide +kernel
theorem bl24 : rangeOK good 24 11 = true := by decide +kernel
theorem valid (i : Nat) (hi : i < 35) : good i = true := by
  by_cases h12 : i < 12
  · exact rangeOK_at bl0 (by omega) (by omega)
  · by_cases h24 : i < 24
    · exact rangeOK_at bl12 (by omega) (by omega)
    · exact rangeOK_at bl24 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e2419143201754 := by
  intro he
  have hp : replay [[.left,.left]] (call e2419143201754 (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) []) = some (item terms 0) := by decide
  obtain ⟨n,hn⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
  exact Compact.noClock (code := code) (v := v) (k := k) (s := st) (h := hh) terms (by decide) (by rfl) (by decide) valid n hn
#print axioms excluded
end R2419143201754
end Blc.Floor43
