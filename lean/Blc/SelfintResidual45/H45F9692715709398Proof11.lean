import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692715709398Proof10

set_option Elab.async false
namespace Blc.H45.H45F9692715709398
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h396 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s3 (ρ 1)) (a2 : Fits s41 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len4 d4 c4 sub4 ((h97 ρ a1) 4 mem102) Positive.none
theorem h397 (ρ : Env) (a0 : Fits s43 (ρ 0)) (a1 : Fits s16 (ρ 1)) (a2 : Fits s41 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len24 d24 c24 sub4 ((h109 ρ a1) 24 mem106) (smaller (h282 ρ a0 a2) sub17)
theorem h398 (ρ : Env) (a0 : Fits s44 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s18 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len66 d66 c66 sub4 ((h129 ρ a1) 66 mem28) (smaller (h285 ρ a0 a2) sub184)
theorem h399 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s3 (ρ 1)) (a2 : Fits s46 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len4 d4 c4 sub4 ((h97 ρ a1) 4 mem102) Positive.none
theorem h400 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s46 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len9 d9 c9 sub4 ((h99 ρ a1) 9 mem0) (smaller (h284 ρ a0 a2) sub4)
theorem h401 (ρ : Env) (a0 : Fits s49 (ρ 0)) (a1 : Fits s51 (ρ 1)) (a2 : Fits s44 (ρ 2)) : All tab ρ b4 s46 :=
  appAll len74 d74 c74 sub184 ((h131 ρ a1) 74 mem120) (smaller (h288 ρ a0 a2) sub184)
theorem h402 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s52 (ρ 1)) (a2 : Fits s44 (ρ 2)) : All tab ρ b4 s46 :=
  appAll len69 d69 c69 sub184 ((h133 ρ a1) 69 mem121) (smaller (h286 ρ a0 a2) sub2)
theorem h403 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s43 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len9 d9 c9 sub4 ((h99 ρ a1) 9 mem0) (smaller (h287 ρ a0 a2) sub4)
theorem h404 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s44 (ρ 2)) : All tab ρ b4 s17 :=
  appAll len2 d2 c2 sub17 ((h100 ρ a1) 2 mem7) Positive.none
theorem h405 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s41 (ρ 2)) : All tab ρ b4 s17 :=
  appAll len2 d2 c2 sub17 ((h100 ρ a1) 2 mem7) Positive.none
theorem h406 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s49 (ρ 1)) (a2 : Fits s43 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len76 d76 c76 sub4 ((h136 ρ a1) 76 mem127) (Positive.consAll ((h295 ρ a0 a2) 35 mem122) (Positive.consAll ((h289 ρ a0 a2) 77 mem123) (Positive.consAll ((h295 ρ a0 a2) 99 mem124) (Positive.consAll ((h295 ρ a0 a2) 134 mem125) (Positive.consAll ((h295 ρ a0 a2) 165 mem126) Positive.none)))))
theorem h407 (ρ : Env) (a0 : Fits s54 (ρ 0)) (a1 : Fits s16 (ρ 1)) (a2 : Fits s41 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len24 d24 c24 sub4 ((h109 ρ a1) 24 mem106) (smaller (h290 ρ a0 a2) sub17)
theorem h408 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s17 (ρ 1)) (a2 : Fits s46 (ρ 2)) : All tab ρ b4 s17 :=
  botAll ((h110 ρ a1) 0 mem16)
theorem h409 (ρ : Env) (a0 : Fits s55 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s18 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len81 d81 c81 sub4 ((h129 ρ a1) 81 mem29) (Positive.consAll ((h312 ρ a0 a2) 9 mem101) (Positive.consAll ((h292 ρ a0 a2) 83 mem56) (Positive.consAll ((h312 ρ a0 a2) 122 mem81) (Positive.consAll ((h312 ρ a0 a2) 160 mem97) Positive.none))))
theorem h410 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s3 (ρ 1)) (a2 : Fits s56 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len4 d4 c4 sub4 ((h97 ρ a1) 4 mem102) Positive.none
theorem h411 (ρ : Env) (a0 : Fits s58 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s56 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len9 d9 c9 sub4 ((h99 ρ a1) 9 mem0) (smaller (h291 ρ a0 a2) sub4)
theorem h412 (ρ : Env) (a0 : Fits s20 (ρ 0)) (a1 : Fits s61 (ρ 1)) (a2 : Fits s59 (ρ 2)) : All tab ρ b4 s121 :=
  appAll len89 d89 c89 sub199 ((h140 ρ a1) 89 mem128) (smaller (h299 ρ a0 a2) sub187)
theorem h413 (ρ : Env) (a0 : Fits s16 (ρ 0)) (a1 : Fits s63 (ρ 1)) (a2 : Fits s59 (ρ 2)) : All tab ρ b4 s121 :=
  appAll len90 d90 c90 sub199 ((h142 ρ a1) 90 mem129) (smaller (h293 ρ a0 a2) sub10)
theorem h414 (ρ : Env) (a0 : Fits s58 (ρ 0)) (a1 : Fits s16 (ρ 1)) (a2 : Fits s62 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len24 d24 c24 sub4 ((h109 ρ a1) 24 mem106) (smaller (h298 ρ a0 a2) sub17)
theorem h415 (ρ : Env) (a0 : Fits s17 (ρ 0)) (a1 : Fits s16 (ρ 1)) (a2 : Fits s54 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len24 d24 c24 sub4 ((h109 ρ a1) 24 mem106) (smaller (h294 ρ a0 a2) sub17)
theorem h416 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s17 (ρ 1)) (a2 : Fits s59 (ρ 2)) : All tab ρ b4 s17 :=
  botAll ((h110 ρ a1) 0 mem16)
theorem h417 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s41 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len24 d24 c24 sub4 ((h145 ρ a1) 24 mem130) (smaller (h296 ρ a0 a2) sub17)
theorem h418 (ρ : Env) (a0 : Fits s26 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s18 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len95 d95 c95 sub4 ((h129 ρ a1) 95 mem30) (smaller (h297 ρ a0 a2) sub178)
theorem h419 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s3 (ρ 1)) (a2 : Fits s30 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len4 d4 c4 sub4 ((h97 ρ a1) 4 mem102) Positive.none
theorem h420 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s17 (ρ 1)) (a2 : Fits s30 (ρ 2)) : All tab ρ b4 s17 :=
  botAll ((h110 ρ a1) 0 mem16)
theorem h421 (ρ : Env) (a0 : Fits s58 (ρ 0)) (a1 : Fits s20 (ρ 1)) (a2 : Fits s54 (ρ 2)) : All tab ρ b4 s17 :=
  appAll len34 d34 c34 sub17 ((h121 ρ a1) 34 mem8) (smaller (h300 ρ a0 a2) sub17)
theorem h422 (ρ : Env) (a0 : Fits s65 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s41 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len9 d9 c9 sub4 ((h145 ρ a1) 9 mem131) (smaller (h301 ρ a0 a2) sub4)
theorem h423 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s46 (ρ 2)) : All tab ρ b4 s17 :=
  appAll len2 d2 c2 sub17 ((h100 ρ a1) 2 mem7) Positive.none
theorem h424 (ρ : Env) (a0 : Fits s66 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s18 (ρ 2)) : All tab ρ b4 s3 :=
  appAll len101 d101 c101 sub15 ((h129 ρ a1) 101 mem31) (smaller (h303 ρ a0 a2) sub189)
theorem h425 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s69 (ρ 1)) (a2 : Fits s67 (ρ 2)) : All tab ρ b4 s3 :=
  appAll len102 d102 c102 sub15 ((h149 ρ a1) 102 mem132) Positive.none
theorem h426 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s71 (ρ 1)) (a2 : Fits s67 (ρ 2)) : All tab ρ b4 s3 :=
  appAll len6 d6 c6 sub15 ((h151 ρ a1) 6 mem133) (smaller (h302 ρ a0 a2) sub15)
theorem h427 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s3 (ρ 1)) (a2 : Fits s0 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len4 d4 c4 sub4 ((h97 ρ a1) 4 mem102) Positive.none
theorem h428 (ρ : Env) (a0 : Fits s72 (ρ 0)) (a1 : Fits s74 (ρ 1)) (a2 : Fits s66 (ρ 2)) : All tab ρ b4 s67 :=
  appAll len111 d111 c111 sub189 ((h152 ρ a1) 111 mem134) (smaller (h306 ρ a0 a2) sub189)
theorem h429 (ρ : Env) (a0 : Fits s75 (ρ 0)) (a1 : Fits s76 (ρ 1)) (a2 : Fits s66 (ρ 2)) : All tab ρ b4 s67 :=
  appAll len112 d112 c112 sub189 ((h154 ρ a1) 112 mem135) (smaller (h304 ρ a0 a2) sub55)
theorem h430 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s75 (ρ 1)) (a2 : Fits s67 (ρ 2)) : All tab ρ b4 s3 :=
  appAll len6 d6 c6 sub15 ((h155 ρ a1) 6 mem61) (smaller (h302 ρ a0 a2) sub15)
theorem h431 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s75 (ρ 1)) (a2 : Fits s65 (ρ 2)) : All tab ρ b4 s3 :=
  appAll len6 d6 c6 sub15 ((h155 ρ a1) 6 mem61) (smaller (h305 ρ a0 a2) sub15)
end Blc.H45.H45F9692715709398
