import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Ordered1P192

set_option Elab.async false
namespace Blc.H44Chain
open Term SelfintControl SelfintLowerBound SelfintFiniteChain
set_option maxRecDepth 30000
set_option maxHeartbeats 3000000
theorem oh1_224 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_17 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_223 ρ a0 a1 a2) (by decide : opm1 1 1 = 2)
theorem oh1_225 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_18 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_224 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_226 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_16 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_222 ρ a1 a2) (oh1_7 ρ a0) (by decide : opm1 1 1 = 2)
theorem oh1_227 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_226 ρ a0 a1 a2) (by decide : opm1 1 2 = 3)
theorem oh1_228 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_227 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_229 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_222 ρ a1 a2) (oh1_13 ρ a0) (by decide : opm1 1 2 = 3)
theorem oh1_230 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_229 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_231 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_230 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_232 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_222 ρ a1 a2) (oh1_19 ρ a0) (by decide : opm1 1 3 = 3)
theorem oh1_233 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_232 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_234 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_233 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_235 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_19 = 2 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_18) = 2
  have h : (fun a => eval gm1 (push a ρ) ob1_18) = (fun a : Fin 4 => if a = 0 then 1 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_225 (push 0 ρ) rfl a0 a1)
    · exact (oh1_228 (push 1 ρ) rfl a0 a1)
    · exact (oh1_231 (push 2 ρ) rfl a0 a1)
    · exact (oh1_234 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_236 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_20 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_19) (a := ob1_5) (oh1_235 ρ a0 a1) (oh1_5 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_237 (ρ : Env 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_15 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_2) (oh1_1 ρ a2) (oh1_10 ρ a1) (by decide : opm1 0 1 = 1)
theorem oh1_238 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_16 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_237 ρ a1 a2) (oh1_0 ρ a0) (by decide : opm1 1 0 = 1)
theorem oh1_239 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_17 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_238 ρ a0 a1 a2) (by decide : opm1 1 1 = 2)
theorem oh1_240 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_18 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_239 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_241 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_16 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_237 ρ a1 a2) (oh1_7 ρ a0) (by decide : opm1 1 1 = 2)
theorem oh1_242 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_241 ρ a0 a1 a2) (by decide : opm1 1 2 = 3)
theorem oh1_243 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_242 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_244 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_237 ρ a1 a2) (oh1_13 ρ a0) (by decide : opm1 1 2 = 3)
theorem oh1_245 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_244 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_246 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_245 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_247 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_237 ρ a1 a2) (oh1_19 ρ a0) (by decide : opm1 1 3 = 3)
theorem oh1_248 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_247 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_249 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_248 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_250 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_19 = 2 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_18) = 2
  have h : (fun a => eval gm1 (push a ρ) ob1_18) = (fun a : Fin 4 => if a = 0 then 1 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_240 (push 0 ρ) rfl a0 a1)
    · exact (oh1_243 (push 1 ρ) rfl a0 a1)
    · exact (oh1_246 (push 2 ρ) rfl a0 a1)
    · exact (oh1_249 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_251 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_20 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_19) (a := ob1_5) (oh1_250 ρ a0 a1) (oh1_11 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_252 (ρ : Env 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_15 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_2) (oh1_1 ρ a2) (oh1_16 ρ a1) (by decide : opm1 0 2 = 3)
theorem oh1_253 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_252 ρ a1 a2) (oh1_0 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_254 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_253 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_255 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_254 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
end Blc.H44Chain
