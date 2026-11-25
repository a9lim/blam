import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Ordered1P384

set_option Elab.async false
namespace Blc.H44Chain
open Term SelfintControl SelfintLowerBound SelfintFiniteChain
set_option maxRecDepth 30000
set_option maxHeartbeats 3000000
theorem oh1_416 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_415 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_417 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_416 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_418 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_19 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_18) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_18) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_408 (push 0 ρ) rfl a0 a1)
    · exact (oh1_411 (push 1 ρ) rfl a0 a1)
    · exact (oh1_414 (push 2 ρ) rfl a0 a1)
    · exact (oh1_417 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_419 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_20 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_19) (a := ob1_5) (oh1_418 ρ a0 a1) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_420 (ρ : Env 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_15 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_2) (oh1_145 ρ a2) (oh1_10 ρ a1) (by decide : opm1 3 1 = 3)
theorem oh1_421 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_420 ρ a1 a2) (oh1_0 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_422 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_421 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_423 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_422 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_424 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_420 ρ a1 a2) (oh1_7 ρ a0) (by decide : opm1 3 1 = 3)
theorem oh1_425 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_424 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_426 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_425 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_427 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_420 ρ a1 a2) (oh1_13 ρ a0) (by decide : opm1 3 2 = 3)
theorem oh1_428 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_427 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_429 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_428 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_430 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_420 ρ a1 a2) (oh1_19 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_431 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_430 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_432 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_431 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_433 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_19 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_18) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_18) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_423 (push 0 ρ) rfl a0 a1)
    · exact (oh1_426 (push 1 ρ) rfl a0 a1)
    · exact (oh1_429 (push 2 ρ) rfl a0 a1)
    · exact (oh1_432 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_434 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_20 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_19) (a := ob1_5) (oh1_433 ρ a0 a1) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_435 (ρ : Env 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_15 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_2) (oh1_145 ρ a2) (oh1_16 ρ a1) (by decide : opm1 3 2 = 3)
theorem oh1_436 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_435 ρ a1 a2) (oh1_0 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_437 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_436 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_438 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_437 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_439 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_435 ρ a1 a2) (oh1_7 ρ a0) (by decide : opm1 3 1 = 3)
theorem oh1_440 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_439 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_441 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_440 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_442 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_435 ρ a1 a2) (oh1_13 ρ a0) (by decide : opm1 3 2 = 3)
theorem oh1_443 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_442 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_444 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_443 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_445 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_435 ρ a1 a2) (oh1_19 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_446 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_445 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_447 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_446 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
end Blc.H44Chain
