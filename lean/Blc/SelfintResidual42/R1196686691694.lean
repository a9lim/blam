import Blc.SelfintCompact42.Base
import Blc.SelfintResidual42.CodeBridge

set_option Elab.async false
namespace Certgen.R1196686691694
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 22,.app 2 21,.app 3 9,.lam 4,.app 5 8,.app 6 7,.var 0,.var 0,.var 0,.lam 10,.lam 11,.lam 12,.app 13 20,.app 14 19,.app 15 16,.var 1,.app 17 18,.var 0,.var 0,.var 1,.var 2,.opaque,.lam 23,.app 24 29,.app 25 26,.var 0,.lam 27,.lam 28,.var 1,.lam 30,.app 31 36,.app 32 33,.var 0,.lam 34,.lam 35,.var 1,.lam 37,.app 38 43,.app 39 40,.var 0,.lam 41,.lam 42,.var 0,.lam 44,.app 45 50,.app 46 47,.var 0,.lam 48,.lam 49,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨8,[2]⟩,⟨19,[1,0,3]⟩],[⟨20,[1,0,3]⟩,⟨21,[]⟩],[⟨9,[]⟩],[⟨7,[2]⟩,⟨16,[1,0,3]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨22,[]⟩,0⟩],[⟨⟨21,[]⟩,1⟩],[⟨⟨20,[1,0,3]⟩,1⟩],[⟨⟨19,[1,0,3]⟩,3⟩],[⟨⟨16,[1,0,3]⟩,4⟩],[⟨⟨9,[]⟩,2⟩],[⟨⟨8,[2]⟩,2⟩],[⟨⟨7,[2]⟩,7⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,6⟩,⟨⟨4,[2]⟩,2⟩,⟨⟨5,[2]⟩,7⟩,⟨⟨6,[2]⟩,8⟩,⟨⟨8,[2]⟩,5⟩,⟨⟨9,[]⟩,5⟩,⟨⟨9,[]⟩,8⟩,⟨⟨10,[3]⟩,4⟩,⟨⟨10,[3]⟩,7⟩,⟨⟨11,[0,3]⟩,2⟩,⟨⟨11,[0,3]⟩,3⟩,⟨⟨12,[1,0,3]⟩,1⟩,⟨⟨13,[1,0,3]⟩,3⟩,⟨⟨14,[1,0,3]⟩,4⟩,⟨⟨15,[1,0,3]⟩,5⟩,⟨⟨19,[1,0,3]⟩,5⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[6],[9],[8],[10],[11],[13],[12],[14],[14],[15],[16],[17],[7,18],[7,18]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 7=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<19 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 exact range_sound block12 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)

open Blc Blc.Floor42 Blc.Term Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def lit46 : Term := .var 0
def lit49 : Term := .var 1
def lit20 : Term := .var 2
def lit41 : Term := .lam lit46
def lit48 : Term := .lam lit49
def lit16 : Term := .app lit46 lit46
def lit40 : Term := .lam lit41
def lit50 : Term := .var 4
def lit47 : Term := .lam lit48
def lit4 : Term := .app lit16 lit46
def lit38 : Term := .app lit46 lit40
def lit14 : Term := .app lit49 lit16
def lit45 : Term := .app lit46 lit47
def lit3 : Term := .lam lit4
def lit13 : Term := .app lit14 lit49
def lit44 : Term := .app lit45 lit50
def lit43 : Term := .lam lit44
def lit12 : Term := .app lit13 lit20
def lit11 : Term := .lam lit12
def lit10 : Term := .lam lit11
def lit9 : Term := .lam lit10
def lit37 : Term := .app lit38 lit43
def lit36 : Term := .lam lit37
def lit2 : Term := .app lit3 lit9
def lit1 : Term := .app lit2 lit49
def lit30 : Term := .app lit45 lit36
def lit29 : Term := .lam lit30
def lit23 : Term := .app lit45 lit29
def lit22 : Term := .lam lit23
def lit0 : Term := .app lit1 lit22
def filling : Nat → Term := fun p => if p = 21 then Term.var 1 else if p = 50 then Term.var 4 else Term.var 0
theorem ordered_code : ordered code = true := by decide +kernel
def model : Model P := codeModel (rankedCode code ordered_code) filling
theorem sub50 : model.term 50 = lit50 := (opaqueTerm (rankedCode code ordered_code) filling (p := 50) (by rfl)).trans (by rfl)
theorem sub49 : model.term 49 = lit49 := model.var_eq 49 1 (by rfl)
theorem sub48 : model.term 48 = lit48 := by rw [model.lam_eq 48 49 (by rfl), sub49]; rfl
theorem sub47 : model.term 47 = lit47 := by rw [model.lam_eq 47 48 (by rfl), sub48]; rfl
theorem sub46 : model.term 46 = lit46 := model.var_eq 46 0 (by rfl)
theorem sub45 : model.term 45 = lit45 := by rw [model.app_eq 45 46 47 (by rfl), sub46, sub47]; rfl
theorem sub44 : model.term 44 = lit44 := by rw [model.app_eq 44 45 50 (by rfl), sub45, sub50]; rfl
theorem sub43 : model.term 43 = lit43 := by rw [model.lam_eq 43 44 (by rfl), sub44]; rfl
theorem sub42 : model.term 42 = lit46 := model.var_eq 42 0 (by rfl)
theorem sub41 : model.term 41 = lit41 := by rw [model.lam_eq 41 42 (by rfl), sub42]; rfl
theorem sub40 : model.term 40 = lit40 := by rw [model.lam_eq 40 41 (by rfl), sub41]; rfl
theorem sub39 : model.term 39 = lit46 := model.var_eq 39 0 (by rfl)
theorem sub38 : model.term 38 = lit38 := by rw [model.app_eq 38 39 40 (by rfl), sub39, sub40]; rfl
theorem sub37 : model.term 37 = lit37 := by rw [model.app_eq 37 38 43 (by rfl), sub38, sub43]; rfl
theorem sub36 : model.term 36 = lit36 := by rw [model.lam_eq 36 37 (by rfl), sub37]; rfl
theorem sub35 : model.term 35 = lit49 := model.var_eq 35 1 (by rfl)
theorem sub34 : model.term 34 = lit48 := by rw [model.lam_eq 34 35 (by rfl), sub35]; rfl
theorem sub33 : model.term 33 = lit47 := by rw [model.lam_eq 33 34 (by rfl), sub34]; rfl
theorem sub32 : model.term 32 = lit46 := model.var_eq 32 0 (by rfl)
theorem sub31 : model.term 31 = lit45 := by rw [model.app_eq 31 32 33 (by rfl), sub32, sub33]; rfl
theorem sub30 : model.term 30 = lit30 := by rw [model.app_eq 30 31 36 (by rfl), sub31, sub36]; rfl
theorem sub29 : model.term 29 = lit29 := by rw [model.lam_eq 29 30 (by rfl), sub30]; rfl
theorem sub28 : model.term 28 = lit49 := model.var_eq 28 1 (by rfl)
theorem sub27 : model.term 27 = lit48 := by rw [model.lam_eq 27 28 (by rfl), sub28]; rfl
theorem sub26 : model.term 26 = lit47 := by rw [model.lam_eq 26 27 (by rfl), sub27]; rfl
theorem sub25 : model.term 25 = lit46 := model.var_eq 25 0 (by rfl)
theorem sub24 : model.term 24 = lit45 := by rw [model.app_eq 24 25 26 (by rfl), sub25, sub26]; rfl
theorem sub23 : model.term 23 = lit23 := by rw [model.app_eq 23 24 29 (by rfl), sub24, sub29]; rfl
theorem sub22 : model.term 22 = lit22 := by rw [model.lam_eq 22 23 (by rfl), sub23]; rfl
theorem sub21 : model.term 21 = lit49 := (opaqueTerm (rankedCode code ordered_code) filling (p := 21) (by rfl)).trans (by rfl)
theorem sub20 : model.term 20 = lit20 := model.var_eq 20 2 (by rfl)
theorem sub19 : model.term 19 = lit49 := model.var_eq 19 1 (by rfl)
theorem sub18 : model.term 18 = lit46 := model.var_eq 18 0 (by rfl)
theorem sub17 : model.term 17 = lit46 := model.var_eq 17 0 (by rfl)
theorem sub16 : model.term 16 = lit16 := by rw [model.app_eq 16 17 18 (by rfl), sub17, sub18]; rfl
theorem sub15 : model.term 15 = lit49 := model.var_eq 15 1 (by rfl)
theorem sub14 : model.term 14 = lit14 := by rw [model.app_eq 14 15 16 (by rfl), sub15, sub16]; rfl
theorem sub13 : model.term 13 = lit13 := by rw [model.app_eq 13 14 19 (by rfl), sub14, sub19]; rfl
theorem sub12 : model.term 12 = lit12 := by rw [model.app_eq 12 13 20 (by rfl), sub13, sub20]; rfl
theorem sub11 : model.term 11 = lit11 := by rw [model.lam_eq 11 12 (by rfl), sub12]; rfl
theorem sub10 : model.term 10 = lit10 := by rw [model.lam_eq 10 11 (by rfl), sub11]; rfl
theorem sub9 : model.term 9 = lit9 := by rw [model.lam_eq 9 10 (by rfl), sub10]; rfl
theorem sub8 : model.term 8 = lit46 := model.var_eq 8 0 (by rfl)
theorem sub7 : model.term 7 = lit46 := model.var_eq 7 0 (by rfl)
theorem sub6 : model.term 6 = lit46 := model.var_eq 6 0 (by rfl)
theorem sub5 : model.term 5 = lit16 := by rw [model.app_eq 5 6 7 (by rfl), sub6, sub7]; rfl
theorem sub4 : model.term 4 = lit4 := by rw [model.app_eq 4 5 8 (by rfl), sub5, sub8]; rfl
theorem sub3 : model.term 3 = lit3 := by rw [model.lam_eq 3 4 (by rfl), sub4]; rfl
theorem sub2 : model.term 2 = lit2 := by rw [model.app_eq 2 3 9 (by rfl), sub3, sub9]; rfl
theorem sub1 : model.term 1 = lit1 := by rw [model.app_eq 1 2 21 (by rfl), sub2, sub21]; rfl
theorem sub0 : model.term 0 = lit0 := by rw [model.app_eq 0 1 22 (by rfl), sub1, sub22]; rfl
theorem excluded : ¬ IsSelfInterpreter e1196686691694 := by
 intro he
 have hp : replay [] (call e1196686691694 (.var 1) (.lam (.var 0)) (.var 0) []) = some (model.term 0) := by rw [sub0]; decide
 obtain ⟨h,hh⟩ := clocks_replay (inputCount (k := 0) he (by decide) (by decide)) hp
 exact regular_no_clock model closed root h hh
#print axioms excluded
end Certgen.R1196686691694
