import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Compact

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2393382129274
open Compact Certgen Certgen.FloorIndex
def en0 : List Nat := []
def en1 : List Nat := [3,2]
def en2 : List Nat := [1,3,2]
def en3 : List Nat := [0]
def en4 : List Nat := [2]
def cl0 : AClo := ⟨7, en0⟩
def cl1 : AClo := ⟨12, en1⟩
def cl2 : AClo := ⟨17, en2⟩
def cl3 : AClo := ⟨5, en3⟩
def cl4 : AClo := ⟨6, en3⟩
def cl5 : AClo := ⟨14, en1⟩
def cl6 : AClo := ⟨0, en0⟩
def cl7 : AClo := ⟨1, en0⟩
def cl8 : AClo := ⟨2, en3⟩
def cl9 : AClo := ⟨3, en3⟩
def cl10 : AClo := ⟨4, en3⟩
def cl11 : AClo := ⟨8, en4⟩
def cl12 : AClo := ⟨9, en1⟩
def cl13 : AClo := ⟨10, en1⟩
def cl14 : AClo := ⟨11, en1⟩
def cl15 : AClo := ⟨15, en2⟩
def cl16 : AClo := ⟨16, en2⟩
def fr0 : Frame := ⟨cl0, 0⟩
def fr1 : Frame := ⟨cl1, 6⟩
def fr2 : Frame := ⟨cl2, 6⟩
def fr3 : Frame := ⟨cl4, 0⟩
def fr4 : Frame := ⟨cl3, 4⟩
def fr5 : Frame := ⟨cl5, 0⟩
def u19 : Term := .var 0
def u18 : Term := .var 2
def u17 : Term := .app u18 u19
def u16 : Term := .var 1
def u15 : Term := .app u16 u17
def u14 : Term := .lam u15
def u12 : Term := .lam u19
def u10 : Term := .app u19 u12
def u9 : Term := .app u10 u14
def u8 : Term := .lam u9
def u7 : Term := .lam u8
def u3 : Term := .app u19 u19
def u2 : Term := .app u3 u19
def u1 : Term := .lam u2
def u0 : Term := .app u1 u7
def code : Array (Code) := #[.app 1 7,.lam 2,.app 3 6,.app 4 5,.var 0,.opaque,.var 0,.lam 8,.lam 9,.app 10 14,.app 11 12,.var 0,.opaque,.opaque,.lam 15,.app 16 17,.var 1,.opaque,.opaque,.opaque]
def terms : Array (Term) := #[u0,u1,u2,u3,u19,u19,u19,u7,u8,u9,u10,u19,u12,u19,u14,u15,u16,u17,u18,u19]
def v : Array (List AClo) := #[[cl0],[cl1,cl2],[cl3,cl1,cl2],[cl4,cl5]]
def k : Array (List Frame) := #[[],[fr0],[fr1],[fr2],[fr3],[fr4],[fr5]]
def st : Array (AState) := #[⟨cl6,0⟩,⟨cl7,1⟩,⟨cl8,0⟩,⟨cl9,4⟩,⟨cl10,5⟩,⟨cl4,2⟩,⟨cl4,3⟩,⟨cl0,2⟩,⟨cl0,3⟩,⟨cl0,5⟩,⟨cl11,4⟩,⟨cl11,6⟩,⟨cl12,0⟩,⟨cl13,6⟩,⟨cl14,2⟩,⟨cl5,2⟩,⟨cl5,3⟩,⟨cl15,6⟩,⟨cl16,3⟩]
def hh : Array (List Nat) := #[[1],[2],[3],[4],[9],[7],[8],[11],[11],[10],[12],[12],[13],[14],[5,15],[17],[17],[18],[6,16]]
def good (i : Nat) := Compact.test code v k st hh i
theorem bl0 : rangeOK good 0 12 = true := by decide +kernel
theorem bl12 : rangeOK good 12 7 = true := by decide +kernel
theorem valid (i : Nat) (hi : i < 19) : good i = true := by
  by_cases h12 : i < 12
  · exact rangeOK_at bl0 (by omega) (by omega)
  · exact rangeOK_at bl12 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e2393382129274 := by
  intro he
  have hp : replay [] e2393382129274 = some (item terms 0) := by decide
  obtain ⟨n,hn⟩ := clocks_replay (rawCount he) hp
  exact Compact.noClock (code := code) (v := v) (k := k) (s := st) (h := hh) terms (by decide) (by rfl) (by decide) valid n hn
#print axioms excluded
end R2393382129274
end Blc.Floor43
