import Blc.SelfintCompact43.Base
import Blc.SelfintResidual43.Compact

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2393373384374
open Compact Certgen Certgen.FloorIndex
def en0 : List Nat := [0,3,2]
def en1 : List Nat := []
def en2 : List Nat := [1]
def en3 : List Nat := [2]
def en4 : List Nat := [3,2]
def cl0 : AClo := ⟨19, en0⟩
def cl1 : AClo := ⟨20, en1⟩
def cl2 : AClo := ⟨8, en1⟩
def cl3 : AClo := ⟨6, en2⟩
def cl4 : AClo := ⟨15, en0⟩
def cl5 : AClo := ⟨7, en2⟩
def cl6 : AClo := ⟨18, en0⟩
def cl7 : AClo := ⟨0, en1⟩
def cl8 : AClo := ⟨1, en1⟩
def cl9 : AClo := ⟨2, en1⟩
def cl10 : AClo := ⟨3, en2⟩
def cl11 : AClo := ⟨4, en2⟩
def cl12 : AClo := ⟨5, en2⟩
def cl13 : AClo := ⟨9, en3⟩
def cl14 : AClo := ⟨10, en4⟩
def cl15 : AClo := ⟨11, en0⟩
def cl16 : AClo := ⟨12, en0⟩
def cl17 : AClo := ⟨13, en0⟩
def cl18 : AClo := ⟨14, en0⟩
def fr0 : Frame := ⟨cl1, 0⟩
def fr1 : Frame := ⟨cl2, 1⟩
def fr2 : Frame := ⟨cl0, 0⟩
def fr3 : Frame := ⟨cl6, 3⟩
def fr4 : Frame := ⟨cl4, 4⟩
def fr5 : Frame := ⟨cl5, 1⟩
def fr6 : Frame := ⟨cl3, 6⟩
def u22 : Term := .var 1
def u21 : Term := .lam u22
def u20 : Term := .lam u21
def u17 : Term := .var 0
def u16 : Term := .var 2
def u15 : Term := .app u16 u17
def u13 : Term := .app u22 u15
def u12 : Term := .app u13 u22
def u11 : Term := .app u12 u22
def u10 : Term := .lam u11
def u9 : Term := .lam u10
def u8 : Term := .lam u9
def u4 : Term := .app u17 u17
def u3 : Term := .app u4 u17
def u2 : Term := .lam u3
def u1 : Term := .app u2 u8
def u0 : Term := .app u1 u20
def code : Array (Code) := #[.app 1 20,.app 2 8,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.var 0,.lam 9,.lam 10,.lam 11,.app 12 19,.app 13 18,.app 14 15,.var 1,.opaque,.opaque,.opaque,.var 1,.opaque,.opaque,.opaque,.opaque]
def terms : Array (Term) := #[u0,u1,u2,u3,u4,u17,u17,u17,u8,u9,u10,u11,u12,u13,u22,u15,u16,u17,u22,u22,u20,u21,u22]
def v : Array (List AClo) := #[[cl0,cl1],[cl2],[cl3,cl4],[cl5,cl6]]
def k : Array (List Frame) := #[[],[fr0],[fr1],[fr2],[fr3],[fr4],[fr5],[fr6]]
def st : Array (AState) := #[⟨cl7,0⟩,⟨cl8,1⟩,⟨cl9,2⟩,⟨cl10,1⟩,⟨cl11,6⟩,⟨cl12,7⟩,⟨cl5,5⟩,⟨cl2,5⟩,⟨cl2,7⟩,⟨cl13,4⟩,⟨cl13,6⟩,⟨cl14,1⟩,⟨cl14,3⟩,⟨cl15,0⟩,⟨cl16,3⟩,⟨cl17,4⟩,⟨cl18,5⟩,⟨cl6,5⟩]
def hh : Array (List Nat) := #[[1],[2],[3],[4],[5],[8],[7],[9],[10],[12],[11],[13],[13],[14],[15],[16],[6,17],[6,17]]
def good (i : Nat) := Compact.test code v k st hh i
theorem bl0 : rangeOK good 0 12 = true := by decide +kernel
theorem bl12 : rangeOK good 12 6 = true := by decide +kernel
theorem valid (i : Nat) (hi : i < 18) : good i = true := by
  by_cases h12 : i < 12
  · exact rangeOK_at bl0 (by omega) (by omega)
  · exact rangeOK_at bl12 (by omega) (by omega)
theorem excluded : ¬ IsSelfInterpreter e2393373384374 := by
  intro he
  have hp : replay [] (.app e2393373384374 churchTrue) = some (item terms 0) := by decide
  obtain ⟨n,hn⟩ := clocks_replay (kCount he) hp
  exact Compact.noClock (code := code) (v := v) (k := k) (s := st) (h := hh) terms (by decide) (by rfl) (by decide) valid n hn
#print axioms excluded
end R2393373384374
end Blc.Floor43
