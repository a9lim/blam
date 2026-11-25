import Blc.Selfint40Evidence.CodeBridge
import Blc.Selfint40Evidence.Base

namespace Certgen.R302888259386
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 71,.app 2 62,.app 3 25,.app 4 22,.app 5 9,.lam 6,.app 7 8,.var 0,.var 0,.lam 10,.app 11 15,.app 12 13,.var 0,.lam 14,.var 1,.lam 16,.lam 17,.app 18 19,.var 2,.app 20 21,.var 1,.var 0,.lam 23,.lam 24,.var 1,.lam 26,.app 27 32,.app 28 29,.var 0,.lam 30,.lam 31,.var 1,.lam 33,.app 34 39,.app 35 36,.var 0,.lam 37,.lam 38,.var 1,.lam 40,.app 41 46,.app 42 43,.var 0,.lam 44,.lam 45,.var 0,.lam 47,.app 48 53,.app 49 50,.var 0,.lam 51,.lam 52,.var 1,.app 54 58,.lam 55,.app 56 57,.var 0,.var 0,.lam 59,.app 60 61,.var 0,.var 0,.app 63 67,.lam 64,.app 65 66,.var 0,.var 0,.lam 68,.app 69 70,.var 0,.var 0,.lam 72,.var 0]
def values : Array (List AClo) := #[[⟨13,[15]⟩],[⟨19,[5,4,15]⟩],[⟨21,[5,4,18]⟩],[⟨25,[]⟩],[⟨13,[14]⟩,⟨13,[16]⟩],[⟨15,[14]⟩,⟨15,[16]⟩],[⟨62,[]⟩],[⟨13,[17]⟩],[⟨71,[]⟩],[⟨15,[17]⟩],[⟨9,[]⟩],[⟨67,[]⟩],[⟨66,[11]⟩],[⟨70,[12]⟩,⟨70,[13]⟩],[⟨15,[15]⟩,⟨15,[18]⟩],[⟨13,[18]⟩],[⟨19,[5,4,18]⟩],[⟨22,[]⟩],[⟨8,[10]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨71,[]⟩,0⟩],[⟨⟨62,[]⟩,1⟩],[⟨⟨15,[14]⟩,7⟩,⟨⟨15,[14]⟩,17⟩],[⟨⟨15,[15]⟩,7⟩],[⟨⟨15,[16]⟩,7⟩,⟨⟨15,[16]⟩,17⟩],[⟨⟨15,[17]⟩,16⟩],[⟨⟨15,[18]⟩,17⟩],[⟨⟨13,[14]⟩,3⟩],[⟨⟨13,[15]⟩,4⟩],[⟨⟨13,[16]⟩,5⟩],[⟨⟨13,[17]⟩,6⟩],[⟨⟨13,[18]⟩,7⟩],[⟨⟨19,[5,4,15]⟩,7⟩,⟨⟨19,[5,4,15]⟩,17⟩],[⟨⟨19,[5,4,18]⟩,7⟩,⟨⟨19,[5,4,18]⟩,17⟩],[⟨⟨21,[5,4,18]⟩,10⟩],[⟨⟨25,[]⟩,2⟩],[⟨⟨22,[]⟩,16⟩],[⟨⟨9,[]⟩,17⟩],[⟨⟨8,[10]⟩,17⟩],[⟨⟨67,[]⟩,0⟩],[⟨⟨66,[11]⟩,0⟩],[⟨⟨70,[12]⟩,0⟩],[⟨⟨70,[13]⟩,0⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,16⟩,⟨⟨4,[]⟩,17⟩,⟨⟨5,[]⟩,18⟩,⟨⟨6,[10]⟩,17⟩,⟨⟨7,[10]⟩,19⟩,⟨⟨8,[10]⟩,4⟩,⟨⟨8,[10]⟩,7⟩,⟨⟨8,[10]⟩,12⟩,⟨⟨8,[10]⟩,14⟩,⟨⟨8,[10]⟩,17⟩,⟨⟨9,[]⟩,4⟩,⟨⟨9,[]⟩,7⟩,⟨⟨9,[]⟩,12⟩,⟨⟨9,[]⟩,14⟩,⟨⟨9,[]⟩,17⟩,⟨⟨9,[]⟩,19⟩,⟨⟨10,[14]⟩,7⟩,⟨⟨10,[14]⟩,17⟩,⟨⟨10,[15]⟩,7⟩,⟨⟨10,[16]⟩,7⟩,⟨⟨10,[16]⟩,17⟩,⟨⟨10,[17]⟩,16⟩,⟨⟨10,[18]⟩,17⟩,⟨⟨11,[14]⟩,3⟩,⟨⟨11,[15]⟩,4⟩,⟨⟨11,[16]⟩,5⟩,⟨⟨11,[17]⟩,6⟩,⟨⟨11,[18]⟩,7⟩,⟨⟨12,[14]⟩,8⟩,⟨⟨12,[15]⟩,9⟩,⟨⟨12,[16]⟩,10⟩,⟨⟨12,[17]⟩,11⟩,⟨⟨12,[18]⟩,12⟩,⟨⟨13,[14]⟩,15⟩,⟨⟨13,[16]⟩,15⟩,⟨⟨13,[17]⟩,16⟩,⟨⟨13,[18]⟩,9⟩,⟨⟨13,[18]⟩,13⟩,⟨⟨14,[0,18]⟩,4⟩,⟨⟨14,[1,18]⟩,7⟩,⟨⟨14,[1,18]⟩,17⟩,⟨⟨14,[2,14]⟩,10⟩,⟨⟨14,[2,16]⟩,10⟩,⟨⟨14,[3,17]⟩,2⟩,⟨⟨15,[15]⟩,8⟩,⟨⟨15,[15]⟩,10⟩,⟨⟨15,[18]⟩,8⟩,⟨⟨15,[18]⟩,10⟩,⟨⟨16,[4,15]⟩,3⟩,⟨⟨16,[4,15]⟩,5⟩,⟨⟨16,[4,18]⟩,3⟩,⟨⟨16,[4,18]⟩,5⟩,⟨⟨17,[5,4,15]⟩,7⟩,⟨⟨17,[5,4,15]⟩,17⟩,⟨⟨17,[5,4,18]⟩,7⟩,⟨⟨17,[5,4,18]⟩,17⟩,⟨⟨18,[5,4,15]⟩,13⟩,⟨⟨18,[5,4,18]⟩,14⟩,⟨⟨19,[5,4,18]⟩,10⟩,⟨⟨20,[5,4,18]⟩,15⟩,⟨⟨22,[]⟩,2⟩,⟨⟨22,[]⟩,11⟩,⟨⟨23,[6]⟩,1⟩,⟨⟨23,[7]⟩,6⟩,⟨⟨24,[8,6]⟩,0⟩,⟨⟨24,[9,7]⟩,16⟩,⟨⟨62,[]⟩,0⟩,⟨⟨63,[]⟩,20⟩,⟨⟨64,[11]⟩,0⟩,⟨⟨65,[11]⟩,21⟩,⟨⟨66,[11]⟩,22⟩,⟨⟨66,[11]⟩,23⟩,⟨⟨67,[]⟩,21⟩,⟨⟨67,[]⟩,22⟩,⟨⟨67,[]⟩,23⟩,⟨⟨68,[12]⟩,0⟩,⟨⟨68,[13]⟩,0⟩,⟨⟨69,[12]⟩,22⟩,⟨⟨69,[13]⟩,23⟩,⟨⟨70,[12]⟩,23⟩,⟨⟨70,[13]⟩,23⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[6],[7],[18],[13],[14],[15],[16],[17],[19],[20],[21],[22,23],[24],[25],[26],[26],[27],[28],[28],[29],[30],[31],[32],[33],[34],[35],[47,49],[39],[61],[64],[10],[44],[45],[46],[41],[42,43],[8],[9],[12],[48,50],[61],[63],[51],[52],[53],[54],[55,56],[55,56],[57,58],[57,58],[59],[59],[60],[60],[40],[11],[62],[36,37],[65],[66],[67],[68],[69],[38],[70],[71],[72],[75],[76],[77],[78],[79],[79],[80],[81],[73],[82,83],[74],[82,83]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 12=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<84 := hi
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

open Blc Blc.Floor40 Blc.Term Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def lit72 : Term := .var 0
def lit52 : Term := .var 1
def lit18 : Term := .var 2
def lit71 : Term := .lam lit72
def lit51 : Term := .lam lit52
def lit68 : Term := .app lit72 lit72
def lit43 : Term := .lam lit71
def lit19 : Term := .app lit52 lit72
def lit50 : Term := .lam lit51
def lit67 : Term := .lam lit68
def lit11 : Term := .app lit72 lit51
def lit41 : Term := .app lit72 lit43
def lit48 : Term := .app lit72 lit50
def lit17 : Term := .app lit18 lit19
def lit16 : Term := .lam lit17
def lit15 : Term := .lam lit16
def lit62 : Term := .app lit67 lit67
def lit10 : Term := .app lit11 lit15
def lit9 : Term := .lam lit10
def lit47 : Term := .app lit48 lit62
def lit46 : Term := .lam lit47
def lit4 : Term := .app lit67 lit9
def lit40 : Term := .app lit41 lit46
def lit39 : Term := .lam lit40
def lit3 : Term := .app lit4 lit50
def lit33 : Term := .app lit48 lit39
def lit32 : Term := .lam lit33
def lit26 : Term := .app lit48 lit32
def lit25 : Term := .lam lit26
def lit2 : Term := .app lit3 lit25
def lit1 : Term := .app lit2 lit62
def lit0 : Term := .app lit1 lit71
def filling : Nat → Term := fun p => Term.var 0
theorem ordered_code : ordered code = true := by decide +kernel
def model : Model P := codeModel (rankedCode code ordered_code) filling
theorem sub72 : model.term 72 = lit72 := model.var_eq 72 0 (by rfl)
theorem sub71 : model.term 71 = lit71 := by rw [model.lam_eq 71 72 (by rfl), sub72]; rfl
theorem sub70 : model.term 70 = lit72 := model.var_eq 70 0 (by rfl)
theorem sub69 : model.term 69 = lit72 := model.var_eq 69 0 (by rfl)
theorem sub68 : model.term 68 = lit68 := by rw [model.app_eq 68 69 70 (by rfl), sub69, sub70]; rfl
theorem sub67 : model.term 67 = lit67 := by rw [model.lam_eq 67 68 (by rfl), sub68]; rfl
theorem sub66 : model.term 66 = lit72 := model.var_eq 66 0 (by rfl)
theorem sub65 : model.term 65 = lit72 := model.var_eq 65 0 (by rfl)
theorem sub64 : model.term 64 = lit68 := by rw [model.app_eq 64 65 66 (by rfl), sub65, sub66]; rfl
theorem sub63 : model.term 63 = lit67 := by rw [model.lam_eq 63 64 (by rfl), sub64]; rfl
theorem sub62 : model.term 62 = lit62 := by rw [model.app_eq 62 63 67 (by rfl), sub63, sub67]; rfl
theorem sub61 : model.term 61 = lit72 := model.var_eq 61 0 (by rfl)
theorem sub60 : model.term 60 = lit72 := model.var_eq 60 0 (by rfl)
theorem sub59 : model.term 59 = lit68 := by rw [model.app_eq 59 60 61 (by rfl), sub60, sub61]; rfl
theorem sub58 : model.term 58 = lit67 := by rw [model.lam_eq 58 59 (by rfl), sub59]; rfl
theorem sub57 : model.term 57 = lit72 := model.var_eq 57 0 (by rfl)
theorem sub56 : model.term 56 = lit72 := model.var_eq 56 0 (by rfl)
theorem sub55 : model.term 55 = lit68 := by rw [model.app_eq 55 56 57 (by rfl), sub56, sub57]; rfl
theorem sub54 : model.term 54 = lit67 := by rw [model.lam_eq 54 55 (by rfl), sub55]; rfl
theorem sub53 : model.term 53 = lit62 := by rw [model.app_eq 53 54 58 (by rfl), sub54, sub58]; rfl
theorem sub52 : model.term 52 = lit52 := model.var_eq 52 1 (by rfl)
theorem sub51 : model.term 51 = lit51 := by rw [model.lam_eq 51 52 (by rfl), sub52]; rfl
theorem sub50 : model.term 50 = lit50 := by rw [model.lam_eq 50 51 (by rfl), sub51]; rfl
theorem sub49 : model.term 49 = lit72 := model.var_eq 49 0 (by rfl)
theorem sub48 : model.term 48 = lit48 := by rw [model.app_eq 48 49 50 (by rfl), sub49, sub50]; rfl
theorem sub47 : model.term 47 = lit47 := by rw [model.app_eq 47 48 53 (by rfl), sub48, sub53]; rfl
theorem sub46 : model.term 46 = lit46 := by rw [model.lam_eq 46 47 (by rfl), sub47]; rfl
theorem sub45 : model.term 45 = lit72 := model.var_eq 45 0 (by rfl)
theorem sub44 : model.term 44 = lit71 := by rw [model.lam_eq 44 45 (by rfl), sub45]; rfl
theorem sub43 : model.term 43 = lit43 := by rw [model.lam_eq 43 44 (by rfl), sub44]; rfl
theorem sub42 : model.term 42 = lit72 := model.var_eq 42 0 (by rfl)
theorem sub41 : model.term 41 = lit41 := by rw [model.app_eq 41 42 43 (by rfl), sub42, sub43]; rfl
theorem sub40 : model.term 40 = lit40 := by rw [model.app_eq 40 41 46 (by rfl), sub41, sub46]; rfl
theorem sub39 : model.term 39 = lit39 := by rw [model.lam_eq 39 40 (by rfl), sub40]; rfl
theorem sub38 : model.term 38 = lit52 := model.var_eq 38 1 (by rfl)
theorem sub37 : model.term 37 = lit51 := by rw [model.lam_eq 37 38 (by rfl), sub38]; rfl
theorem sub36 : model.term 36 = lit50 := by rw [model.lam_eq 36 37 (by rfl), sub37]; rfl
theorem sub35 : model.term 35 = lit72 := model.var_eq 35 0 (by rfl)
theorem sub34 : model.term 34 = lit48 := by rw [model.app_eq 34 35 36 (by rfl), sub35, sub36]; rfl
theorem sub33 : model.term 33 = lit33 := by rw [model.app_eq 33 34 39 (by rfl), sub34, sub39]; rfl
theorem sub32 : model.term 32 = lit32 := by rw [model.lam_eq 32 33 (by rfl), sub33]; rfl
theorem sub31 : model.term 31 = lit52 := model.var_eq 31 1 (by rfl)
theorem sub30 : model.term 30 = lit51 := by rw [model.lam_eq 30 31 (by rfl), sub31]; rfl
theorem sub29 : model.term 29 = lit50 := by rw [model.lam_eq 29 30 (by rfl), sub30]; rfl
theorem sub28 : model.term 28 = lit72 := model.var_eq 28 0 (by rfl)
theorem sub27 : model.term 27 = lit48 := by rw [model.app_eq 27 28 29 (by rfl), sub28, sub29]; rfl
theorem sub26 : model.term 26 = lit26 := by rw [model.app_eq 26 27 32 (by rfl), sub27, sub32]; rfl
theorem sub25 : model.term 25 = lit25 := by rw [model.lam_eq 25 26 (by rfl), sub26]; rfl
theorem sub24 : model.term 24 = lit52 := model.var_eq 24 1 (by rfl)
theorem sub23 : model.term 23 = lit51 := by rw [model.lam_eq 23 24 (by rfl), sub24]; rfl
theorem sub22 : model.term 22 = lit50 := by rw [model.lam_eq 22 23 (by rfl), sub23]; rfl
theorem sub21 : model.term 21 = lit72 := model.var_eq 21 0 (by rfl)
theorem sub20 : model.term 20 = lit52 := model.var_eq 20 1 (by rfl)
theorem sub19 : model.term 19 = lit19 := by rw [model.app_eq 19 20 21 (by rfl), sub20, sub21]; rfl
theorem sub18 : model.term 18 = lit18 := model.var_eq 18 2 (by rfl)
theorem sub17 : model.term 17 = lit17 := by rw [model.app_eq 17 18 19 (by rfl), sub18, sub19]; rfl
theorem sub16 : model.term 16 = lit16 := by rw [model.lam_eq 16 17 (by rfl), sub17]; rfl
theorem sub15 : model.term 15 = lit15 := by rw [model.lam_eq 15 16 (by rfl), sub16]; rfl
theorem sub14 : model.term 14 = lit52 := model.var_eq 14 1 (by rfl)
theorem sub13 : model.term 13 = lit51 := by rw [model.lam_eq 13 14 (by rfl), sub14]; rfl
theorem sub12 : model.term 12 = lit72 := model.var_eq 12 0 (by rfl)
theorem sub11 : model.term 11 = lit11 := by rw [model.app_eq 11 12 13 (by rfl), sub12, sub13]; rfl
theorem sub10 : model.term 10 = lit10 := by rw [model.app_eq 10 11 15 (by rfl), sub11, sub15]; rfl
theorem sub9 : model.term 9 = lit9 := by rw [model.lam_eq 9 10 (by rfl), sub10]; rfl
theorem sub8 : model.term 8 = lit72 := model.var_eq 8 0 (by rfl)
theorem sub7 : model.term 7 = lit72 := model.var_eq 7 0 (by rfl)
theorem sub6 : model.term 6 = lit68 := by rw [model.app_eq 6 7 8 (by rfl), sub7, sub8]; rfl
theorem sub5 : model.term 5 = lit67 := by rw [model.lam_eq 5 6 (by rfl), sub6]; rfl
theorem sub4 : model.term 4 = lit4 := by rw [model.app_eq 4 5 9 (by rfl), sub5, sub9]; rfl
theorem sub3 : model.term 3 = lit3 := by rw [model.app_eq 3 4 22 (by rfl), sub4, sub22]; rfl
theorem sub2 : model.term 2 = lit2 := by rw [model.app_eq 2 3 25 (by rfl), sub3, sub25]; rfl
theorem sub1 : model.term 1 = lit1 := by rw [model.app_eq 1 2 62 (by rfl), sub2, sub62]; rfl
theorem sub0 : model.term 0 = lit0 := by rw [model.app_eq 0 1 71 (by rfl), sub1, sub71]; rfl
theorem excluded : ¬ IsSelfInterpreter e302888259386 := by
 intro he
 have hp : replay [] (call e302888259386 (.lam (.lam (.var 1))) (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.lam (.var 0))]) = some (model.term 0) := by rw [sub0]; decide
 obtain ⟨h,hh⟩ := clocks_replay (inputCount (k := 4) he (by decide) (by decide)) hp
 exact regular_no_clock model closed root h hh
#print axioms excluded
end Certgen.R302888259386
