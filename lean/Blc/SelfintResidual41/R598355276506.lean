import Blc.Selfint40Evidence.CodeBridge
import Blc.SelfintCompact41.Base

set_option Elab.async false
namespace Certgen.R598355276506
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 7,.lam 2,.app 3 6,.app 4 5,.var 0,.var 0,.var 0,.lam 8,.app 9 10,.var 0,.lam 11,.lam 12,.app 13 14,.var 2,.app 15 18,.app 16 17,.var 0,.var 1,.var 0]
def values : Array (List AClo) := #[[⟨7,[]⟩],[⟨14,[7,3,15]⟩],[⟨17,[6,2,11]⟩,⟨17,[9,1,14]⟩],[⟨10,[13]⟩],[⟨10,[15]⟩],[⟨14,[6,2,11]⟩],[⟨18,[6,2,11]⟩,⟨18,[9,1,14]⟩],[⟨18,[8,4,14]⟩],[⟨6,[0]⟩],[⟨10,[11]⟩],[⟨14,[5,1,14]⟩],[⟨14,[8,4,14]⟩],[⟨14,[9,1,14]⟩],[⟨17,[8,4,14]⟩],[⟨5,[0]⟩],[⟨10,[14]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨7,[]⟩,0⟩],[⟨⟨14,[5,1,14]⟩,12⟩,⟨⟨14,[5,1,14]⟩,21⟩],[⟨⟨14,[6,2,11]⟩,12⟩,⟨⟨14,[6,2,11]⟩,21⟩],[⟨⟨14,[7,3,15]⟩,3⟩,⟨⟨14,[7,3,15]⟩,20⟩],[⟨⟨14,[8,4,14]⟩,0⟩],[⟨⟨14,[9,1,14]⟩,0⟩],[⟨⟨18,[5,1,14]⟩,19⟩],[⟨⟨18,[6,2,11]⟩,12⟩],[⟨⟨18,[8,4,14]⟩,3⟩],[⟨⟨18,[8,4,14]⟩,20⟩],[⟨⟨18,[9,1,14]⟩,21⟩],[⟨⟨17,[5,1,14]⟩,7⟩],[⟨⟨17,[6,2,11]⟩,8⟩],[⟨⟨17,[8,4,14]⟩,9⟩],[⟨⟨17,[8,4,14]⟩,10⟩],[⟨⟨17,[9,1,14]⟩,11⟩],[⟨⟨6,[0]⟩,0⟩],[⟨⟨5,[0]⟩,17⟩],[⟨⟨10,[10]⟩,12⟩,⟨⟨10,[10]⟩,21⟩],[⟨⟨10,[11]⟩,0⟩],[⟨⟨10,[12]⟩,0⟩],[⟨⟨10,[13]⟩,9⟩],[⟨⟨10,[13]⟩,10⟩],[⟨⟨10,[14]⟩,17⟩],[⟨⟨10,[15]⟩,17⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,17⟩,⟨⟨4,[0]⟩,18⟩,⟨⟨5,[0]⟩,2⟩,⟨⟨5,[0]⟩,5⟩,⟨⟨5,[0]⟩,6⟩,⟨⟨5,[0]⟩,24⟩,⟨⟨6,[0]⟩,14⟩,⟨⟨6,[0]⟩,15⟩,⟨⟨7,[]⟩,2⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,14⟩,⟨⟨7,[]⟩,15⟩,⟨⟨7,[]⟩,18⟩,⟨⟨7,[]⟩,24⟩,⟨⟨8,[10]⟩,12⟩,⟨⟨8,[10]⟩,21⟩,⟨⟨8,[11]⟩,0⟩,⟨⟨8,[12]⟩,0⟩,⟨⟨8,[13]⟩,9⟩,⟨⟨8,[13]⟩,10⟩,⟨⟨8,[14]⟩,17⟩,⟨⟨8,[15]⟩,17⟩,⟨⟨9,[10]⟩,19⟩,⟨⟨9,[11]⟩,20⟩,⟨⟨9,[12]⟩,21⟩,⟨⟨9,[13]⟩,22⟩,⟨⟨9,[13]⟩,23⟩,⟨⟨9,[14]⟩,24⟩,⟨⟨9,[15]⟩,25⟩,⟨⟨10,[11]⟩,13⟩,⟨⟨10,[11]⟩,16⟩,⟨⟨10,[14]⟩,4⟩,⟨⟨10,[14]⟩,25⟩,⟨⟨10,[15]⟩,22⟩,⟨⟨10,[15]⟩,23⟩,⟨⟨11,[1,14]⟩,3⟩,⟨⟨11,[1,14]⟩,20⟩,⟨⟨11,[2,11]⟩,8⟩,⟨⟨11,[2,11]⟩,11⟩,⟨⟨11,[3,15]⟩,9⟩,⟨⟨11,[3,15]⟩,10⟩,⟨⟨11,[4,14]⟩,17⟩,⟨⟨12,[5,1,14]⟩,12⟩,⟨⟨12,[5,1,14]⟩,21⟩,⟨⟨12,[6,2,11]⟩,12⟩,⟨⟨12,[6,2,11]⟩,21⟩,⟨⟨12,[7,3,15]⟩,3⟩,⟨⟨12,[7,3,15]⟩,20⟩,⟨⟨12,[8,4,14]⟩,0⟩,⟨⟨12,[9,1,14]⟩,0⟩,⟨⟨13,[5,1,14]⟩,2⟩,⟨⟨13,[6,2,11]⟩,3⟩,⟨⟨13,[7,3,15]⟩,4⟩,⟨⟨13,[8,4,14]⟩,5⟩,⟨⟨13,[9,1,14]⟩,6⟩,⟨⟨14,[5,1,14]⟩,19⟩,⟨⟨14,[6,2,11]⟩,12⟩,⟨⟨14,[8,4,14]⟩,3⟩,⟨⟨14,[8,4,14]⟩,20⟩,⟨⟨14,[9,1,14]⟩,21⟩,⟨⟨15,[5,1,14]⟩,7⟩,⟨⟨15,[6,2,11]⟩,8⟩,⟨⟨15,[8,4,14]⟩,9⟩,⟨⟨15,[8,4,14]⟩,10⟩,⟨⟨15,[9,1,14]⟩,11⟩,⟨⟨16,[5,1,14]⟩,12⟩,⟨⟨16,[6,2,11]⟩,13⟩,⟨⟨16,[8,4,14]⟩,14⟩,⟨⟨16,[8,4,14]⟩,15⟩,⟨⟨16,[9,1,14]⟩,16⟩,⟨⟨17,[8,4,14]⟩,22⟩,⟨⟨17,[8,4,14]⟩,23⟩,⟨⟨18,[6,2,11]⟩,13⟩,⟨⟨18,[9,1,14]⟩,13⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[16],[11],[12],[13],[17],[14],[15],[18,19],[20],[21],[22],[23],[24],[25],[26],[26],[27],[28],[29],[30],[31],[32],[59],[62],[63],[74],[75],[8],[36],[41],[42],[39,40],[45],[43],[44],[46,47],[53],[48],[49],[50],[51],[52],[54],[54],[55],[55],[56],[56],[57],[58],[5],[61],[35],[6],[7],[64],[65],[66],[67],[68],[69],[70],[71],[72],[73],[60],[76,77],[9],[10],[34],[37],[38],[76,77],[33]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 6=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<78 := hi
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
def lit18 : Term := .var 0
def lit17 : Term := .var 1
def lit13 : Term := .var 2
def lit3 : Term := .app lit18 lit18
def lit15 : Term := .app lit18 lit17
def lit2 : Term := .app lit3 lit18
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
theorem sub4 : model.term 4 = lit18 := model.var_eq 4 0 (by rfl)
theorem sub3 : model.term 3 = lit3 := by rw [model.app_eq 3 4 5 (by rfl), sub4, sub5]; rfl
theorem sub2 : model.term 2 = lit2 := by rw [model.app_eq 2 3 6 (by rfl), sub3, sub6]; rfl
theorem sub1 : model.term 1 = lit1 := by rw [model.lam_eq 1 2 (by rfl), sub2]; rfl
theorem sub0 : model.term 0 = lit0 := by rw [model.app_eq 0 1 7 (by rfl), sub1, sub7]; rfl
theorem excluded : ¬ IsSelfInterpreter e598355276506 := by
 intro he
 have hp : replay [] e598355276506 = some (model.term 0) := by rw [sub0]; decide
 obtain ⟨h,hh⟩ := clocks_replay (rawCount he) hp
 exact regular_no_clock model closed root h hh
#print axioms excluded
end Certgen.R598355276506
