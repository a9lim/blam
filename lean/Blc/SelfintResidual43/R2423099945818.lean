import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Compact

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423099945818
open Compact Certgen Certgen.FloorIndex
def en0 : List Nat := [8]
def en1 : List Nat := [5,3,0,9]
def en2 : List Nat := [5,3,0,10]
def en3 : List Nat := [4,2,1,8]
def en4 : List Nat := [6,2,1,8]
def en5 : List Nat := [9]
def en6 : List Nat := [10]
def en7 : List Nat := []
def en8 : List Nat := [7]
def en9 : List Nat := [0,9]
def en10 : List Nat := [0,10]
def en11 : List Nat := [1,8]
def en12 : List Nat := [2,1,8]
def en13 : List Nat := [3,0,9]
def en14 : List Nat := [3,0,10]
def cl0 : AClo := ⟨10, en0⟩
def cl1 : AClo := ⟨16, en1⟩
def cl2 : AClo := ⟨16, en2⟩
def cl3 : AClo := ⟨19, en1⟩
def cl4 : AClo := ⟨19, en2⟩
def cl5 : AClo := ⟨20, en0⟩
def cl6 : AClo := ⟨16, en3⟩
def cl7 : AClo := ⟨16, en4⟩
def cl8 : AClo := ⟨20, en5⟩
def cl9 : AClo := ⟨20, en6⟩
def cl10 : AClo := ⟨21, en7⟩
def cl11 : AClo := ⟨6, en7⟩
def cl12 : AClo := ⟨10, en5⟩
def cl13 : AClo := ⟨10, en6⟩
def cl14 : AClo := ⟨18, en1⟩
def cl15 : AClo := ⟨18, en2⟩
def cl16 : AClo := ⟨5, en8⟩
def cl17 : AClo := ⟨19, en3⟩
def cl18 : AClo := ⟨19, en4⟩
def cl19 : AClo := ⟨0, en7⟩
def cl20 : AClo := ⟨1, en7⟩
def cl21 : AClo := ⟨2, en7⟩
def cl22 : AClo := ⟨3, en8⟩
def cl23 : AClo := ⟨4, en8⟩
def cl24 : AClo := ⟨7, en0⟩
def cl25 : AClo := ⟨7, en5⟩
def cl26 : AClo := ⟨7, en6⟩
def cl27 : AClo := ⟨8, en0⟩
def cl28 : AClo := ⟨8, en5⟩
def cl29 : AClo := ⟨8, en6⟩
def cl30 : AClo := ⟨9, en0⟩
def cl31 : AClo := ⟨9, en5⟩
def cl32 : AClo := ⟨9, en6⟩
def cl33 : AClo := ⟨11, en9⟩
def cl34 : AClo := ⟨11, en10⟩
def cl35 : AClo := ⟨11, en11⟩
def cl36 : AClo := ⟨12, en12⟩
def cl37 : AClo := ⟨12, en13⟩
def cl38 : AClo := ⟨12, en14⟩
def cl39 : AClo := ⟨13, en3⟩
def cl40 : AClo := ⟨13, en1⟩
def cl41 : AClo := ⟨13, en2⟩
def cl42 : AClo := ⟨13, en4⟩
def cl43 : AClo := ⟨14, en3⟩
def cl44 : AClo := ⟨14, en1⟩
def cl45 : AClo := ⟨14, en2⟩
def cl46 : AClo := ⟨14, en4⟩
def cl47 : AClo := ⟨15, en3⟩
def cl48 : AClo := ⟨15, en1⟩
def cl49 : AClo := ⟨15, en2⟩
def cl50 : AClo := ⟨15, en4⟩
def cl51 : AClo := ⟨17, en1⟩
def cl52 : AClo := ⟨17, en2⟩
def fr0 : Frame := ⟨cl10, 0⟩
def fr1 : Frame := ⟨cl11, 1⟩
def fr2 : Frame := ⟨cl17, 3⟩
def fr3 : Frame := ⟨cl17, 6⟩
def fr4 : Frame := ⟨cl3, 1⟩
def fr5 : Frame := ⟨cl3, 7⟩
def fr6 : Frame := ⟨cl3, 10⟩
def fr7 : Frame := ⟨cl4, 1⟩
def fr8 : Frame := ⟨cl4, 7⟩
def fr9 : Frame := ⟨cl4, 10⟩
def fr10 : Frame := ⟨cl18, 0⟩
def fr11 : Frame := ⟨cl6, 3⟩
def fr12 : Frame := ⟨cl1, 4⟩
def fr13 : Frame := ⟨cl2, 5⟩
def fr14 : Frame := ⟨cl7, 6⟩
def fr15 : Frame := ⟨cl14, 7⟩
def fr16 : Frame := ⟨cl14, 10⟩
def fr17 : Frame := ⟨cl15, 7⟩
def fr18 : Frame := ⟨cl15, 10⟩
def fr19 : Frame := ⟨cl16, 1⟩
def fr20 : Frame := ⟨cl5, 17⟩
def fr21 : Frame := ⟨cl5, 18⟩
def fr22 : Frame := ⟨cl8, 7⟩
def fr23 : Frame := ⟨cl8, 10⟩
def fr24 : Frame := ⟨cl9, 1⟩
def fr25 : Frame := ⟨cl0, 16⟩
def fr26 : Frame := ⟨cl12, 17⟩
def fr27 : Frame := ⟨cl13, 18⟩
def u23 : Term := .var 1
def u22 : Term := .lam u23
def u21 : Term := .lam u22
def u20 : Term := .var 0
def u16 : Term := .app u20 u20
def u15 : Term := .var 2
def u14 : Term := .app u15 u16
def u13 : Term := .app u14 u23
def u12 : Term := .lam u13
def u11 : Term := .lam u12
def u10 : Term := .lam u11
def u8 : Term := .app u20 u10
def u7 : Term := .app u8 u20
def u6 : Term := .lam u7
def u2 : Term := .lam u16
def u1 : Term := .app u2 u6
def u0 : Term := .app u1 u21
def code : Array (Code) := #[.app 1 21,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 20,.app 9 10,.var 0,.lam 11,.lam 12,.lam 13,.app 14 19,.app 15 16,.var 2,.app 17 18,.var 0,.var 0,.opaque,.var 0,.opaque,.opaque,.opaque]
def terms : Array (Term) := #[u0,u1,u2,u16,u20,u20,u6,u7,u8,u20,u10,u11,u12,u13,u14,u15,u16,u20,u20,u23,u20,u21,u22,u23]
def v : Array (List AClo) := #[[cl0],[cl1,cl2],[cl3,cl4],[cl5],[cl6,cl7],[cl8,cl9],[cl10],[cl11],[cl12,cl13],[cl14,cl15],[cl16]]
def k : Array (List Frame) := #[[],[fr0],[fr1],[fr2,fr3],[fr4,fr5,fr6],[fr7,fr8,fr9],[fr10],[fr11],[fr12],[fr13],[fr14],[fr15],[fr16],[fr17],[fr18],[fr19],[fr20,fr21],[fr22,fr23],[fr24],[fr25],[fr26],[fr27]]
def st : Array (AState) := #[⟨cl19,0⟩,⟨cl20,1⟩,⟨cl21,2⟩,⟨cl22,1⟩,⟨cl23,15⟩,⟨cl16,11⟩,⟨cl16,12⟩,⟨cl16,13⟩,⟨cl16,14⟩,⟨cl16,20⟩,⟨cl16,21⟩,⟨cl11,11⟩,⟨cl11,12⟩,⟨cl11,13⟩,⟨cl11,14⟩,⟨cl11,15⟩,⟨cl11,20⟩,⟨cl11,21⟩,⟨cl24,17⟩,⟨cl24,18⟩,⟨cl25,7⟩,⟨cl25,10⟩,⟨cl26,1⟩,⟨cl27,16⟩,⟨cl28,17⟩,⟨cl29,18⟩,⟨cl30,19⟩,⟨cl31,20⟩,⟨cl32,21⟩,⟨cl0,8⟩,⟨cl0,9⟩,⟨cl12,19⟩,⟨cl13,19⟩,⟨cl33,16⟩,⟨cl34,16⟩,⟨cl35,4⟩,⟨cl35,5⟩,⟨cl36,1⟩,⟨cl36,7⟩,⟨cl36,10⟩,⟨cl37,17⟩,⟨cl37,18⟩,⟨cl38,17⟩,⟨cl38,18⟩,⟨cl39,3⟩,⟨cl39,6⟩,⟨cl40,1⟩,⟨cl40,7⟩,⟨cl40,10⟩,⟨cl41,1⟩,⟨cl41,7⟩,⟨cl41,10⟩,⟨cl42,0⟩,⟨cl43,3⟩,⟨cl44,4⟩,⟨cl45,5⟩,⟨cl46,6⟩,⟨cl47,7⟩,⟨cl48,8⟩,⟨cl49,9⟩,⟨cl50,10⟩,⟨cl1,7⟩,⟨cl1,10⟩,⟨cl2,7⟩,⟨cl2,10⟩,⟨cl51,11⟩,⟨cl51,12⟩,⟨cl52,13⟩,⟨cl52,14⟩,⟨cl14,11⟩,⟨cl14,12⟩,⟨cl14,13⟩,⟨cl14,14⟩,⟨cl14,20⟩,⟨cl15,11⟩,⟨cl15,12⟩,⟨cl15,13⟩,⟨cl15,14⟩,⟨cl15,20⟩,⟨cl8,11⟩,⟨cl8,12⟩,⟨cl8,13⟩,⟨cl8,14⟩,⟨cl8,20⟩,⟨cl9,11⟩,⟨cl9,12⟩,⟨cl9,13⟩,⟨cl9,14⟩,⟨cl9,20⟩]
def hh : Array (List Nat) := #[[1],[2],[3],[4],[15],[11],[12],[13],[14],[16],[17],[20],[21],[20],[21],[22],[18],[19],[23],[23],[24],[24],[25],[26],[27],[28],[31,32],[73,78],[10],[35],[36],[33],[34],[40,41],[42,43],[37,38,39],[37,38,39],[52],[44],[45],[47,48],[46],[50,51],[49],[53],[53],[54],[54],[54],[55],[55],[55],[56],[57],[58],[59],[60],[61,63],[29],[30],[62,64],[65],[66],[67],[68],[79,84],[80,85],[81,86],[82,87],[79,84],[80,85],[81,86],[82,87],[83,88],[79,84],[80,85],[81,86],[82,87],[83,88],[69,74],[70,75],[71,76],[72,77],[73,78],[5],[6],[7],[8],[9]]
def good (i : Nat) := Compact.test code v k st hh i
theorem bl0 : rangeOK good 0 12 = true := by decide +kernel
theorem bl12 : rangeOK good 12 12 = true := by decide +kernel
theorem bl24 : rangeOK good 24 12 = true := by decide +kernel
theorem bl36 : rangeOK good 36 12 = true := by decide +kernel
theorem bl48 : rangeOK good 48 12 = true := by decide +kernel
theorem bl60 : rangeOK good 60 12 = true := by decide +kernel
theorem bl72 : rangeOK good 72 12 = true := by decide +kernel
theorem bl84 : rangeOK good 84 5 = true := by decide +kernel
theorem valid (i : Nat) (hi : i < 89) : good i = true := by
  by_cases h48 : i < 48
  · by_cases h24 : i < 24
    · by_cases h12 : i < 12
      · exact rangeOK_at bl0 (by omega) (by omega)
      · exact rangeOK_at bl12 (by omega) (by omega)
    · by_cases h36 : i < 36
      · exact rangeOK_at bl24 (by omega) (by omega)
      · exact rangeOK_at bl36 (by omega) (by omega)
  · by_cases h72 : i < 72
    · by_cases h60 : i < 60
      · exact rangeOK_at bl48 (by omega) (by omega)
      · exact rangeOK_at bl60 (by omega) (by omega)
    · by_cases h84 : i < 84
      · exact rangeOK_at bl72 (by omega) (by omega)
      · exact rangeOK_at bl84 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e2423099945818 := by
  intro he
  have hp : replay [] (.app e2423099945818 churchTrue) = some (item terms 0) := by decide
  obtain ⟨n,hn⟩ := clocks_replay (kCount he) hp
  exact Compact.noClock (code := code) (v := v) (k := k) (s := st) (h := hh) terms (by decide) (by rfl) (by decide) valid n hn
#print axioms excluded
end R2423099945818
end Blc.Floor43
