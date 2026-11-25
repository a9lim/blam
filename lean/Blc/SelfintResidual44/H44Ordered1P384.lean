import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Ordered1P352

set_option Elab.async false
namespace Blc.H44Chain
open Term SelfintControl SelfintLowerBound SelfintFiniteChain
set_option maxRecDepth 30000
set_option maxHeartbeats 3000000
theorem oh1_384 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_374 ρ a1 a2) (oh1_19 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_385 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_384 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_386 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_385 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_387 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_19 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_18) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_18) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_377 (push 0 ρ) rfl a0 a1)
    · exact (oh1_380 (push 1 ρ) rfl a0 a1)
    · exact (oh1_383 (push 2 ρ) rfl a0 a1)
    · exact (oh1_386 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_388 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_20 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_19) (a := ob1_5) (oh1_387 ρ a0 a1) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_389 (ρ : Env 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_15 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_2) (oh1_106 ρ a2) (oh1_22 ρ a1) (by decide : opm1 2 3 = 3)
theorem oh1_390 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_389 ρ a1 a2) (oh1_0 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_391 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_390 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_392 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_391 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_393 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_389 ρ a1 a2) (oh1_7 ρ a0) (by decide : opm1 3 1 = 3)
theorem oh1_394 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_393 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_395 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_394 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_396 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_389 ρ a1 a2) (oh1_13 ρ a0) (by decide : opm1 3 2 = 3)
theorem oh1_397 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_396 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_398 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_397 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_399 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_389 ρ a1 a2) (oh1_19 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_400 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_399 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_401 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_400 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_402 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_19 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_18) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_18) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_392 (push 0 ρ) rfl a0 a1)
    · exact (oh1_395 (push 1 ρ) rfl a0 a1)
    · exact (oh1_398 (push 2 ρ) rfl a0 a1)
    · exact (oh1_401 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_403 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_20 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_19) (a := ob1_5) (oh1_402 ρ a0 a1) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_404 (ρ : Env 3) (a0 : ρ 0 = 2) : eval gm1 ρ ob1_21 = 2 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_20) = 2
  have h : (fun a => eval gm1 (push a ρ) ob1_20) = (fun a : Fin 4 => if a = 0 then 1 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_358 (push 0 ρ) rfl a0)
    · exact (oh1_373 (push 1 ρ) rfl a0)
    · exact (oh1_388 (push 2 ρ) rfl a0)
    · exact (oh1_403 (push 3 ρ) rfl a0)
  rw [h]
  decide
theorem oh1_405 (ρ : Env 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_15 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_2) (oh1_145 ρ a2) (oh1_2 ρ a1) (by decide : opm1 3 0 = 3)
theorem oh1_406 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_405 ρ a1 a2) (oh1_0 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_407 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_406 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_408 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_407 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_409 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_405 ρ a1 a2) (oh1_7 ρ a0) (by decide : opm1 3 1 = 3)
theorem oh1_410 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_409 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_411 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_410 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_412 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_405 ρ a1 a2) (oh1_13 ρ a0) (by decide : opm1 3 2 = 3)
theorem oh1_413 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_412 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_414 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_413 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_415 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_405 ρ a1 a2) (oh1_19 ρ a0) (by decide : opm1 3 3 = 3)
end Blc.H44Chain
