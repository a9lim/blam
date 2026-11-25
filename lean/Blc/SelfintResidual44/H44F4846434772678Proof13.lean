import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44F4846434772678Proof12

set_option Elab.async false
namespace Blc.H44.H44F4846434772678
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h468 (ρ : Env) (a0 : Fits s97 (ρ 0)) : All tab ρ b7 s99 :=
  (consAll (lamAt d269 c269 (smaller (h177 (SelfintRecursiveTypes.cons s0 ρ) a0) sub91)) Positive.none)
theorem h469 (ρ : Env) (a0 : Fits s103 (ρ 0)) : All tab ρ b7 s104 :=
  (consAll (lamAt d277 c277 (smaller (h178 (SelfintRecursiveTypes.cons s0 ρ) a0) sub93)) Positive.none)
theorem h470 (ρ : Env) (a0 : Fits s105 (ρ 0)) : All tab ρ b7 s75 :=
  (consAll (lamAt d285 c285 (smaller (h179 (SelfintRecursiveTypes.cons s0 ρ) a0) sub95)) Positive.none)
theorem h471 (ρ : Env) (a0 : Fits s74 (ρ 0)) : All tab ρ b7 s75 :=
  (consAll (lamAt d285 c285 (smaller (h181 (SelfintRecursiveTypes.cons s0 ρ) a0) sub95)) Positive.none)
theorem h472 (ρ : Env) (a0 : Fits s106 (ρ 0)) : All tab ρ b7 s107 :=
  (consAll (lamAt d293 c293 (smaller (h182 (SelfintRecursiveTypes.cons s0 ρ) a0) sub97)) Positive.none)
theorem h473 (ρ : Env) (a0 : Fits s109 (ρ 0)) : All tab ρ b7 s110 :=
  (consAll (lamAt d301 c301 (smaller (h183 (SelfintRecursiveTypes.cons s0 ρ) a0) sub99)) Positive.none)
theorem h474 (ρ : Env) (a0 : Fits s92 (ρ 0)) : All tab ρ b7 s93 :=
  (consAll (lamAt d301 c301 (smaller (h184 (SelfintRecursiveTypes.cons s0 ρ) a0) sub352)) (consAll (lamAt d308 c308 (smaller (h184 (SelfintRecursiveTypes.cons s0 ρ) a0) sub353)) Positive.none))
theorem h475 (ρ : Env) (a0 : Fits s111 (ρ 0)) : All tab ρ b7 s108 :=
  (consAll (lamAt d309 c309 (smaller (h185 (SelfintRecursiveTypes.cons s0 ρ) a0) sub102)) Positive.none)
theorem h476 (ρ : Env) (a0 : Fits s93 (ρ 0)) : All tab ρ b7 s108 :=
  (consAll (lamAt d309 c309 (smaller (h186 (SelfintRecursiveTypes.cons s0 ρ) a0) sub102)) Positive.none)
theorem h477 (ρ : Env) (a0 : Fits s113 (ρ 0)) : All tab ρ b7 s114 :=
  (consAll (lamAt d317 c317 (smaller (h187 (SelfintRecursiveTypes.cons s0 ρ) a0) sub104)) Positive.none)
theorem h478 (ρ : Env) (a0 : Fits s89 (ρ 0)) : All tab ρ b7 s90 :=
  (consAll (lamAt d317 c317 (smaller (h188 (SelfintRecursiveTypes.cons s0 ρ) a0) sub354)) (consAll (lamAt d324 c324 (smaller (h188 (SelfintRecursiveTypes.cons s0 ρ) a0) sub355)) Positive.none))
theorem h479 (ρ : Env) (a0 : Fits s115 (ρ 0)) : All tab ρ b7 s112 :=
  (consAll (lamAt d325 c325 (smaller (h189 (SelfintRecursiveTypes.cons s0 ρ) a0) sub107)) Positive.none)
theorem h480 (ρ : Env) (a0 : Fits s90 (ρ 0)) : All tab ρ b7 s112 :=
  (consAll (lamAt d325 c325 (smaller (h190 (SelfintRecursiveTypes.cons s0 ρ) a0) sub107)) Positive.none)
theorem h481 (ρ : Env) (a0 : Fits s116 (ρ 0)) : All tab ρ b7 s88 :=
  (consAll (lamAt d333 c333 (smaller (h191 (SelfintRecursiveTypes.cons s0 ρ) a0) sub109)) Positive.none)
theorem h482 (ρ : Env) (a0 : Fits s87 (ρ 0)) : All tab ρ b7 s88 :=
  (consAll (lamAt d333 c333 (smaller (h192 (SelfintRecursiveTypes.cons s0 ρ) a0) sub109)) Positive.none)
theorem h483 (ρ : Env) (a0 : Fits s117 (ρ 0)) : All tab ρ b7 s86 :=
  (consAll (lamAt d335 c335 (smaller (h193 (SelfintRecursiveTypes.cons s0 ρ) a0) sub162)) Positive.none)
theorem h484 (ρ : Env) (a0 : Fits s85 (ρ 0)) : All tab ρ b7 s86 :=
  (consAll (lamAt d335 c335 (smaller (h194 (SelfintRecursiveTypes.cons s0 ρ) a0) sub162)) Positive.none)
theorem h485 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b8 s3 :=
  botAll ((h276 ρ a0 a1 a2) 0 mem1)
theorem h486 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b8 s3 :=
  botAll ((h277 ρ a0 a1 a2) 0 mem1)
theorem h487 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s3 :=
  botAll ((h278 ρ a0 a1 a2) 0 mem1)
theorem h488 (ρ : Env) (a0 : Fits s8 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s2 (ρ 2)) : All tab ρ b8 s3 :=
  botAll ((h279 ρ a0 a1 a2) 0 mem1)
theorem h489 (ρ : Env) (a0 : Fits s9 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b8 s3 :=
  botAll ((h280 ρ a0 a1 a2) 0 mem1)
theorem h490 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s5 (ρ 1)) (a2 : Fits s7 (ρ 2)) : All tab ρ b8 s3 :=
  botAll ((h281 ρ a0 a1 a2) 0 mem1)
theorem h491 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s10 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b8 s3 :=
  botAll ((h282 ρ a0 a1 a2) 0 mem1)
theorem h492 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s10 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b8 s3 :=
  botAll ((h283 ρ a0 a1 a2) 0 mem1)
theorem h493 (ρ : Env) (a0 : Fits s12 (ρ 0)) (a1 : Fits s10 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b8 s3 :=
  appAll len19 d19 c19 sub3 ((h284 ρ a0 a1 a2) 19 mem217) (smaller (h425 ρ a0) sub12)
theorem h494 (ρ : Env) (a0 : Fits s13 (ρ 0)) (a1 : Fits s0 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b8 s3 :=
  botAll ((h285 ρ a0 a1 a2) 0 mem1)
theorem h495 (ρ : Env) (a0 : Fits s14 (ρ 0)) (a1 : Fits s10 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b8 s12 :=
  appAll len23 d23 c23 sub128 ((h286 ρ a0 a1 a2) 23 mem218) (smaller (h426 ρ a0) sub356)
theorem h496 (ρ : Env) (a0 : Fits s15 (ρ 0)) (a1 : Fits s0 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b8 s12 :=
  appAll len25 d25 c25 sub128 ((h287 ρ a0 a1 a2) 25 mem219) (smaller (h428 ρ a0) sub357)
theorem h497 (ρ : Env) (a0 : Fits s16 (ρ 0)) (a1 : Fits s0 (ρ 1)) (a2 : Fits s11 (ρ 2)) : All tab ρ b8 s12 :=
  appAll len29 d29 c29 sub128 ((h288 ρ a0 a1 a2) 29 mem220) (smaller (h430 ρ a0) sub358)
theorem h498 (ρ : Env) (a0 : Fits s19 (ρ 0)) (a1 : Fits s10 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b8 s123 :=
  appAll len31 d31 c31 sub181 ((h289 ρ a0 a1 a2) 31 mem221) (smaller (h427 ρ a0) sub16)
theorem h499 (ρ : Env) (a0 : Fits s20 (ρ 0)) (a1 : Fits s0 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b8 s123 :=
  appAll len33 d33 c33 sub181 ((h290 ρ a0 a1 a2) 33 mem222) Positive.none
theorem h500 (ρ : Env) (a0 : Fits s18 (ρ 0)) (a1 : Fits s0 (ρ 1)) (a2 : Fits s11 (ρ 2)) : All tab ρ b8 s12 :=
  appAll len37 d37 c37 sub128 ((h291 ρ a0 a1 a2) 37 mem223) (smaller (h435 ρ a0) sub134)
theorem h501 (ρ : Env) (a0 : Fits s22 (ρ 0)) (a1 : Fits s10 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b8 s126 :=
  appAll len39 d39 c39 sub184 ((h292 ρ a0 a1 a2) 39 mem224) (smaller (h429 ρ a0) sub19)
theorem h502 (ρ : Env) (a0 : Fits s23 (ρ 0)) (a1 : Fits s0 (ρ 1)) (a2 : Fits s1 (ρ 2)) : All tab ρ b8 s126 :=
  appAll len41 d41 c41 sub184 ((h293 ρ a0 a1 a2) 41 mem225) Positive.none
theorem h503 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s21 (ρ 1)) (a2 : Fits s11 (ρ 2)) : All tab ρ b8 s3 :=
  botAll ((h294 ρ a0 a1 a2) 0 mem1)
end Blc.H44.H44F4846434772678
