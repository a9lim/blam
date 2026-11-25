import Blc.Selfint40Evidence.CodeBridge
import Blc.SelfintResidual41.R598355276502Checks
import Blc.SelfintResidual41.R598355276502Data

set_option Elab.async false
namespace Certgen.R598355276502
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Floor40 Blc.Floor41 Blc.Term Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def lit17 : Term := .var 0
def lit18 : Term := .var 1
def lit13 : Term := .var 2
def lit15 : Term := .app lit17 lit17
def lit2 : Term := .app lit15 lit17
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
theorem sub4 : model.term 4 = lit17 := model.var_eq 4 0 (by rfl)
theorem sub3 : model.term 3 = lit15 := by rw [model.app_eq 3 4 5 (by rfl), sub4, sub5]; rfl
theorem sub2 : model.term 2 = lit2 := by rw [model.app_eq 2 3 6 (by rfl), sub3, sub6]; rfl
theorem sub1 : model.term 1 = lit1 := by rw [model.lam_eq 1 2 (by rfl), sub2]; rfl
theorem sub0 : model.term 0 = lit0 := by rw [model.app_eq 0 1 7 (by rfl), sub1, sub7]; rfl
theorem allValid (i : Nat) (h : i < 259) : validState i = true := by
 by_cases h132 : i < 132
 · by_cases h60 : i < 60
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
 · by_cases h192 : i < 192
   · by_cases h156 : i < 156
     · by_cases h144 : i < 144
       · exact FloorIndex.rangeOK_at bl132 (by omega) (by omega)
       · exact FloorIndex.rangeOK_at bl144 (by omega) (by omega)
     · by_cases h168 : i < 168
       · exact FloorIndex.rangeOK_at bl156 (by omega) (by omega)
       · by_cases h180 : i < 180
         · exact FloorIndex.rangeOK_at bl168 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl180 (by omega) (by omega)
   · by_cases h228 : i < 228
     · by_cases h204 : i < 204
       · exact FloorIndex.rangeOK_at bl192 (by omega) (by omega)
       · by_cases h216 : i < 216
         · exact FloorIndex.rangeOK_at bl204 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl216 (by omega) (by omega)
     · by_cases h240 : i < 240
       · exact FloorIndex.rangeOK_at bl228 (by omega) (by omega)
       · by_cases h252 : i < 252
         · exact FloorIndex.rangeOK_at bl240 (by omega) (by omega)
         · exact FloorIndex.rangeOK_at bl252 (by omega) (by omega)
theorem noClock (n : Nat) : ¬ Count (model.term 0) n := by
 apply FloorIndex.sound model st (by rfl)
 intro i
 by_cases hi : i < 259
 · exact ⟨hs i, allValid i hi⟩
 · refine ⟨hs 0, ?_⟩
   have he : st i = entry := by simp [st,hi]
   unfold FloorIndex.check
   rw [he]
   exact allValid 0 (by decide)
theorem excluded : ¬ IsSelfInterpreter e598355276502 := by
 intro he
 have hp : replay [] e598355276502 = some (model.term 0) := by rw [sub0]; decide
 obtain ⟨h,hh⟩ := clocks_replay (rawCount he) hp
 exact noClock h hh
#print axioms excluded

end Certgen.R598355276502
