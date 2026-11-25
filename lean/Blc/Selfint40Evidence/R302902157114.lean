import Blc.Selfint40Evidence.CodeBridge
import Blc.Selfint40Evidence.R302902157114Blk0
import Blc.Selfint40Evidence.R302902157114Blk6
import Blc.Selfint40Evidence.R302902157114Blk12
import Blc.Selfint40Evidence.R302902157114Blk18
import Blc.Selfint40Evidence.R302902157114Blk24

namespace Certgen.R302902157114
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Floor40 Blc.Term Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def lit105 : Term := .var 0
def lit68 : Term := .var 1
def lit60 : Term := .lam lit105
def lit20 : Term := .var 3
def lit67 : Term := .lam lit68
def lit103 : Term := .app lit105 lit105
def lit59 : Term := .lam lit60
def lit21 : Term := .app lit68 lit105
def lit66 : Term := .lam lit67
def lit102 : Term := .lam lit103
def lit69 : Term := .var 6
def lit57 : Term := .app lit105 lit59
def lit64 : Term := .app lit105 lit66
def lit19 : Term := .app lit20 lit21
def lit18 : Term := .lam lit19
def lit17 : Term := .lam lit18
def lit97 : Term := .app lit102 lit102
def lit16 : Term := .lam lit17
def lit63 : Term := .app lit64 lit69
def lit62 : Term := .lam lit63
def lit14 : Term := .app lit105 lit16
def lit12 : Term := .app lit105 lit14
def lit11 : Term := .lam lit12
def lit56 : Term := .app lit57 lit62
def lit55 : Term := .lam lit56
def lit6 : Term := .app lit102 lit11
def lit5 : Term := .app lit6 lit59
def lit49 : Term := .app lit64 lit55
def lit48 : Term := .lam lit49
def lit42 : Term := .app lit64 lit48
def lit41 : Term := .lam lit42
def lit35 : Term := .app lit64 lit41
def lit34 : Term := .lam lit35
def lit28 : Term := .app lit64 lit34
def lit27 : Term := .lam lit28
def lit4 : Term := .app lit5 lit27
def lit3 : Term := .app lit4 lit97
def lit2 : Term := .app lit3 lit97
def lit1 : Term := .app lit2 lit97
def lit0 : Term := .app lit1 lit97
def filling : Nat → Term := fun p => if p = 69 then Term.var 6 else Term.var 0
theorem ordered_code : ordered code = true := by decide +kernel
def model : Model P := codeModel (rankedCode code ordered_code) filling
theorem sub105 : model.term 105 = lit105 := model.var_eq 105 0 (by rfl)
theorem sub104 : model.term 104 = lit105 := model.var_eq 104 0 (by rfl)
theorem sub103 : model.term 103 = lit103 := by rw [model.app_eq 103 104 105 (by rfl), sub104, sub105]; rfl
theorem sub102 : model.term 102 = lit102 := by rw [model.lam_eq 102 103 (by rfl), sub103]; rfl
theorem sub101 : model.term 101 = lit105 := model.var_eq 101 0 (by rfl)
theorem sub100 : model.term 100 = lit105 := model.var_eq 100 0 (by rfl)
theorem sub99 : model.term 99 = lit103 := by rw [model.app_eq 99 100 101 (by rfl), sub100, sub101]; rfl
theorem sub98 : model.term 98 = lit102 := by rw [model.lam_eq 98 99 (by rfl), sub99]; rfl
theorem sub97 : model.term 97 = lit97 := by rw [model.app_eq 97 98 102 (by rfl), sub98, sub102]; rfl
theorem sub96 : model.term 96 = lit105 := model.var_eq 96 0 (by rfl)
theorem sub95 : model.term 95 = lit105 := model.var_eq 95 0 (by rfl)
theorem sub94 : model.term 94 = lit103 := by rw [model.app_eq 94 95 96 (by rfl), sub95, sub96]; rfl
theorem sub93 : model.term 93 = lit102 := by rw [model.lam_eq 93 94 (by rfl), sub94]; rfl
theorem sub92 : model.term 92 = lit105 := model.var_eq 92 0 (by rfl)
theorem sub91 : model.term 91 = lit105 := model.var_eq 91 0 (by rfl)
theorem sub90 : model.term 90 = lit103 := by rw [model.app_eq 90 91 92 (by rfl), sub91, sub92]; rfl
theorem sub89 : model.term 89 = lit102 := by rw [model.lam_eq 89 90 (by rfl), sub90]; rfl
theorem sub88 : model.term 88 = lit97 := by rw [model.app_eq 88 89 93 (by rfl), sub89, sub93]; rfl
theorem sub87 : model.term 87 = lit105 := model.var_eq 87 0 (by rfl)
theorem sub86 : model.term 86 = lit105 := model.var_eq 86 0 (by rfl)
theorem sub85 : model.term 85 = lit103 := by rw [model.app_eq 85 86 87 (by rfl), sub86, sub87]; rfl
theorem sub84 : model.term 84 = lit102 := by rw [model.lam_eq 84 85 (by rfl), sub85]; rfl
theorem sub83 : model.term 83 = lit105 := model.var_eq 83 0 (by rfl)
theorem sub82 : model.term 82 = lit105 := model.var_eq 82 0 (by rfl)
theorem sub81 : model.term 81 = lit103 := by rw [model.app_eq 81 82 83 (by rfl), sub82, sub83]; rfl
theorem sub80 : model.term 80 = lit102 := by rw [model.lam_eq 80 81 (by rfl), sub81]; rfl
theorem sub79 : model.term 79 = lit97 := by rw [model.app_eq 79 80 84 (by rfl), sub80, sub84]; rfl
theorem sub78 : model.term 78 = lit105 := model.var_eq 78 0 (by rfl)
theorem sub77 : model.term 77 = lit105 := model.var_eq 77 0 (by rfl)
theorem sub76 : model.term 76 = lit103 := by rw [model.app_eq 76 77 78 (by rfl), sub77, sub78]; rfl
theorem sub75 : model.term 75 = lit102 := by rw [model.lam_eq 75 76 (by rfl), sub76]; rfl
theorem sub74 : model.term 74 = lit105 := model.var_eq 74 0 (by rfl)
theorem sub73 : model.term 73 = lit105 := model.var_eq 73 0 (by rfl)
theorem sub72 : model.term 72 = lit103 := by rw [model.app_eq 72 73 74 (by rfl), sub73, sub74]; rfl
theorem sub71 : model.term 71 = lit102 := by rw [model.lam_eq 71 72 (by rfl), sub72]; rfl
theorem sub70 : model.term 70 = lit97 := by rw [model.app_eq 70 71 75 (by rfl), sub71, sub75]; rfl
theorem sub69 : model.term 69 = lit69 := (opaqueTerm (rankedCode code ordered_code) filling (p := 69) (by rfl)).trans (by rfl)
theorem sub68 : model.term 68 = lit68 := model.var_eq 68 1 (by rfl)
theorem sub67 : model.term 67 = lit67 := by rw [model.lam_eq 67 68 (by rfl), sub68]; rfl
theorem sub66 : model.term 66 = lit66 := by rw [model.lam_eq 66 67 (by rfl), sub67]; rfl
theorem sub65 : model.term 65 = lit105 := model.var_eq 65 0 (by rfl)
theorem sub64 : model.term 64 = lit64 := by rw [model.app_eq 64 65 66 (by rfl), sub65, sub66]; rfl
theorem sub63 : model.term 63 = lit63 := by rw [model.app_eq 63 64 69 (by rfl), sub64, sub69]; rfl
theorem sub62 : model.term 62 = lit62 := by rw [model.lam_eq 62 63 (by rfl), sub63]; rfl
theorem sub61 : model.term 61 = lit105 := model.var_eq 61 0 (by rfl)
theorem sub60 : model.term 60 = lit60 := by rw [model.lam_eq 60 61 (by rfl), sub61]; rfl
theorem sub59 : model.term 59 = lit59 := by rw [model.lam_eq 59 60 (by rfl), sub60]; rfl
theorem sub58 : model.term 58 = lit105 := model.var_eq 58 0 (by rfl)
theorem sub57 : model.term 57 = lit57 := by rw [model.app_eq 57 58 59 (by rfl), sub58, sub59]; rfl
theorem sub56 : model.term 56 = lit56 := by rw [model.app_eq 56 57 62 (by rfl), sub57, sub62]; rfl
theorem sub55 : model.term 55 = lit55 := by rw [model.lam_eq 55 56 (by rfl), sub56]; rfl
theorem sub54 : model.term 54 = lit68 := model.var_eq 54 1 (by rfl)
theorem sub53 : model.term 53 = lit67 := by rw [model.lam_eq 53 54 (by rfl), sub54]; rfl
theorem sub52 : model.term 52 = lit66 := by rw [model.lam_eq 52 53 (by rfl), sub53]; rfl
theorem sub51 : model.term 51 = lit105 := model.var_eq 51 0 (by rfl)
theorem sub50 : model.term 50 = lit64 := by rw [model.app_eq 50 51 52 (by rfl), sub51, sub52]; rfl
theorem sub49 : model.term 49 = lit49 := by rw [model.app_eq 49 50 55 (by rfl), sub50, sub55]; rfl
theorem sub48 : model.term 48 = lit48 := by rw [model.lam_eq 48 49 (by rfl), sub49]; rfl
theorem sub47 : model.term 47 = lit68 := model.var_eq 47 1 (by rfl)
theorem sub46 : model.term 46 = lit67 := by rw [model.lam_eq 46 47 (by rfl), sub47]; rfl
theorem sub45 : model.term 45 = lit66 := by rw [model.lam_eq 45 46 (by rfl), sub46]; rfl
theorem sub44 : model.term 44 = lit105 := model.var_eq 44 0 (by rfl)
theorem sub43 : model.term 43 = lit64 := by rw [model.app_eq 43 44 45 (by rfl), sub44, sub45]; rfl
theorem sub42 : model.term 42 = lit42 := by rw [model.app_eq 42 43 48 (by rfl), sub43, sub48]; rfl
theorem sub41 : model.term 41 = lit41 := by rw [model.lam_eq 41 42 (by rfl), sub42]; rfl
theorem sub40 : model.term 40 = lit68 := model.var_eq 40 1 (by rfl)
theorem sub39 : model.term 39 = lit67 := by rw [model.lam_eq 39 40 (by rfl), sub40]; rfl
theorem sub38 : model.term 38 = lit66 := by rw [model.lam_eq 38 39 (by rfl), sub39]; rfl
theorem sub37 : model.term 37 = lit105 := model.var_eq 37 0 (by rfl)
theorem sub36 : model.term 36 = lit64 := by rw [model.app_eq 36 37 38 (by rfl), sub37, sub38]; rfl
theorem sub35 : model.term 35 = lit35 := by rw [model.app_eq 35 36 41 (by rfl), sub36, sub41]; rfl
theorem sub34 : model.term 34 = lit34 := by rw [model.lam_eq 34 35 (by rfl), sub35]; rfl
theorem sub33 : model.term 33 = lit68 := model.var_eq 33 1 (by rfl)
theorem sub32 : model.term 32 = lit67 := by rw [model.lam_eq 32 33 (by rfl), sub33]; rfl
theorem sub31 : model.term 31 = lit66 := by rw [model.lam_eq 31 32 (by rfl), sub32]; rfl
theorem sub30 : model.term 30 = lit105 := model.var_eq 30 0 (by rfl)
theorem sub29 : model.term 29 = lit64 := by rw [model.app_eq 29 30 31 (by rfl), sub30, sub31]; rfl
theorem sub28 : model.term 28 = lit28 := by rw [model.app_eq 28 29 34 (by rfl), sub29, sub34]; rfl
theorem sub27 : model.term 27 = lit27 := by rw [model.lam_eq 27 28 (by rfl), sub28]; rfl
theorem sub26 : model.term 26 = lit105 := model.var_eq 26 0 (by rfl)
theorem sub25 : model.term 25 = lit60 := by rw [model.lam_eq 25 26 (by rfl), sub26]; rfl
theorem sub24 : model.term 24 = lit59 := by rw [model.lam_eq 24 25 (by rfl), sub25]; rfl
theorem sub23 : model.term 23 = lit105 := model.var_eq 23 0 (by rfl)
theorem sub22 : model.term 22 = lit68 := model.var_eq 22 1 (by rfl)
theorem sub21 : model.term 21 = lit21 := by rw [model.app_eq 21 22 23 (by rfl), sub22, sub23]; rfl
theorem sub20 : model.term 20 = lit20 := model.var_eq 20 3 (by rfl)
theorem sub19 : model.term 19 = lit19 := by rw [model.app_eq 19 20 21 (by rfl), sub20, sub21]; rfl
theorem sub18 : model.term 18 = lit18 := by rw [model.lam_eq 18 19 (by rfl), sub19]; rfl
theorem sub17 : model.term 17 = lit17 := by rw [model.lam_eq 17 18 (by rfl), sub18]; rfl
theorem sub16 : model.term 16 = lit16 := by rw [model.lam_eq 16 17 (by rfl), sub17]; rfl
theorem sub15 : model.term 15 = lit105 := model.var_eq 15 0 (by rfl)
theorem sub14 : model.term 14 = lit14 := by rw [model.app_eq 14 15 16 (by rfl), sub15, sub16]; rfl
theorem sub13 : model.term 13 = lit105 := model.var_eq 13 0 (by rfl)
theorem sub12 : model.term 12 = lit12 := by rw [model.app_eq 12 13 14 (by rfl), sub13, sub14]; rfl
theorem sub11 : model.term 11 = lit11 := by rw [model.lam_eq 11 12 (by rfl), sub12]; rfl
theorem sub10 : model.term 10 = lit105 := model.var_eq 10 0 (by rfl)
theorem sub9 : model.term 9 = lit105 := model.var_eq 9 0 (by rfl)
theorem sub8 : model.term 8 = lit103 := by rw [model.app_eq 8 9 10 (by rfl), sub9, sub10]; rfl
theorem sub7 : model.term 7 = lit102 := by rw [model.lam_eq 7 8 (by rfl), sub8]; rfl
theorem sub6 : model.term 6 = lit6 := by rw [model.app_eq 6 7 11 (by rfl), sub7, sub11]; rfl
theorem sub5 : model.term 5 = lit5 := by rw [model.app_eq 5 6 24 (by rfl), sub6, sub24]; rfl
theorem sub4 : model.term 4 = lit4 := by rw [model.app_eq 4 5 27 (by rfl), sub5, sub27]; rfl
theorem sub3 : model.term 3 = lit3 := by rw [model.app_eq 3 4 70 (by rfl), sub4, sub70]; rfl
theorem sub2 : model.term 2 = lit2 := by rw [model.app_eq 2 3 79 (by rfl), sub3, sub79]; rfl
theorem sub1 : model.term 1 = lit1 := by rw [model.app_eq 1 2 88 (by rfl), sub2, sub88]; rfl
theorem sub0 : model.term 0 = lit0 := by rw [model.app_eq 0 1 97 (by rfl), sub1, sub97]; rfl
theorem allValid (i : Nat) (h : i < 355) : validState i = true := by
 by_cases h180 : i < 180
 · by_cases h84 : i < 84
   · by_cases h36 : i < 36
     · by_cases h12 : i < 12
       · exact FloorIndex.rangeOK_at bl0 (by omega) (by omega)
       · by_cases h24 : i < 24
         · exact FloorIndex.rangeOK_at bl12 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl24 (by omega) (by omega)
     · by_cases h60 : i < 60
       · by_cases h48 : i < 48
         · exact FloorIndex.rangeOK_at bl36 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl48 (by omega) (by omega)
       · by_cases h72 : i < 72
         · exact FloorIndex.rangeOK_at bl60 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl72 (by omega) (by omega)
   · by_cases h132 : i < 132
     · by_cases h108 : i < 108
       · by_cases h96 : i < 96
         · exact FloorIndex.rangeOK_at bl84 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl96 (by omega) (by omega)
       · by_cases h120 : i < 120
         · exact FloorIndex.rangeOK_at bl108 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl120 (by omega) (by omega)
     · by_cases h156 : i < 156
       · by_cases h144 : i < 144
         · exact FloorIndex.rangeOK_at bl132 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl144 (by omega) (by omega)
       · by_cases h168 : i < 168
         · exact FloorIndex.rangeOK_at bl156 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl168 (by omega) (by omega)
 · by_cases h264 : i < 264
   · by_cases h216 : i < 216
     · by_cases h192 : i < 192
       · exact FloorIndex.rangeOK_at bl180 (by omega) (by omega)
       · by_cases h204 : i < 204
         · exact FloorIndex.rangeOK_at bl192 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl204 (by omega) (by omega)
     · by_cases h240 : i < 240
       · by_cases h228 : i < 228
         · exact FloorIndex.rangeOK_at bl216 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl228 (by omega) (by omega)
       · by_cases h252 : i < 252
         · exact FloorIndex.rangeOK_at bl240 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl252 (by omega) (by omega)
   · by_cases h312 : i < 312
     · by_cases h288 : i < 288
       · by_cases h276 : i < 276
         · exact FloorIndex.rangeOK_at bl264 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl276 (by omega) (by omega)
       · by_cases h300 : i < 300
         · exact FloorIndex.rangeOK_at bl288 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl300 (by omega) (by omega)
     · by_cases h336 : i < 336
       · by_cases h324 : i < 324
         · exact FloorIndex.rangeOK_at bl312 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl324 (by omega) (by omega)
       · by_cases h348 : i < 348
         · exact FloorIndex.rangeOK_at bl336 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl348 (by omega) (by omega)
theorem noClock (n : Nat) : ¬ Count (model.term 0) n := by
 apply FloorIndex.sound model st (by rfl)
 intro i
 by_cases hi : i < 355
 · exact ⟨hs i, allValid i hi⟩
 · refine ⟨hs 0, ?_⟩
   have he : st i = entry := by simp [st,hi]
   unfold FloorIndex.check
   rw [he]
   exact allValid 0 (by decide)
theorem excluded : ¬ IsSelfInterpreter e302902157114 := by
 intro he
 have hp : replay [] (call e302902157114 (.lam (.lam (.var 0))) (.lam (.lam (.var 0))) (.var 0) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))]) = some (model.term 0) := by rw [sub0]; decide
 obtain ⟨h,hh⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
 exact noClock h hh
#print axioms excluded

end Certgen.R302902157114
