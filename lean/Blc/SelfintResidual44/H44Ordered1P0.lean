import Blc.SelfintResidual44.GradeApplication
import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Ordered1Defs

set_option Elab.async false
namespace Blc.H44Chain
open Term SelfintControl SelfintLowerBound SelfintFiniteChain
set_option maxRecDepth 30000
set_option maxHeartbeats 3000000
theorem oh1_0 (ρ : Env 3) (a0 : ρ 0 = 0) : eval gm1 ρ ob1_0 = 0 := by
  exact a0
theorem oh1_1 (ρ : Env 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_1 = 0 := by
  exact a2
theorem oh1_2 (ρ : Env 3) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_2 = 0 := by
  exact a1
theorem oh1_3 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_3 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_2) (a := ob1_0) (oh1_2 ρ a1) (oh1_0 ρ a0) (by decide : opm1 0 0 = 1)
theorem oh1_4 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_4 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_1 ρ a2) (oh1_3 ρ a0 a1) (by decide : opm1 0 1 = 1)
theorem oh1_5 (ρ : Env 3) (a0 : ρ 0 = 0) : eval gm1 ρ ob1_5 = 0 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_2) = 0
  have h : (fun a => eval gm1 (push a ρ) ob1_2) = (fun a : Fin 4 => if a = 0 then 0 else if a = 1 then 0 else if a = 2 then 0 else 0) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_2 (push 0 ρ) a0)
    · exact (oh1_2 (push 1 ρ) a0)
    · exact (oh1_2 (push 2 ρ) a0)
    · exact (oh1_2 (push 3 ρ) a0)
  rw [h]
  decide
theorem oh1_6 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_6 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_4 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 1 0 = 1)
theorem oh1_7 (ρ : Env 3) (a0 : ρ 0 = 1) : eval gm1 ρ ob1_0 = 1 := by
  exact a0
theorem oh1_8 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_3 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_2) (a := ob1_0) (oh1_2 ρ a1) (oh1_7 ρ a0) (by decide : opm1 0 1 = 1)
theorem oh1_9 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_4 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_1 ρ a2) (oh1_8 ρ a0 a1) (by decide : opm1 0 1 = 1)
theorem oh1_10 (ρ : Env 3) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_2 = 1 := by
  exact a1
theorem oh1_11 (ρ : Env 3) (a0 : ρ 0 = 1) : eval gm1 ρ ob1_5 = 0 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_2) = 0
  have h : (fun a => eval gm1 (push a ρ) ob1_2) = (fun a : Fin 4 => if a = 0 then 1 else if a = 1 then 1 else if a = 2 then 1 else 1) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_10 (push 0 ρ) a0)
    · exact (oh1_10 (push 1 ρ) a0)
    · exact (oh1_10 (push 2 ρ) a0)
    · exact (oh1_10 (push 3 ρ) a0)
  rw [h]
  decide
theorem oh1_12 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_6 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_9 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 1 0 = 1)
theorem oh1_13 (ρ : Env 3) (a0 : ρ 0 = 2) : eval gm1 ρ ob1_0 = 2 := by
  exact a0
theorem oh1_14 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_3 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_2) (a := ob1_0) (oh1_2 ρ a1) (oh1_13 ρ a0) (by decide : opm1 0 2 = 3)
theorem oh1_15 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_1 ρ a2) (oh1_14 ρ a0 a1) (by decide : opm1 0 3 = 3)
theorem oh1_16 (ρ : Env 3) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_2 = 2 := by
  exact a1
theorem oh1_17 (ρ : Env 3) (a0 : ρ 0 = 2) : eval gm1 ρ ob1_5 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_2) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_2) = (fun a : Fin 4 => if a = 0 then 2 else if a = 1 then 2 else if a = 2 then 2 else 2) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_16 (push 0 ρ) a0)
    · exact (oh1_16 (push 1 ρ) a0)
    · exact (oh1_16 (push 2 ρ) a0)
    · exact (oh1_16 (push 3 ρ) a0)
  rw [h]
  decide
theorem oh1_18 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_15 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_19 (ρ : Env 3) (a0 : ρ 0 = 3) : eval gm1 ρ ob1_0 = 3 := by
  exact a0
theorem oh1_20 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_3 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_2) (a := ob1_0) (oh1_2 ρ a1) (oh1_19 ρ a0) (by decide : opm1 0 3 = 3)
theorem oh1_21 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_1 ρ a2) (oh1_20 ρ a0 a1) (by decide : opm1 0 3 = 3)
theorem oh1_22 (ρ : Env 3) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_2 = 3 := by
  exact a1
theorem oh1_23 (ρ : Env 3) (a0 : ρ 0 = 3) : eval gm1 ρ ob1_5 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_2) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_2) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_22 (push 0 ρ) a0)
    · exact (oh1_22 (push 1 ρ) a0)
    · exact (oh1_22 (push 2 ρ) a0)
    · exact (oh1_22 (push 3 ρ) a0)
  rw [h]
  decide
theorem oh1_24 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_21 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_25 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_7 = 0 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_6) = 0
  have h : (fun a => eval gm1 (push a ρ) ob1_6) = (fun a : Fin 4 => if a = 0 then 1 else if a = 1 then 1 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_6 (push 0 ρ) rfl a0 a1)
    · exact (oh1_12 (push 1 ρ) rfl a0 a1)
    · exact (oh1_18 (push 2 ρ) rfl a0 a1)
    · exact (oh1_24 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_26 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_3 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_2) (a := ob1_0) (oh1_10 ρ a1) (oh1_0 ρ a0) (by decide : opm1 1 0 = 1)
theorem oh1_27 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_4 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_1 ρ a2) (oh1_26 ρ a0 a1) (by decide : opm1 0 1 = 1)
theorem oh1_28 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_6 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_27 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 1 0 = 1)
theorem oh1_29 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_3 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_2) (a := ob1_0) (oh1_10 ρ a1) (oh1_7 ρ a0) (by decide : opm1 1 1 = 2)
theorem oh1_30 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_1 ρ a2) (oh1_29 ρ a0 a1) (by decide : opm1 0 2 = 3)
theorem oh1_31 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_30 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
end Blc.H44Chain
