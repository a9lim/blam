import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Compact

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2393373579118
open Compact Certgen Certgen.FloorIndex
def en0 : List Nat := [3,1,9]
def en1 : List Nat := [5,2,10]
def en2 : List Nat := [7]
def en3 : List Nat := [4,0,8]
def en4 : List Nat := [6,0,8]
def en5 : List Nat := []
def en6 : List Nat := [8]
def en7 : List Nat := [9]
def en8 : List Nat := [10]
def en9 : List Nat := [0,8]
def en10 : List Nat := [1,9]
def en11 : List Nat := [2,10]
def cl0 : AClo := ⟨16, en0⟩
def cl1 : AClo := ⟨16, en1⟩
def cl2 : AClo := ⟨20, en0⟩
def cl3 : AClo := ⟨20, en1⟩
def cl4 : AClo := ⟨8, en2⟩
def cl5 : AClo := ⟨15, en3⟩
def cl6 : AClo := ⟨15, en4⟩
def cl7 : AClo := ⟨16, en3⟩
def cl8 : AClo := ⟨16, en4⟩
def cl9 : AClo := ⟨21, en5⟩
def cl10 : AClo := ⟨24, en5⟩
def cl11 : AClo := ⟨9, en5⟩
def cl12 : AClo := ⟨15, en0⟩
def cl13 : AClo := ⟨15, en1⟩
def cl14 : AClo := ⟨19, en0⟩
def cl15 : AClo := ⟨19, en1⟩
def cl16 : AClo := ⟨7, en2⟩
def cl17 : AClo := ⟨0, en5⟩
def cl18 : AClo := ⟨1, en5⟩
def cl19 : AClo := ⟨2, en5⟩
def cl20 : AClo := ⟨3, en5⟩
def cl21 : AClo := ⟨4, en2⟩
def cl22 : AClo := ⟨5, en2⟩
def cl23 : AClo := ⟨6, en2⟩
def cl24 : AClo := ⟨10, en6⟩
def cl25 : AClo := ⟨10, en7⟩
def cl26 : AClo := ⟨10, en8⟩
def cl27 : AClo := ⟨11, en9⟩
def cl28 : AClo := ⟨11, en10⟩
def cl29 : AClo := ⟨11, en11⟩
def cl30 : AClo := ⟨12, en0⟩
def cl31 : AClo := ⟨12, en3⟩
def cl32 : AClo := ⟨12, en1⟩
def cl33 : AClo := ⟨12, en4⟩
def cl34 : AClo := ⟨13, en0⟩
def cl35 : AClo := ⟨13, en3⟩
def cl36 : AClo := ⟨13, en1⟩
def cl37 : AClo := ⟨13, en4⟩
def cl38 : AClo := ⟨14, en0⟩
def cl39 : AClo := ⟨14, en3⟩
def cl40 : AClo := ⟨14, en1⟩
def cl41 : AClo := ⟨14, en4⟩
def cl42 : AClo := ⟨17, en0⟩
def cl43 : AClo := ⟨17, en1⟩
def cl44 : AClo := ⟨18, en0⟩
def cl45 : AClo := ⟨18, en1⟩
def fr0 : Frame := ⟨cl10, 0⟩
def fr1 : Frame := ⟨cl9, 1⟩
def fr2 : Frame := ⟨cl0, 4⟩
def fr3 : Frame := ⟨cl0, 6⟩
def fr4 : Frame := ⟨cl7, 0⟩
def fr5 : Frame := ⟨cl1, 1⟩
def fr6 : Frame := ⟨cl8, 0⟩
def fr7 : Frame := ⟨cl12, 3⟩
def fr8 : Frame := ⟨cl5, 4⟩
def fr9 : Frame := ⟨cl13, 5⟩
def fr10 : Frame := ⟨cl6, 6⟩
def fr11 : Frame := ⟨cl2, 8⟩
def fr12 : Frame := ⟨cl2, 10⟩
def fr13 : Frame := ⟨cl3, 8⟩
def fr14 : Frame := ⟨cl3, 10⟩
def fr15 : Frame := ⟨cl14, 11⟩
def fr16 : Frame := ⟨cl14, 12⟩
def fr17 : Frame := ⟨cl15, 13⟩
def fr18 : Frame := ⟨cl15, 14⟩
def fr19 : Frame := ⟨cl11, 2⟩
def fr20 : Frame := ⟨cl4, 2⟩
def fr21 : Frame := ⟨cl16, 20⟩
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
def u20 : Term := .var 2
def u17 : Term := .app u51 u51
def u16 : Term := .app u17 u20
def u13 : Term := .app u51 u48
def u12 : Term := .app u13 u16
def u11 : Term := .lam u12
def u10 : Term := .lam u11
def u9 : Term := .lam u10
def u5 : Term := .app u48 u48
def u4 : Term := .app u5 u48
def u3 : Term := .lam u4
def u2 : Term := .app u3 u9
def u1 : Term := .app u2 u42
def u0 : Term := .app u1 u24
def code : Array (Code) := #[.app 1 24,.app 2 21,.app 3 9,.lam 4,.app 5 8,.app 6 7,.var 0,.var 0,.var 0,.lam 10,.lam 11,.lam 12,.app 13 16,.app 14 15,.var 1,.opaque,.app 17 20,.app 18 19,.var 1,.var 1,.var 2,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque]
def terms : Array (Term) := #[u0,u1,u2,u3,u4,u5,u48,u48,u48,u9,u10,u11,u12,u13,u51,u48,u16,u17,u51,u51,u20,u42,u43,u48,u24,u25,u47,u48,u49,u50,u51,u31,u32,u47,u48,u49,u50,u51,u38,u39,u40,u48,u42,u43,u48,u45,u46,u47,u48,u49,u50,u51,u52]
def v : Array (List AClo) := #[[cl0,cl1],[cl2,cl3],[cl4],[cl5,cl6],[cl7,cl8],[cl9],[cl10],[cl11],[cl12,cl13],[cl14,cl15],[cl16]]
def k : Array (List Frame) := #[[],[fr0],[fr1],[fr2,fr3],[fr4],[fr5],[fr6],[fr7],[fr8],[fr9],[fr10],[fr11],[fr12],[fr13],[fr14],[fr15],[fr16],[fr17],[fr18],[fr19],[fr20],[fr21]]
def st : Array (AState) := #[⟨cl17,0⟩,⟨cl18,1⟩,⟨cl19,2⟩,⟨cl20,19⟩,⟨cl21,2⟩,⟨cl22,20⟩,⟨cl23,21⟩,⟨cl16,7⟩,⟨cl16,15⟩,⟨cl16,16⟩,⟨cl4,7⟩,⟨cl4,9⟩,⟨cl4,15⟩,⟨cl4,16⟩,⟨cl4,17⟩,⟨cl4,18⟩,⟨cl11,7⟩,⟨cl11,9⟩,⟨cl11,15⟩,⟨cl11,16⟩,⟨cl11,17⟩,⟨cl11,18⟩,⟨cl11,21⟩,⟨cl24,3⟩,⟨cl24,5⟩,⟨cl25,11⟩,⟨cl25,12⟩,⟨cl25,13⟩,⟨cl25,14⟩,⟨cl26,20⟩,⟨cl27,1⟩,⟨cl27,4⟩,⟨cl27,6⟩,⟨cl28,8⟩,⟨cl28,10⟩,⟨cl29,2⟩,⟨cl30,4⟩,⟨cl30,6⟩,⟨cl31,0⟩,⟨cl32,1⟩,⟨cl33,0⟩,⟨cl34,3⟩,⟨cl35,4⟩,⟨cl36,5⟩,⟨cl37,6⟩,⟨cl38,7⟩,⟨cl39,8⟩,⟨cl40,9⟩,⟨cl41,10⟩,⟨cl0,8⟩,⟨cl0,10⟩,⟨cl1,8⟩,⟨cl1,10⟩,⟨cl42,11⟩,⟨cl42,12⟩,⟨cl43,13⟩,⟨cl43,14⟩,⟨cl44,15⟩,⟨cl44,16⟩,⟨cl45,17⟩,⟨cl45,18⟩,⟨cl14,7⟩,⟨cl14,15⟩,⟨cl14,16⟩,⟨cl15,7⟩,⟨cl15,15⟩,⟨cl15,16⟩,⟨cl2,7⟩,⟨cl2,15⟩,⟨cl2,16⟩,⟨cl3,7⟩,⟨cl3,15⟩,⟨cl3,16⟩]
def hh : Array (List Nat) := #[[1],[2],[3],[4],[5],[6],[22],[16],[18],[19],[16],[17],[18],[19],[20],[21],[23],[24],[25],[26],[27],[28],[29],[31,32],[30],[33],[34],[33],[34],[35],[40],[38],[38],[36],[37],[39],[41],[41],[42],[43],[44],[45],[46],[47],[48],[67,70],[49,51],[11],[50,52],[53],[54],[55],[56],[57],[58],[59],[60],[68,71],[69,72],[14],[15],[67,70],[68,71],[69,72],[10],[12],[13],[61,64],[62,65],[63,66],[7],[8],[9]]
def good (i : Nat) := Compact.test code v k st hh i
theorem bl0 : rangeOK good 0 12 = true := by decide +kernel
theorem bl12 : rangeOK good 12 12 = true := by decide +kernel
theorem bl24 : rangeOK good 24 12 = true := by decide +kernel
theorem bl36 : rangeOK good 36 12 = true := by decide +kernel
theorem bl48 : rangeOK good 48 12 = true := by decide +kernel
theorem bl60 : rangeOK good 60 12 = true := by decide +kernel
theorem bl72 : rangeOK good 72 1 = true := by decide +kernel
theorem valid (i : Nat) (hi : i < 73) : good i = true := by
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
theorem excluded : ¬ IsSelfInterpreter e2393373579118 := by
  intro he
  have hp : replay [] (call e2393373579118 (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) []) = some (item terms 0) := by decide
  obtain ⟨n,hn⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
  exact Compact.noClock (code := code) (v := v) (k := k) (s := st) (h := hh) terms (by decide) (by rfl) (by decide) valid n hn
#print axioms excluded
end R2393373579118
end Blc.Floor43
