import Blc.Selfint40Evidence.CodeBridge
import Blc.SelfintCompact41.Base

set_option Elab.async false
namespace Certgen.R604797727446
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 7,.lam 2,.app 3 4,.var 0,.app 5 6,.var 0,.var 0,.lam 8,.app 9 10,.var 0,.lam 11,.lam 12,.app 13 14,.var 2,.app 15 18,.app 16 17,.var 0,.var 0,.var 1]
def values : Array (List AClo) := #[[⟨7,[]⟩],[⟨14,[5,2,11]⟩],[⟨17,[5,2,9]⟩,⟨17,[7,3,10]⟩],[⟨10,[11]⟩],[⟨14,[5,2,9]⟩],[⟨18,[5,2,9]⟩,⟨18,[7,3,10]⟩],[⟨17,[4,3,10]⟩,⟨17,[6,1,10]⟩],[⟨10,[9]⟩],[⟨14,[4,3,10]⟩,⟨14,[6,1,10]⟩,⟨14,[7,3,10]⟩],[⟨4,[0]⟩],[⟨6,[0]⟩],[⟨10,[10]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨7,[]⟩,0⟩],[⟨⟨14,[4,3,10]⟩,11⟩,⟨⟨14,[4,3,10]⟩,13⟩,⟨⟨14,[4,3,10]⟩,18⟩],[⟨⟨14,[5,2,9]⟩,11⟩,⟨⟨14,[5,2,9]⟩,13⟩,⟨⟨14,[5,2,9]⟩,18⟩],[⟨⟨14,[5,2,11]⟩,11⟩,⟨⟨14,[5,2,11]⟩,13⟩],[⟨⟨14,[6,1,10]⟩,7⟩,⟨⟨14,[6,1,10]⟩,9⟩],[⟨⟨14,[7,3,10]⟩,0⟩],[⟨⟨18,[4,3,10]⟩,18⟩],[⟨⟨18,[5,2,9]⟩,11⟩,⟨⟨18,[5,2,9]⟩,13⟩],[⟨⟨18,[6,1,10]⟩,18⟩],[⟨⟨18,[7,3,10]⟩,18⟩],[⟨⟨17,[4,3,10]⟩,7⟩],[⟨⟨17,[5,2,9]⟩,8⟩],[⟨⟨17,[6,1,10]⟩,9⟩],[⟨⟨17,[7,3,10]⟩,10⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨6,[0]⟩,3⟩],[⟨⟨6,[0]⟩,19⟩],[⟨⟨10,[8]⟩,0⟩,⟨⟨10,[8]⟩,7⟩,⟨⟨10,[8]⟩,9⟩,⟨⟨10,[8]⟩,11⟩,⟨⟨10,[8]⟩,13⟩,⟨⟨10,[8]⟩,18⟩],[⟨⟨10,[9]⟩,0⟩],[⟨⟨10,[10]⟩,3⟩,⟨⟨10,[10]⟩,19⟩],[⟨⟨10,[11]⟩,3⟩,⟨⟨10,[11]⟩,19⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,15⟩,⟨⟨4,[0]⟩,3⟩,⟨⟨4,[0]⟩,19⟩,⟨⟨5,[0]⟩,16⟩,⟨⟨5,[0]⟩,17⟩,⟨⟨6,[0]⟩,2⟩,⟨⟨6,[0]⟩,5⟩,⟨⟨6,[0]⟩,6⟩,⟨⟨6,[0]⟩,20⟩,⟨⟨7,[]⟩,2⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,15⟩,⟨⟨7,[]⟩,16⟩,⟨⟨7,[]⟩,17⟩,⟨⟨7,[]⟩,20⟩,⟨⟨8,[8]⟩,0⟩,⟨⟨8,[8]⟩,7⟩,⟨⟨8,[8]⟩,9⟩,⟨⟨8,[8]⟩,11⟩,⟨⟨8,[8]⟩,13⟩,⟨⟨8,[8]⟩,18⟩,⟨⟨8,[9]⟩,0⟩,⟨⟨8,[10]⟩,3⟩,⟨⟨8,[10]⟩,19⟩,⟨⟨8,[11]⟩,3⟩,⟨⟨8,[11]⟩,19⟩,⟨⟨9,[8]⟩,18⟩,⟨⟨9,[9]⟩,19⟩,⟨⟨9,[10]⟩,20⟩,⟨⟨9,[11]⟩,21⟩,⟨⟨10,[9]⟩,12⟩,⟨⟨10,[9]⟩,14⟩,⟨⟨10,[10]⟩,4⟩,⟨⟨10,[10]⟩,21⟩,⟨⟨10,[11]⟩,12⟩,⟨⟨11,[1,10]⟩,11⟩,⟨⟨11,[1,10]⟩,13⟩,⟨⟨11,[2,9]⟩,8⟩,⟨⟨11,[2,9]⟩,10⟩,⟨⟨11,[2,11]⟩,8⟩,⟨⟨11,[3,10]⟩,3⟩,⟨⟨11,[3,10]⟩,19⟩,⟨⟨12,[4,3,10]⟩,11⟩,⟨⟨12,[4,3,10]⟩,13⟩,⟨⟨12,[4,3,10]⟩,18⟩,⟨⟨12,[5,2,9]⟩,11⟩,⟨⟨12,[5,2,9]⟩,13⟩,⟨⟨12,[5,2,9]⟩,18⟩,⟨⟨12,[5,2,11]⟩,11⟩,⟨⟨12,[5,2,11]⟩,13⟩,⟨⟨12,[6,1,10]⟩,7⟩,⟨⟨12,[6,1,10]⟩,9⟩,⟨⟨12,[7,3,10]⟩,0⟩,⟨⟨13,[4,3,10]⟩,2⟩,⟨⟨13,[5,2,9]⟩,3⟩,⟨⟨13,[5,2,11]⟩,4⟩,⟨⟨13,[6,1,10]⟩,5⟩,⟨⟨13,[7,3,10]⟩,6⟩,⟨⟨14,[4,3,10]⟩,18⟩,⟨⟨14,[5,2,9]⟩,11⟩,⟨⟨14,[5,2,9]⟩,13⟩,⟨⟨14,[6,1,10]⟩,18⟩,⟨⟨14,[7,3,10]⟩,18⟩,⟨⟨15,[4,3,10]⟩,7⟩,⟨⟨15,[5,2,9]⟩,8⟩,⟨⟨15,[6,1,10]⟩,9⟩,⟨⟨15,[7,3,10]⟩,10⟩,⟨⟨16,[4,3,10]⟩,11⟩,⟨⟨16,[5,2,9]⟩,12⟩,⟨⟨16,[6,1,10]⟩,13⟩,⟨⟨16,[7,3,10]⟩,14⟩,⟨⟨17,[4,3,10]⟩,13⟩,⟨⟨17,[5,2,9]⟩,12⟩,⟨⟨17,[6,1,10]⟩,13⟩,⟨⟨17,[7,3,10]⟩,12⟩,⟨⟨18,[5,2,9]⟩,12⟩,⟨⟨18,[7,3,10]⟩,12⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[15],[6],[7],[16],[17],[12],[13],[14],[18],[22,23,24],[20,21],[19],[25],[26],[27],[28,29],[30],[30],[30],[30],[30],[30],[31],[32],[32],[33],[33],[62,65,66],[5],[11],[37],[41],[42],[39,40],[44,45],[43],[54],[55],[49,50],[51],[52,53],[46,47,48],[56],[57],[57],[57],[58],[58],[58],[59],[59],[60],[60],[61],[8],[4],[36],[9],[10],[67],[68],[68],[69],[70],[71],[72],[73],[74],[63],[79,80],[75,77],[35],[64],[79,80],[75,77],[34],[76,78],[38]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 9=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<81 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 by_cases h24 : i<36
 · exact range_sound block24 i (by omega) h24 hi
 by_cases h36 : i<48
 · exact range_sound block36 i (by omega) h36 hi
 by_cases h48 : i<60
 · exact range_sound block48 i (by omega) h48 hi
 by_cases h60 : i<72
 · exact range_sound block60 i (by omega) h60 hi
 exact range_sound block72 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)

open Blc Blc.Floor40 Blc.Floor41 Blc.Term Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def lit17 : Term := .var 0
def lit18 : Term := .var 1
def lit13 : Term := .var 2
def lit15 : Term := .app lit17 lit17
def lit2 : Term := .app lit17 lit15
def lit14 : Term := .app lit15 lit18
def lit1 : Term := .lam lit2
def lit12 : Term := .app lit13 lit14
def lit11 : Term := .lam lit12
def lit10 : Term := .lam lit11
def lit8 : Term := .app lit17 lit10
def lit7 : Term := .lam lit8
def lit0 : Term := .app lit1 lit7
def filling : Nat → Term := fun p => Term.var 0
theorem ordered_code : ordered code = true := by decide +kernel
def model : Model P := codeModel (rankedCode code ordered_code) filling
theorem sub18 : model.term 18 = lit18 := model.var_eq 18 1 (by rfl)
theorem sub17 : model.term 17 = lit17 := model.var_eq 17 0 (by rfl)
theorem sub16 : model.term 16 = lit17 := model.var_eq 16 0 (by rfl)
theorem sub15 : model.term 15 = lit15 := by rw [model.app_eq 15 16 17 (by rfl), sub16, sub17]; rfl
theorem sub14 : model.term 14 = lit14 := by rw [model.app_eq 14 15 18 (by rfl), sub15, sub18]; rfl
theorem sub13 : model.term 13 = lit13 := model.var_eq 13 2 (by rfl)
theorem sub12 : model.term 12 = lit12 := by rw [model.app_eq 12 13 14 (by rfl), sub13, sub14]; rfl
theorem sub11 : model.term 11 = lit11 := by rw [model.lam_eq 11 12 (by rfl), sub12]; rfl
theorem sub10 : model.term 10 = lit10 := by rw [model.lam_eq 10 11 (by rfl), sub11]; rfl
theorem sub9 : model.term 9 = lit17 := model.var_eq 9 0 (by rfl)
theorem sub8 : model.term 8 = lit8 := by rw [model.app_eq 8 9 10 (by rfl), sub9, sub10]; rfl
theorem sub7 : model.term 7 = lit7 := by rw [model.lam_eq 7 8 (by rfl), sub8]; rfl
theorem sub6 : model.term 6 = lit17 := model.var_eq 6 0 (by rfl)
theorem sub5 : model.term 5 = lit17 := model.var_eq 5 0 (by rfl)
theorem sub4 : model.term 4 = lit15 := by rw [model.app_eq 4 5 6 (by rfl), sub5, sub6]; rfl
theorem sub3 : model.term 3 = lit17 := model.var_eq 3 0 (by rfl)
theorem sub2 : model.term 2 = lit2 := by rw [model.app_eq 2 3 4 (by rfl), sub3, sub4]; rfl
theorem sub1 : model.term 1 = lit1 := by rw [model.lam_eq 1 2 (by rfl), sub2]; rfl
theorem sub0 : model.term 0 = lit0 := by rw [model.app_eq 0 1 7 (by rfl), sub1, sub7]; rfl
theorem excluded : ¬ IsSelfInterpreter e604797727446 := by
 intro he
 have hp : replay [] e604797727446 = some (model.term 0) := by rw [sub0]; decide
 obtain ⟨h,hh⟩ := clocks_replay (rawCount he) hp
 exact regular_no_clock model closed root h hh
#print axioms excluded
end Certgen.R604797727446
