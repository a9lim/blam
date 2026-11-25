import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692715709398Proof9

set_option Elab.async false
namespace Blc.H45.H45F9692715709398
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h360 (ρ : Env) (a0 : Fits s8 (ρ 0)) (a1 : Fits s10 (ρ 1)) (a2 : Fits s7 (ρ 2)) : All tab ρ b4 s11 :=
  appAll len15 d15 c15 sub173 ((h101 ρ a1) 15 mem103) (smaller (h258 ρ a0 a2) sub173)
theorem h361 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s12 (ρ 1)) (a2 : Fits s7 (ρ 2)) : All tab ρ b4 s11 :=
  appAll len16 d16 c16 sub173 ((h103 ρ a1) 16 mem104) (smaller (h255 ρ a0 a2) sub2)
theorem h362 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s11 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len9 d9 c9 sub4 ((h99 ρ a1) 9 mem0) (smaller (h257 ρ a0 a2) sub4)
theorem h363 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len9 d9 c9 sub4 ((h99 ρ a1) 9 mem0) (smaller (h256 ρ a0 a2) sub4)
theorem h364 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s7 (ρ 2)) : All tab ρ b4 s17 :=
  appAll len2 d2 c2 sub17 ((h100 ρ a1) 2 mem7) Positive.none
theorem h365 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b4 s17 :=
  appAll len2 d2 c2 sub17 ((h100 ρ a1) 2 mem7) Positive.none
theorem h366 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s8 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len19 d19 c19 sub4 ((h106 ρ a1) 19 mem105) (Positive.consAll ((h259 ρ a0 a2) 20 mem10) (Positive.consAll ((h264 ρ a0 a2) 35 mem13) (Positive.consAll ((h264 ρ a0 a2) 48 mem27) Positive.none)))
theorem h367 (ρ : Env) (a0 : Fits s14 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len9 d9 c9 sub4 ((h99 ρ a1) 9 mem0) (smaller (h261 ρ a0 a2) sub4)
theorem h368 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s3 (ρ 1)) (a2 : Fits s6 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len4 d4 c4 sub4 ((h97 ρ a1) 4 mem102) Positive.none
theorem h369 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s16 (ρ 1)) (a2 : Fits s6 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len24 d24 c24 sub4 ((h109 ρ a1) 24 mem106) (smaller (h260 ρ a0 a2) sub17)
theorem h370 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s17 (ρ 1)) (a2 : Fits s0 (ρ 2)) : All tab ρ b4 s17 :=
  botAll ((h110 ρ a1) 0 mem16)
theorem h371 (ρ : Env) (a0 : Fits s20 (ρ 0)) (a1 : Fits s22 (ρ 1)) (a2 : Fits s19 (ρ 2)) : All tab ρ b4 s111 :=
  appAll len30 d30 c30 sub212 ((h111 ρ a1) 30 mem107) (smaller (h273 ρ a0 a2) sub179)
theorem h372 (ρ : Env) (a0 : Fits s16 (ρ 0)) (a1 : Fits s24 (ρ 1)) (a2 : Fits s19 (ρ 2)) : All tab ρ b4 s111 :=
  appAll len31 d31 c31 sub212 ((h113 ρ a1) 31 mem108) (smaller (h262 ρ a0 a2) sub10)
theorem h373 (ρ : Env) (a0 : Fits s18 (ρ 0)) (a1 : Fits s16 (ρ 1)) (a2 : Fits s23 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len24 d24 c24 sub4 ((h109 ρ a1) 24 mem106) (smaller (h272 ρ a0 a2) sub17)
theorem h374 (ρ : Env) (a0 : Fits s17 (ρ 0)) (a1 : Fits s16 (ρ 1)) (a2 : Fits s14 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len24 d24 c24 sub4 ((h109 ρ a1) 24 mem106) (smaller (h263 ρ a0 a2) sub17)
theorem h375 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s17 (ρ 1)) (a2 : Fits s19 (ρ 2)) : All tab ρ b4 s17 :=
  botAll ((h110 ρ a1) 0 mem16)
theorem h376 (ρ : Env) (a0 : Fits s25 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len9 d9 c9 sub4 ((h99 ρ a1) 9 mem0) (smaller (h265 ρ a0 a2) sub4)
theorem h377 (ρ : Env) (a0 : Fits s27 (ρ 0)) (a1 : Fits s29 (ρ 1)) (a2 : Fits s26 (ρ 2)) : All tab ρ b4 s30 :=
  appAll len42 d42 c42 sub178 ((h116 ρ a1) 42 mem109) (smaller (h269 ρ a0 a2) sub178)
theorem h378 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s31 (ρ 1)) (a2 : Fits s26 (ρ 2)) : All tab ρ b4 s30 :=
  appAll len43 d43 c43 sub178 ((h118 ρ a1) 43 mem110) (smaller (h266 ρ a0 a2) sub2)
theorem h379 (ρ : Env) (a0 : Fits s16 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s30 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len9 d9 c9 sub4 ((h99 ρ a1) 9 mem0) (smaller (h268 ρ a0 a2) sub4)
theorem h380 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s25 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len9 d9 c9 sub4 ((h99 ρ a1) 9 mem0) (smaller (h267 ρ a0 a2) sub4)
theorem h381 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s26 (ρ 2)) : All tab ρ b4 s17 :=
  appAll len2 d2 c2 sub17 ((h100 ρ a1) 2 mem7) Positive.none
theorem h382 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s17 (ρ 2)) : All tab ρ b4 s17 :=
  appAll len2 d2 c2 sub17 ((h100 ρ a1) 2 mem7) Positive.none
theorem h383 (ρ : Env) (a0 : Fits s16 (ρ 0)) (a1 : Fits s27 (ρ 1)) (a2 : Fits s25 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len45 d45 c45 sub4 ((h120 ρ a1) 45 mem111) (smaller (h270 ρ a0 a2) sub15)
theorem h384 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s16 (ρ 1)) (a2 : Fits s17 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len24 d24 c24 sub4 ((h109 ρ a1) 24 mem106) (smaller (h271 ρ a0 a2) sub17)
theorem h385 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s3 (ρ 1)) (a2 : Fits s17 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len4 d4 c4 sub4 ((h97 ρ a1) 4 mem102) Positive.none
theorem h386 (ρ : Env) (a0 : Fits s18 (ρ 0)) (a1 : Fits s20 (ρ 1)) (a2 : Fits s14 (ρ 2)) : All tab ρ b4 s17 :=
  appAll len34 d34 c34 sub17 ((h121 ρ a1) 34 mem8) (smaller (h274 ρ a0 a2) sub17)
theorem h387 (ρ : Env) (a0 : Fits s32 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len9 d9 c9 sub4 ((h99 ρ a1) 9 mem0) (smaller (h275 ρ a0 a2) sub4)
theorem h388 (ρ : Env) (a0 : Fits s35 (ρ 0)) (a1 : Fits s37 (ρ 1)) (a2 : Fits s34 (ρ 2)) : All tab ρ b4 s38 :=
  appAll len54 d54 c54 sub182 ((h122 ρ a1) 54 mem112) (smaller (h279 ρ a0 a2) sub182)
theorem h389 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s39 (ρ 1)) (a2 : Fits s34 (ρ 2)) : All tab ρ b4 s38 :=
  appAll len55 d55 c55 sub182 ((h124 ρ a1) 55 mem113) (smaller (h276 ρ a0 a2) sub2)
theorem h390 (ρ : Env) (a0 : Fits s33 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s38 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len9 d9 c9 sub4 ((h99 ρ a1) 9 mem0) (smaller (h278 ρ a0 a2) sub4)
theorem h391 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s32 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len9 d9 c9 sub4 ((h99 ρ a1) 9 mem0) (smaller (h277 ρ a0 a2) sub4)
theorem h392 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s34 (ρ 2)) : All tab ρ b4 s17 :=
  appAll len2 d2 c2 sub17 ((h100 ρ a1) 2 mem7) Positive.none
theorem h393 (ρ : Env) (a0 : Fits s0 (ρ 0)) (a1 : Fits s6 (ρ 1)) (a2 : Fits s18 (ρ 2)) : All tab ρ b4 s17 :=
  appAll len2 d2 c2 sub17 ((h100 ρ a1) 2 mem7) Positive.none
theorem h394 (ρ : Env) (a0 : Fits s33 (ρ 0)) (a1 : Fits s35 (ρ 1)) (a2 : Fits s32 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len57 d57 c57 sub4 ((h126 ρ a1) 57 mem119) (Positive.consAll ((h280 ρ a0 a2) 58 mem18) (Positive.consAll ((h283 ρ a0 a2) 64 mem114) (Positive.consAll ((h283 ρ a0 a2) 80 mem115) (Positive.consAll ((h283 ρ a0 a2) 94 mem116) (Positive.consAll ((h283 ρ a0 a2) 100 mem117) (Positive.consAll ((h283 ρ a0 a2) 135 mem118) Positive.none))))))
theorem h395 (ρ : Env) (a0 : Fits s41 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s18 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len9 d9 c9 sub4 ((h99 ρ a1) 9 mem0) (smaller (h281 ρ a0 a2) sub4)
end Blc.H45.H45F9692715709398
