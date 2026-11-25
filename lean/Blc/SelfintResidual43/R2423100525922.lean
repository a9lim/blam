import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Compact

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423100525922
open Compact Certgen Certgen.FloorIndex
def en0 : List Nat := [14,10,6]
def en1 : List Nat := [10,6]
def en2 : List Nat := [1,0,14,10,6]
def en3 : List Nat := [8,7,4,2]
def en4 : List Nat := [8,7,5,3]
def en5 : List Nat := [9,8,7,4,2]
def en6 : List Nat := [9,8,7,5,3]
def en7 : List Nat := []
def en8 : List Nat := [4,2]
def en9 : List Nat := [5,3]
def en10 : List Nat := [6]
def en11 : List Nat := [0,14,10,6]
def en12 : List Nat := [2]
def en13 : List Nat := [3]
def en14 : List Nat := [7,4,2]
def en15 : List Nat := [7,5,3]
def en16 : List Nat := [11]
def en17 : List Nat := [12]
def en18 : List Nat := [13]
def cl0 : AClo := ⟨20, en0⟩
def cl1 : AClo := ⟨25, en1⟩
def cl2 : AClo := ⟨18, en2⟩
def cl3 : AClo := ⟨51, en3⟩
def cl4 : AClo := ⟨51, en4⟩
def cl5 : AClo := ⟨19, en2⟩
def cl6 : AClo := ⟨38, en5⟩
def cl7 : AClo := ⟨38, en6⟩
def cl8 : AClo := ⟨26, en7⟩
def cl9 : AClo := ⟨53, en8⟩
def cl10 : AClo := ⟨53, en9⟩
def cl11 : AClo := ⟨56, en8⟩
def cl12 : AClo := ⟨56, en9⟩
def cl13 : AClo := ⟨49, en3⟩
def cl14 : AClo := ⟨49, en4⟩
def cl15 : AClo := ⟨57, en7⟩
def cl16 : AClo := ⟨11, en0⟩
def cl17 : AClo := ⟨16, en2⟩
def cl18 : AClo := ⟨24, en1⟩
def cl19 : AClo := ⟨22, en1⟩
def cl20 : AClo := ⟨59, en7⟩
def cl21 : AClo := ⟨52, en3⟩
def cl22 : AClo := ⟨52, en4⟩
def cl23 : AClo := ⟨47, en5⟩
def cl24 : AClo := ⟨47, en6⟩
def cl25 : AClo := ⟨0, en7⟩
def cl26 : AClo := ⟨1, en7⟩
def cl27 : AClo := ⟨2, en7⟩
def cl28 : AClo := ⟨3, en7⟩
def cl29 : AClo := ⟨4, en10⟩
def cl30 : AClo := ⟨5, en1⟩
def cl31 : AClo := ⟨6, en1⟩
def cl32 : AClo := ⟨7, en1⟩
def cl33 : AClo := ⟨8, en0⟩
def cl34 : AClo := ⟨9, en0⟩
def cl35 : AClo := ⟨10, en0⟩
def cl36 : AClo := ⟨12, en11⟩
def cl37 : AClo := ⟨13, en2⟩
def cl38 : AClo := ⟨14, en2⟩
def cl39 : AClo := ⟨15, en2⟩
def cl40 : AClo := ⟨17, en2⟩
def cl41 : AClo := ⟨23, en1⟩
def cl42 : AClo := ⟨27, en12⟩
def cl43 : AClo := ⟨27, en13⟩
def cl44 : AClo := ⟨28, en8⟩
def cl45 : AClo := ⟨28, en9⟩
def cl46 : AClo := ⟨29, en8⟩
def cl47 : AClo := ⟨29, en9⟩
def cl48 : AClo := ⟨30, en8⟩
def cl49 : AClo := ⟨30, en9⟩
def cl50 : AClo := ⟨31, en14⟩
def cl51 : AClo := ⟨31, en15⟩
def cl52 : AClo := ⟨32, en3⟩
def cl53 : AClo := ⟨32, en4⟩
def cl54 : AClo := ⟨33, en3⟩
def cl55 : AClo := ⟨33, en4⟩
def cl56 : AClo := ⟨34, en3⟩
def cl57 : AClo := ⟨34, en4⟩
def cl58 : AClo := ⟨35, en5⟩
def cl59 : AClo := ⟨35, en6⟩
def cl60 : AClo := ⟨36, en5⟩
def cl61 : AClo := ⟨36, en6⟩
def cl62 : AClo := ⟨37, en5⟩
def cl63 : AClo := ⟨37, en6⟩
def cl64 : AClo := ⟨50, en3⟩
def cl65 : AClo := ⟨50, en4⟩
def cl66 : AClo := ⟨58, en16⟩
def cl67 : AClo := ⟨58, en17⟩
def cl68 : AClo := ⟨58, en18⟩
def fr0 : Frame := ⟨cl20, 0⟩
def fr1 : Frame := ⟨cl15, 1⟩
def fr2 : Frame := ⟨cl5, 1⟩
def fr3 : Frame := ⟨cl17, 3⟩
def fr4 : Frame := ⟨cl2, 3⟩
def fr5 : Frame := ⟨cl8, 2⟩
def fr6 : Frame := ⟨cl18, 4⟩
def fr7 : Frame := ⟨cl18, 26⟩
def fr8 : Frame := ⟨cl11, 1⟩
def fr9 : Frame := ⟨cl12, 17⟩
def fr10 : Frame := ⟨cl12, 18⟩
def fr11 : Frame := ⟨cl9, 9⟩
def fr12 : Frame := ⟨cl10, 10⟩
def fr13 : Frame := ⟨cl21, 1⟩
def fr14 : Frame := ⟨cl22, 17⟩
def fr15 : Frame := ⟨cl22, 18⟩
def fr16 : Frame := ⟨cl13, 13⟩
def fr17 : Frame := ⟨cl14, 14⟩
def fr18 : Frame := ⟨cl23, 13⟩
def fr19 : Frame := ⟨cl24, 14⟩
def fr20 : Frame := ⟨cl6, 17⟩
def fr21 : Frame := ⟨cl7, 18⟩
def fr22 : Frame := ⟨cl3, 19⟩
def fr23 : Frame := ⟨cl3, 20⟩
def fr24 : Frame := ⟨cl4, 19⟩
def fr25 : Frame := ⟨cl4, 20⟩
def fr26 : Frame := ⟨cl1, 1⟩
def fr27 : Frame := ⟨cl19, 23⟩
def fr28 : Frame := ⟨cl0, 23⟩
def fr29 : Frame := ⟨cl16, 25⟩
def u60 : Term := .var 0
def u59 : Term := .lam u60
def u56 : Term := .var 1
def u53 : Term := .app u60 u60
def u42 : Term := .var 2
def u41 : Term := .app u42 u53
def u40 : Term := .app u41 u56
def u39 : Term := .lam u40
def u38 : Term := .lam u39
def u36 : Term := .app u60 u38
def u35 : Term := .app u36 u59
def u34 : Term := .lam u35
def u33 : Term := .app u34 u53
def u32 : Term := .app u33 u56
def u31 : Term := .lam u32
def u30 : Term := .lam u31
def u29 : Term := .app u30 u53
def u28 : Term := .app u29 u56
def u27 : Term := .lam u28
def u26 : Term := .lam u27
def u2 : Term := .app u30 u26
def u1 : Term := .app u2 u59
def u0 : Term := .app u1 u59
def code : Array (Code) := #[.app 1 59,.app 2 57,.app 3 26,.lam 4,.lam 5,.app 6 25,.app 7 22,.lam 8,.app 9 20,.app 10 11,.var 0,.lam 12,.lam 13,.app 14 19,.app 15 16,.var 2,.app 17 18,.var 0,.var 0,.opaque,.opaque,.opaque,.app 23 24,.var 0,.var 0,.var 1,.lam 27,.lam 28,.app 29 56,.app 30 53,.lam 31,.lam 32,.app 33 52,.app 34 49,.lam 35,.app 36 47,.app 37 38,.var 0,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.app 50 51,.var 0,.var 0,.opaque,.opaque,.opaque,.opaque,.var 1,.lam 58,.var 0,.opaque,.opaque]
def terms : Array (Term) := #[u0,u1,u2,u30,u31,u32,u33,u34,u35,u36,u60,u38,u39,u40,u41,u42,u53,u60,u60,u56,u59,u60,u53,u60,u60,u56,u26,u27,u28,u29,u30,u31,u32,u33,u34,u35,u36,u60,u38,u39,u40,u41,u42,u53,u60,u60,u56,u59,u60,u53,u60,u60,u56,u53,u60,u60,u56,u59,u60,u59,u60]
def v : Array (List AClo) := #[[cl0],[cl1],[cl2],[cl3,cl4],[cl5],[cl6,cl7],[cl8],[cl9,cl10],[cl11,cl12],[cl13,cl14],[cl15],[cl16],[cl17],[cl18],[cl19]]
def k : Array (List Frame) := #[[],[fr0],[fr1],[fr2],[fr3],[fr4],[fr5],[fr6],[fr7],[fr8],[fr9,fr10],[fr11],[fr12],[fr13],[fr14,fr15],[fr16],[fr17],[fr18],[fr19],[fr20],[fr21],[fr22,fr23],[fr24,fr25],[fr26],[fr27],[fr28],[fr29]]
def st : Array (AState) := #[⟨cl25,0⟩,⟨cl26,1⟩,⟨cl27,2⟩,⟨cl28,6⟩,⟨cl29,2⟩,⟨cl30,1⟩,⟨cl31,23⟩,⟨cl32,24⟩,⟨cl33,23⟩,⟨cl34,25⟩,⟨cl35,26⟩,⟨cl16,25⟩,⟨cl36,23⟩,⟨cl37,1⟩,⟨cl38,3⟩,⟨cl39,4⟩,⟨cl17,3⟩,⟨cl40,5⟩,⟨cl2,21⟩,⟨cl2,22⟩,⟨cl19,4⟩,⟨cl19,26⟩,⟨cl41,7⟩,⟨cl41,8⟩,⟨cl18,4⟩,⟨cl18,26⟩,⟨cl1,5⟩,⟨cl1,21⟩,⟨cl1,22⟩,⟨cl8,5⟩,⟨cl8,21⟩,⟨cl8,22⟩,⟨cl42,3⟩,⟨cl43,19⟩,⟨cl43,20⟩,⟨cl44,1⟩,⟨cl45,17⟩,⟨cl45,18⟩,⟨cl46,9⟩,⟨cl47,10⟩,⟨cl48,11⟩,⟨cl49,12⟩,⟨cl50,9⟩,⟨cl51,10⟩,⟨cl52,1⟩,⟨cl53,17⟩,⟨cl53,18⟩,⟨cl54,13⟩,⟨cl55,14⟩,⟨cl56,15⟩,⟨cl57,16⟩,⟨cl58,13⟩,⟨cl59,14⟩,⟨cl60,17⟩,⟨cl61,18⟩,⟨cl62,19⟩,⟨cl63,20⟩,⟨cl13,19⟩,⟨cl13,20⟩,⟨cl14,19⟩,⟨cl14,20⟩,⟨cl64,21⟩,⟨cl65,22⟩,⟨cl3,21⟩,⟨cl3,22⟩,⟨cl4,21⟩,⟨cl4,22⟩,⟨cl11,21⟩,⟨cl11,22⟩,⟨cl12,21⟩,⟨cl12,22⟩,⟨cl15,4⟩,⟨cl15,7⟩,⟨cl15,8⟩,⟨cl15,26⟩,⟨cl66,25⟩,⟨cl67,3⟩,⟨cl68,4⟩,⟨cl68,26⟩]
def hh : Array (List Nat) := #[[1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[21],[12],[13],[14],[15],[20],[17],[26],[27],[28],[22],[23],[72],[73],[71],[74],[29],[30],[31],[32],[33,34],[33,34],[35],[36],[37],[38],[39],[39],[40],[41],[42],[43],[44],[45,46],[47],[48],[48],[49],[50],[51],[52],[53],[54],[55],[56],[57,59],[58,60],[61],[61],[62],[62],[67,69],[68,70],[67,69],[68,70],[67,69],[68,70],[18],[19],[63,65],[64,66],[76],[77],[78],[75],[11],[16],[24],[25]]
def good (i : Nat) := Compact.test code v k st hh i
theorem bl0 : rangeOK good 0 12 = true := by decide +kernel
theorem bl12 : rangeOK good 12 12 = true := by decide +kernel
theorem bl24 : rangeOK good 24 12 = true := by decide +kernel
theorem bl36 : rangeOK good 36 12 = true := by decide +kernel
theorem bl48 : rangeOK good 48 12 = true := by decide +kernel
theorem bl60 : rangeOK good 60 12 = true := by decide +kernel
theorem bl72 : rangeOK good 72 7 = true := by decide +kernel
theorem valid (i : Nat) (hi : i < 79) : good i = true := by
  by_cases h36 : i < 36
  · by_cases h12 : i < 12
    · exact rangeOK_at bl0 (by omega) (by omega)
    · by_cases h24 : i < 24
      · exact rangeOK_at bl12 (by omega) (by omega)
      · exact rangeOK_at bl24 (by omega) (by omega)
  · by_cases h60 : i < 60
    · by_cases h48 : i < 48
      · exact rangeOK_at bl36 (by omega) (by omega)
      · exact rangeOK_at bl48 (by omega) (by omega)
    · by_cases h72 : i < 72
      · exact rangeOK_at bl60 (by omega) (by omega)
      · exact rangeOK_at bl72 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e2423100525922 := by
  intro he
  have hp : replay [[],[],[.left]] e2423100525922 = some (item terms 0) := by decide
  obtain ⟨n,hn⟩ := clocks_replay (rawCount he) hp
  exact Compact.noClock (code := code) (v := v) (k := k) (s := st) (h := hh) terms (by decide) (by rfl) (by decide) valid n hn
#print axioms excluded
end R2423100525922
end Blc.Floor43
