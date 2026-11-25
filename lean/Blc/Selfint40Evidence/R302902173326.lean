import Blc.Selfint40Evidence.CodeBridge
import Blc.Selfint40Evidence.R302902173326Blk0
import Blc.Selfint40Evidence.R302902173326Blk6
import Blc.Selfint40Evidence.R302902173326Blk12

namespace Certgen.R302902173326
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Floor40 Blc.Term Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def lit91 : Term := .var 0
def lit81 : Term := .var 1
def lit50 : Term := .var 2
def lit73 : Term := .lam lit91
def lit80 : Term := .lam lit81
def lit49 : Term := .lam lit50
def lit72 : Term := .lam lit73
def lit82 : Term := .var 4
def lit89 : Term := .app lit91 lit91
def lit79 : Term := .lam lit80
def lit43 : Term := .app lit50 lit91
def lit88 : Term := .lam lit89
def lit70 : Term := .app lit91 lit72
def lit77 : Term := .app lit91 lit79
def lit42 : Term := .app lit43 lit49
def lit41 : Term := .lam lit42
def lit83 : Term := .app lit88 lit88
def lit76 : Term := .app lit77 lit82
def lit40 : Term := .lam lit41
def lit75 : Term := .lam lit76
def lit38 : Term := .app lit91 lit40
def lit36 : Term := .app lit91 lit38
def lit35 : Term := .lam lit36
def lit69 : Term := .app lit70 lit75
def lit34 : Term := .app lit35 lit91
def lit68 : Term := .lam lit69
def lit33 : Term := .app lit34 lit49
def lit32 : Term := .lam lit33
def lit31 : Term := .lam lit32
def lit62 : Term := .app lit77 lit68
def lit61 : Term := .lam lit62
def lit55 : Term := .app lit77 lit61
def lit54 : Term := .lam lit55
def lit17 : Term := .app lit35 lit31
def lit3 : Term := .app lit35 lit17
def lit2 : Term := .app lit3 lit72
def lit1 : Term := .app lit2 lit54
def lit0 : Term := .app lit1 lit83
def filling : Nat → Term := fun p => if p = 82 then Term.var 4 else Term.var 0
theorem ordered_code : ordered code = true := by decide +kernel
def model : Model P := codeModel (rankedCode code ordered_code) filling
theorem sub91 : model.term 91 = lit91 := model.var_eq 91 0 (by rfl)
theorem sub90 : model.term 90 = lit91 := model.var_eq 90 0 (by rfl)
theorem sub89 : model.term 89 = lit89 := by rw [model.app_eq 89 90 91 (by rfl), sub90, sub91]; rfl
theorem sub88 : model.term 88 = lit88 := by rw [model.lam_eq 88 89 (by rfl), sub89]; rfl
theorem sub87 : model.term 87 = lit91 := model.var_eq 87 0 (by rfl)
theorem sub86 : model.term 86 = lit91 := model.var_eq 86 0 (by rfl)
theorem sub85 : model.term 85 = lit89 := by rw [model.app_eq 85 86 87 (by rfl), sub86, sub87]; rfl
theorem sub84 : model.term 84 = lit88 := by rw [model.lam_eq 84 85 (by rfl), sub85]; rfl
theorem sub83 : model.term 83 = lit83 := by rw [model.app_eq 83 84 88 (by rfl), sub84, sub88]; rfl
theorem sub82 : model.term 82 = lit82 := (opaqueTerm (rankedCode code ordered_code) filling (p := 82) (by rfl)).trans (by rfl)
theorem sub81 : model.term 81 = lit81 := model.var_eq 81 1 (by rfl)
theorem sub80 : model.term 80 = lit80 := by rw [model.lam_eq 80 81 (by rfl), sub81]; rfl
theorem sub79 : model.term 79 = lit79 := by rw [model.lam_eq 79 80 (by rfl), sub80]; rfl
theorem sub78 : model.term 78 = lit91 := model.var_eq 78 0 (by rfl)
theorem sub77 : model.term 77 = lit77 := by rw [model.app_eq 77 78 79 (by rfl), sub78, sub79]; rfl
theorem sub76 : model.term 76 = lit76 := by rw [model.app_eq 76 77 82 (by rfl), sub77, sub82]; rfl
theorem sub75 : model.term 75 = lit75 := by rw [model.lam_eq 75 76 (by rfl), sub76]; rfl
theorem sub74 : model.term 74 = lit91 := model.var_eq 74 0 (by rfl)
theorem sub73 : model.term 73 = lit73 := by rw [model.lam_eq 73 74 (by rfl), sub74]; rfl
theorem sub72 : model.term 72 = lit72 := by rw [model.lam_eq 72 73 (by rfl), sub73]; rfl
theorem sub71 : model.term 71 = lit91 := model.var_eq 71 0 (by rfl)
theorem sub70 : model.term 70 = lit70 := by rw [model.app_eq 70 71 72 (by rfl), sub71, sub72]; rfl
theorem sub69 : model.term 69 = lit69 := by rw [model.app_eq 69 70 75 (by rfl), sub70, sub75]; rfl
theorem sub68 : model.term 68 = lit68 := by rw [model.lam_eq 68 69 (by rfl), sub69]; rfl
theorem sub67 : model.term 67 = lit81 := model.var_eq 67 1 (by rfl)
theorem sub66 : model.term 66 = lit80 := by rw [model.lam_eq 66 67 (by rfl), sub67]; rfl
theorem sub65 : model.term 65 = lit79 := by rw [model.lam_eq 65 66 (by rfl), sub66]; rfl
theorem sub64 : model.term 64 = lit91 := model.var_eq 64 0 (by rfl)
theorem sub63 : model.term 63 = lit77 := by rw [model.app_eq 63 64 65 (by rfl), sub64, sub65]; rfl
theorem sub62 : model.term 62 = lit62 := by rw [model.app_eq 62 63 68 (by rfl), sub63, sub68]; rfl
theorem sub61 : model.term 61 = lit61 := by rw [model.lam_eq 61 62 (by rfl), sub62]; rfl
theorem sub60 : model.term 60 = lit81 := model.var_eq 60 1 (by rfl)
theorem sub59 : model.term 59 = lit80 := by rw [model.lam_eq 59 60 (by rfl), sub60]; rfl
theorem sub58 : model.term 58 = lit79 := by rw [model.lam_eq 58 59 (by rfl), sub59]; rfl
theorem sub57 : model.term 57 = lit91 := model.var_eq 57 0 (by rfl)
theorem sub56 : model.term 56 = lit77 := by rw [model.app_eq 56 57 58 (by rfl), sub57, sub58]; rfl
theorem sub55 : model.term 55 = lit55 := by rw [model.app_eq 55 56 61 (by rfl), sub56, sub61]; rfl
theorem sub54 : model.term 54 = lit54 := by rw [model.lam_eq 54 55 (by rfl), sub55]; rfl
theorem sub53 : model.term 53 = lit91 := model.var_eq 53 0 (by rfl)
theorem sub52 : model.term 52 = lit73 := by rw [model.lam_eq 52 53 (by rfl), sub53]; rfl
theorem sub51 : model.term 51 = lit72 := by rw [model.lam_eq 51 52 (by rfl), sub52]; rfl
theorem sub50 : model.term 50 = lit50 := model.var_eq 50 2 (by rfl)
theorem sub49 : model.term 49 = lit49 := by rw [model.lam_eq 49 50 (by rfl), sub50]; rfl
theorem sub48 : model.term 48 = lit91 := model.var_eq 48 0 (by rfl)
theorem sub47 : model.term 47 = lit50 := model.var_eq 47 2 (by rfl)
theorem sub46 : model.term 46 = lit49 := by rw [model.lam_eq 46 47 (by rfl), sub47]; rfl
theorem sub45 : model.term 45 = lit91 := model.var_eq 45 0 (by rfl)
theorem sub44 : model.term 44 = lit50 := model.var_eq 44 2 (by rfl)
theorem sub43 : model.term 43 = lit43 := by rw [model.app_eq 43 44 45 (by rfl), sub44, sub45]; rfl
theorem sub42 : model.term 42 = lit42 := by rw [model.app_eq 42 43 46 (by rfl), sub43, sub46]; rfl
theorem sub41 : model.term 41 = lit41 := by rw [model.lam_eq 41 42 (by rfl), sub42]; rfl
theorem sub40 : model.term 40 = lit40 := by rw [model.lam_eq 40 41 (by rfl), sub41]; rfl
theorem sub39 : model.term 39 = lit91 := model.var_eq 39 0 (by rfl)
theorem sub38 : model.term 38 = lit38 := by rw [model.app_eq 38 39 40 (by rfl), sub39, sub40]; rfl
theorem sub37 : model.term 37 = lit91 := model.var_eq 37 0 (by rfl)
theorem sub36 : model.term 36 = lit36 := by rw [model.app_eq 36 37 38 (by rfl), sub37, sub38]; rfl
theorem sub35 : model.term 35 = lit35 := by rw [model.lam_eq 35 36 (by rfl), sub36]; rfl
theorem sub34 : model.term 34 = lit34 := by rw [model.app_eq 34 35 48 (by rfl), sub35, sub48]; rfl
theorem sub33 : model.term 33 = lit33 := by rw [model.app_eq 33 34 49 (by rfl), sub34, sub49]; rfl
theorem sub32 : model.term 32 = lit32 := by rw [model.lam_eq 32 33 (by rfl), sub33]; rfl
theorem sub31 : model.term 31 = lit31 := by rw [model.lam_eq 31 32 (by rfl), sub32]; rfl
theorem sub30 : model.term 30 = lit50 := model.var_eq 30 2 (by rfl)
theorem sub29 : model.term 29 = lit49 := by rw [model.lam_eq 29 30 (by rfl), sub30]; rfl
theorem sub28 : model.term 28 = lit91 := model.var_eq 28 0 (by rfl)
theorem sub27 : model.term 27 = lit50 := model.var_eq 27 2 (by rfl)
theorem sub26 : model.term 26 = lit43 := by rw [model.app_eq 26 27 28 (by rfl), sub27, sub28]; rfl
theorem sub25 : model.term 25 = lit42 := by rw [model.app_eq 25 26 29 (by rfl), sub26, sub29]; rfl
theorem sub24 : model.term 24 = lit41 := by rw [model.lam_eq 24 25 (by rfl), sub25]; rfl
theorem sub23 : model.term 23 = lit40 := by rw [model.lam_eq 23 24 (by rfl), sub24]; rfl
theorem sub22 : model.term 22 = lit91 := model.var_eq 22 0 (by rfl)
theorem sub21 : model.term 21 = lit38 := by rw [model.app_eq 21 22 23 (by rfl), sub22, sub23]; rfl
theorem sub20 : model.term 20 = lit91 := model.var_eq 20 0 (by rfl)
theorem sub19 : model.term 19 = lit36 := by rw [model.app_eq 19 20 21 (by rfl), sub20, sub21]; rfl
theorem sub18 : model.term 18 = lit35 := by rw [model.lam_eq 18 19 (by rfl), sub19]; rfl
theorem sub17 : model.term 17 = lit17 := by rw [model.app_eq 17 18 31 (by rfl), sub18, sub31]; rfl
theorem sub16 : model.term 16 = lit50 := model.var_eq 16 2 (by rfl)
theorem sub15 : model.term 15 = lit49 := by rw [model.lam_eq 15 16 (by rfl), sub16]; rfl
theorem sub14 : model.term 14 = lit91 := model.var_eq 14 0 (by rfl)
theorem sub13 : model.term 13 = lit50 := model.var_eq 13 2 (by rfl)
theorem sub12 : model.term 12 = lit43 := by rw [model.app_eq 12 13 14 (by rfl), sub13, sub14]; rfl
theorem sub11 : model.term 11 = lit42 := by rw [model.app_eq 11 12 15 (by rfl), sub12, sub15]; rfl
theorem sub10 : model.term 10 = lit41 := by rw [model.lam_eq 10 11 (by rfl), sub11]; rfl
theorem sub9 : model.term 9 = lit40 := by rw [model.lam_eq 9 10 (by rfl), sub10]; rfl
theorem sub8 : model.term 8 = lit91 := model.var_eq 8 0 (by rfl)
theorem sub7 : model.term 7 = lit38 := by rw [model.app_eq 7 8 9 (by rfl), sub8, sub9]; rfl
theorem sub6 : model.term 6 = lit91 := model.var_eq 6 0 (by rfl)
theorem sub5 : model.term 5 = lit36 := by rw [model.app_eq 5 6 7 (by rfl), sub6, sub7]; rfl
theorem sub4 : model.term 4 = lit35 := by rw [model.lam_eq 4 5 (by rfl), sub5]; rfl
theorem sub3 : model.term 3 = lit3 := by rw [model.app_eq 3 4 17 (by rfl), sub4, sub17]; rfl
theorem sub2 : model.term 2 = lit2 := by rw [model.app_eq 2 3 51 (by rfl), sub3, sub51]; rfl
theorem sub1 : model.term 1 = lit1 := by rw [model.app_eq 1 2 54 (by rfl), sub2, sub54]; rfl
theorem sub0 : model.term 0 = lit0 := by rw [model.app_eq 0 1 83 (by rfl), sub1, sub83]; rfl
theorem allValid (i : Nat) (h : i < 211) : validState i = true := by
 by_cases h108 : i < 108
 · by_cases h48 : i < 48
   · by_cases h24 : i < 24
     · by_cases h12 : i < 12
       · exact FloorIndex.rangeOK_at bl0 (by omega) (by omega)
       · exact FloorIndex.rangeOK_at bl12 (by omega) (by omega)
     · by_cases h36 : i < 36
       · exact FloorIndex.rangeOK_at bl24 (by omega) (by omega)
       · exact FloorIndex.rangeOK_at bl36 (by omega) (by omega)
   · by_cases h72 : i < 72
     · by_cases h60 : i < 60
       · exact FloorIndex.rangeOK_at bl48 (by omega) (by omega)
       · exact FloorIndex.rangeOK_at bl60 (by omega) (by omega)
     · by_cases h84 : i < 84
       · exact FloorIndex.rangeOK_at bl72 (by omega) (by omega)
       · by_cases h96 : i < 96
         · exact FloorIndex.rangeOK_at bl84 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl96 (by omega) (by omega)
 · by_cases h156 : i < 156
   · by_cases h132 : i < 132
     · by_cases h120 : i < 120
       · exact FloorIndex.rangeOK_at bl108 (by omega) (by omega)
       · exact FloorIndex.rangeOK_at bl120 (by omega) (by omega)
     · by_cases h144 : i < 144
       · exact FloorIndex.rangeOK_at bl132 (by omega) (by omega)
       · exact FloorIndex.rangeOK_at bl144 (by omega) (by omega)
   · by_cases h180 : i < 180
     · by_cases h168 : i < 168
       · exact FloorIndex.rangeOK_at bl156 (by omega) (by omega)
       · exact FloorIndex.rangeOK_at bl168 (by omega) (by omega)
     · by_cases h192 : i < 192
       · exact FloorIndex.rangeOK_at bl180 (by omega) (by omega)
       · by_cases h204 : i < 204
         · exact FloorIndex.rangeOK_at bl192 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl204 (by omega) (by omega)
theorem noClock (n : Nat) : ¬ Count (model.term 0) n := by
 apply FloorIndex.sound model st (by rfl)
 intro i
 by_cases hi : i < 211
 · exact ⟨hs i, allValid i hi⟩
 · refine ⟨hs 0, ?_⟩
   have he : st i = entry := by simp [st,hi]
   unfold FloorIndex.check
   rw [he]
   exact allValid 0 (by decide)
theorem excluded : ¬ IsSelfInterpreter e302902173326 := by
 intro he
 have hp : replay [[.left,.left,.left],[.left,.left,.left]] (call e302902173326 (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))]) = some (model.term 0) := by rw [sub0]; decide
 obtain ⟨h,hh⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
 exact noClock h hh
#print axioms excluded

end Certgen.R302902173326
