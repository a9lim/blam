import Blc.Selfint40Evidence.CodeBridge
import Blc.Selfint40Evidence.R302888259382Blk0
import Blc.Selfint40Evidence.R302888259382Blk6

namespace Certgen.R302888259382
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Floor40 Blc.Term Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def lit72 : Term := .var 0
def lit52 : Term := .var 1
def lit18 : Term := .var 2
def lit71 : Term := .lam lit72
def lit51 : Term := .lam lit52
def lit68 : Term := .app lit72 lit72
def lit43 : Term := .lam lit71
def lit19 : Term := .app lit72 lit52
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
theorem sub21 : model.term 21 = lit52 := model.var_eq 21 1 (by rfl)
theorem sub20 : model.term 20 = lit72 := model.var_eq 20 0 (by rfl)
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
theorem allValid (i : Nat) (h : i < 127) : validState i = true := by
 by_cases h60 : i < 60
 · by_cases h24 : i < 24
   · by_cases h12 : i < 12
     · exact FloorIndex.rangeOK_at bl0 (by omega) (by omega)
     · exact FloorIndex.rangeOK_at bl12 (by omega) (by omega)
   · by_cases h36 : i < 36
     · exact FloorIndex.rangeOK_at bl24 (by omega) (by omega)
     · by_cases h48 : i < 48
       · exact FloorIndex.rangeOK_at bl36 (by omega) (by omega)
       · exact FloorIndex.rangeOK_at bl48 (by omega) (by omega)
 · by_cases h96 : i < 96
   · by_cases h72 : i < 72
     · exact FloorIndex.rangeOK_at bl60 (by omega) (by omega)
     · by_cases h84 : i < 84
       · exact FloorIndex.rangeOK_at bl72 (by omega) (by omega)
       · exact FloorIndex.rangeOK_at bl84 (by omega) (by omega)
   · by_cases h108 : i < 108
     · exact FloorIndex.rangeOK_at bl96 (by omega) (by omega)
     · by_cases h120 : i < 120
       · exact FloorIndex.rangeOK_at bl108 (by omega) (by omega)
       · exact FloorIndex.rangeOK_at bl120 (by omega) (by omega)
theorem noClock (n : Nat) : ¬ Count (model.term 0) n := by
 apply FloorIndex.sound model st (by rfl)
 intro i
 by_cases hi : i < 127
 · exact ⟨hs i, allValid i hi⟩
 · refine ⟨hs 0, ?_⟩
   have he : st i = entry := by simp [st,hi]
   unfold FloorIndex.check
   rw [he]
   exact allValid 0 (by decide)
theorem excluded : ¬ IsSelfInterpreter e302888259382 := by
 intro he
 have hp : replay [] (call e302888259382 (.lam (.lam (.var 1))) (.lam (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.lam (.var 0))]) = some (model.term 0) := by rw [sub0]; decide
 obtain ⟨h,hh⟩ := clocks_replay (inputCount (k := 4) he (by decide) (by decide)) hp
 exact noClock h hh
#print axioms excluded

end Certgen.R302888259382
