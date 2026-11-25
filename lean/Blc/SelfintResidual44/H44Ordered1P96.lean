import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Ordered1P64

set_option Elab.async false
namespace Blc.H44Chain
open Term SelfintControl SelfintLowerBound SelfintFiniteChain
set_option maxRecDepth 30000
set_option maxHeartbeats 3000000
theorem oh1_96 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_95 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_97 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_67 ρ a2) (oh1_55 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_98 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_97 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_99 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_67 ρ a2) (oh1_58 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_100 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_99 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_101 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_67 ρ a2) (oh1_61 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_102 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_101 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_103 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_7 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_6) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_6) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_96 (push 0 ρ) rfl a0 a1)
    · exact (oh1_98 (push 1 ρ) rfl a0 a1)
    · exact (oh1_100 (push 2 ρ) rfl a0 a1)
    · exact (oh1_102 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_104 (ρ : Env 3) (a0 : ρ 0 = 1) : eval gm1 ρ ob1_8 = 1 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_7) = 1
  have h : (fun a => eval gm1 (push a ρ) ob1_7) = (fun a : Fin 4 => if a = 0 then 0 else if a = 1 then 2 else if a = 2 then 2 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_76 (push 0 ρ) rfl a0)
    · exact (oh1_85 (push 1 ρ) rfl a0)
    · exact (oh1_94 (push 2 ρ) rfl a0)
    · exact (oh1_103 (push 3 ρ) rfl a0)
  rw [h]
  decide
theorem oh1_105 (ρ : Env 3) (a0 : ρ 0 = 1) : eval gm1 ρ ob1_9 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_0) (a := ob1_8) (oh1_7 ρ a0) (oh1_104 ρ a0) (by decide : opm1 1 1 = 2)
theorem oh1_106 (ρ : Env 3) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_1 = 2 := by
  exact a2
theorem oh1_107 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_106 ρ a2) (oh1_3 ρ a0 a1) (by decide : opm1 2 1 = 3)
theorem oh1_108 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_107 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_109 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_106 ρ a2) (oh1_8 ρ a0 a1) (by decide : opm1 2 1 = 3)
theorem oh1_110 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_109 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_111 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_106 ρ a2) (oh1_14 ρ a0 a1) (by decide : opm1 2 3 = 3)
theorem oh1_112 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_111 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_113 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_106 ρ a2) (oh1_20 ρ a0 a1) (by decide : opm1 2 3 = 3)
theorem oh1_114 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_113 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_115 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_7 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_6) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_6) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_108 (push 0 ρ) rfl a0 a1)
    · exact (oh1_110 (push 1 ρ) rfl a0 a1)
    · exact (oh1_112 (push 2 ρ) rfl a0 a1)
    · exact (oh1_114 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_116 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_106 ρ a2) (oh1_26 ρ a0 a1) (by decide : opm1 2 1 = 3)
theorem oh1_117 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_116 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_118 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_106 ρ a2) (oh1_29 ρ a0 a1) (by decide : opm1 2 2 = 3)
theorem oh1_119 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_118 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_120 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_106 ρ a2) (oh1_32 ρ a0 a1) (by decide : opm1 2 3 = 3)
theorem oh1_121 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_120 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_122 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_106 ρ a2) (oh1_35 ρ a0 a1) (by decide : opm1 2 3 = 3)
theorem oh1_123 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_122 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_124 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_7 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_6) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_6) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_117 (push 0 ρ) rfl a0 a1)
    · exact (oh1_119 (push 1 ρ) rfl a0 a1)
    · exact (oh1_121 (push 2 ρ) rfl a0 a1)
    · exact (oh1_123 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_125 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_106 ρ a2) (oh1_39 ρ a0 a1) (by decide : opm1 2 1 = 3)
theorem oh1_126 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_125 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_127 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_106 ρ a2) (oh1_42 ρ a0 a1) (by decide : opm1 2 3 = 3)
end Blc.H44Chain
