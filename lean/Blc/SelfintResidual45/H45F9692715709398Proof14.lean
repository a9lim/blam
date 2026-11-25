import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692715709398Proof13

set_option Elab.async false
namespace Blc.H45.H45F9692715709398
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h504 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s99 (ρ 1)) (a2 : Fits s56 (ρ 2)) : All tab ρ b4 s102 :=
  appAll len160 d160 c160 sub165 ((h183 ρ a1) 160 mem152) (smaller (h353 ρ a0 a2) sub4)
theorem h505 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s87 (ρ 1)) (a2 : Fits s86 (ρ 2)) : All tab ρ b4 s6 :=
  appAll len24 d24 c24 sub4 ((h168 ρ a1) 24 mem141) (smaller (h338 ρ a0 a2) sub17)
theorem h506 (ρ : Env) (a0 : Fits s130 (ρ 0)) (a1 : Fits s91 (ρ 1)) (a2 : Fits s103 (ρ 2)) : All tab ρ b4 s82 :=
  appAll len142 d142 c142 sub75 ((h170 ρ a1) 142 mem143) (smaller (h354 ρ a0 a2) sub76)
theorem h507 (ρ : Env) (a0 : Fits s157 (ρ 0)) (a1 : Fits s91 (ρ 1)) (a2 : Fits s103 (ρ 2)) : All tab ρ b4 s3 :=
  appAll len138 d138 c138 sub15 ((h170 ρ a1) 138 mem142) (smaller (h355 ρ a0 a2) sub71)
theorem h508 (ρ : Env) (a0 : Fits s94 (ρ 0)) (a1 : Fits s107 (ρ 1)) (a2 : Fits s58 (ρ 2)) : All tab ρ b4 s82 :=
  appAll len145 d145 c145 sub75 ((h193 ρ a1) 145 mem91) (smaller (h332 ρ a0 a2) sub84)
theorem h509 (ρ : Env) (a0 : Fits s99 (ρ 0)) (a1 : Fits s107 (ρ 1)) (a2 : Fits s58 (ρ 2)) : All tab ρ b4 s131 :=
  appAll len155 d155 c155 sub214 ((h193 ρ a1) 155 mem92) (smaller (h352 ρ a0 a2) sub87)
theorem h510 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b5 s3 :=
  (consAll (lamAt d4 c4 (smaller (h357 (SelfintRecursiveTypes.cons s0 ρ) sub215 a0 a1) sub4)) Positive.none)
theorem h511 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b5 s108 :=
  (consAll (lamAt d7 c7 (smaller (h358 (SelfintRecursiveTypes.cons s4 ρ) sub216 a0 a1) sub4)) Positive.none)
theorem h512 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s6 :=
  (consAll (lamAt d2 c2 (smaller (h359 (SelfintRecursiveTypes.cons s0 ρ) sub215 a0 a1) sub17)) Positive.none)
theorem h513 (ρ : Env) (a0 : Fits s10 (ρ 0)) (a1 : Fits s7 (ρ 1)) : All tab ρ b5 s109 :=
  (consAll (lamAt d12 c12 (smaller (h360 (SelfintRecursiveTypes.cons s8 ρ) sub5 a0 a1) sub173)) Positive.none)
theorem h514 (ρ : Env) (a0 : Fits s12 (ρ 0)) (a1 : Fits s7 (ρ 1)) : All tab ρ b5 s12 :=
  (consAll (lamAt d16 c16 (smaller (h361 (SelfintRecursiveTypes.cons s5 ρ) sub2 a0 a1) sub173)) Positive.none)
theorem h515 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b5 s11 :=
  (consAll (lamAt d10 c10 (smaller (h362 (SelfintRecursiveTypes.cons s5 ρ) sub2 a0 a1) sub4)) Positive.none)
theorem h516 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b5 s5 :=
  (consAll (lamAt d9 c9 (smaller (h363 (SelfintRecursiveTypes.cons s6 ρ) sub4 a0 a1) sub4)) Positive.none)
theorem h517 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s7 (ρ 1)) : All tab ρ b5 s6 :=
  (consAll (lamAt d2 c2 (smaller (h364 (SelfintRecursiveTypes.cons s0 ρ) sub215 a0 a1) sub17)) Positive.none)
theorem h518 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b5 s6 :=
  (consAll (lamAt d2 c2 (smaller (h365 (SelfintRecursiveTypes.cons s0 ρ) sub215 a0 a1) sub17)) Positive.none)
theorem h519 (ρ : Env) (a0 : Fits s8 (ρ 0)) (a1 : Fits s4 (ρ 1)) : All tab ρ b5 s11 :=
  (consAll (lamAt d10 c10 (smaller (h366 (SelfintRecursiveTypes.cons s5 ρ) sub2 a0 a1) sub4)) Positive.none)
theorem h520 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b5 s110 :=
  (consAll (lamAt d20 c20 (smaller (h367 (SelfintRecursiveTypes.cons s14 ρ) sub217 a0 a1) sub4)) Positive.none)
theorem h521 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b5 s3 :=
  (consAll (lamAt d4 c4 (smaller (h368 (SelfintRecursiveTypes.cons s0 ρ) sub215 a0 a1) sub4)) Positive.none)
theorem h522 (ρ : Env) (a0 : Fits s16 (ρ 0)) (a1 : Fits s6 (ρ 1)) : All tab ρ b5 s3 :=
  (consAll (lamAt d4 c4 (smaller (h369 (SelfintRecursiveTypes.cons s0 ρ) sub215 a0 a1) sub4)) Positive.none)
theorem h523 (ρ : Env) (a0 : Fits s17 (ρ 0)) (a1 : Fits s0 (ρ 1)) : All tab ρ b5 s6 :=
  (consAll (lamAt d2 c2 (smaller (h370 (SelfintRecursiveTypes.cons s0 ρ) sub215 a0 a1) sub17)) Positive.none)
theorem h524 (ρ : Env) (a0 : Fits s22 (ρ 0)) (a1 : Fits s19 (ρ 1)) : All tab ρ b5 s112 :=
  (consAll (lamAt d27 c27 (smaller (h371 (SelfintRecursiveTypes.cons s20 ρ) sub18 a0 a1) sub212)) Positive.none)
theorem h525 (ρ : Env) (a0 : Fits s24 (ρ 0)) (a1 : Fits s19 (ρ 1)) : All tab ρ b5 s24 :=
  (consAll (lamAt d31 c31 (smaller (h372 (SelfintRecursiveTypes.cons s16 ρ) sub10 a0 a1) sub212)) Positive.none)
theorem h526 (ρ : Env) (a0 : Fits s16 (ρ 0)) (a1 : Fits s23 (ρ 1)) : All tab ρ b5 s111 :=
  (consAll (lamAt d25 c25 (smaller (h373 (SelfintRecursiveTypes.cons s18 ρ) sub218 a0 a1) sub4)) Positive.none)
theorem h527 (ρ : Env) (a0 : Fits s16 (ρ 0)) (a1 : Fits s14 (ρ 1)) : All tab ρ b5 s16 :=
  (consAll (lamAt d24 c24 (smaller (h374 (SelfintRecursiveTypes.cons s17 ρ) sub17 a0 a1) sub4)) Positive.none)
theorem h528 (ρ : Env) (a0 : Fits s17 (ρ 0)) (a1 : Fits s19 (ρ 1)) : All tab ρ b5 s6 :=
  (consAll (lamAt d2 c2 (smaller (h375 (SelfintRecursiveTypes.cons s0 ρ) sub215 a0 a1) sub17)) Positive.none)
theorem h529 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s1 (ρ 1)) : All tab ρ b5 s113 :=
  (consAll (lamAt d35 c35 (smaller (h376 (SelfintRecursiveTypes.cons s25 ρ) sub219 a0 a1) sub4)) (consAll (lamAt d48 c48 (smaller (h387 (SelfintRecursiveTypes.cons s32 ρ) sub220 a0 a1) sub4)) Positive.none))
theorem h530 (ρ : Env) (a0 : Fits s29 (ρ 0)) (a1 : Fits s26 (ρ 1)) : All tab ρ b5 s114 :=
  (consAll (lamAt d39 c39 (smaller (h377 (SelfintRecursiveTypes.cons s27 ρ) sub14 a0 a1) sub178)) Positive.none)
theorem h531 (ρ : Env) (a0 : Fits s31 (ρ 0)) (a1 : Fits s26 (ρ 1)) : All tab ρ b5 s31 :=
  (consAll (lamAt d43 c43 (smaller (h378 (SelfintRecursiveTypes.cons s5 ρ) sub2 a0 a1) sub178)) Positive.none)
theorem h532 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s30 (ρ 1)) : All tab ρ b5 s30 :=
  (consAll (lamAt d37 c37 (smaller (h379 (SelfintRecursiveTypes.cons s16 ρ) sub10 a0 a1) sub4)) Positive.none)
theorem h533 (ρ : Env) (a0 : Fits s5 (ρ 0)) (a1 : Fits s25 (ρ 1)) : All tab ρ b5 s5 :=
  (consAll (lamAt d9 c9 (smaller (h380 (SelfintRecursiveTypes.cons s6 ρ) sub4 a0 a1) sub4)) Positive.none)
theorem h534 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s26 (ρ 1)) : All tab ρ b5 s6 :=
  (consAll (lamAt d2 c2 (smaller (h381 (SelfintRecursiveTypes.cons s0 ρ) sub215 a0 a1) sub17)) Positive.none)
theorem h535 (ρ : Env) (a0 : Fits s6 (ρ 0)) (a1 : Fits s17 (ρ 1)) : All tab ρ b5 s6 :=
  (consAll (lamAt d2 c2 (smaller (h382 (SelfintRecursiveTypes.cons s0 ρ) sub215 a0 a1) sub17)) Positive.none)
theorem h536 (ρ : Env) (a0 : Fits s27 (ρ 0)) (a1 : Fits s25 (ρ 1)) : All tab ρ b5 s30 :=
  (consAll (lamAt d37 c37 (smaller (h383 (SelfintRecursiveTypes.cons s16 ρ) sub10 a0 a1) sub4)) Positive.none)
theorem h537 (ρ : Env) (a0 : Fits s16 (ρ 0)) (a1 : Fits s17 (ρ 1)) : All tab ρ b5 s3 :=
  (consAll (lamAt d4 c4 (smaller (h384 (SelfintRecursiveTypes.cons s0 ρ) sub215 a0 a1) sub4)) Positive.none)
theorem h538 (ρ : Env) (a0 : Fits s3 (ρ 0)) (a1 : Fits s17 (ρ 1)) : All tab ρ b5 s3 :=
  (consAll (lamAt d4 c4 (smaller (h385 (SelfintRecursiveTypes.cons s0 ρ) sub215 a0 a1) sub4)) Positive.none)
theorem h539 (ρ : Env) (a0 : Fits s20 (ρ 0)) (a1 : Fits s14 (ρ 1)) : All tab ρ b5 s23 :=
  (consAll (lamAt d46 c46 (smaller (h386 (SelfintRecursiveTypes.cons s18 ρ) sub218 a0 a1) sub17)) Positive.none)
end Blc.H45.H45F9692715709398
