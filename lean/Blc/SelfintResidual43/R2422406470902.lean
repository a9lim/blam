import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Compact

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2422406470902
open Compact Certgen Certgen.FloorIndex
def en0 : List Nat := [16,12,10]
def en1 : List Nat := [0]
def en2 : List Nat := [1]
def en3 : List Nat := []
def en4 : List Nat := [7,0]
def en5 : List Nat := [6]
def en6 : List Nat := [14,11,8]
def en7 : List Nat := [15,13,9]
def en8 : List Nat := [8]
def en9 : List Nat := [9]
def en10 : List Nat := [10]
def en11 : List Nat := [11,8]
def en12 : List Nat := [12,10]
def en13 : List Nat := [13,9]
def en14 : List Nat := [2,0]
def en15 : List Nat := [3,1]
def en16 : List Nat := [4,3,1]
def en17 : List Nat := [5,2,0]
def cl0 : AClo := ⟨15, en0⟩
def cl1 : AClo := ⟨28, en1⟩
def cl2 : AClo := ⟨28, en2⟩
def cl3 : AClo := ⟨31, en1⟩
def cl4 : AClo := ⟨16, en0⟩
def cl5 : AClo := ⟨31, en2⟩
def cl6 : AClo := ⟨7, en3⟩
def cl7 : AClo := ⟨17, en0⟩
def cl8 : AClo := ⟨20, en0⟩
def cl9 : AClo := ⟨35, en4⟩
def cl10 : AClo := ⟨6, en5⟩
def cl11 : AClo := ⟨15, en6⟩
def cl12 : AClo := ⟨15, en7⟩
def cl13 : AClo := ⟨21, en3⟩
def cl14 : AClo := ⟨38, en4⟩
def cl15 : AClo := ⟨16, en6⟩
def cl16 : AClo := ⟨16, en7⟩
def cl17 : AClo := ⟨18, en0⟩
def cl18 : AClo := ⟨24, en3⟩
def cl19 : AClo := ⟨18, en6⟩
def cl20 : AClo := ⟨18, en7⟩
def cl21 : AClo := ⟨17, en6⟩
def cl22 : AClo := ⟨17, en7⟩
def cl23 : AClo := ⟨0, en3⟩
def cl24 : AClo := ⟨1, en3⟩
def cl25 : AClo := ⟨2, en3⟩
def cl26 : AClo := ⟨3, en3⟩
def cl27 : AClo := ⟨4, en5⟩
def cl28 : AClo := ⟨5, en5⟩
def cl29 : AClo := ⟨8, en8⟩
def cl30 : AClo := ⟨8, en9⟩
def cl31 : AClo := ⟨8, en10⟩
def cl32 : AClo := ⟨9, en11⟩
def cl33 : AClo := ⟨9, en12⟩
def cl34 : AClo := ⟨9, en13⟩
def cl35 : AClo := ⟨10, en6⟩
def cl36 : AClo := ⟨10, en7⟩
def cl37 : AClo := ⟨10, en0⟩
def cl38 : AClo := ⟨11, en6⟩
def cl39 : AClo := ⟨11, en7⟩
def cl40 : AClo := ⟨11, en0⟩
def cl41 : AClo := ⟨12, en6⟩
def cl42 : AClo := ⟨12, en7⟩
def cl43 : AClo := ⟨12, en0⟩
def cl44 : AClo := ⟨13, en6⟩
def cl45 : AClo := ⟨13, en7⟩
def cl46 : AClo := ⟨13, en0⟩
def cl47 : AClo := ⟨14, en6⟩
def cl48 : AClo := ⟨14, en7⟩
def cl49 : AClo := ⟨14, en0⟩
def cl50 : AClo := ⟨19, en0⟩
def cl51 : AClo := ⟨25, en1⟩
def cl52 : AClo := ⟨25, en2⟩
def cl53 : AClo := ⟨26, en1⟩
def cl54 : AClo := ⟨26, en2⟩
def cl55 : AClo := ⟨27, en1⟩
def cl56 : AClo := ⟨27, en2⟩
def cl57 : AClo := ⟨29, en14⟩
def cl58 : AClo := ⟨29, en15⟩
def cl59 : AClo := ⟨30, en16⟩
def cl60 : AClo := ⟨30, en17⟩
def cl61 : AClo := ⟨32, en4⟩
def cl62 : AClo := ⟨33, en4⟩
def cl63 : AClo := ⟨34, en4⟩
def fr0 : Frame := ⟨cl18, 0⟩
def fr1 : Frame := ⟨cl13, 1⟩
def fr2 : Frame := ⟨cl19, 6⟩
def fr3 : Frame := ⟨cl19, 7⟩
def fr4 : Frame := ⟨cl20, 0⟩
def fr5 : Frame := ⟨cl17, 0⟩
def fr6 : Frame := ⟨cl21, 3⟩
def fr7 : Frame := ⟨cl22, 4⟩
def fr8 : Frame := ⟨cl7, 5⟩
def fr9 : Frame := ⟨cl15, 6⟩
def fr10 : Frame := ⟨cl16, 7⟩
def fr11 : Frame := ⟨cl4, 8⟩
def fr12 : Frame := ⟨cl11, 9⟩
def fr13 : Frame := ⟨cl12, 10⟩
def fr14 : Frame := ⟨cl0, 11⟩
def fr15 : Frame := ⟨cl8, 12⟩
def fr16 : Frame := ⟨cl8, 13⟩
def fr17 : Frame := ⟨cl6, 2⟩
def fr18 : Frame := ⟨cl3, 11⟩
def fr19 : Frame := ⟨cl5, 18⟩
def fr20 : Frame := ⟨cl1, 18⟩
def fr21 : Frame := ⟨cl2, 19⟩
def fr22 : Frame := ⟨cl14, 5⟩
def fr23 : Frame := ⟨cl9, 22⟩
def fr24 : Frame := ⟨cl10, 2⟩
def u52 : Term := .var 4
def u51 : Term := .var 1
def u50 : Term := .lam u51
def u49 : Term := .lam u50
def u48 : Term := .var 0
def u47 : Term := .app u48 u49
def u46 : Term := .app u47 u52
def u45 : Term := .lam u46
def u43 : Term := .lam u48
def u42 : Term := .lam u43
def u40 : Term := .app u48 u42
def u39 : Term := .app u40 u45
def u38 : Term := .lam u39
def u32 : Term := .app u47 u38
def u31 : Term := .lam u32
def u25 : Term := .app u47 u31
def u24 : Term := .lam u25
def u19 : Term := .var 2
def u18 : Term := .app u19 u51
def u13 : Term := .app u48 u48
def u12 : Term := .app u13 u48
def u11 : Term := .app u12 u19
def u10 : Term := .app u11 u18
def u9 : Term := .lam u10
def u8 : Term := .lam u9
def u7 : Term := .lam u8
def u3 : Term := .lam u13
def u2 : Term := .app u3 u7
def u1 : Term := .app u2 u42
def u0 : Term := .app u1 u24
def code : Array (Code) := #[.app 1 24,.app 2 21,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.lam 9,.lam 10,.app 11 18,.app 12 17,.app 13 16,.app 14 15,.var 0,.var 0,.var 0,.var 2,.app 19 20,.var 2,.opaque,.opaque,.opaque,.opaque,.lam 25,.app 26 31,.app 27 28,.var 0,.lam 29,.lam 30,.var 1,.lam 32,.app 33 38,.app 34 35,.var 0,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque]
def terms : Array (Term) := #[u0,u1,u2,u3,u13,u48,u48,u7,u8,u9,u10,u11,u12,u13,u48,u48,u48,u19,u18,u19,u51,u42,u43,u48,u24,u25,u47,u48,u49,u50,u51,u31,u32,u47,u48,u49,u50,u51,u38,u39,u40,u48,u42,u43,u48,u45,u46,u47,u48,u49,u50,u51,u52]
def v : Array (List AClo) := #[[cl0],[cl1],[cl2],[cl3],[cl4],[cl5],[cl6],[cl7],[cl8],[cl9],[cl10],[cl11,cl12],[cl13],[cl14],[cl15,cl16],[cl17],[cl18]]
def k : Array (List Frame) := #[[],[fr0],[fr1],[fr2,fr3],[fr4],[fr5],[fr6],[fr7],[fr8],[fr9],[fr10],[fr11],[fr12],[fr13],[fr14],[fr15],[fr16],[fr17],[fr18],[fr19],[fr20],[fr21],[fr22],[fr23],[fr24]]
def st : Array (AState) := #[⟨cl23,0⟩,⟨cl24,1⟩,⟨cl25,2⟩,⟨cl26,17⟩,⟨cl27,2⟩,⟨cl28,24⟩,⟨cl10,15⟩,⟨cl10,16⟩,⟨cl10,23⟩,⟨cl6,15⟩,⟨cl6,16⟩,⟨cl6,23⟩,⟨cl6,24⟩,⟨cl29,12⟩,⟨cl29,13⟩,⟨cl30,22⟩,⟨cl31,2⟩,⟨cl32,9⟩,⟨cl32,10⟩,⟨cl33,1⟩,⟨cl34,5⟩,⟨cl35,6⟩,⟨cl35,7⟩,⟨cl36,0⟩,⟨cl37,0⟩,⟨cl38,3⟩,⟨cl39,4⟩,⟨cl40,5⟩,⟨cl41,6⟩,⟨cl42,7⟩,⟨cl43,8⟩,⟨cl44,9⟩,⟨cl45,10⟩,⟨cl46,11⟩,⟨cl47,12⟩,⟨cl48,13⟩,⟨cl49,14⟩,⟨cl0,20⟩,⟨cl15,12⟩,⟨cl16,12⟩,⟨cl7,23⟩,⟨cl17,12⟩,⟨cl17,13⟩,⟨cl50,15⟩,⟨cl50,16⟩,⟨cl18,14⟩,⟨cl18,20⟩,⟨cl51,11⟩,⟨cl52,18⟩,⟨cl53,18⟩,⟨cl54,19⟩,⟨cl55,20⟩,⟨cl56,21⟩,⟨cl1,21⟩,⟨cl2,18⟩,⟨cl57,19⟩,⟨cl58,11⟩,⟨cl59,8⟩,⟨cl60,18⟩,⟨cl3,8⟩,⟨cl61,5⟩,⟨cl62,22⟩,⟨cl63,23⟩]
def hh : Array (List Nat) := #[[1],[2],[3],[4],[5],[12],[9],[10],[11],[13],[14],[15],[16],[17],[18],[20],[19],[21],[22],[24],[23],[25],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[35],[36],[38,39],[42],[45],[46],[38,39],[41],[8],[43],[44],[6],[7],[47],[48],[49],[50],[51],[52],[37],[53],[55],[56],[58],[57],[59],[54],[60],[61],[62],[40]]
def good (i : Nat) := Compact.test code v k st hh i
theorem bl0 : rangeOK good 0 12 = true := by decide +kernel
theorem bl12 : rangeOK good 12 12 = true := by decide +kernel
theorem bl24 : rangeOK good 24 12 = true := by decide +kernel
theorem bl36 : rangeOK good 36 12 = true := by decide +kernel
theorem bl48 : rangeOK good 48 12 = true := by decide +kernel
theorem bl60 : rangeOK good 60 3 = true := by decide +kernel
theorem valid (i : Nat) (hi : i < 63) : good i = true := by
  by_cases h36 : i < 36
  · by_cases h12 : i < 12
    · exact rangeOK_at bl0 (by omega) (by omega)
    · by_cases h24 : i < 24
      · exact rangeOK_at bl12 (by omega) (by omega)
      · exact rangeOK_at bl24 (by omega) (by omega)
  · by_cases h48 : i < 48
    · exact rangeOK_at bl36 (by omega) (by omega)
    · by_cases h60 : i < 60
      · exact rangeOK_at bl48 (by omega) (by omega)
      · exact rangeOK_at bl60 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e2422406470902 := by
  intro he
  have hp : replay [] (call e2422406470902 (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) []) = some (item terms 0) := by decide
  obtain ⟨n,hn⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
  exact Compact.noClock (code := code) (v := v) (k := k) (s := st) (h := hh) terms (by decide) (by rfl) (by decide) valid n hn
#print axioms excluded
end R2422406470902
end Blc.Floor43
