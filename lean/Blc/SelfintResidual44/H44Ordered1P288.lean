import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Ordered1P256

set_option Elab.async false
namespace Blc.H44Chain
open Term SelfintControl SelfintLowerBound SelfintFiniteChain
set_option maxRecDepth 30000
set_option maxHeartbeats 3000000
theorem oh1_288 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_287 ρ a0 a1 a2) (by decide : opm1 1 2 = 3)
theorem oh1_289 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_288 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_290 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_283 ρ a1 a2) (oh1_13 ρ a0) (by decide : opm1 1 2 = 3)
theorem oh1_291 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_290 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_292 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_291 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_293 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_283 ρ a1 a2) (oh1_19 ρ a0) (by decide : opm1 1 3 = 3)
theorem oh1_294 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_293 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_295 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 0) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_294 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_296 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_19 = 2 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_18) = 2
  have h : (fun a => eval gm1 (push a ρ) ob1_18) = (fun a : Fin 4 => if a = 0 then 1 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_286 (push 0 ρ) rfl a0 a1)
    · exact (oh1_289 (push 1 ρ) rfl a0 a1)
    · exact (oh1_292 (push 2 ρ) rfl a0 a1)
    · exact (oh1_295 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_297 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_20 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_19) (a := ob1_5) (oh1_296 ρ a0 a1) (oh1_5 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_298 (ρ : Env 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_15 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_2) (oh1_67 ρ a2) (oh1_10 ρ a1) (by decide : opm1 1 1 = 2)
theorem oh1_299 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_16 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_298 ρ a1 a2) (oh1_0 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_300 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_17 = 2 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_299 ρ a0 a1 a2) (by decide : opm1 1 1 = 2)
theorem oh1_301 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_18 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_300 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_302 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_298 ρ a1 a2) (oh1_7 ρ a0) (by decide : opm1 2 1 = 3)
theorem oh1_303 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_302 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_304 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_303 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_305 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_298 ρ a1 a2) (oh1_13 ρ a0) (by decide : opm1 2 2 = 3)
theorem oh1_306 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_305 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_307 (ρ : Env 3) (a0 : ρ 0 = 2) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_306 ρ a0 a1 a2) (oh1_17 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_308 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_298 ρ a1 a2) (oh1_19 ρ a0) (by decide : opm1 2 3 = 3)
theorem oh1_309 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_308 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_310 (ρ : Env 3) (a0 : ρ 0 = 3) (a1 : ρ 1 = 1) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_309 ρ a0 a1 a2) (oh1_23 ρ a0) (by decide : opm1 3 3 = 3)
theorem oh1_311 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_19 = 2 := by
  change pick gm1 (fun a => eval gm1 (push a ρ) ob1_18) = 2
  have h : (fun a => eval gm1 (push a ρ) ob1_18) = (fun a : Fin 4 => if a = 0 then 1 else if a = 1 then 3 else if a = 2 then 3 else 3) := by
    funext a
    have hall : ∀ a : Fin 4, a = 0 ∨ a = 1 ∨ a = 2 ∨ a = 3 := by decide
    rcases hall a with rfl | rfl | rfl | rfl
    · exact (oh1_301 (push 0 ρ) rfl a0 a1)
    · exact (oh1_304 (push 1 ρ) rfl a0 a1)
    · exact (oh1_307 (push 2 ρ) rfl a0 a1)
    · exact (oh1_310 (push 3 ρ) rfl a0 a1)
  rw [h]
  decide
theorem oh1_312 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 1) : eval gm1 ρ ob1_20 = 1 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_19) (a := ob1_5) (oh1_311 ρ a0 a1) (oh1_11 ρ a0) (by decide : opm1 2 0 = 1)
theorem oh1_313 (ρ : Env 3) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_15 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_1) (a := ob1_2) (oh1_67 ρ a2) (oh1_16 ρ a1) (by decide : opm1 1 2 = 3)
theorem oh1_314 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_313 ρ a1 a2) (oh1_0 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_315 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_314 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_316 (ρ : Env 3) (a0 : ρ 0 = 0) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_315 ρ a0 a1 a2) (oh1_5 ρ a0) (by decide : opm1 3 0 = 3)
theorem oh1_317 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_16 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_15) (a := ob1_0) (oh1_313 ρ a1 a2) (oh1_7 ρ a0) (by decide : opm1 3 1 = 3)
theorem oh1_318 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_17 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_10) (a := ob1_16) (oh1_184 ρ) (oh1_317 ρ a0 a1 a2) (by decide : opm1 1 3 = 3)
theorem oh1_319 (ρ : Env 3) (a0 : ρ 0 = 1) (a1 : ρ 1 = 2) (a2 : ρ 2 = 1) : eval gm1 ρ ob1_18 = 3 := by
  exact appEq (G := gm1) (ρ := ρ) (f := ob1_17) (a := ob1_5) (oh1_318 ρ a0 a1 a2) (oh1_11 ρ a0) (by decide : opm1 3 0 = 3)
end Blc.H44Chain
