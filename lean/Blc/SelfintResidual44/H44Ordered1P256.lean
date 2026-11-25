import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Ordered1P224

set_option Elab.async false
namespace Blc.H44Chain
open Term SelfintControl SelfintLowerBound SelfintFiniteChain
set_option maxRecDepth 30000
set_option maxHeartbeats 3000000
theorem oh1_256 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_252 ρ a1 a2) (oh1_7 ρ a0) (by decide : opm1 3 1 = 3)
theorem oh1_257 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_256 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_258 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_257 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_259 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_252 ρ a1 a2) (oh1_13 ρ a0) (by decide : opm1 3 2 = 3)
theorem oh1_260 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_259 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_261 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_260 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_262 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_252 ρ a1 a2) (oh1_19 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_263 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_262 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_264 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_263 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_265 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_19 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_18) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_18) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_255 (push 0 ρ) rfl a0 a1)
    · exact (oh1_258 (push 1 ρ) rfl a0 a1)
    · exact (oh1_261 (push 2 ρ) rfl a0 a1)
    · exact (oh1_264 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_266 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_20 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_19) (a := ob1_5) (oh1_265 ρ a0 a1) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_267 (ρ : Env 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_15 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_2) (oh1_1 ρ a2) (oh1_22 ρ a1) (by decide : opm1 0 3 = 3)
theorem oh1_268 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_267 ρ a1 a2) (oh1_0 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_269 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_268 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_270 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_269 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_271 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_267 ρ a1 a2) (oh1_7 ρ a0) (by decide : opm1 3 1 = 3)
theorem oh1_272 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_271 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_273 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_272 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_274 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_267 ρ a1 a2) (oh1_13 ρ a0) (by decide : opm1 3 2 = 3)
theorem oh1_275 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_274 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_276 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_275 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_277 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_267 ρ a1 a2) (oh1_19 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_278 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_277 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_279 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 0) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_278 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_280 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_19 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_18) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_18) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_270 (push 0 ρ) rfl a0 a1)
    · exact (oh1_273 (push 1 ρ) rfl a0 a1)
    · exact (oh1_276 (push 2 ρ) rfl a0 a1)
    · exact (oh1_279 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_281 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) : eval gm1 ρ ob1_20 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_19) (a := ob1_5) (oh1_280 ρ a0 a1) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_282 (ρ : Env 3) (a0 : ρ 0 = 0) : eval gm1 ρ ob1_21 = 0 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_20) = 0
  have h : (fun a => eval gm1 (push a ρ) ob1_20) = (fun a : Fin 4 => if a = 0 then 1 else if a = 1 then 1 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_236 (push 0 ρ) rfl a0)
    · exact (oh1_251 (push 1 ρ) rfl a0)
    · exact (oh1_266 (push 2 ρ) rfl a0)
    · exact (oh1_281 (push 3 ρ) rfl a0)
  rw [h]
  decide
theorem oh1_283 (ρ : Env 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_15 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_2) (oh1_67 ρ a2) (oh1_2 ρ a1) (by decide : opm1 1 0 = 1)
theorem oh1_284 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_16 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_283 ρ a1 a2) (oh1_0 ρ a0) (by decide : opm1 1 0 = 1)
theorem oh1_285 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_17 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_284 ρ a0 a1 a2) (by decide : opm1 1 1 = 2)
theorem oh1_286 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_18 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_285 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_287 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_16 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_283 ρ a1 a2) (oh1_7 ρ a0) (by decide : opm1 1 1 = 2)
end Blc.H44Chain
