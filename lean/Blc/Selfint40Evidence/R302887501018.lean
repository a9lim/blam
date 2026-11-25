import Blc.Selfint40Evidence.CodeBridge
import Blc.Selfint40Evidence.R302887501018Blk0
import Blc.Selfint40Evidence.R302887501018Blk6
import Blc.Selfint40Evidence.R302887501018Blk12
import Blc.Selfint40Evidence.R302887501018Blk18
import Blc.Selfint40Evidence.R302887501018Blk24

namespace Certgen.R302887501018
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Floor40 Blc.Term Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def lit17 : Term := .var 0
def lit16 : Term := .var 1
def lit13 : Term := .var 3
def lit2 : Term := .app lit17 lit17
def lit14 : Term := .app lit17 lit16
def lit1 : Term := .lam lit2
def lit12 : Term := .app lit13 lit14
def lit11 : Term := .lam lit12
def lit10 : Term := .lam lit11
def lit9 : Term := .lam lit10
def lit7 : Term := .app lit17 lit9
def lit6 : Term := .app lit7 lit17
def lit5 : Term := .lam lit6
def lit0 : Term := .app lit1 lit5
def filling : Nat → Term := fun p => Term.var 0
theorem ordered_code : ordered code = true := by decide +kernel
def model : Model P := codeModel (rankedCode code ordered_code) filling
theorem sub17 : model.term 17 = lit17 := model.var_eq 17 0 (by rfl)
theorem sub16 : model.term 16 = lit16 := model.var_eq 16 1 (by rfl)
theorem sub15 : model.term 15 = lit17 := model.var_eq 15 0 (by rfl)
theorem sub14 : model.term 14 = lit14 := by rw [model.app_eq 14 15 16 (by rfl), sub15, sub16]; rfl
theorem sub13 : model.term 13 = lit13 := model.var_eq 13 3 (by rfl)
theorem sub12 : model.term 12 = lit12 := by rw [model.app_eq 12 13 14 (by rfl), sub13, sub14]; rfl
theorem sub11 : model.term 11 = lit11 := by rw [model.lam_eq 11 12 (by rfl), sub12]; rfl
theorem sub10 : model.term 10 = lit10 := by rw [model.lam_eq 10 11 (by rfl), sub11]; rfl
theorem sub9 : model.term 9 = lit9 := by rw [model.lam_eq 9 10 (by rfl), sub10]; rfl
theorem sub8 : model.term 8 = lit17 := model.var_eq 8 0 (by rfl)
theorem sub7 : model.term 7 = lit7 := by rw [model.app_eq 7 8 9 (by rfl), sub8, sub9]; rfl
theorem sub6 : model.term 6 = lit6 := by rw [model.app_eq 6 7 17 (by rfl), sub7, sub17]; rfl
theorem sub5 : model.term 5 = lit5 := by rw [model.lam_eq 5 6 (by rfl), sub6]; rfl
theorem sub4 : model.term 4 = lit17 := model.var_eq 4 0 (by rfl)
theorem sub3 : model.term 3 = lit17 := model.var_eq 3 0 (by rfl)
theorem sub2 : model.term 2 = lit2 := by rw [model.app_eq 2 3 4 (by rfl), sub3, sub4]; rfl
theorem sub1 : model.term 1 = lit1 := by rw [model.lam_eq 1 2 (by rfl), sub2]; rfl
theorem sub0 : model.term 0 = lit0 := by rw [model.app_eq 0 1 5 (by rfl), sub1, sub5]; rfl
theorem allValid (i : Nat) (h : i < 294) : validState i = true := by
 by_cases h144 : i < 144
 · by_cases h72 : i < 72
   · by_cases h36 : i < 36
     · by_cases h12 : i < 12
       · exact FloorIndex.rangeOK_at bl0 (by omega) (by omega)
       · by_cases h24 : i < 24
         · exact FloorIndex.rangeOK_at bl12 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl24 (by omega) (by omega)
     · by_cases h48 : i < 48
       · exact FloorIndex.rangeOK_at bl36 (by omega) (by omega)
       · by_cases h60 : i < 60
         · exact FloorIndex.rangeOK_at bl48 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl60 (by omega) (by omega)
   · by_cases h108 : i < 108
     · by_cases h84 : i < 84
       · exact FloorIndex.rangeOK_at bl72 (by omega) (by omega)
       · by_cases h96 : i < 96
         · exact FloorIndex.rangeOK_at bl84 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl96 (by omega) (by omega)
     · by_cases h120 : i < 120
       · exact FloorIndex.rangeOK_at bl108 (by omega) (by omega)
       · by_cases h132 : i < 132
         · exact FloorIndex.rangeOK_at bl120 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl132 (by omega) (by omega)
 · by_cases h216 : i < 216
   · by_cases h180 : i < 180
     · by_cases h156 : i < 156
       · exact FloorIndex.rangeOK_at bl144 (by omega) (by omega)
       · by_cases h168 : i < 168
         · exact FloorIndex.rangeOK_at bl156 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl168 (by omega) (by omega)
     · by_cases h192 : i < 192
       · exact FloorIndex.rangeOK_at bl180 (by omega) (by omega)
       · by_cases h204 : i < 204
         · exact FloorIndex.rangeOK_at bl192 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl204 (by omega) (by omega)
   · by_cases h252 : i < 252
     · by_cases h228 : i < 228
       · exact FloorIndex.rangeOK_at bl216 (by omega) (by omega)
       · by_cases h240 : i < 240
         · exact FloorIndex.rangeOK_at bl228 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl240 (by omega) (by omega)
     · by_cases h276 : i < 276
       · by_cases h264 : i < 264
         · exact FloorIndex.rangeOK_at bl252 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl264 (by omega) (by omega)
       · by_cases h288 : i < 288
         · exact FloorIndex.rangeOK_at bl276 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl288 (by omega) (by omega)
theorem noClock (n : Nat) : ¬ Count (model.term 0) n := by
 apply FloorIndex.sound model st (by rfl)
 intro i
 by_cases hi : i < 294
 · exact ⟨hs i, allValid i hi⟩
 · refine ⟨hs 0, ?_⟩
   have he : st i = entry := by simp [st,hi]
   unfold FloorIndex.check
   rw [he]
   exact allValid 0 (by decide)
theorem excluded : ¬ IsSelfInterpreter e302887501018 := by
 intro he
 have hp : replay [] e302887501018 = some (model.term 0) := by rw [sub0]; decide
 obtain ⟨h,hh⟩ := clocks_replay (rawCount he) hp
 exact noClock h hh
#print axioms excluded

end Certgen.R302887501018
