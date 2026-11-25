import Blc.Selfint40Evidence.CodeBridge
import Blc.Selfint40Evidence.Base

namespace Certgen.R302887593670
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 34,.app 2 15,.lam 3,.app 4 13,.app 5 6,.var 0,.lam 7,.lam 8,.app 9 10,.var 2,.app 11 12,.var 0,.var 1,.lam 14,.var 1,.lam 16,.lam 17,.app 18 31,.lam 19,.app 20 29,.app 21 22,.var 0,.lam 23,.lam 24,.app 25 26,.var 2,.app 27 28,.var 0,.var 1,.lam 30,.var 1,.app 32 33,.var 0,.var 1,.lam 35,.lam 36,.app 37 46,.app 38 39,.var 0,.lam 40,.lam 41,.app 42 43,.var 2,.app 44 45,.var 0,.var 1,.lam 47,.var 1]
def values : Array (List AClo) := #[[⟨33,[2,1]⟩],[⟨6,[4]⟩,⟨22,[3,2,1]⟩],[⟨13,[4]⟩,⟨29,[3,2,1]⟩],[⟨31,[2,1]⟩],[⟨15,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨34,[]⟩,0⟩],[⟨⟨15,[]⟩,1⟩],[⟨⟨31,[2,1]⟩,1⟩],[⟨⟨29,[3,2,1]⟩,1⟩],[⟨⟨22,[3,2,1]⟩,4⟩],[⟨⟨13,[4]⟩,1⟩],[⟨⟨33,[2,1]⟩,5⟩],[⟨⟨6,[4]⟩,6⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[4]⟩,1⟩,⟨⟨4,[4]⟩,6⟩,⟨⟨5,[4]⟩,8⟩,⟨⟨13,[4]⟩,7⟩,⟨⟨14,[0,4]⟩,5⟩,⟨⟨15,[]⟩,5⟩,⟨⟨15,[]⟩,8⟩,⟨⟨16,[1]⟩,4⟩,⟨⟨16,[1]⟩,6⟩,⟨⟨17,[2,1]⟩,1⟩,⟨⟨18,[2,1]⟩,3⟩,⟨⟨19,[3,2,1]⟩,1⟩,⟨⟨20,[3,2,1]⟩,4⟩,⟨⟨21,[3,2,1]⟩,5⟩,⟨⟨29,[3,2,1]⟩,7⟩,⟨⟨30,[0,3,2,1]⟩,5⟩,⟨⟨31,[2,1]⟩,5⟩,⟨⟨32,[2,1]⟩,7⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[9],[7],[8],[10],[11],[12],[12],[13],[14],[15],[16],[19],[18],[19],[20],[6,17]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 9=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<21 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 exact range_sound block12 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)

open Blc Blc.Floor40 Blc.Term Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def lit44 : Term := .var 0
def lit47 : Term := .var 1
def lit42 : Term := .var 2
def lit46 : Term := .lam lit47
def lit43 : Term := .app lit44 lit47
def lit41 : Term := .app lit42 lit43
def lit40 : Term := .lam lit41
def lit39 : Term := .lam lit40
def lit37 : Term := .app lit44 lit39
def lit36 : Term := .app lit37 lit46
def lit35 : Term := .lam lit36
def lit34 : Term := .lam lit35
def lit17 : Term := .app lit35 lit43
def lit16 : Term := .lam lit17
def lit15 : Term := .lam lit16
def lit1 : Term := .app lit35 lit15
def lit0 : Term := .app lit1 lit34
def filling : Nat → Term := fun p => Term.var 0
theorem ordered_code : ordered code = true := by decide +kernel
def model : Model P := codeModel (rankedCode code ordered_code) filling
theorem sub47 : model.term 47 = lit47 := model.var_eq 47 1 (by rfl)
theorem sub46 : model.term 46 = lit46 := by rw [model.lam_eq 46 47 (by rfl), sub47]; rfl
theorem sub45 : model.term 45 = lit47 := model.var_eq 45 1 (by rfl)
theorem sub44 : model.term 44 = lit44 := model.var_eq 44 0 (by rfl)
theorem sub43 : model.term 43 = lit43 := by rw [model.app_eq 43 44 45 (by rfl), sub44, sub45]; rfl
theorem sub42 : model.term 42 = lit42 := model.var_eq 42 2 (by rfl)
theorem sub41 : model.term 41 = lit41 := by rw [model.app_eq 41 42 43 (by rfl), sub42, sub43]; rfl
theorem sub40 : model.term 40 = lit40 := by rw [model.lam_eq 40 41 (by rfl), sub41]; rfl
theorem sub39 : model.term 39 = lit39 := by rw [model.lam_eq 39 40 (by rfl), sub40]; rfl
theorem sub38 : model.term 38 = lit44 := model.var_eq 38 0 (by rfl)
theorem sub37 : model.term 37 = lit37 := by rw [model.app_eq 37 38 39 (by rfl), sub38, sub39]; rfl
theorem sub36 : model.term 36 = lit36 := by rw [model.app_eq 36 37 46 (by rfl), sub37, sub46]; rfl
theorem sub35 : model.term 35 = lit35 := by rw [model.lam_eq 35 36 (by rfl), sub36]; rfl
theorem sub34 : model.term 34 = lit34 := by rw [model.lam_eq 34 35 (by rfl), sub35]; rfl
theorem sub33 : model.term 33 = lit47 := model.var_eq 33 1 (by rfl)
theorem sub32 : model.term 32 = lit44 := model.var_eq 32 0 (by rfl)
theorem sub31 : model.term 31 = lit43 := by rw [model.app_eq 31 32 33 (by rfl), sub32, sub33]; rfl
theorem sub30 : model.term 30 = lit47 := model.var_eq 30 1 (by rfl)
theorem sub29 : model.term 29 = lit46 := by rw [model.lam_eq 29 30 (by rfl), sub30]; rfl
theorem sub28 : model.term 28 = lit47 := model.var_eq 28 1 (by rfl)
theorem sub27 : model.term 27 = lit44 := model.var_eq 27 0 (by rfl)
theorem sub26 : model.term 26 = lit43 := by rw [model.app_eq 26 27 28 (by rfl), sub27, sub28]; rfl
theorem sub25 : model.term 25 = lit42 := model.var_eq 25 2 (by rfl)
theorem sub24 : model.term 24 = lit41 := by rw [model.app_eq 24 25 26 (by rfl), sub25, sub26]; rfl
theorem sub23 : model.term 23 = lit40 := by rw [model.lam_eq 23 24 (by rfl), sub24]; rfl
theorem sub22 : model.term 22 = lit39 := by rw [model.lam_eq 22 23 (by rfl), sub23]; rfl
theorem sub21 : model.term 21 = lit44 := model.var_eq 21 0 (by rfl)
theorem sub20 : model.term 20 = lit37 := by rw [model.app_eq 20 21 22 (by rfl), sub21, sub22]; rfl
theorem sub19 : model.term 19 = lit36 := by rw [model.app_eq 19 20 29 (by rfl), sub20, sub29]; rfl
theorem sub18 : model.term 18 = lit35 := by rw [model.lam_eq 18 19 (by rfl), sub19]; rfl
theorem sub17 : model.term 17 = lit17 := by rw [model.app_eq 17 18 31 (by rfl), sub18, sub31]; rfl
theorem sub16 : model.term 16 = lit16 := by rw [model.lam_eq 16 17 (by rfl), sub17]; rfl
theorem sub15 : model.term 15 = lit15 := by rw [model.lam_eq 15 16 (by rfl), sub16]; rfl
theorem sub14 : model.term 14 = lit47 := model.var_eq 14 1 (by rfl)
theorem sub13 : model.term 13 = lit46 := by rw [model.lam_eq 13 14 (by rfl), sub14]; rfl
theorem sub12 : model.term 12 = lit47 := model.var_eq 12 1 (by rfl)
theorem sub11 : model.term 11 = lit44 := model.var_eq 11 0 (by rfl)
theorem sub10 : model.term 10 = lit43 := by rw [model.app_eq 10 11 12 (by rfl), sub11, sub12]; rfl
theorem sub9 : model.term 9 = lit42 := model.var_eq 9 2 (by rfl)
theorem sub8 : model.term 8 = lit41 := by rw [model.app_eq 8 9 10 (by rfl), sub9, sub10]; rfl
theorem sub7 : model.term 7 = lit40 := by rw [model.lam_eq 7 8 (by rfl), sub8]; rfl
theorem sub6 : model.term 6 = lit39 := by rw [model.lam_eq 6 7 (by rfl), sub7]; rfl
theorem sub5 : model.term 5 = lit44 := model.var_eq 5 0 (by rfl)
theorem sub4 : model.term 4 = lit37 := by rw [model.app_eq 4 5 6 (by rfl), sub5, sub6]; rfl
theorem sub3 : model.term 3 = lit36 := by rw [model.app_eq 3 4 13 (by rfl), sub4, sub13]; rfl
theorem sub2 : model.term 2 = lit35 := by rw [model.lam_eq 2 3 (by rfl), sub3]; rfl
theorem sub1 : model.term 1 = lit1 := by rw [model.app_eq 1 2 15 (by rfl), sub2, sub15]; rfl
theorem sub0 : model.term 0 = lit0 := by rw [model.app_eq 0 1 34 (by rfl), sub1, sub34]; rfl
theorem excluded : ¬ IsSelfInterpreter e302887593670 := by
 intro he
 have hp : replay [[],[]] e302887593670 = some (model.term 0) := by rw [sub0]; decide
 obtain ⟨h,hh⟩ := clocks_replay (rawCount he) hp
 exact regular_no_clock model closed root h hh
#print axioms excluded
end Certgen.R302887593670
