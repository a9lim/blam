import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9692402957530Proof10

set_option Elab.async false
namespace Blc.H45.H45F9692402957530
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h396 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s71 (ρ 1)) : All tab ρ b22 s80 :=
  (consAll (lamAt d213 c213 (smaller (h302 (SelfintRecursiveTypes.cons s71 ρ) sub107 a0 a1) sub130)) Positive.none)
theorem h397 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b22 s60 :=
  (consAll (lamAt d132 c132 (smaller (h303 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub5)) Positive.none)
theorem h398 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s86 (ρ 1)) : All tab ρ b22 s96 :=
  (consAll (lamAt d315 c315 (smaller (h304 (SelfintRecursiveTypes.cons s86 ρ) sub108 a0 a1) sub5)) Positive.none)
theorem h399 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s71 (ρ 1)) : All tab ρ b22 s80 :=
  (consAll (lamAt d213 c213 (smaller (h305 (SelfintRecursiveTypes.cons s71 ρ) sub107 a0 a1) sub130)) Positive.none)
theorem h400 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b22 s60 :=
  (consAll (lamAt d132 c132 (smaller (h306 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub5)) Positive.none)
theorem h401 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s86 (ρ 1)) : All tab ρ b22 s96 :=
  (consAll (lamAt d315 c315 (smaller (h307 (SelfintRecursiveTypes.cons s86 ρ) sub108 a0 a1) sub5)) Positive.none)
theorem h402 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s71 (ρ 1)) : All tab ρ b22 s80 :=
  (consAll (lamAt d213 c213 (smaller (h308 (SelfintRecursiveTypes.cons s71 ρ) sub107 a0 a1) sub130)) Positive.none)
theorem h403 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s48 (ρ 1)) : All tab ρ b22 s60 :=
  (consAll (lamAt d132 c132 (smaller (h309 (SelfintRecursiveTypes.cons s48 ρ) sub105 a0 a1) sub5)) Positive.none)
theorem h404 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s86 (ρ 1)) : All tab ρ b22 s96 :=
  (consAll (lamAt d315 c315 (smaller (h310 (SelfintRecursiveTypes.cons s86 ρ) sub108 a0 a1) sub5)) Positive.none)
theorem h405 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b22 s65 :=
  (consAll (lamAt d116 c116 (smaller (h311 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub5)) (consAll (lamAt d264 c264 (smaller (h312 (SelfintRecursiveTypes.cons s84 ρ) sub118 a0 a1) sub5)) Positive.none))
theorem h406 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b22 s65 :=
  (consAll (lamAt d116 c116 (smaller (h313 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub5)) (consAll (lamAt d264 c264 (smaller (h314 (SelfintRecursiveTypes.cons s84 ρ) sub118 a0 a1) sub5)) Positive.none))
theorem h407 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b22 s65 :=
  (consAll (lamAt d116 c116 (smaller (h315 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub5)) (consAll (lamAt d264 c264 (smaller (h316 (SelfintRecursiveTypes.cons s84 ρ) sub118 a0 a1) sub5)) Positive.none))
theorem h408 (ρ : Env) (a0 : Fits s71 (ρ 0)) (a1 : Fits s79 (ρ 1)) : All tab ρ b22 s91 :=
  (consAll (lamAt d116 c116 (smaller (h318 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub5)) (consAll (lamAt d299 c299 (smaller (h317 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub5)) Positive.none))
theorem h409 (ρ : Env) (a0 : Fits s71 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b22 s91 :=
  (consAll (lamAt d116 c116 (smaller (h320 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub5)) (consAll (lamAt d299 c299 (smaller (h319 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub5)) Positive.none))
theorem h410 (ρ : Env) (a0 : Fits s71 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b22 s68 :=
  (consAll (lamAt d116 c116 (smaller (h320 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub5)) Positive.none)
theorem h411 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b22 s85 :=
  (consAll (lamAt d165 c165 (smaller (h321 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0 a1) sub5)) Positive.none)
theorem h412 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b22 s85 :=
  (consAll (lamAt d165 c165 (smaller (h322 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0 a1) sub5)) Positive.none)
theorem h413 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s70 (ρ 1)) : All tab ρ b22 s85 :=
  (consAll (lamAt d165 c165 (smaller (h323 (SelfintRecursiveTypes.cons s70 ρ) sub109 a0 a1) sub5)) Positive.none)
theorem h414 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s79 (ρ 1)) : All tab ρ b22 s91 :=
  (consAll (lamAt d116 c116 (smaller (h325 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub5)) (consAll (lamAt d299 c299 (smaller (h324 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub5)) Positive.none))
theorem h415 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s79 (ρ 1)) : All tab ρ b22 s91 :=
  (consAll (lamAt d116 c116 (smaller (h327 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub5)) (consAll (lamAt d299 c299 (smaller (h326 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub5)) Positive.none))
theorem h416 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s79 (ρ 1)) : All tab ρ b22 s91 :=
  (consAll (lamAt d116 c116 (smaller (h329 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub5)) (consAll (lamAt d299 c299 (smaller (h328 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub5)) Positive.none))
theorem h417 (ρ : Env) (a0 : Fits s86 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b22 s91 :=
  (consAll (lamAt d116 c116 (smaller (h241 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub5)) (consAll (lamAt d299 c299 (smaller (h330 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub5)) Positive.none))
theorem h418 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b22 s91 :=
  (consAll (lamAt d116 c116 (smaller (h311 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub5)) (consAll (lamAt d299 c299 (smaller (h331 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub5)) Positive.none))
theorem h419 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b22 s91 :=
  (consAll (lamAt d116 c116 (smaller (h315 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub5)) (consAll (lamAt d299 c299 (smaller (h332 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub5)) Positive.none))
theorem h420 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b22 s91 :=
  (consAll (lamAt d116 c116 (smaller (h313 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub5)) (consAll (lamAt d299 c299 (smaller (h333 (SelfintRecursiveTypes.cons s79 ρ) sub110 a0 a1) sub5)) Positive.none))
theorem h421 (ρ : Env) (a0 : Fits s70 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b22 s68 :=
  (consAll (lamAt d116 c116 (smaller (h311 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub5)) Positive.none)
theorem h422 (ρ : Env) (a0 : Fits s79 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b22 s68 :=
  (consAll (lamAt d116 c116 (smaller (h315 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub5)) Positive.none)
theorem h423 (ρ : Env) (a0 : Fits s11 (ρ 0)) (a1 : Fits s11 (ρ 1)) : All tab ρ b22 s68 :=
  (consAll (lamAt d116 c116 (smaller (h313 (SelfintRecursiveTypes.cons s11 ρ) sub5 a0 a1) sub5)) Positive.none)
theorem h424 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s87 (ρ 1)) : All tab ρ b22 s50 :=
  (consAll (lamAt d118 c118 (smaller (h345 (SelfintRecursiveTypes.cons s46 ρ) sub141 a0 a1) sub125)) (consAll (lamAt d185 c185 (smaller (h346 (SelfintRecursiveTypes.cons s24 ρ) sub142 a0 a1) sub125)) (consAll (lamAt d230 c230 (smaller (h347 (SelfintRecursiveTypes.cons s78 ρ) sub143 a0 a1) sub125)) (consAll (lamAt d245 c245 (smaller (h348 (SelfintRecursiveTypes.cons s58 ρ) sub144 a0 a1) sub125)) (consAll (lamAt d272 c272 (smaller (h351 (SelfintRecursiveTypes.cons s81 ρ) sub145 a0 a1) sub125)) (consAll (lamAt d278 c278 (smaller (h350 (SelfintRecursiveTypes.cons s61 ρ) sub146 a0 a1) sub125)) (consAll (lamAt d298 c298 (smaller (h344 (SelfintRecursiveTypes.cons s63 ρ) sub147 a0 a1) sub125)) (consAll (lamAt d320 c320 (smaller (h343 (SelfintRecursiveTypes.cons s89 ρ) sub148 a0 a1) sub125)) (consAll (lamAt d335 c335 (smaller (h349 (SelfintRecursiveTypes.cons s92 ρ) sub149 a0 a1) sub125)) (consAll (lamAt d366 c366 (smaller (h352 (SelfintRecursiveTypes.cons s87 ρ) sub150 a0 a1) sub125)) Positive.none))))))))))
theorem h425 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s1 (ρ 1)) (a2 : Fits s4 (ρ 2)) : All tab ρ b23 s6 :=
  appAll len19 d19 c19 sub4 ((h40 ρ a2) 19 mem69) (smaller (h353 ρ a0 a1) sub156)
theorem h426 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s13 (ρ 1)) (a2 : Fits s15 (ρ 2)) : All tab ρ b23 s6 :=
  appAll len34 d34 c34 sub4 ((h41 ρ a2) 34 mem70) (smaller (h354 ρ a0 a1) sub157)
theorem h427 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s19 (ρ 1)) (a2 : Fits s20 (ρ 2)) : All tab ρ b23 s6 :=
  appAll len45 d45 c45 sub4 ((h42 ρ a2) 45 mem71) (smaller (h355 ρ a0 a1) sub158)
theorem h428 (ρ : Env) (a0 : Fits s2 (ρ 0)) (a1 : Fits s33 (ρ 1)) (a2 : Fits s34 (ρ 2)) : All tab ρ b23 s36 :=
  appAll len78 d78 c78 sub160 ((h43 ρ a2) 78 mem72) (smaller (h356 ρ a0 a1) sub159)
theorem h429 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s46 (ρ 1)) (a2 : Fits s49 (ρ 2)) : All tab ρ b23 s51 :=
  appAll len119 d119 c119 sub155 ((h44 ρ a2) 119 mem73) (smaller (h357 ρ a0 a1) sub161)
theorem h430 (ρ : Env) (a0 : Fits s48 (ρ 0)) (a1 : Fits s48 (ρ 1)) (a2 : Fits s58 (ρ 2)) : All tab ρ b23 s140 :=
  appAll len130 d130 c130 sub163 ((h45 ρ a2) 130 mem74) (smaller (h358 ρ a0 a1) sub162)
theorem h431 (ρ : Env) (a0 : Fits s7 (ρ 0)) (a1 : Fits s45 (ρ 1)) (a2 : Fits s46 (ρ 2)) : All tab ρ b23 s142 :=
  appAll len136 d136 c136 sub165 ((h46 ρ a2) 136 mem75) (smaller (h359 ρ a0 a1) sub164)
end Blc.H45.H45F9692402957530
