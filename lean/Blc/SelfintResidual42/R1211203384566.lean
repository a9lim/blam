import Blc.SelfintResidual42.CodeBridge
import Blc.SelfintResidual42.R1211203384566Checks
import Blc.SelfintResidual42.R1211203384566Data

set_option Elab.async false
namespace Certgen.R1211203384566
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Floor42 Blc.Term Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def lit45 : Term := .var 0
def lit48 : Term := .var 1
def lit18 : Term := .var 2
def lit40 : Term := .lam lit45
def lit15 : Term := .var 3
def lit47 : Term := .lam lit48
def lit4 : Term := .app lit45 lit45
def lit39 : Term := .lam lit40
def lit49 : Term := .var 4
def lit14 : Term := .lam lit15
def lit46 : Term := .lam lit47
def lit3 : Term := .lam lit4
def lit17 : Term := .app lit18 lit48
def lit37 : Term := .app lit45 lit39
def lit12 : Term := .app lit45 lit14
def lit44 : Term := .app lit45 lit46
def lit11 : Term := .app lit12 lit45
def lit43 : Term := .app lit44 lit49
def lit42 : Term := .lam lit43
def lit10 : Term := .app lit11 lit17
def lit9 : Term := .lam lit10
def lit8 : Term := .lam lit9
def lit7 : Term := .lam lit8
def lit36 : Term := .app lit37 lit42
def lit35 : Term := .lam lit36
def lit2 : Term := .app lit3 lit7
def lit1 : Term := .app lit2 lit48
def lit29 : Term := .app lit44 lit35
def lit28 : Term := .lam lit29
def lit22 : Term := .app lit44 lit28
def lit21 : Term := .lam lit22
def lit0 : Term := .app lit1 lit21
def filling : Nat → Term := fun p => if p = 20 then Term.var 1 else if p = 49 then Term.var 4 else Term.var 0
theorem ordered_code : ordered code = true := by decide +kernel
def model : Model P := codeModel (rankedCode code ordered_code) filling
theorem sub49 : model.term 49 = lit49 := (opaqueTerm (rankedCode code ordered_code) filling (p := 49) (by rfl)).trans (by rfl)
theorem sub48 : model.term 48 = lit48 := model.var_eq 48 1 (by rfl)
theorem sub47 : model.term 47 = lit47 := by rw [model.lam_eq 47 48 (by rfl), sub48]; rfl
theorem sub46 : model.term 46 = lit46 := by rw [model.lam_eq 46 47 (by rfl), sub47]; rfl
theorem sub45 : model.term 45 = lit45 := model.var_eq 45 0 (by rfl)
theorem sub44 : model.term 44 = lit44 := by rw [model.app_eq 44 45 46 (by rfl), sub45, sub46]; rfl
theorem sub43 : model.term 43 = lit43 := by rw [model.app_eq 43 44 49 (by rfl), sub44, sub49]; rfl
theorem sub42 : model.term 42 = lit42 := by rw [model.lam_eq 42 43 (by rfl), sub43]; rfl
theorem sub41 : model.term 41 = lit45 := model.var_eq 41 0 (by rfl)
theorem sub40 : model.term 40 = lit40 := by rw [model.lam_eq 40 41 (by rfl), sub41]; rfl
theorem sub39 : model.term 39 = lit39 := by rw [model.lam_eq 39 40 (by rfl), sub40]; rfl
theorem sub38 : model.term 38 = lit45 := model.var_eq 38 0 (by rfl)
theorem sub37 : model.term 37 = lit37 := by rw [model.app_eq 37 38 39 (by rfl), sub38, sub39]; rfl
theorem sub36 : model.term 36 = lit36 := by rw [model.app_eq 36 37 42 (by rfl), sub37, sub42]; rfl
theorem sub35 : model.term 35 = lit35 := by rw [model.lam_eq 35 36 (by rfl), sub36]; rfl
theorem sub34 : model.term 34 = lit48 := model.var_eq 34 1 (by rfl)
theorem sub33 : model.term 33 = lit47 := by rw [model.lam_eq 33 34 (by rfl), sub34]; rfl
theorem sub32 : model.term 32 = lit46 := by rw [model.lam_eq 32 33 (by rfl), sub33]; rfl
theorem sub31 : model.term 31 = lit45 := model.var_eq 31 0 (by rfl)
theorem sub30 : model.term 30 = lit44 := by rw [model.app_eq 30 31 32 (by rfl), sub31, sub32]; rfl
theorem sub29 : model.term 29 = lit29 := by rw [model.app_eq 29 30 35 (by rfl), sub30, sub35]; rfl
theorem sub28 : model.term 28 = lit28 := by rw [model.lam_eq 28 29 (by rfl), sub29]; rfl
theorem sub27 : model.term 27 = lit48 := model.var_eq 27 1 (by rfl)
theorem sub26 : model.term 26 = lit47 := by rw [model.lam_eq 26 27 (by rfl), sub27]; rfl
theorem sub25 : model.term 25 = lit46 := by rw [model.lam_eq 25 26 (by rfl), sub26]; rfl
theorem sub24 : model.term 24 = lit45 := model.var_eq 24 0 (by rfl)
theorem sub23 : model.term 23 = lit44 := by rw [model.app_eq 23 24 25 (by rfl), sub24, sub25]; rfl
theorem sub22 : model.term 22 = lit22 := by rw [model.app_eq 22 23 28 (by rfl), sub23, sub28]; rfl
theorem sub21 : model.term 21 = lit21 := by rw [model.lam_eq 21 22 (by rfl), sub22]; rfl
theorem sub20 : model.term 20 = lit48 := (opaqueTerm (rankedCode code ordered_code) filling (p := 20) (by rfl)).trans (by rfl)
theorem sub19 : model.term 19 = lit48 := model.var_eq 19 1 (by rfl)
theorem sub18 : model.term 18 = lit18 := model.var_eq 18 2 (by rfl)
theorem sub17 : model.term 17 = lit17 := by rw [model.app_eq 17 18 19 (by rfl), sub18, sub19]; rfl
theorem sub16 : model.term 16 = lit45 := model.var_eq 16 0 (by rfl)
theorem sub15 : model.term 15 = lit15 := model.var_eq 15 3 (by rfl)
theorem sub14 : model.term 14 = lit14 := by rw [model.lam_eq 14 15 (by rfl), sub15]; rfl
theorem sub13 : model.term 13 = lit45 := model.var_eq 13 0 (by rfl)
theorem sub12 : model.term 12 = lit12 := by rw [model.app_eq 12 13 14 (by rfl), sub13, sub14]; rfl
theorem sub11 : model.term 11 = lit11 := by rw [model.app_eq 11 12 16 (by rfl), sub12, sub16]; rfl
theorem sub10 : model.term 10 = lit10 := by rw [model.app_eq 10 11 17 (by rfl), sub11, sub17]; rfl
theorem sub9 : model.term 9 = lit9 := by rw [model.lam_eq 9 10 (by rfl), sub10]; rfl
theorem sub8 : model.term 8 = lit8 := by rw [model.lam_eq 8 9 (by rfl), sub9]; rfl
theorem sub7 : model.term 7 = lit7 := by rw [model.lam_eq 7 8 (by rfl), sub8]; rfl
theorem sub6 : model.term 6 = lit45 := model.var_eq 6 0 (by rfl)
theorem sub5 : model.term 5 = lit45 := model.var_eq 5 0 (by rfl)
theorem sub4 : model.term 4 = lit4 := by rw [model.app_eq 4 5 6 (by rfl), sub5, sub6]; rfl
theorem sub3 : model.term 3 = lit3 := by rw [model.lam_eq 3 4 (by rfl), sub4]; rfl
theorem sub2 : model.term 2 = lit2 := by rw [model.app_eq 2 3 7 (by rfl), sub3, sub7]; rfl
theorem sub1 : model.term 1 = lit1 := by rw [model.app_eq 1 2 20 (by rfl), sub2, sub20]; rfl
theorem sub0 : model.term 0 = lit0 := by rw [model.app_eq 0 1 21 (by rfl), sub1, sub21]; rfl
theorem allValid (i : Nat) (h : i < 46) : validState i = true := by
 by_cases h24 : i < 24
 · by_cases h12 : i < 12
   · exact FloorIndex.rangeOK_at bl0 (by omega) (by omega)
   · exact FloorIndex.rangeOK_at bl12 (by omega) (by omega)
 · by_cases h36 : i < 36
   · exact FloorIndex.rangeOK_at bl24 (by omega) (by omega)
   · exact FloorIndex.rangeOK_at bl36 (by omega) (by omega)
theorem noClock (n : Nat) : ¬ Count (model.term 0) n := by
 apply FloorIndex.sound model st (by rfl)
 intro i
 by_cases hi : i < 46
 · exact ⟨hs i, allValid i hi⟩
 · refine ⟨hs 0, ?_⟩
   have he : st i = entry := by simp [st,hi]
   unfold FloorIndex.check
   rw [he]
   exact allValid 0 (by decide)
theorem excluded : ¬ IsSelfInterpreter e1211203384566 := by
 intro he
 have hp : replay [] (call e1211203384566 (.var 1) (.lam (.var 0)) (.var 0) []) = some (model.term 0) := by rw [sub0]; decide
 obtain ⟨h,hh⟩ := clocks_replay (inputCount (k := 0) he (by decide) (by decide)) hp
 exact noClock h hh
#print axioms excluded

end Certgen.R1211203384566
