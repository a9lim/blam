import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Ordered1P128

set_option Elab.async false
namespace Blc.H44Chain
open Term SelfintControl SelfintLowerBound SelfintFiniteChain
set_option maxRecDepth 30000
set_option maxHeartbeats 3000000
theorem oh1_160 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_159 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_161 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_145 ρ a2) (oh1_35 ρ a0 a1) (by decide : opm1 3 3 = 3)
theorem oh1_162 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_161 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_163 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_7 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_6) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_6) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_156 (push 0 ρ) rfl a0 a1)
    · exact (oh1_158 (push 1 ρ) rfl a0 a1)
    · exact (oh1_160 (push 2 ρ) rfl a0 a1)
    · exact (oh1_162 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_164 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_145 ρ a2) (oh1_39 ρ a0 a1) (by decide : opm1 3 1 = 3)
theorem oh1_165 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_164 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_166 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_145 ρ a2) (oh1_42 ρ a0 a1) (by decide : opm1 3 3 = 3)
theorem oh1_167 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_166 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_168 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_145 ρ a2) (oh1_45 ρ a0 a1) (by decide : opm1 3 3 = 3)
theorem oh1_169 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_168 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_170 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_145 ρ a2) (oh1_48 ρ a0 a1) (by decide : opm1 3 3 = 3)
theorem oh1_171 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_170 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_172 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_7 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_6) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_6) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_165 (push 0 ρ) rfl a0 a1)
    · exact (oh1_167 (push 1 ρ) rfl a0 a1)
    · exact (oh1_169 (push 2 ρ) rfl a0 a1)
    · exact (oh1_171 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_173 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_145 ρ a2) (oh1_52 ρ a0 a1) (by decide : opm1 3 3 = 3)
theorem oh1_174 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_173 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_175 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_145 ρ a2) (oh1_55 ρ a0 a1) (by decide : opm1 3 3 = 3)
theorem oh1_176 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_175 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_177 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_145 ρ a2) (oh1_58 ρ a0 a1) (by decide : opm1 3 3 = 3)
theorem oh1_178 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_177 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_179 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_4 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_3) (oh1_145 ρ a2) (oh1_61 ρ a0 a1) (by decide : opm1 3 3 = 3)
theorem oh1_180 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 3) : eval gm1 ρ ob1_6 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_4) (a := ob1_5) (oh1_179 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_181 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_7 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_6) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_6) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_174 (push 0 ρ) rfl a0 a1)
    · exact (oh1_176 (push 1 ρ) rfl a0 a1)
    · exact (oh1_178 (push 2 ρ) rfl a0 a1)
    · exact (oh1_180 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_182 (ρ : Env 3) (a0 : ρ 0 = 3) : eval gm1 ρ ob1_8 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_7) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_7) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_154 (push 0 ρ) rfl a0)
    · exact (oh1_163 (push 1 ρ) rfl a0)
    · exact (oh1_172 (push 2 ρ) rfl a0)
    · exact (oh1_181 (push 3 ρ) rfl a0)
  rw [h]
  decide
theorem oh1_183 (ρ : Env 3) (a0 : ρ 0 = 3) : eval gm1 ρ ob1_9 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_0) (a := ob1_8) (oh1_19 ρ a0) (oh1_182 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_184 (ρ : Env 3)  : eval gm1 ρ ob1_10 = 1 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_9) = 1
  have h : (fun a => eval gm1 (push a ρ) ob1_9) = (fun a : Fin 4 => if a = 0 then 1 else if a = 1 then 2 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_66 (push 0 ρ) rfl)
    · exact (oh1_105 (push 1 ρ) rfl)
    · exact (oh1_144 (push 2 ρ) rfl)
    · exact (oh1_183 (push 3 ρ) rfl)
  rw [h]
  decide
theorem oh1_185 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_11 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_3) (oh1_184 ρ) (oh1_3 ρ a0 a1) (by decide : opm1 1 1 = 2)
theorem oh1_186 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_12 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_11) (a := ob1_5) (oh1_185 ρ a0 a1) (oh1_5 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_187 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_11 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_3) (oh1_184 ρ) (oh1_8 ρ a0 a1) (by decide : opm1 1 1 = 2)
theorem oh1_188 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_12 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_11) (a := ob1_5) (oh1_187 ρ a0 a1) (oh1_11 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_189 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_11 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_3) (oh1_184 ρ) (oh1_14 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_190 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_12 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_11) (a := ob1_5) (oh1_189 ρ a0 a1) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_191 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_11 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_3) (oh1_184 ρ) (oh1_20 ρ a0 a1) (by decide : opm1 1 3 = 3)
end Blc.H44Chain
