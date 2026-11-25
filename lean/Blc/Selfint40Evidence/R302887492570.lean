import Blc.Selfint40Evidence.CodeBridge
import Blc.Selfint40Evidence.Base

namespace Certgen.R302887492570
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 17,.app 8 9,.var 0,.lam 10,.lam 11,.lam 12,.app 13 16,.app 14 15,.var 0,.var 3,.var 1,.var 0]
def values : Array (List AClo) := #[[⟨5,[]⟩],[⟨17,[5]⟩],[⟨17,[3]⟩,⟨17,[4]⟩],[⟨15,[2,1,6,3]⟩,⟨15,[2,1,6,4]⟩],[⟨4,[0]⟩],[⟨9,[3]⟩,⟨9,[4]⟩],[⟨9,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨5,[]⟩,0⟩],[⟨⟨16,[2,1,6,3]⟩,0⟩,⟨⟨16,[2,1,6,3]⟩,2⟩,⟨⟨16,[2,1,6,3]⟩,3⟩],[⟨⟨16,[2,1,6,4]⟩,0⟩,⟨⟨16,[2,1,6,4]⟩,2⟩,⟨⟨16,[2,1,6,4]⟩,3⟩],[⟨⟨15,[2,1,6,3]⟩,2⟩],[⟨⟨15,[2,1,6,4]⟩,3⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨17,[3]⟩,2⟩,⟨⟨17,[3]⟩,3⟩],[⟨⟨17,[4]⟩,0⟩],[⟨⟨17,[5]⟩,7⟩,⟨⟨17,[5]⟩,8⟩],[⟨⟨9,[3]⟩,7⟩],[⟨⟨9,[4]⟩,8⟩],[⟨⟨9,[5]⟩,9⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,6⟩,⟨⟨4,[0]⟩,4⟩,⟨⟨4,[0]⟩,5⟩,⟨⟨4,[0]⟩,10⟩,⟨⟨4,[0]⟩,11⟩,⟨⟨5,[]⟩,4⟩,⟨⟨5,[]⟩,5⟩,⟨⟨5,[]⟩,6⟩,⟨⟨5,[]⟩,10⟩,⟨⟨5,[]⟩,11⟩,⟨⟨6,[3]⟩,2⟩,⟨⟨6,[3]⟩,3⟩,⟨⟨6,[4]⟩,0⟩,⟨⟨6,[5]⟩,7⟩,⟨⟨6,[5]⟩,8⟩,⟨⟨7,[3]⟩,7⟩,⟨⟨7,[4]⟩,8⟩,⟨⟨7,[5]⟩,9⟩,⟨⟨8,[3]⟩,10⟩,⟨⟨8,[4]⟩,11⟩,⟨⟨8,[5]⟩,12⟩,⟨⟨9,[3]⟩,12⟩,⟨⟨9,[4]⟩,12⟩,⟨⟨10,[6,3]⟩,9⟩,⟨⟨10,[6,4]⟩,9⟩,⟨⟨11,[1,6,3]⟩,7⟩,⟨⟨11,[1,6,3]⟩,8⟩,⟨⟨11,[1,6,4]⟩,7⟩,⟨⟨11,[1,6,4]⟩,8⟩,⟨⟨12,[2,1,6,3]⟩,0⟩,⟨⟨12,[2,1,6,3]⟩,2⟩,⟨⟨12,[2,1,6,3]⟩,3⟩,⟨⟨12,[2,1,6,4]⟩,0⟩,⟨⟨12,[2,1,6,4]⟩,2⟩,⟨⟨12,[2,1,6,4]⟩,3⟩,⟨⟨13,[2,1,6,3]⟩,2⟩,⟨⟨13,[2,1,6,4]⟩,3⟩,⟨⟨14,[2,1,6,3]⟩,4⟩,⟨⟨14,[2,1,6,4]⟩,5⟩,⟨⟨15,[2,1,6,3]⟩,4⟩,⟨⟨15,[2,1,6,3]⟩,5⟩,⟨⟨15,[2,1,6,3]⟩,10⟩,⟨⟨15,[2,1,6,4]⟩,4⟩,⟨⟨15,[2,1,6,4]⟩,5⟩,⟨⟨15,[2,1,6,4]⟩,10⟩,⟨⟨17,[3]⟩,4⟩,⟨⟨17,[3]⟩,5⟩,⟨⟨17,[4]⟩,4⟩,⟨⟨17,[4]⟩,5⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[10],[8],[9],[11],[12],[13],[14],[15],[16],[17],[18],[18],[19],[20],[20],[21],[22],[23],[44,47],[7],[24,25],[26],[27],[28,29],[30,31],[33,34],[32],[36,37],[35],[38],[38],[38],[39],[39],[39],[40],[41],[48,50],[49,51],[42,45],[43,46],[44,47],[4],[5],[6],[42,45],[43,46],[4],[5]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 4=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<52 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 by_cases h24 : i<36
 · exact range_sound block24 i (by omega) h24 hi
 by_cases h36 : i<48
 · exact range_sound block36 i (by omega) h36 hi
 exact range_sound block48 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)

open Blc Blc.Floor40 Blc.Term Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def lit17 : Term := .var 0
def lit16 : Term := .var 1
def lit15 : Term := .var 3
def lit2 : Term := .app lit17 lit17
def lit1 : Term := .lam lit2
def lit13 : Term := .app lit17 lit15
def lit12 : Term := .app lit13 lit16
def lit11 : Term := .lam lit12
def lit10 : Term := .lam lit11
def lit9 : Term := .lam lit10
def lit7 : Term := .app lit17 lit9
def lit6 : Term := .app lit7 lit17
def lit5 : Term := .lam lit6
def lit0 : Term := .app lit1 lit5
def filling : Nat → Term := fun p => Term.var 0
theorem ordered_code : ordered code = true := by decide +kernel
def model : Model P := codeModel (rankedCode code ordered_code) filling
theorem sub17 : model.term 17 = lit17 := model.var_eq 17 0 (by rfl)
theorem sub16 : model.term 16 = lit16 := model.var_eq 16 1 (by rfl)
theorem sub15 : model.term 15 = lit15 := model.var_eq 15 3 (by rfl)
theorem sub14 : model.term 14 = lit17 := model.var_eq 14 0 (by rfl)
theorem sub13 : model.term 13 = lit13 := by rw [model.app_eq 13 14 15 (by rfl), sub14, sub15]; rfl
theorem sub12 : model.term 12 = lit12 := by rw [model.app_eq 12 13 16 (by rfl), sub13, sub16]; rfl
theorem sub11 : model.term 11 = lit11 := by rw [model.lam_eq 11 12 (by rfl), sub12]; rfl
theorem sub10 : model.term 10 = lit10 := by rw [model.lam_eq 10 11 (by rfl), sub11]; rfl
theorem sub9 : model.term 9 = lit9 := by rw [model.lam_eq 9 10 (by rfl), sub10]; rfl
theorem sub8 : model.term 8 = lit17 := model.var_eq 8 0 (by rfl)
theorem sub7 : model.term 7 = lit7 := by rw [model.app_eq 7 8 9 (by rfl), sub8, sub9]; rfl
theorem sub6 : model.term 6 = lit6 := by rw [model.app_eq 6 7 17 (by rfl), sub7, sub17]; rfl
theorem sub5 : model.term 5 = lit5 := by rw [model.lam_eq 5 6 (by rfl), sub6]; rfl
theorem sub4 : model.term 4 = lit17 := model.var_eq 4 0 (by rfl)
theorem sub3 : model.term 3 = lit17 := model.var_eq 3 0 (by rfl)
theorem sub2 : model.term 2 = lit2 := by rw [model.app_eq 2 3 4 (by rfl), sub3, sub4]; rfl
theorem sub1 : model.term 1 = lit1 := by rw [model.lam_eq 1 2 (by rfl), sub2]; rfl
theorem sub0 : model.term 0 = lit0 := by rw [model.app_eq 0 1 5 (by rfl), sub1, sub5]; rfl
theorem excluded : ¬ IsSelfInterpreter e302887492570 := by
 intro he
 have hp : replay [] e302887492570 = some (model.term 0) := by rw [sub0]; decide
 obtain ⟨h,hh⟩ := clocks_replay (rawCount he) hp
 exact regular_no_clock model closed root h hh
#print axioms excluded
end Certgen.R302887492570
