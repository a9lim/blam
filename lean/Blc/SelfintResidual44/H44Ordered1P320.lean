import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Ordered1P288

set_option Elab.async false
namespace Blc.H44Chain
open Term SelfintControl SelfintLowerBound SelfintFiniteChain
set_option maxRecDepth 30000
set_option maxHeartbeats 3000000
theorem oh1_320 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_313 ρ a1 a2) (oh1_13 ρ a0) (by decide : opm1 3 2 = 3)
theorem oh1_321 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_320 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_322 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_321 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_323 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_313 ρ a1 a2) (oh1_19 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_324 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_323 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_325 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_324 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_326 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_19 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_18) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_18) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_316 (push 0 ρ) rfl a0 a1)
    · exact (oh1_319 (push 1 ρ) rfl a0 a1)
    · exact (oh1_322 (push 2 ρ) rfl a0 a1)
    · exact (oh1_325 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_327 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_20 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_19) (a := ob1_5) (oh1_326 ρ a0 a1) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_328 (ρ : Env 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_15 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_2) (oh1_67 ρ a2) (oh1_22 ρ a1) (by decide : opm1 1 3 = 3)
theorem oh1_329 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_328 ρ a1 a2) (oh1_0 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_330 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_329 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_331 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_330 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_332 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_328 ρ a1 a2) (oh1_7 ρ a0) (by decide : opm1 3 1 = 3)
theorem oh1_333 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_332 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_334 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_333 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_335 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_328 ρ a1 a2) (oh1_13 ρ a0) (by decide : opm1 3 2 = 3)
theorem oh1_336 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_335 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_337 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_336 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_338 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_328 ρ a1 a2) (oh1_19 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_339 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_338 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_340 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 3) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_339 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_341 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_19 = 3 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_18) = 3
  have h : (fun a => eval gm1 (push a ρ) ob1_18) = (fun a : Fin 4 => if a = 0 then 3 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_331 (push 0 ρ) rfl a0 a1)
    · exact (oh1_334 (push 1 ρ) rfl a0 a1)
    · exact (oh1_337 (push 2 ρ) rfl a0 a1)
    · exact (oh1_340 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_342 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_20 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_19) (a := ob1_5) (oh1_341 ρ a0 a1) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_343 (ρ : Env 3) (a0 : ρ 0 = 1) : eval gm1 ρ ob1_21 = 0 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_20) = 0
  have h : (fun a => eval gm1 (push a ρ) ob1_20) = (fun a : Fin 4 => if a = 0 then 1 else if a = 1 then 1 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_297 (push 0 ρ) rfl a0)
    · exact (oh1_312 (push 1 ρ) rfl a0)
    · exact (oh1_327 (push 2 ρ) rfl a0)
    · exact (oh1_342 (push 3 ρ) rfl a0)
  rw [h]
  decide
theorem oh1_344 (ρ : Env 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_15 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_2) (oh1_106 ρ a2) (oh1_2 ρ a1) (by decide : opm1 2 0 = 1)
theorem oh1_345 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_16 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_344 ρ a1 a2) (oh1_0 ρ a0) (by decide : opm1 1 0 = 1)
theorem oh1_346 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_17 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_345 ρ a0 a1 a2) (by decide : opm1 1 1 = 2)
theorem oh1_347 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_18 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_346 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_348 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_16 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_344 ρ a1 a2) (oh1_7 ρ a0) (by decide : opm1 1 1 = 2)
theorem oh1_349 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_348 ρ a0 a1 a2) (by decide : opm1 1 2 = 3)
theorem oh1_350 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_349 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_351 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) (a2 : ρ 2 = 2) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_344 ρ a1 a2) (oh1_13 ρ a0) (by decide : opm1 1 2 = 3)
end Blc.H44Chain
