import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45F9573528477238Proof8

set_option Elab.async false
namespace Blc.H45.H45F9573528477238
open Term SelfintSharp SelfintControl SelfintLowerBound SelfintProbe WeakHeadClock SelfintRecursiveTypes Positive
set_option maxRecDepth 20000
theorem h324 (ρ : Env) (a0 : Fits s488 (ρ 0)) : All tab ρ b0 s488 :=
  varAll (fun i hi => a0 i (sub324 i hi))
theorem h325 (ρ : Env) (a0 : Fits s484 (ρ 0)) : All tab ρ b0 s484 :=
  varAll (fun i hi => a0 i (sub325 i hi))
theorem h326 (ρ : Env) (a0 : Fits s490 (ρ 0)) : All tab ρ b0 s490 :=
  varAll (fun i hi => a0 i (sub326 i hi))
theorem h327 (ρ : Env) (a0 : Fits s475 (ρ 0)) : All tab ρ b0 s839 :=
  varAll (fun i hi => a0 i (sub327 i hi))
theorem h328 (ρ : Env) (a0 : Fits s492 (ρ 0)) : All tab ρ b0 s840 :=
  varAll (fun i hi => a0 i (sub328 i hi))
theorem h329 (ρ : Env) (a0 : Fits s494 (ρ 0)) : All tab ρ b0 s494 :=
  varAll (fun i hi => a0 i (sub329 i hi))
theorem h330 (ρ : Env) (a0 : Fits s496 (ρ 0)) : All tab ρ b0 s496 :=
  varAll (fun i hi => a0 i (sub330 i hi))
theorem h331 (ρ : Env) (a0 : Fits s497 (ρ 0)) : All tab ρ b0 s497 :=
  varAll (fun i hi => a0 i (sub331 i hi))
theorem h332 (ρ : Env) (a0 : Fits s498 (ρ 0)) : All tab ρ b0 s498 :=
  varAll (fun i hi => a0 i (sub332 i hi))
theorem h333 (ρ : Env) (a0 : Fits s493 (ρ 0)) : All tab ρ b0 s493 :=
  varAll (fun i hi => a0 i (sub333 i hi))
theorem h334 (ρ : Env) (a0 : Fits s500 (ρ 0)) : All tab ρ b0 s500 :=
  varAll (fun i hi => a0 i (sub334 i hi))
theorem h335 (ρ : Env) (a0 : Fits s489 (ρ 0)) : All tab ρ b0 s489 :=
  varAll (fun i hi => a0 i (sub335 i hi))
theorem h336 (ρ : Env) (a0 : Fits s455 (ρ 0)) : All tab ρ b0 s841 :=
  varAll (fun i hi => a0 i (sub336 i hi))
theorem h337 (ρ : Env) (a0 : Fits s502 (ρ 0)) : All tab ρ b0 s502 :=
  varAll (fun i hi => a0 i (sub337 i hi))
theorem h338 (ρ : Env) (a0 : Fits s503 (ρ 0)) : All tab ρ b0 s503 :=
  varAll (fun i hi => a0 i (sub338 i hi))
theorem h339 (ρ : Env) (a0 : Fits s504 (ρ 0)) : All tab ρ b0 s504 :=
  varAll (fun i hi => a0 i (sub339 i hi))
theorem h340 (ρ : Env) (a0 : Fits s501 (ρ 0)) : All tab ρ b0 s842 :=
  varAll (fun i hi => a0 i (sub340 i hi))
theorem h341 (ρ : Env) (a0 : Fits s508 (ρ 0)) : All tab ρ b0 s843 :=
  varAll (fun i hi => a0 i (sub341 i hi))
theorem h342 (ρ : Env) (a0 : Fits s510 (ρ 0)) : All tab ρ b0 s510 :=
  varAll (fun i hi => a0 i (sub342 i hi))
theorem h343 (ρ : Env) (a0 : Fits s511 (ρ 0)) : All tab ρ b0 s511 :=
  varAll (fun i hi => a0 i (sub343 i hi))
theorem h344 (ρ : Env) (a0 : Fits s514 (ρ 0)) : All tab ρ b0 s514 :=
  varAll (fun i hi => a0 i (sub344 i hi))
theorem h345 (ρ : Env) (a0 : Fits s515 (ρ 0)) : All tab ρ b0 s515 :=
  varAll (fun i hi => a0 i (sub345 i hi))
theorem h346 (ρ : Env) (a0 : Fits s507 (ρ 0)) : All tab ρ b0 s844 :=
  varAll (fun i hi => a0 i (sub346 i hi))
theorem h347 (ρ : Env) (a0 : Fits s516 (ρ 0)) : All tab ρ b0 s516 :=
  varAll (fun i hi => a0 i (sub347 i hi))
theorem h348 (ρ : Env) (a0 : Fits s518 (ρ 0)) : All tab ρ b0 s518 :=
  varAll (fun i hi => a0 i (sub348 i hi))
theorem h349 (ρ : Env) (a0 : Fits s512 (ρ 0)) : All tab ρ b0 s812 :=
  varAll (fun i hi => a0 i (sub349 i hi))
theorem h350 (ρ : Env) (a0 : Fits s519 (ρ 0)) : All tab ρ b0 s519 :=
  varAll (fun i hi => a0 i (sub350 i hi))
theorem h351 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b1 s520 :=
  appAll len3 d3 c3 sub351 ((h0 ρ a0) 3 mem0) (smaller (h0 ρ a0) sub0)
theorem h352 (ρ : Env) (a0 : Fits s1 (ρ 0)) : All tab ρ b2 s11 :=
  appAll len2 d2 c2 sub5 ((h351 ρ a0) 2 mem1) (smaller (h0 ρ a0) sub0)
theorem h353 (ρ : Env)  : All tab ρ b3 s520 :=
  (consAll (lamAt d2 c2 (smaller (h352 (SelfintRecursiveTypes.cons s1 ρ) sub0) sub5)) Positive.none)
theorem h354 (ρ : Env) (a1 : Fits s1 (ρ 1)) : All tab ρ b4 s1 :=
  varAll (fun i hi => a1 i (sub0 i hi))
theorem h355 (ρ : Env) (a1 : Fits s2 (ρ 1)) : All tab ρ b4 s2 :=
  varAll (fun i hi => a1 i (sub352 i hi))
theorem h356 (ρ : Env) (a1 : Fits s3 (ρ 1)) : All tab ρ b4 s3 :=
  varAll (fun i hi => a1 i (sub353 i hi))
theorem h357 (ρ : Env) (a1 : Fits s5 (ρ 1)) : All tab ρ b4 s5 :=
  varAll (fun i hi => a1 i (sub354 i hi))
theorem h358 (ρ : Env) (a1 : Fits s10 (ρ 1)) : All tab ρ b4 s10 :=
  varAll (fun i hi => a1 i (sub355 i hi))
theorem h359 (ρ : Env) (a1 : Fits s8 (ρ 1)) : All tab ρ b4 s845 :=
  varAll (fun i hi => a1 i (sub356 i hi))
end Blc.H45.H45F9573528477238
