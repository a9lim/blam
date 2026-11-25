import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Ordered1P160

set_option Elab.async false
namespace Blc.H44Chain
open Term SelfintControl SelfintLowerBound SelfintFiniteChain
set_option maxRecDepth 30000
set_option maxHeartbeats 3000000
theorem oh1_192 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_12 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_11) (a := ob1_5) (oh1_191 ρ a0 a1) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_193 (ρ : Env 3) (a0 : ρ 0 = 0) : eval gm1 ρ ob1_13 = 0 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_12) = 0
  have h : (fun a => eval gm1 (push a ρ) ob1_12) = (fun a : Fin 4 => if a = 0 then 1 else if a = 1 then 1 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_186 (push 0 ρ) rfl a0)
    · exact (oh1_188 (push 1 ρ) rfl a0)
    · exact (oh1_190 (push 2 ρ) rfl a0)
    · exact (oh1_192 (push 3 ρ) rfl a0)
  rw [h]
  decide
theorem oh1_194 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_11 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_3) (oh1_184 ρ) (oh1_26 ρ a0 a1) (by decide : opm1 1 1 = 2)
theorem oh1_195 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_12 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_11) (a := ob1_5) (oh1_194 ρ a0 a1) (oh1_5 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_196 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_11 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_3) (oh1_184 ρ) (oh1_29 ρ a0 a1) (by decide : opm1 1 2 = 3)
theorem oh1_197 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_12 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_11) (a := ob1_5) (oh1_196 ρ a0 a1) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_198 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_11 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_3) (oh1_184 ρ) (oh1_32 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_199 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_12 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_11) (a := ob1_5) (oh1_198 ρ a0 a1) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_200 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_11 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_3) (oh1_184 ρ) (oh1_35 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_201 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_12 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_11) (a := ob1_5) (oh1_200 ρ a0 a1) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_202 (ρ : Env 3) (a0 : ρ 0 = 1) : eval gm1 ρ ob1_13 = 2 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_12) = 2
  have h : (fun a => eval gm1 (push a ρ) ob1_12) = (fun a : Fin 4 => if a = 0 then 1 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_195 (push 0 ρ) rfl a0)
    · exact (oh1_197 (push 1 ρ) rfl a0)
    · exact (oh1_199 (push 2 ρ) rfl a0)
    · exact (oh1_201 (push 3 ρ) rfl a0)
  rw [h]
  decide
theorem oh1_203 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_11 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_3) (oh1_184 ρ) (oh1_39 ρ a0 a1) (by decide : opm1 1 1 = 2)
theorem oh1_204 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_12 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_11) (a := ob1_5) (oh1_203 ρ a0 a1) (oh1_5 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_205 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_11 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_3) (oh1_184 ρ) (oh1_42 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_206 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_12 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_11) (a := ob1_5) (oh1_205 ρ a0 a1) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_207 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_11 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_3) (oh1_184 ρ) (oh1_45 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_208 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_12 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_11) (a := ob1_5) (oh1_207 ρ a0 a1) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_209 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_11 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_3) (oh1_184 ρ) (oh1_48 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_210 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) : eval gm1 ρ ob1_12 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_11) (a := ob1_5) (oh1_209 ρ a0 a1) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_211 (ρ : Env 3) (a0 : ρ 0 = 2) : eval gm1 ρ ob1_13 = 2 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_12) = 2
  have h : (fun a => eval gm1 (push a ρ) ob1_12) = (fun a : Fin 4 => if a = 0 then 1 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_204 (push 0 ρ) rfl a0)
    · exact (oh1_206 (push 1 ρ) rfl a0)
    · exact (oh1_208 (push 2 ρ) rfl a0)
    · exact (oh1_210 (push 3 ρ) rfl a0)
  rw [h]
  decide
theorem oh1_212 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_11 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_3) (oh1_184 ρ) (oh1_52 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_213 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_12 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_11) (a := ob1_5) (oh1_212 ρ a0 a1) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_214 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_11 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_3) (oh1_184 ρ) (oh1_55 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_215 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_12 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_11) (a := ob1_5) (oh1_214 ρ a0 a1) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_216 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_11 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_3) (oh1_184 ρ) (oh1_58 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_217 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_12 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_11) (a := ob1_5) (oh1_216 ρ a0 a1) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_218 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_11 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_3) (oh1_184 ρ) (oh1_61 ρ a0 a1) (by decide : opm1 1 3 = 3)
theorem oh1_219 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) : eval gm1 ρ ob1_12 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_11) (a := ob1_5) (oh1_218 ρ a0 a1) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_220 (ρ : Env 3) (a0 : ρ 0 = 3) : eval gm1 ρ ob1_13 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_12) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_12) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_213 (push 0 ρ) rfl a0)
    · exact (oh1_215 (push 1 ρ) rfl a0)
    · exact (oh1_217 (push 2 ρ) rfl a0)
    · exact (oh1_219 (push 3 ρ) rfl a0)
  rw [h]
  decide
theorem oh1_221 (ρ : Env 3)  : eval gm1 ρ ob1_14 = 1 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_13) = 1
  have h : (fun a => eval gm1 (push a ρ) ob1_13) = (fun a : Fin 4 => if a = 0 then 0 else if a = 1 then 2 else if a = 2 then 2 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_193 (push 0 ρ) rfl)
    · exact (oh1_202 (push 1 ρ) rfl)
    · exact (oh1_211 (push 2 ρ) rfl)
    · exact (oh1_220 (push 3 ρ) rfl)
  rw [h]
  decide
theorem oh1_222 (ρ : Env 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_15 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_2) (oh1_1 ρ a2) (oh1_2 ρ a1) (by decide : opm1 0 0 = 1)
theorem oh1_223 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_16 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_222 ρ a1 a2) (oh1_0 ρ a0) (by decide : opm1 1 0 = 1)
end Blc.H44Chain
