import Blc.Selfint40Evidence.CodeBridge
import Blc.SelfintCompact41.Base

set_option Elab.async false
namespace Certgen.R604797727450
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 7,.lam 2,.app 3 4,.var 0,.app 5 6,.var 0,.var 0,.lam 8,.app 9 10,.var 0,.lam 11,.lam 12,.app 13 14,.var 2,.app 15 18,.app 16 17,.var 0,.var 1,.var 0]
def values : Array (List AClo) := #[[⟨7,[]⟩],[⟨17,[4,1,7]⟩,⟨17,[5,2,8]⟩],[⟨10,[9]⟩],[⟨14,[4,1,7]⟩],[⟨18,[4,1,7]⟩,⟨18,[5,2,8]⟩],[⟨10,[7]⟩],[⟨14,[3,2,8]⟩,⟨14,[5,2,8]⟩],[⟨4,[0]⟩],[⟨6,[0]⟩],[⟨10,[8]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨7,[]⟩,0⟩],[⟨⟨14,[3,2,8]⟩,8⟩,⟨⟨14,[3,2,8]⟩,14⟩],[⟨⟨14,[4,1,7]⟩,8⟩,⟨⟨14,[4,1,7]⟩,14⟩],[⟨⟨14,[5,2,8]⟩,0⟩],[⟨⟨18,[3,2,8]⟩,14⟩],[⟨⟨18,[4,1,7]⟩,8⟩],[⟨⟨18,[5,2,8]⟩,14⟩],[⟨⟨17,[3,2,8]⟩,5⟩],[⟨⟨17,[4,1,7]⟩,6⟩],[⟨⟨17,[5,2,8]⟩,7⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨6,[0]⟩,3⟩],[⟨⟨6,[0]⟩,15⟩],[⟨⟨10,[6]⟩,0⟩,⟨⟨10,[6]⟩,8⟩,⟨⟨10,[6]⟩,14⟩],[⟨⟨10,[7]⟩,0⟩],[⟨⟨10,[8]⟩,3⟩,⟨⟨10,[8]⟩,15⟩],[⟨⟨10,[9]⟩,3⟩,⟨⟨10,[9]⟩,15⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,11⟩,⟨⟨4,[0]⟩,3⟩,⟨⟨4,[0]⟩,15⟩,⟨⟨5,[0]⟩,12⟩,⟨⟨5,[0]⟩,13⟩,⟨⟨6,[0]⟩,2⟩,⟨⟨6,[0]⟩,4⟩,⟨⟨6,[0]⟩,16⟩,⟨⟨7,[]⟩,2⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,11⟩,⟨⟨7,[]⟩,12⟩,⟨⟨7,[]⟩,13⟩,⟨⟨7,[]⟩,16⟩,⟨⟨8,[6]⟩,0⟩,⟨⟨8,[6]⟩,8⟩,⟨⟨8,[6]⟩,14⟩,⟨⟨8,[7]⟩,0⟩,⟨⟨8,[8]⟩,3⟩,⟨⟨8,[8]⟩,15⟩,⟨⟨8,[9]⟩,3⟩,⟨⟨8,[9]⟩,15⟩,⟨⟨9,[6]⟩,14⟩,⟨⟨9,[7]⟩,15⟩,⟨⟨9,[8]⟩,16⟩,⟨⟨9,[9]⟩,17⟩,⟨⟨10,[7]⟩,9⟩,⟨⟨10,[7]⟩,10⟩,⟨⟨10,[8]⟩,17⟩,⟨⟨11,[1,7]⟩,6⟩,⟨⟨11,[1,7]⟩,7⟩,⟨⟨11,[2,8]⟩,3⟩,⟨⟨11,[2,8]⟩,15⟩,⟨⟨12,[3,2,8]⟩,8⟩,⟨⟨12,[3,2,8]⟩,14⟩,⟨⟨12,[4,1,7]⟩,8⟩,⟨⟨12,[4,1,7]⟩,14⟩,⟨⟨12,[5,2,8]⟩,0⟩,⟨⟨13,[3,2,8]⟩,2⟩,⟨⟨13,[4,1,7]⟩,3⟩,⟨⟨13,[5,2,8]⟩,4⟩,⟨⟨14,[3,2,8]⟩,14⟩,⟨⟨14,[4,1,7]⟩,8⟩,⟨⟨14,[5,2,8]⟩,14⟩,⟨⟨15,[3,2,8]⟩,5⟩,⟨⟨15,[4,1,7]⟩,6⟩,⟨⟨15,[5,2,8]⟩,7⟩,⟨⟨16,[3,2,8]⟩,8⟩,⟨⟨16,[4,1,7]⟩,9⟩,⟨⟨16,[5,2,8]⟩,10⟩,⟨⟨18,[4,1,7]⟩,9⟩,⟨⟨18,[5,2,8]⟩,9⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[13],[6],[7],[14],[15],[11],[12],[16],[18,19],[17],[20],[21],[22],[23,24],[25],[25],[25],[26],[27],[27],[28],[28],[44,46],[5],[10],[31],[32],[33],[34,35],[38],[39],[36,37],[40],[41],[41],[42],[42],[43],[8],[4],[9],[47],[48],[49],[50],[51],[52],[45],[53,54],[30],[53,54],[29]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 7=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<55 := hi
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

open Blc Blc.Floor40 Blc.Floor41 Blc.Term Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def lit18 : Term := .var 0
def lit17 : Term := .var 1
def lit13 : Term := .var 2
def lit4 : Term := .app lit18 lit18
def lit15 : Term := .app lit18 lit17
def lit2 : Term := .app lit18 lit4
def lit14 : Term := .app lit15 lit18
def lit1 : Term := .lam lit2
def lit12 : Term := .app lit13 lit14
def lit11 : Term := .lam lit12
def lit10 : Term := .lam lit11
def lit8 : Term := .app lit18 lit10
def lit7 : Term := .lam lit8
def lit0 : Term := .app lit1 lit7
def filling : Nat → Term := fun p => Term.var 0
theorem ordered_code : ordered code = true := by decide +kernel
def model : Model P := codeModel (rankedCode code ordered_code) filling
theorem sub18 : model.term 18 = lit18 := model.var_eq 18 0 (by rfl)
theorem sub17 : model.term 17 = lit17 := model.var_eq 17 1 (by rfl)
theorem sub16 : model.term 16 = lit18 := model.var_eq 16 0 (by rfl)
theorem sub15 : model.term 15 = lit15 := by rw [model.app_eq 15 16 17 (by rfl), sub16, sub17]; rfl
theorem sub14 : model.term 14 = lit14 := by rw [model.app_eq 14 15 18 (by rfl), sub15, sub18]; rfl
theorem sub13 : model.term 13 = lit13 := model.var_eq 13 2 (by rfl)
theorem sub12 : model.term 12 = lit12 := by rw [model.app_eq 12 13 14 (by rfl), sub13, sub14]; rfl
theorem sub11 : model.term 11 = lit11 := by rw [model.lam_eq 11 12 (by rfl), sub12]; rfl
theorem sub10 : model.term 10 = lit10 := by rw [model.lam_eq 10 11 (by rfl), sub11]; rfl
theorem sub9 : model.term 9 = lit18 := model.var_eq 9 0 (by rfl)
theorem sub8 : model.term 8 = lit8 := by rw [model.app_eq 8 9 10 (by rfl), sub9, sub10]; rfl
theorem sub7 : model.term 7 = lit7 := by rw [model.lam_eq 7 8 (by rfl), sub8]; rfl
theorem sub6 : model.term 6 = lit18 := model.var_eq 6 0 (by rfl)
theorem sub5 : model.term 5 = lit18 := model.var_eq 5 0 (by rfl)
theorem sub4 : model.term 4 = lit4 := by rw [model.app_eq 4 5 6 (by rfl), sub5, sub6]; rfl
theorem sub3 : model.term 3 = lit18 := model.var_eq 3 0 (by rfl)
theorem sub2 : model.term 2 = lit2 := by rw [model.app_eq 2 3 4 (by rfl), sub3, sub4]; rfl
theorem sub1 : model.term 1 = lit1 := by rw [model.lam_eq 1 2 (by rfl), sub2]; rfl
theorem sub0 : model.term 0 = lit0 := by rw [model.app_eq 0 1 7 (by rfl), sub1, sub7]; rfl
theorem excluded : ¬ IsSelfInterpreter e604797727450 := by
 intro he
 have hp : replay [] e604797727450 = some (model.term 0) := by rw [sub0]; decide
 obtain ⟨h,hh⟩ := clocks_replay (rawCount he) hp
 exact regular_no_clock model closed root h hh
#print axioms excluded
end Certgen.R604797727450
