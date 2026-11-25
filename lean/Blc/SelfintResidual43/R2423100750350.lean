import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Compact

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423100750350
open Compact Certgen Certgen.FloorIndex
def en0 : List Nat := []
def en1 : List Nat := [0]
def en2 : List Nat := [5,3,0]
def en3 : List Nat := [1]
def en4 : List Nat := [3,2,1]
def en5 : List Nat := [3,0]
def en6 : List Nat := [2,1]
def en7 : List Nat := [4,1]
def en8 : List Nat := [2,4,1]
def cl0 : AClo := ⟨15, en0⟩
def cl1 : AClo := ⟨5, en1⟩
def cl2 : AClo := ⟨9, en2⟩
def cl3 : AClo := ⟨11, en2⟩
def cl4 : AClo := ⟨19, en3⟩
def cl5 : AClo := ⟨23, en4⟩
def cl6 : AClo := ⟨25, en4⟩
def cl7 : AClo := ⟨26, en3⟩
def cl8 : AClo := ⟨12, en1⟩
def cl9 : AClo := ⟨0, en0⟩
def cl10 : AClo := ⟨1, en0⟩
def cl11 : AClo := ⟨2, en1⟩
def cl12 : AClo := ⟨3, en1⟩
def cl13 : AClo := ⟨4, en1⟩
def cl14 : AClo := ⟨6, en5⟩
def cl15 : AClo := ⟨7, en2⟩
def cl16 : AClo := ⟨8, en2⟩
def cl17 : AClo := ⟨10, en2⟩
def cl18 : AClo := ⟨16, en3⟩
def cl19 : AClo := ⟨17, en3⟩
def cl20 : AClo := ⟨18, en3⟩
def cl21 : AClo := ⟨20, en6⟩
def cl22 : AClo := ⟨21, en4⟩
def cl23 : AClo := ⟨22, en4⟩
def cl24 : AClo := ⟨24, en4⟩
def cl25 : AClo := ⟨27, en7⟩
def cl26 : AClo := ⟨28, en8⟩
def fr0 : Frame := ⟨cl0, 0⟩
def fr1 : Frame := ⟨cl7, 4⟩
def fr2 : Frame := ⟨cl4, 2⟩
def fr3 : Frame := ⟨cl8, 0⟩
def fr4 : Frame := ⟨cl5, 2⟩
def fr5 : Frame := ⟨cl6, 9⟩
def fr6 : Frame := ⟨cl1, 4⟩
def fr7 : Frame := ⟨cl2, 4⟩
def fr8 : Frame := ⟨cl3, 3⟩
def fr9 : Frame := ⟨cl3, 5⟩
def u28 : Term := .var 2
def u27 : Term := .lam u28
def u26 : Term := .lam u27
def u25 : Term := .var 0
def u24 : Term := .var 1
def u23 : Term := .app u24 u25
def u21 : Term := .app u28 u23
def u20 : Term := .lam u21
def u19 : Term := .lam u20
def u17 : Term := .app u25 u19
def u16 : Term := .app u17 u26
def u15 : Term := .lam u16
def u0 : Term := .app u15 u15
def code : Array (Code) := #[.app 1 15,.lam 2,.app 3 12,.app 4 5,.var 0,.lam 6,.lam 7,.app 8 9,.var 2,.app 10 11,.var 1,.var 0,.opaque,.opaque,.opaque,.lam 16,.app 17 26,.app 18 19,.var 0,.lam 20,.lam 21,.app 22 23,.var 2,.app 24 25,.var 1,.opaque,.lam 27,.lam 28,.var 2]
def terms : Array (Term) := #[u0,u15,u16,u17,u25,u19,u20,u21,u28,u23,u24,u25,u26,u27,u28,u15,u16,u17,u25,u19,u20,u21,u28,u23,u24,u25,u26,u27,u28]
def v : Array (List AClo) := #[[cl0],[cl1,cl2],[cl3],[cl4,cl5],[cl6],[cl7]]
def k : Array (List Frame) := #[[],[fr0],[fr1],[fr2],[fr3],[fr4],[fr5],[fr6],[fr7],[fr8,fr9]]
def st : Array (AState) := #[⟨cl9,0⟩,⟨cl10,1⟩,⟨cl11,0⟩,⟨cl12,4⟩,⟨cl13,7⟩,⟨cl1,3⟩,⟨cl1,5⟩,⟨cl14,2⟩,⟨cl15,4⟩,⟨cl16,8⟩,⟨cl2,3⟩,⟨cl2,5⟩,⟨cl17,9⟩,⟨cl3,6⟩,⟨cl0,7⟩,⟨cl0,8⟩,⟨cl18,4⟩,⟨cl19,2⟩,⟨cl20,3⟩,⟨cl4,9⟩,⟨cl21,3⟩,⟨cl21,5⟩,⟨cl22,2⟩,⟨cl23,5⟩,⟨cl5,9⟩,⟨cl24,6⟩,⟨cl7,6⟩,⟨cl25,9⟩,⟨cl26,3⟩,⟨cl26,5⟩]
def hh : Array (List Nat) := #[[1],[2],[3],[4],[14],[7],[7],[8],[9],[15],[12],[12],[19,24],[26],[16],[16],[17],[18],[5,10],[20,21],[22],[22],[23],[6,11],[25],[13],[27],[28,29],[5,10],[6,11]]
def good (i : Nat) := Compact.test code v k st hh i
theorem bl0 : rangeOK good 0 12 = true := by decide +kernel
theorem bl12 : rangeOK good 12 12 = true := by decide +kernel
theorem bl24 : rangeOK good 24 6 = true := by decide +kernel
theorem valid (i : Nat) (hi : i < 30) : good i = true := by
  by_cases h12 : i < 12
  · exact rangeOK_at bl0 (by omega) (by omega)
  · by_cases h24 : i < 24
    · exact rangeOK_at bl12 (by omega) (by omega)
    · exact rangeOK_at bl24 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e2423100750350 := by
  intro he
  have hp : replay [[]] e2423100750350 = some (item terms 0) := by decide
  obtain ⟨n,hn⟩ := clocks_replay (rawCount he) hp
  exact Compact.noClock (code := code) (v := v) (k := k) (s := st) (h := hh) terms (by decide) (by rfl) (by decide) valid n hn
#print axioms excluded
end R2423100750350
end Blc.Floor43
