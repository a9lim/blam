import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692715709398Proof12

set_option Elab.async false
namespace Blc.H45.H45F9692715709398
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h468 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s94 (ρ 1)) (a2 : Fits s56 (ρ 2)) : All tab ρ b4 s102 :=
  appAll len149 d149 c149 sub165 ((h177 ρ a1) 149 mem148) Positive.none
theorem h469 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s82 (ρ 1)) (a2 : Fits s90 (ρ 2)) : All tab ρ b4 s94 :=
  appAll len150 d150 c150 sub84 ((h171 ρ a1) 150 mem95) Positive.none
theorem h470 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s82 (ρ 1)) (a2 : Fits s66 (ρ 2)) : All tab ρ b4 s94 :=
  appAll len150 d150 c150 sub84 ((h171 ρ a1) 150 mem95) Positive.none
theorem h471 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s82 (ρ 1)) (a2 : Fits s58 (ρ 2)) : All tab ρ b4 s94 :=
  appAll len150 d150 c150 sub84 ((h171 ρ a1) 150 mem95) Positive.none
theorem h472 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s82 (ρ 1)) (a2 : Fits s82 (ρ 2)) : All tab ρ b4 s94 :=
  appAll len150 d150 c150 sub84 ((h171 ρ a1) 150 mem95) Positive.none
theorem h473 (ρ : Env) (a0 : Fits s97 (ρ 0)) (a1 : Fits s98 (ρ 1)) (a2 : Fits s58 (ρ 2)) : All tab ρ b4 s131 :=
  appAll len155 d155 c155 sub214 ((h179 ρ a1) 155 mem149) (smaller (h336 ρ a0 a2) sub87)
theorem h474 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s82 (ρ 1)) (a2 : Fits s67 (ρ 2)) : All tab ρ b4 s94 :=
  appAll len150 d150 c150 sub84 ((h171 ρ a1) 150 mem95) Positive.none
theorem h475 (ρ : Env) (a0 : Fits s99 (ρ 0)) (a1 : Fits s100 (ρ 1)) (a2 : Fits s58 (ρ 2)) : All tab ρ b4 s131 :=
  appAll len157 d157 c157 sub214 ((h181 ρ a1) 157 mem150) (smaller (h335 ρ a0 a2) sub164)
theorem h476 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s101 (ρ 1)) (a2 : Fits s67 (ρ 2)) : All tab ρ b4 s102 :=
  appAll len158 d158 c158 sub165 ((h182 ρ a1) 158 mem151) (smaller (h324 ρ a0 a2) sub75)
theorem h477 (ρ : Env) (a0 : Fits s82 (ρ 0)) (a1 : Fits s99 (ρ 1)) (a2 : Fits s56 (ρ 2)) : All tab ρ b4 s102 :=
  appAll len160 d160 c160 sub165 ((h183 ρ a1) 160 mem152) (smaller (h311 ρ a0 a2) sub4)
theorem h478 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s97 (ρ 1)) (a2 : Fits s56 (ρ 2)) : All tab ρ b4 s102 :=
  appAll len162 d162 c162 sub165 ((h184 ρ a1) 162 mem153) (smaller (h337 ρ a0 a2) sub165)
theorem h479 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s102 (ρ 1)) (a2 : Fits s0 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len4 d4 c4 sub4 ((h185 ρ a1) 4 mem154) Positive.none
theorem h480 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s102 (ρ 1)) (a2 : Fits s0 (ρ 2)) : All tab ρ b4 s102 :=
  appAll len149 d149 c149 sub165 ((h185 ρ a1) 149 mem155) Positive.none
theorem h481 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s87 (ρ 1)) (a2 : Fits s86 (ρ 2)) : All tab ρ b4 s102 :=
  appAll len163 d163 c163 sub165 ((h168 ρ a1) 163 mem156) (smaller (h338 ρ a0 a2) sub17)
theorem h482 (ρ : Env) (a0 : Fits s17 (ρ 0)) (a1 : Fits s87 (ρ 1)) (a2 : Fits s54 (ρ 2)) : All tab ρ b4 s102 :=
  appAll len163 d163 c163 sub165 ((h168 ρ a1) 163 mem156) (smaller (h294 ρ a0 a2) sub17)
theorem h483 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s17 (ρ 1)) (a2 : Fits s83 (ρ 2)) : All tab ρ b4 s6 :=
  botAll ((h110 ρ a1) 0 mem16)
theorem h484 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s17 (ρ 1)) (a2 : Fits s83 (ρ 2)) : All tab ρ b4 s102 :=
  botAll ((h110 ρ a1) 0 mem16)
theorem h485 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s20 (ρ 1)) (a2 : Fits s54 (ρ 2)) : All tab ρ b4 s17 :=
  appAll len34 d34 c34 sub17 ((h121 ρ a1) 34 mem8) (smaller (h339 ρ a0 a2) sub17)
theorem h486 (ρ : Env) (a0 : Fits s103 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s41 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len9 d9 c9 sub4 ((h145 ρ a1) 9 mem131) (smaller (h340 ρ a0 a2) sub4)
theorem h487 (ρ : Env) (a0 : Fits s104 (ρ 0)) (a1 : Fits s91 (ρ 1)) (a2 : Fits s103 (ρ 2)) : All tab ρ b4 s3 :=
  appAll len138 d138 c138 sub15 ((h170 ρ a1) 138 mem142) (smaller (h341 ρ a0 a2) sub71)
theorem h488 (ρ : Env) (a0 : Fits s105 (ρ 0)) (a1 : Fits s91 (ρ 1)) (a2 : Fits s103 (ρ 2)) : All tab ρ b4 s82 :=
  appAll len142 d142 c142 sub75 ((h170 ρ a1) 142 mem143) (smaller (h342 ρ a0 a2) sub76)
theorem h489 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s75 (ρ 1)) (a2 : Fits s103 (ρ 2)) : All tab ρ b4 s3 :=
  appAll len6 d6 c6 sub15 ((h155 ρ a1) 6 mem61) (smaller (h343 ρ a0 a2) sub15)
theorem h490 (ρ : Env) (a0 : Fits s82 (ρ 0)) (a1 : Fits s75 (ρ 1)) (a2 : Fits s103 (ρ 2)) : All tab ρ b4 s82 :=
  appAll len141 d141 c141 sub75 ((h155 ρ a1) 141 mem64) (smaller (h344 ρ a0 a2) sub75)
theorem h491 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s104 (ρ 1)) (a2 : Fits s6 (ρ 2)) : All tab ρ b4 s3 :=
  appAll len168 d168 c168 sub15 ((h186 ρ a1) 168 mem157) (smaller (h260 ρ a0 a2) sub17)
theorem h492 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s105 (ρ 1)) (a2 : Fits s6 (ρ 2)) : All tab ρ b4 s82 :=
  appAll len169 d169 c169 sub75 ((h187 ρ a1) 169 mem158) (smaller (h260 ρ a0 a2) sub17)
theorem h493 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s82 (ρ 1)) (a2 : Fits s6 (ρ 2)) : All tab ρ b4 s94 :=
  appAll len150 d150 c150 sub84 ((h171 ρ a1) 150 mem95) Positive.none
theorem h494 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s82 (ρ 1)) (a2 : Fits s6 (ρ 2)) : All tab ρ b4 s3 :=
  appAll len102 d102 c102 sub15 ((h171 ρ a1) 102 mem90) Positive.none
theorem h495 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s17 (ρ 1)) (a2 : Fits s67 (ρ 2)) : All tab ρ b4 s6 :=
  botAll ((h110 ρ a1) 0 mem16)
theorem h496 (ρ : Env) (a0 : Fits s17 (ρ 0)) (a1 : Fits s96 (ρ 1)) (a2 : Fits s58 (ρ 2)) : All tab ρ b4 s82 :=
  appAll len141 d141 c141 sub75 ((h174 ρ a1) 141 mem147) (smaller (h345 ρ a0 a2) sub75)
theorem h497 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s17 (ρ 1)) (a2 : Fits s56 (ρ 2)) : All tab ρ b4 s102 :=
  botAll ((h110 ρ a1) 0 mem16)
theorem h498 (ρ : Env) (a0 : Fits s157 (ρ 0)) (a1 : Fits s91 (ρ 1)) (a2 : Fits s89 (ρ 2)) : All tab ρ b4 s3 :=
  appAll len138 d138 c138 sub15 ((h170 ρ a1) 138 mem142) (smaller (h346 ρ a0 a2) sub71)
theorem h499 (ρ : Env) (a0 : Fits s130 (ρ 0)) (a1 : Fits s91 (ρ 1)) (a2 : Fits s89 (ρ 2)) : All tab ρ b4 s82 :=
  appAll len142 d142 c142 sub75 ((h170 ρ a1) 142 mem143) (smaller (h347 ρ a0 a2) sub76)
theorem h500 (ρ : Env) (a0 : Fits s17 (ρ 0)) (a1 : Fits s95 (ρ 1)) (a2 : Fits s58 (ρ 2)) : All tab ρ b4 s82 :=
  appAll len145 d145 c145 sub75 ((h172 ρ a1) 145 mem146) (smaller (h350 ρ a0 a2) sub84)
theorem h501 (ρ : Env) (a0 : Fits s94 (ρ 0)) (a1 : Fits s106 (ρ 1)) (a2 : Fits s58 (ρ 2)) : All tab ρ b4 s82 :=
  appAll len141 d141 c141 sub75 ((h190 ρ a1) 141 mem75) (smaller (h330 ρ a0 a2) sub75)
theorem h502 (ρ : Env) (a0 : Fits s99 (ρ 0)) (a1 : Fits s98 (ρ 1)) (a2 : Fits s58 (ρ 2)) : All tab ρ b4 s131 :=
  appAll len155 d155 c155 sub214 ((h179 ρ a1) 155 mem149) (smaller (h352 ρ a0 a2) sub87)
theorem h503 (ρ : Env) (a0 : Fits s99 (ρ 0)) (a1 : Fits s106 (ρ 1)) (a2 : Fits s58 (ρ 2)) : All tab ρ b4 s131 :=
  appAll len157 d157 c157 sub214 ((h190 ρ a1) 157 mem76) (smaller (h335 ρ a0 a2) sub164)
end Blc.H45.H45F9692715709398
