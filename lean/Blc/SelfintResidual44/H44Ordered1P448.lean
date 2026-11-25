import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Ordered1P416

set_option Elab.async false
namespace Blc.H44Chain
open Term SelfintControl SelfintLowerBound SelfintFiniteChain
set_option maxRecDepth 30000
set_option maxHeartbeats 3000000
theorem oh1_448 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_19 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_18) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_18) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_438 (push 0 ρ) rfl a0 a1)
    · exact (oh1_441 (push 1 ρ) rfl a0 a1)
    · exact (oh1_444 (push 2 ρ) rfl a0 a1)
    · exact (oh1_447 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_449 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_20 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_19) (a := ob1_5) (oh1_448 ρ a0 a1) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_450 (ρ : Env 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_15 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_2) (oh1_145 ρ a2) (oh1_22 ρ a1) (by decide : opm1 3 3 = 3)
theorem oh1_451 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_450 ρ a1 a2) (oh1_0 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_452 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_451 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_453 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_452 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_454 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_450 ρ a1 a2) (oh1_7 ρ a0) (by decide : opm1 3 1 = 3)
theorem oh1_455 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_454 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_456 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_455 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_457 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_450 ρ a1 a2) (oh1_13 ρ a0) (by decide : opm1 3 2 = 3)
theorem oh1_458 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_457 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_459 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_458 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_460 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_450 ρ a1 a2) (oh1_19 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_461 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_460 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_462 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_461 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_463 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_19 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_18) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_18) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_453 (push 0 ρ) rfl a0 a1)
    · exact (oh1_456 (push 1 ρ) rfl a0 a1)
    · exact (oh1_459 (push 2 ρ) rfl a0 a1)
    · exact (oh1_462 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_464 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_20 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_19) (a := ob1_5) (oh1_463 ρ a0 a1) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_465 (ρ : Env 3) (a0 : ρ 0 = 3) : eval gm1 ρ ob1_21 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_20) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_20) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_419 (push 0 ρ) rfl a0)
    · exact (oh1_434 (push 1 ρ) rfl a0)
    · exact (oh1_449 (push 2 ρ) rfl a0)
    · exact (oh1_464 (push 3 ρ) rfl a0)
  rw [h]
  decide
theorem oh1_466 (ρ : Env 3)  : eval gm1 ρ ob1_22 = 0 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_21) = 0
  have h : (fun a => eval gm1 (push a ρ) ob1_21) = (fun a : Fin 4 => if a = 0 then 0 else if a = 1 then 0 else if a = 2 then 2 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_282 (push 0 ρ) rfl)
    · exact (oh1_343 (push 1 ρ) rfl)
    · exact (oh1_404 (push 2 ρ) rfl)
    · exact (oh1_465 (push 3 ρ) rfl)
  rw [h]
  decide
theorem oh1_467 (ρ : Env 3)  : eval gm1 ρ ob1_23 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_14) (a := ob1_22) (oh1_221 ρ) (oh1_466 ρ) (by decide : opm1 1 0 = 1)
theorem oh1_468 (ρ : Env 3)  : eval gm1 ρ ob1_24 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_23) (a := ob1_10) (oh1_467 ρ) (oh1_184 ρ) (by decide : opm1 1 1 = 2)
end Blc.H44Chain
