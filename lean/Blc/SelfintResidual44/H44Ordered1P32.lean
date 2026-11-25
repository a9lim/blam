import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Ordered1P0

set_option Elab.async false
namespace Blc.H44Chain
open Term SelfintControl SelfintLowerBound SelfintFiniteChain
set_option maxRecDepth 30000
set_option maxHeartbeats 3000000
theorem oh1_32 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_3 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_2) (a := ob1_0) (oh1_10 ρ a1) (oh1_13 ρ a0) (by decide : opm1 1 2 = 3)
theorem oh1_33 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_1 ρ a2) (oh1_32 ρ a0 a1) (by decide : opm1 0 3 = 3)
theorem oh1_34 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_33 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_35 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_3 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_2) (a := ob1_0) (oh1_10 ρ a1) (oh1_19 ρ a0) (by decide : opm1 1 3 = 3)
theorem oh1_36 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_1 ρ a2) (oh1_35 ρ a0 a1) (by decide : opm1 0 3 = 3)
theorem oh1_37 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_36 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_38 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_7 = 2 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_6) = 2
  have h : (fun a => eval gm1 (push a ρ) ob1_6) = (fun a : Fin 4 => if a = 0 then 1 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_28 (push 0 ρ) rfl a0 a1)
    · exact (oh1_31 (push 1 ρ) rfl a0 a1)
    · exact (oh1_34 (push 2 ρ) rfl a0 a1)
    · exact (oh1_37 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_39 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_3 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_2) (a := ob1_0) (oh1_16 ρ a1) (oh1_0 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_40 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_4 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_1 ρ a2) (oh1_39 ρ a0 a1) (by decide : opm1 0 1 = 1)
theorem oh1_41 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_6 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_40 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 1 0 = 1)
theorem oh1_42 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_3 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_2) (a := ob1_0) (oh1_16 ρ a1) (oh1_7 ρ a0) (by decide : opm1 2 1 = 3)
theorem oh1_43 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_1 ρ a2) (oh1_42 ρ a0 a1) (by decide : opm1 0 3 = 3)
theorem oh1_44 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_43 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_45 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_3 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_2) (a := ob1_0) (oh1_16 ρ a1) (oh1_13 ρ a0) (by decide : opm1 2 2 = 3)
theorem oh1_46 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_1 ρ a2) (oh1_45 ρ a0 a1) (by decide : opm1 0 3 = 3)
theorem oh1_47 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_46 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_48 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_3 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_2) (a := ob1_0) (oh1_16 ρ a1) (oh1_19 ρ a0) (by decide : opm1 2 3 = 3)
theorem oh1_49 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_1 ρ a2) (oh1_48 ρ a0 a1) (by decide : opm1 0 3 = 3)
theorem oh1_50 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_49 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_51 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_7 = 2 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_6) = 2
  have h : (fun a => eval gm1 (push a ρ) ob1_6) = (fun a : Fin 4 => if a = 0 then 1 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_41 (push 0 ρ) rfl a0 a1)
    · exact (oh1_44 (push 1 ρ) rfl a0 a1)
    · exact (oh1_47 (push 2 ρ) rfl a0 a1)
    · exact (oh1_50 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_52 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_3 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_2) (a := ob1_0) (oh1_22 ρ a1) (oh1_0 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_53 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_1 ρ a2) (oh1_52 ρ a0 a1) (by decide : opm1 0 3 = 3)
theorem oh1_54 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_53 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_55 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_3 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_2) (a := ob1_0) (oh1_22 ρ a1) (oh1_7 ρ a0) (by decide : opm1 3 1 = 3)
theorem oh1_56 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_1 ρ a2) (oh1_55 ρ a0 a1) (by decide : opm1 0 3 = 3)
theorem oh1_57 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_56 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_58 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_3 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_2) (a := ob1_0) (oh1_22 ρ a1) (oh1_13 ρ a0) (by decide : opm1 3 2 = 3)
theorem oh1_59 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_1 ρ a2) (oh1_58 ρ a0 a1) (by decide : opm1 0 3 = 3)
theorem oh1_60 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_59 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_61 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_3 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_2) (a := ob1_0) (oh1_22 ρ a1) (oh1_19 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_62 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_1 ρ a2) (oh1_61 ρ a0 a1) (by decide : opm1 0 3 = 3)
theorem oh1_63 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_62 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
end Blc.H44Chain
