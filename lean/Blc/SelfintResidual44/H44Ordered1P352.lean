import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Ordered1P320

set_option Elab.async false
namespace Blc.H44Chain
open Term SelfintControl SelfintLowerBound SelfintFiniteChain
set_option maxRecDepth 30000
set_option maxHeartbeats 3000000
theorem oh1_352 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_351 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_353 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_352 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_354 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_344 ρ a1 a2) (oh1_19 ρ a0) (by decide : opm1 1 3 = 3)
theorem oh1_355 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_354 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_356 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_355 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_357 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_19 = 2 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_18) = 2
  have h : (fun a => eval gm1 (push a ρ) ob1_18) = (fun a : Fin 4 => if a = 0 then 1 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_347 (push 0 ρ) rfl a0 a1)
    · exact (oh1_350 (push 1 ρ) rfl a0 a1)
    · exact (oh1_353 (push 2 ρ) rfl a0 a1)
    · exact (oh1_356 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_358 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_20 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_19) (a := ob1_5) (oh1_357 ρ a0 a1) (oh1_5 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_359 (ρ : Env 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_15 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_2) (oh1_106 ρ a2) (oh1_10 ρ a1) (by decide : opm1 2 1 = 3)
theorem oh1_360 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_359 ρ a1 a2) (oh1_0 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_361 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_360 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_362 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_361 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_363 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_359 ρ a1 a2) (oh1_7 ρ a0) (by decide : opm1 3 1 = 3)
theorem oh1_364 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_363 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_365 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_364 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_366 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_359 ρ a1 a2) (oh1_13 ρ a0) (by decide : opm1 3 2 = 3)
theorem oh1_367 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_366 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_368 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_367 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_369 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_359 ρ a1 a2) (oh1_19 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_370 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_369 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_371 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_370 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_372 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_19 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_18) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_18) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_362 (push 0 ρ) rfl a0 a1)
    · exact (oh1_365 (push 1 ρ) rfl a0 a1)
    · exact (oh1_368 (push 2 ρ) rfl a0 a1)
    · exact (oh1_371 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_373 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_20 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_19) (a := ob1_5) (oh1_372 ρ a0 a1) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_374 (ρ : Env 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_15 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_2) (oh1_106 ρ a2) (oh1_16 ρ a1) (by decide : opm1 2 2 = 3)
theorem oh1_375 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_374 ρ a1 a2) (oh1_0 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_376 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_375 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_377 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_376 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_378 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_374 ρ a1 a2) (oh1_7 ρ a0) (by decide : opm1 3 1 = 3)
theorem oh1_379 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_378 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_380 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_379 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_381 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_374 ρ a1 a2) (oh1_13 ρ a0) (by decide : opm1 3 2 = 3)
theorem oh1_382 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_381 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_383 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_382 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
end Blc.H44Chain
