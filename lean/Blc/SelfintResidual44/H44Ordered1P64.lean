import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Ordered1P32

set_option Elab.async false
namespace Blc.H44Chain
open Term SelfintControl SelfintLowerBound SelfintFiniteChain
set_option maxRecDepth 30000
set_option maxHeartbeats 3000000
theorem oh1_64 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_7 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_6) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_6) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_54 (push 0 ρ) rfl a0 a1)
    · exact (oh1_57 (push 1 ρ) rfl a0 a1)
    · exact (oh1_60 (push 2 ρ) rfl a0 a1)
    · exact (oh1_63 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_65 (ρ : Env 3) (a0 : ρ 0 = 0) : eval gm1 ρ ob1_8 = 1 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_7) = 1
  have h : (fun a => eval gm1 (push a ρ) ob1_7) = (fun a : Fin 4 => if a = 0 then 0 else if a = 1 then 2 else if a = 2 then 2 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_25 (push 0 ρ) rfl a0)
    · exact (oh1_38 (push 1 ρ) rfl a0)
    · exact (oh1_51 (push 2 ρ) rfl a0)
    · exact (oh1_64 (push 3 ρ) rfl a0)
  rw [h]
  decide
theorem oh1_66 (ρ : Env 3) (a0 : ρ 0 = 0) : eval gm1 ρ ob1_9 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_0) (a := ob1_8) (oh1_0 ρ a0) (oh1_65 ρ a0) (by decide : opm1 0 1 = 1)
theorem oh1_67 (ρ : Env 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_1 = 1 := by
  exact a2
theorem oh1_68 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_4 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_67 ρ a2) (oh1_3 ρ a0 a1) (by decide : opm1 1 1 = 2)
theorem oh1_69 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_6 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_68 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_70 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_4 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_67 ρ a2) (oh1_8 ρ a0 a1) (by decide : opm1 1 1 = 2)
theorem oh1_71 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_6 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_70 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_72 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_67 ρ a2) (oh1_14 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_73 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_72 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_74 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_67 ρ a2) (oh1_20 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_75 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_74 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_76 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_7 = 0 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_6) = 0
  have h : (fun a => eval gm1 (push a ρ) ob1_6) = (fun a : Fin 4 => if a = 0 then 1 else if a = 1 then 1 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_69 (push 0 ρ) rfl a0 a1)
    · exact (oh1_71 (push 1 ρ) rfl a0 a1)
    · exact (oh1_73 (push 2 ρ) rfl a0 a1)
    · exact (oh1_75 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_77 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_4 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_67 ρ a2) (oh1_26 ρ a0 a1) (by decide : opm1 1 1 = 2)
theorem oh1_78 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_6 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_77 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_79 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_67 ρ a2) (oh1_29 ρ a0 a1) (by decide : opm1 1 2 = 3)
theorem oh1_80 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_79 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_81 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_67 ρ a2) (oh1_32 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_82 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_81 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_83 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_67 ρ a2) (oh1_35 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_84 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_83 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_85 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_7 = 2 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_6) = 2
  have h : (fun a => eval gm1 (push a ρ) ob1_6) = (fun a : Fin 4 => if a = 0 then 1 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_78 (push 0 ρ) rfl a0 a1)
    · exact (oh1_80 (push 1 ρ) rfl a0 a1)
    · exact (oh1_82 (push 2 ρ) rfl a0 a1)
    · exact (oh1_84 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_86 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_4 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_67 ρ a2) (oh1_39 ρ a0 a1) (by decide : opm1 1 1 = 2)
theorem oh1_87 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_6 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_86 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_88 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_67 ρ a2) (oh1_42 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_89 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_88 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_90 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_67 ρ a2) (oh1_45 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_91 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_90 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_92 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_67 ρ a2) (oh1_48 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_93 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_92 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_94 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_7 = 2 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_6) = 2
  have h : (fun a => eval gm1 (push a ρ) ob1_6) = (fun a : Fin 4 => if a = 0 then 1 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_87 (push 0 ρ) rfl a0 a1)
    · exact (oh1_89 (push 1 ρ) rfl a0 a1)
    · exact (oh1_91 (push 2 ρ) rfl a0 a1)
    · exact (oh1_93 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_95 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_67 ρ a2) (oh1_52 ρ a0 a1) (by decide : opm1 1 3 = 3)
end Blc.H44Chain
