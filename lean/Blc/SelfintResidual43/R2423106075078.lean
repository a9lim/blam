import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Compact

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423106075078
open Compact Certgen Certgen.FloorIndex
def en0 : List Nat := []
def en1 : List Nat := [5,0]
def en2 : List Nat := [2,1]
def en3 : List Nat := [8,7]
def en4 : List Nat := [4,3,2,1]
def en5 : List Nat := [9,8,7]
def en6 : List Nat := [0]
def en7 : List Nat := [1]
def en8 : List Nat := [3,2,1]
def en9 : List Nat := [6,4,3,2,1]
def en10 : List Nat := [7]
def en11 : List Nat := [6,9,8,7]
def cl0 : AClo := ⟨18, en0⟩
def cl1 : AClo := ⟨8, en1⟩
def cl2 : AClo := ⟨10, en1⟩
def cl3 : AClo := ⟨52, en2⟩
def cl4 : AClo := ⟨56, en0⟩
def cl5 : AClo := ⟨34, en0⟩
def cl6 : AClo := ⟨75, en3⟩
def cl7 : AClo := ⟨42, en4⟩
def cl8 : AClo := ⟨63, en5⟩
def cl9 : AClo := ⟨44, en4⟩
def cl10 : AClo := ⟨65, en5⟩
def cl11 : AClo := ⟨73, en3⟩
def cl12 : AClo := ⟨0, en0⟩
def cl13 : AClo := ⟨1, en0⟩
def cl14 : AClo := ⟨2, en0⟩
def cl15 : AClo := ⟨3, en0⟩
def cl16 : AClo := ⟨4, en6⟩
def cl17 : AClo := ⟨5, en1⟩
def cl18 : AClo := ⟨6, en1⟩
def cl19 : AClo := ⟨7, en1⟩
def cl20 : AClo := ⟨35, en7⟩
def cl21 : AClo := ⟨36, en2⟩
def cl22 : AClo := ⟨37, en2⟩
def cl23 : AClo := ⟨38, en8⟩
def cl24 : AClo := ⟨39, en4⟩
def cl25 : AClo := ⟨40, en4⟩
def cl26 : AClo := ⟨41, en4⟩
def cl27 : AClo := ⟨43, en9⟩
def cl28 : AClo := ⟨57, en10⟩
def cl29 : AClo := ⟨58, en3⟩
def cl30 : AClo := ⟨59, en3⟩
def cl31 : AClo := ⟨60, en5⟩
def cl32 : AClo := ⟨61, en5⟩
def cl33 : AClo := ⟨62, en5⟩
def cl34 : AClo := ⟨64, en11⟩
def cl35 : AClo := ⟨74, en3⟩
def fr0 : Frame := ⟨cl4, 0⟩
def fr1 : Frame := ⟨cl5, 1⟩
def fr2 : Frame := ⟨cl0, 2⟩
def fr3 : Frame := ⟨cl3, 1⟩
def fr4 : Frame := ⟨cl9, 0⟩
def fr5 : Frame := ⟨cl7, 5⟩
def fr6 : Frame := ⟨cl2, 1⟩
def fr7 : Frame := ⟨cl11, 0⟩
def fr8 : Frame := ⟨cl1, 7⟩
def fr9 : Frame := ⟨cl10, 0⟩
def fr10 : Frame := ⟨cl8, 10⟩
def fr11 : Frame := ⟨cl6, 11⟩
def u76 : Term := .var 1
def u75 : Term := .lam u76
def u73 : Term := .app u76 u75
def u68 : Term := .var 2
def u67 : Term := .app u68 u73
def u66 : Term := .lam u67
def u65 : Term := .lam u66
def u62 : Term := .var 0
def u61 : Term := .app u62 u75
def u60 : Term := .app u61 u65
def u59 : Term := .lam u60
def u58 : Term := .app u59 u73
def u57 : Term := .lam u58
def u56 : Term := .lam u57
def u37 : Term := .lam u59
def u36 : Term := .app u37 u73
def u35 : Term := .lam u36
def u34 : Term := .lam u35
def u18 : Term := .lam u37
def u2 : Term := .app u37 u18
def u1 : Term := .app u2 u34
def u0 : Term := .app u1 u56
def code : Array (Code) := #[.app 1 56,.app 2 34,.app 3 18,.lam 4,.lam 5,.app 6 10,.app 7 8,.var 0,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.lam 35,.lam 36,.app 37 52,.lam 38,.lam 39,.app 40 44,.app 41 42,.var 0,.lam 43,.var 1,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.lam 57,.lam 58,.app 59 73,.lam 60,.app 61 65,.app 62 63,.var 0,.lam 64,.var 1,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.app 74 75,.var 1,.opaque,.opaque]
def terms : Array (Term) := #[u0,u1,u2,u37,u59,u60,u61,u62,u75,u76,u65,u66,u67,u68,u73,u76,u75,u76,u18,u37,u59,u60,u61,u62,u75,u76,u65,u66,u67,u68,u73,u76,u75,u76,u34,u35,u36,u37,u59,u60,u61,u62,u75,u76,u65,u66,u67,u68,u73,u76,u75,u76,u73,u76,u75,u76,u56,u57,u58,u59,u60,u61,u62,u75,u76,u65,u66,u67,u68,u73,u76,u75,u76,u73,u76,u75,u76]
def v : Array (List AClo) := #[[cl0],[cl1],[cl2],[cl3],[cl4],[cl5],[cl6],[cl7,cl8],[cl9,cl10],[cl11]]
def k : Array (List Frame) := #[[],[fr0],[fr1],[fr2],[fr3],[fr4],[fr5],[fr6],[fr7],[fr8],[fr9],[fr10],[fr11]]
def st : Array (AState) := #[⟨cl12,0⟩,⟨cl13,1⟩,⟨cl14,2⟩,⟨cl15,3⟩,⟨cl16,2⟩,⟨cl17,1⟩,⟨cl18,7⟩,⟨cl19,9⟩,⟨cl5,9⟩,⟨cl20,7⟩,⟨cl21,1⟩,⟨cl22,4⟩,⟨cl23,1⟩,⟨cl24,0⟩,⟨cl25,5⟩,⟨cl26,6⟩,⟨cl7,12⟩,⟨cl27,11⟩,⟨cl4,6⟩,⟨cl4,11⟩,⟨cl28,5⟩,⟨cl28,10⟩,⟨cl29,0⟩,⟨cl30,8⟩,⟨cl31,0⟩,⟨cl32,10⟩,⟨cl33,11⟩,⟨cl8,12⟩,⟨cl34,11⟩,⟨cl11,11⟩,⟨cl35,12⟩]
def hh : Array (List Nat) := #[[1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12],[13],[14],[15],[18],[17],[19],[20],[21],[22],[22],[23],[24],[25],[26],[29],[28],[29],[30],[16,27]]
def good (i : Nat) := Compact.test code v k st hh i
theorem bl0 : rangeOK good 0 12 = true := by decide +kernel
theorem bl12 : rangeOK good 12 12 = true := by decide +kernel
theorem bl24 : rangeOK good 24 7 = true := by decide +kernel
theorem valid (i : Nat) (hi : i < 31) : good i = true := by
  by_cases h12 : i < 12
  · exact rangeOK_at bl0 (by omega) (by omega)
  · by_cases h24 : i < 24
    · exact rangeOK_at bl12 (by omega) (by omega)
    · exact rangeOK_at bl24 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e2423106075078 := by
  intro he
  have hp : replay [[],[],[.left]] e2423106075078 = some (item terms 0) := by decide
  obtain ⟨n,hn⟩ := clocks_replay (rawCount he) hp
  exact Compact.noClock (code := code) (v := v) (k := k) (s := st) (h := hh) terms (by decide) (by rfl) (by decide) valid n hn
#print axioms excluded
end R2423106075078
end Blc.Floor43
