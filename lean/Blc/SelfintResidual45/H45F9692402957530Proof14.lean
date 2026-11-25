import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402957530Proof13

set_option Elab.async false
namespace Blc.H45.H45F9692402957530
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h504 (ρ : Env) (a0 : Fits s19 (ρ 0)) (a1 : Fits s20 (ρ 1)) : All tab ρ b24 s103 :=
  (consAll (lamAt d17 c17 (smaller (h427 (SelfintRecursiveTypes.cons s2 ρ) sub13 a0 a1) sub4)) Positive.none)
theorem h505 (ρ : Env) (a0 : Fits s33 (ρ 0)) (a1 : Fits s34 (ρ 1)) : All tab ρ b24 s124 :=
  (consAll (lamAt d76 c76 (smaller (h428 (SelfintRecursiveTypes.cons s2 ρ) sub13 a0 a1) sub160)) Positive.none)
theorem h506 (ρ : Env) (a0 : Fits s46 (ρ 0)) (a1 : Fits s49 (ρ 1)) : All tab ρ b24 s136 :=
  (consAll (lamAt d117 c117 (smaller (h429 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) Positive.none)
theorem h507 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s58 (ρ 1)) : All tab ρ b24 s141 :=
  (consAll (lamAt d128 c128 (smaller (h430 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub163)) (consAll (lamAt d178 c178 (smaller (h443 (SelfintRecursiveTypes.cons s71 ρ) sub107 a0 a1) sub105)) (consAll (lamAt d286 c286 (smaller (h458 (SelfintRecursiveTypes.cons s86 ρ) sub108 a0 a1) sub105)) (consAll (lamAt d347 c347 (smaller (h471 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0 a1) sub105)) (consAll (lamAt d348 c348 (smaller (h474 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub105)) (consAll (lamAt d349 c349 (smaller (h477 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub105)) Positive.none))))))
theorem h508 (ρ : Env) (a0 : Fits s45 (ρ 0)) (a1 : Fits s46 (ρ 1)) : All tab ρ b24 s143 :=
  (consAll (lamAt d117 c117 (smaller (h432 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) (consAll (lamAt d133 c133 (smaller (h431 (SelfintRecursiveTypes.cons s7 ρ) sub7 a0 a1) sub165)) Positive.none))
theorem h509 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s43 (ρ 1)) : All tab ρ b24 s148 :=
  (consAll (lamAt d117 c117 (smaller (h436 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) (consAll (lamAt d148 c148 (smaller (h433 (SelfintRecursiveTypes.cons s32 ρ) sub106 a0 a1) sub151)) Positive.none))
theorem h510 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s61 (ρ 1)) : All tab ρ b24 s149 :=
  (consAll (lamAt d128 c128 (smaller (h434 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub163)) Positive.none)
theorem h511 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s63 (ρ 1)) : All tab ρ b24 s136 :=
  (consAll (lamAt d117 c117 (smaller (h435 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) Positive.none)
theorem h512 (ρ : Env) (a0 : Fits s29 (ρ 0)) (a1 : Fits s24 (ρ 1)) : All tab ρ b24 s155 :=
  (consAll (lamAt d117 c117 (smaller (h441 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) (consAll (lamAt d178 c178 (smaller (h437 (SelfintRecursiveTypes.cons s71 ρ) sub107 a0 a1) sub105)) Positive.none))
theorem h513 (ρ : Env) (a0 : Fits s55 (ρ 0)) (a1 : Fits s73 (ρ 1)) : All tab ρ b24 s136 :=
  (consAll (lamAt d117 c117 (smaller (h438 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) Positive.none)
theorem h514 (ρ : Env) (a0 : Fits s24 (ρ 0)) (a1 : Fits s49 (ρ 1)) : All tab ρ b24 s136 :=
  (consAll (lamAt d117 c117 (smaller (h439 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) Positive.none)
theorem h515 (ρ : Env) (a0 : Fits s76 (ρ 0)) (a1 : Fits s40 (ρ 1)) : All tab ρ b24 s136 :=
  (consAll (lamAt d117 c117 (smaller (h440 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) Positive.none)
theorem h516 (ρ : Env) (a0 : Fits s71 (ρ 0)) (a1 : Fits s78 (ρ 1)) : All tab ρ b24 s141 :=
  (consAll (lamAt d128 c128 (smaller (h449 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub163)) (consAll (lamAt d178 c178 (smaller (h442 (SelfintRecursiveTypes.cons s71 ρ) sub107 a0 a1) sub105)) (consAll (lamAt d286 c286 (smaller (h459 (SelfintRecursiveTypes.cons s86 ρ) sub108 a0 a1) sub105)) (consAll (lamAt d347 c347 (smaller (h470 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0 a1) sub105)) (consAll (lamAt d348 c348 (smaller (h473 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub105)) (consAll (lamAt d349 c349 (smaller (h476 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub105)) Positive.none))))))
theorem h517 (ρ : Env) (a0 : Fits s78 (ρ 0)) (a1 : Fits s49 (ρ 1)) : All tab ρ b24 s136 :=
  (consAll (lamAt d117 c117 (smaller (h444 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) Positive.none)
theorem h518 (ρ : Env) (a0 : Fits s58 (ρ 0)) (a1 : Fits s49 (ρ 1)) : All tab ρ b24 s136 :=
  (consAll (lamAt d117 c117 (smaller (h445 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) Positive.none)
theorem h519 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s81 (ρ 1)) : All tab ρ b24 s141 :=
  (consAll (lamAt d128 c128 (smaller (h447 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub163)) (consAll (lamAt d178 c178 (smaller (h446 (SelfintRecursiveTypes.cons s71 ρ) sub107 a0 a1) sub105)) (consAll (lamAt d286 c286 (smaller (h460 (SelfintRecursiveTypes.cons s86 ρ) sub108 a0 a1) sub105)) (consAll (lamAt d347 c347 (smaller (h485 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0 a1) sub105)) (consAll (lamAt d348 c348 (smaller (h486 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub105)) (consAll (lamAt d349 c349 (smaller (h487 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub105)) Positive.none))))))
theorem h520 (ρ : Env) (a0 : Fits s84 (ρ 0)) (a1 : Fits s61 (ρ 1)) : All tab ρ b24 s155 :=
  (consAll (lamAt d117 c117 (smaller (h456 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) (consAll (lamAt d178 c178 (smaller (h448 (SelfintRecursiveTypes.cons s71 ρ) sub107 a0 a1) sub105)) Positive.none))
theorem h521 (ρ : Env) (a0 : Fits s81 (ρ 0)) (a1 : Fits s49 (ρ 1)) : All tab ρ b24 s136 :=
  (consAll (lamAt d117 c117 (smaller (h450 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) Positive.none)
theorem h522 (ρ : Env) (a0 : Fits s61 (ρ 0)) (a1 : Fits s49 (ρ 1)) : All tab ρ b24 s136 :=
  (consAll (lamAt d117 c117 (smaller (h451 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) Positive.none)
theorem h523 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s63 (ρ 1)) : All tab ρ b24 s174 :=
  (consAll (lamAt d117 c117 (smaller (h435 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) (consAll (lamAt d286 c286 (smaller (h452 (SelfintRecursiveTypes.cons s86 ρ) sub108 a0 a1) sub105)) Positive.none))
theorem h524 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s61 (ρ 1)) : All tab ρ b24 s174 :=
  (consAll (lamAt d117 c117 (smaller (h457 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) (consAll (lamAt d286 c286 (smaller (h453 (SelfintRecursiveTypes.cons s86 ρ) sub108 a0 a1) sub105)) Positive.none))
theorem h525 (ρ : Env) (a0 : Fits s63 (ρ 0)) (a1 : Fits s49 (ρ 1)) : All tab ρ b24 s136 :=
  (consAll (lamAt d117 c117 (smaller (h454 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) Positive.none)
theorem h526 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s87 (ρ 1)) : All tab ρ b24 s136 :=
  (consAll (lamAt d117 c117 (smaller (h455 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) Positive.none)
theorem h527 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s89 (ρ 1)) : All tab ρ b24 s141 :=
  (consAll (lamAt d128 c128 (smaller (h463 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub163)) (consAll (lamAt d178 c178 (smaller (h482 (SelfintRecursiveTypes.cons s71 ρ) sub107 a0 a1) sub105)) (consAll (lamAt d286 c286 (smaller (h461 (SelfintRecursiveTypes.cons s86 ρ) sub108 a0 a1) sub105)) (consAll (lamAt d347 c347 (smaller (h488 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0 a1) sub105)) (consAll (lamAt d348 c348 (smaller (h489 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub105)) (consAll (lamAt d349 c349 (smaller (h490 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub105)) Positive.none))))))
theorem h528 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s89 (ρ 1)) : All tab ρ b24 s136 :=
  (consAll (lamAt d117 c117 (smaller (h462 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) Positive.none)
theorem h529 (ρ : Env) (a0 : Fits s89 (ρ 0)) (a1 : Fits s49 (ρ 1)) : All tab ρ b24 s136 :=
  (consAll (lamAt d117 c117 (smaller (h464 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) Positive.none)
theorem h530 (ρ : Env) (a0 : Fits s86 (ρ 0)) (a1 : Fits s92 (ρ 1)) : All tab ρ b24 s141 :=
  (consAll (lamAt d128 c128 (smaller (h466 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub163)) (consAll (lamAt d178 c178 (smaller (h465 (SelfintRecursiveTypes.cons s71 ρ) sub107 a0 a1) sub105)) (consAll (lamAt d286 c286 (smaller (h467 (SelfintRecursiveTypes.cons s86 ρ) sub108 a0 a1) sub105)) (consAll (lamAt d347 c347 (smaller (h472 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0 a1) sub105)) (consAll (lamAt d348 c348 (smaller (h475 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub105)) (consAll (lamAt d349 c349 (smaller (h478 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub105)) Positive.none))))))
theorem h531 (ρ : Env) (a0 : Fits s51 (ρ 0)) (a1 : Fits s93 (ρ 1)) : All tab ρ b24 s136 :=
  (consAll (lamAt d117 c117 (smaller (h468 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) Positive.none)
theorem h532 (ρ : Env) (a0 : Fits s92 (ρ 0)) (a1 : Fits s49 (ρ 1)) : All tab ρ b24 s136 :=
  (consAll (lamAt d117 c117 (smaller (h469 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) Positive.none)
theorem h533 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s61 (ρ 1)) : All tab ρ b24 s178 :=
  (consAll (lamAt d117 c117 (smaller (h457 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) (consAll (lamAt d347 c347 (smaller (h479 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0 a1) sub105)) Positive.none))
theorem h534 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s61 (ρ 1)) : All tab ρ b24 s179 :=
  (consAll (lamAt d117 c117 (smaller (h457 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) (consAll (lamAt d348 c348 (smaller (h481 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub105)) (consAll (lamAt d349 c349 (smaller (h480 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub105)) Positive.none)))
theorem h535 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s61 (ρ 1)) : All tab ρ b24 s180 :=
  (consAll (lamAt d117 c117 (smaller (h457 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) (consAll (lamAt d349 c349 (smaller (h480 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub105)) Positive.none))
theorem h536 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s89 (ρ 1)) : All tab ρ b24 s141 :=
  (consAll (lamAt d128 c128 (smaller (h492 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub163)) (consAll (lamAt d178 c178 (smaller (h483 (SelfintRecursiveTypes.cons s71 ρ) sub107 a0 a1) sub105)) (consAll (lamAt d286 c286 (smaller (h491 (SelfintRecursiveTypes.cons s86 ρ) sub108 a0 a1) sub105)) (consAll (lamAt d347 c347 (smaller (h493 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0 a1) sub105)) (consAll (lamAt d348 c348 (smaller (h494 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub105)) (consAll (lamAt d349 c349 (smaller (h495 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub105)) Positive.none))))))
theorem h537 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s87 (ρ 1)) : All tab ρ b24 s141 :=
  (consAll (lamAt d128 c128 (smaller (h497 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub163)) (consAll (lamAt d178 c178 (smaller (h484 (SelfintRecursiveTypes.cons s71 ρ) sub107 a0 a1) sub105)) (consAll (lamAt d286 c286 (smaller (h496 (SelfintRecursiveTypes.cons s86 ρ) sub108 a0 a1) sub105)) (consAll (lamAt d347 c347 (smaller (h498 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0 a1) sub105)) (consAll (lamAt d348 c348 (smaller (h499 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub105)) (consAll (lamAt d349 c349 (smaller (h500 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub105)) Positive.none))))))
theorem h538 (ρ : Env) (a0 : Fits s87 (ρ 0)) (a1 : Fits s49 (ρ 1)) : All tab ρ b24 s136 :=
  (consAll (lamAt d117 c117 (smaller (h501 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub155)) Positive.none)
theorem h539 (ρ : Env) (a0 : Fits s4 (ρ 0)) : All tab ρ b25 s5 :=
  (consAll (lamAt d18 c18 (smaller (h502 (SelfintRecursiveTypes.cons s1 ρ) sub137 a0) sub176)) Positive.none)
end Blc.H45.H45F9692402957530
