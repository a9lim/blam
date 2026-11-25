import Blc.Selfint40Evidence.CodeBridge
import Blc.Selfint40Evidence.R302902180238Blk0
import Blc.Selfint40Evidence.R302902180238Blk6
import Blc.Selfint40Evidence.R302902180238Blk12
import Blc.Selfint40Evidence.R302902180238Blk18
import Blc.Selfint40Evidence.R302902180238Blk24
import Blc.Selfint40Evidence.R302902180238Blk30
import Blc.Selfint40Evidence.R302902180238Blk36
import Blc.Selfint40Evidence.R302902180238Blk42
import Blc.Selfint40Evidence.R302902180238Blk48

namespace Certgen.R302902180238
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Floor40 Blc.Term Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def lit45 : Term := .var 0
def lit47 : Term := .var 2
def lit46 : Term := .lam lit47
def lit44 : Term := .app lit45 lit46
def lit38 : Term := .app lit47 lit44
def lit37 : Term := .lam lit38
def lit36 : Term := .lam lit37
def lit34 : Term := .app lit45 lit36
def lit32 : Term := .app lit45 lit34
def lit31 : Term := .lam lit32
def lit30 : Term := .app lit31 lit44
def lit29 : Term := .lam lit30
def lit28 : Term := .lam lit29
def lit14 : Term := .app lit31 lit28
def lit0 : Term := .app lit31 lit14
def filling : Nat → Term := fun p => Term.var 0
theorem ordered_code : ordered code = true := by decide +kernel
def model : Model P := codeModel (rankedCode code ordered_code) filling
theorem sub47 : model.term 47 = lit47 := model.var_eq 47 2 (by rfl)
theorem sub46 : model.term 46 = lit46 := by rw [model.lam_eq 46 47 (by rfl), sub47]; rfl
theorem sub45 : model.term 45 = lit45 := model.var_eq 45 0 (by rfl)
theorem sub44 : model.term 44 = lit44 := by rw [model.app_eq 44 45 46 (by rfl), sub45, sub46]; rfl
theorem sub43 : model.term 43 = lit47 := model.var_eq 43 2 (by rfl)
theorem sub42 : model.term 42 = lit46 := by rw [model.lam_eq 42 43 (by rfl), sub43]; rfl
theorem sub41 : model.term 41 = lit45 := model.var_eq 41 0 (by rfl)
theorem sub40 : model.term 40 = lit44 := by rw [model.app_eq 40 41 42 (by rfl), sub41, sub42]; rfl
theorem sub39 : model.term 39 = lit47 := model.var_eq 39 2 (by rfl)
theorem sub38 : model.term 38 = lit38 := by rw [model.app_eq 38 39 40 (by rfl), sub39, sub40]; rfl
theorem sub37 : model.term 37 = lit37 := by rw [model.lam_eq 37 38 (by rfl), sub38]; rfl
theorem sub36 : model.term 36 = lit36 := by rw [model.lam_eq 36 37 (by rfl), sub37]; rfl
theorem sub35 : model.term 35 = lit45 := model.var_eq 35 0 (by rfl)
theorem sub34 : model.term 34 = lit34 := by rw [model.app_eq 34 35 36 (by rfl), sub35, sub36]; rfl
theorem sub33 : model.term 33 = lit45 := model.var_eq 33 0 (by rfl)
theorem sub32 : model.term 32 = lit32 := by rw [model.app_eq 32 33 34 (by rfl), sub33, sub34]; rfl
theorem sub31 : model.term 31 = lit31 := by rw [model.lam_eq 31 32 (by rfl), sub32]; rfl
theorem sub30 : model.term 30 = lit30 := by rw [model.app_eq 30 31 44 (by rfl), sub31, sub44]; rfl
theorem sub29 : model.term 29 = lit29 := by rw [model.lam_eq 29 30 (by rfl), sub30]; rfl
theorem sub28 : model.term 28 = lit28 := by rw [model.lam_eq 28 29 (by rfl), sub29]; rfl
theorem sub27 : model.term 27 = lit47 := model.var_eq 27 2 (by rfl)
theorem sub26 : model.term 26 = lit46 := by rw [model.lam_eq 26 27 (by rfl), sub27]; rfl
theorem sub25 : model.term 25 = lit45 := model.var_eq 25 0 (by rfl)
theorem sub24 : model.term 24 = lit44 := by rw [model.app_eq 24 25 26 (by rfl), sub25, sub26]; rfl
theorem sub23 : model.term 23 = lit47 := model.var_eq 23 2 (by rfl)
theorem sub22 : model.term 22 = lit38 := by rw [model.app_eq 22 23 24 (by rfl), sub23, sub24]; rfl
theorem sub21 : model.term 21 = lit37 := by rw [model.lam_eq 21 22 (by rfl), sub22]; rfl
theorem sub20 : model.term 20 = lit36 := by rw [model.lam_eq 20 21 (by rfl), sub21]; rfl
theorem sub19 : model.term 19 = lit45 := model.var_eq 19 0 (by rfl)
theorem sub18 : model.term 18 = lit34 := by rw [model.app_eq 18 19 20 (by rfl), sub19, sub20]; rfl
theorem sub17 : model.term 17 = lit45 := model.var_eq 17 0 (by rfl)
theorem sub16 : model.term 16 = lit32 := by rw [model.app_eq 16 17 18 (by rfl), sub17, sub18]; rfl
theorem sub15 : model.term 15 = lit31 := by rw [model.lam_eq 15 16 (by rfl), sub16]; rfl
theorem sub14 : model.term 14 = lit14 := by rw [model.app_eq 14 15 28 (by rfl), sub15, sub28]; rfl
theorem sub13 : model.term 13 = lit47 := model.var_eq 13 2 (by rfl)
theorem sub12 : model.term 12 = lit46 := by rw [model.lam_eq 12 13 (by rfl), sub13]; rfl
theorem sub11 : model.term 11 = lit45 := model.var_eq 11 0 (by rfl)
theorem sub10 : model.term 10 = lit44 := by rw [model.app_eq 10 11 12 (by rfl), sub11, sub12]; rfl
theorem sub9 : model.term 9 = lit47 := model.var_eq 9 2 (by rfl)
theorem sub8 : model.term 8 = lit38 := by rw [model.app_eq 8 9 10 (by rfl), sub9, sub10]; rfl
theorem sub7 : model.term 7 = lit37 := by rw [model.lam_eq 7 8 (by rfl), sub8]; rfl
theorem sub6 : model.term 6 = lit36 := by rw [model.lam_eq 6 7 (by rfl), sub7]; rfl
theorem sub5 : model.term 5 = lit45 := model.var_eq 5 0 (by rfl)
theorem sub4 : model.term 4 = lit34 := by rw [model.app_eq 4 5 6 (by rfl), sub5, sub6]; rfl
theorem sub3 : model.term 3 = lit45 := model.var_eq 3 0 (by rfl)
theorem sub2 : model.term 2 = lit32 := by rw [model.app_eq 2 3 4 (by rfl), sub3, sub4]; rfl
theorem sub1 : model.term 1 = lit31 := by rw [model.lam_eq 1 2 (by rfl), sub2]; rfl
theorem sub0 : model.term 0 = lit0 := by rw [model.app_eq 0 1 14 (by rfl), sub1, sub14]; rfl
theorem allValid (i : Nat) (h : i < 603) : validState i = true := by
 by_cases h300 : i < 300
 · by_cases h144 : i < 144
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
 · by_cases h456 : i < 456
   · by_cases h372 : i < 372
     · by_cases h336 : i < 336
       · by_cases h312 : i < 312
         · exact FloorIndex.rangeOK_at bl300 (by omega) (by omega)
         · by_cases h324 : i < 324
           · exact FloorIndex.rangeOK_at bl312 (by omega) (by omega)
           · exact FloorIndex.rangeOK_at bl324 (by omega) (by omega)
       · by_cases h348 : i < 348
         · exact FloorIndex.rangeOK_at bl336 (by omega) (by omega)
         · by_cases h360 : i < 360
           · exact FloorIndex.rangeOK_at bl348 (by omega) (by omega)
           · exact FloorIndex.rangeOK_at bl360 (by omega) (by omega)
     · by_cases h408 : i < 408
       · by_cases h384 : i < 384
         · exact FloorIndex.rangeOK_at bl372 (by omega) (by omega)
         · by_cases h396 : i < 396
           · exact FloorIndex.rangeOK_at bl384 (by omega) (by omega)
           · exact FloorIndex.rangeOK_at bl396 (by omega) (by omega)
       · by_cases h432 : i < 432
         · by_cases h420 : i < 420
           · exact FloorIndex.rangeOK_at bl408 (by omega) (by omega)
           · exact FloorIndex.rangeOK_at bl420 (by omega) (by omega)
         · by_cases h444 : i < 444
           · exact FloorIndex.rangeOK_at bl432 (by omega) (by omega)
           · exact FloorIndex.rangeOK_at bl444 (by omega) (by omega)
   · by_cases h528 : i < 528
     · by_cases h492 : i < 492
       · by_cases h468 : i < 468
         · exact FloorIndex.rangeOK_at bl456 (by omega) (by omega)
         · by_cases h480 : i < 480
           · exact FloorIndex.rangeOK_at bl468 (by omega) (by omega)
           · exact FloorIndex.rangeOK_at bl480 (by omega) (by omega)
       · by_cases h504 : i < 504
         · exact FloorIndex.rangeOK_at bl492 (by omega) (by omega)
         · by_cases h516 : i < 516
           · exact FloorIndex.rangeOK_at bl504 (by omega) (by omega)
           · exact FloorIndex.rangeOK_at bl516 (by omega) (by omega)
     · by_cases h564 : i < 564
       · by_cases h540 : i < 540
         · exact FloorIndex.rangeOK_at bl528 (by omega) (by omega)
         · by_cases h552 : i < 552
           · exact FloorIndex.rangeOK_at bl540 (by omega) (by omega)
           · exact FloorIndex.rangeOK_at bl552 (by omega) (by omega)
       · by_cases h588 : i < 588
         · by_cases h576 : i < 576
           · exact FloorIndex.rangeOK_at bl564 (by omega) (by omega)
           · exact FloorIndex.rangeOK_at bl576 (by omega) (by omega)
         · by_cases h600 : i < 600
           · exact FloorIndex.rangeOK_at bl588 (by omega) (by omega)
           · exact FloorIndex.rangeOK_at bl600 (by omega) (by omega)
theorem noClock (n : Nat) : ¬ Count (model.term 0) n := by
 apply FloorIndex.sound model st (by rfl)
 intro i
 by_cases hi : i < 603
 · exact ⟨hs i, allValid i hi⟩
 · refine ⟨hs 0, ?_⟩
   have he : st i = entry := by simp [st,hi]
   unfold FloorIndex.check
   rw [he]
   exact allValid 0 (by decide)
theorem excluded : ¬ IsSelfInterpreter e302902180238 := by
 intro he
 have hp : replay [[],[]] e302902180238 = some (model.term 0) := by rw [sub0]; decide
 obtain ⟨h,hh⟩ := clocks_replay (rawCount he) hp
 exact noClock h hh
#print axioms excluded

end Certgen.R302902180238
