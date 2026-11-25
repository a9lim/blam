import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9624769225114D2

set_option Elab.async false
namespace Blc.Floor45.Probe9624769225114
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q368 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q364 e h2 h3 h5) (q25 e h0 h1) (by decide)
theorem q369 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q365 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q366 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q367 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q368 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q370 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q369 e h0 h1 h2 h4) (by decide)
theorem q371 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q364 e h2 h3 h5) (q30 e h0 h1) (by decide)
theorem q372 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q364 e h2 h3 h5) (q32 e h0 h1) (by decide)
theorem q373 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q364 e h2 h3 h5) (q34 e h0 h1) (by decide)
theorem q374 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q364 e h2 h3 h5) (q36 e h0 h1) (by decide)
theorem q375 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q371 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q372 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q373 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q374 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q376 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q375 e h0 h1 h2 h4) (by decide)
theorem q377 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q364 e h2 h3 h5) (q41 e h0 h1) (by decide)
theorem q378 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q364 e h2 h3 h5) (q43 e h0 h1) (by decide)
theorem q379 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q364 e h2 h3 h5) (q45 e h0 h1) (by decide)
theorem q380 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q364 e h2 h3 h5) (q47 e h0 h1) (by decide)
theorem q381 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q377 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q378 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q379 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q380 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q382 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q381 e h0 h1 h2 h4) (by decide)
theorem q383 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q364 e h2 h3 h5) (q52 e h0 h1) (by decide)
theorem q384 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q364 e h2 h3 h5) (q54 e h0 h1) (by decide)
theorem q385 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q364 e h2 h3 h5) (q56 e h0 h1) (by decide)
theorem q386 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q364 e h2 h3 h5) (q58 e h0 h1) (by decide)
theorem q387 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q383 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q384 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q385 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q386 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q388 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q387 e h0 h1 h2 h4) (by decide)
theorem q389 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h3 : e 3 = 1) : Typed Op1ca1a77265e6.G e lit14 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q370 (push 0 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q376 (push 1 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q382 (push 2 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q388 (push 3 e) rfl h0 h1 h3).weaken _ (by decide)
theorem q390 (e : Env 3) (h2 : e 2 = 1) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit8 3 := .app (q63 e h2) (q363 e h3 h5) (by decide)
theorem q391 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q390 e h2 h3 h5) (q19 e h0 h1) (by decide)
theorem q392 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q390 e h2 h3 h5) (q21 e h0 h1) (by decide)
theorem q393 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q390 e h2 h3 h5) (q23 e h0 h1) (by decide)
theorem q394 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q390 e h2 h3 h5) (q25 e h0 h1) (by decide)
theorem q395 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q391 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q392 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q393 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q394 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q396 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q395 e h0 h1 h2 h4) (by decide)
theorem q397 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q390 e h2 h3 h5) (q30 e h0 h1) (by decide)
theorem q398 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q390 e h2 h3 h5) (q32 e h0 h1) (by decide)
theorem q399 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q390 e h2 h3 h5) (q34 e h0 h1) (by decide)
theorem q400 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q390 e h2 h3 h5) (q36 e h0 h1) (by decide)
theorem q401 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q397 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q398 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q399 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q400 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q402 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q401 e h0 h1 h2 h4) (by decide)
theorem q403 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q390 e h2 h3 h5) (q41 e h0 h1) (by decide)
theorem q404 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q390 e h2 h3 h5) (q43 e h0 h1) (by decide)
theorem q405 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q390 e h2 h3 h5) (q45 e h0 h1) (by decide)
theorem q406 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q390 e h2 h3 h5) (q47 e h0 h1) (by decide)
theorem q407 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q403 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q404 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q405 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q406 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q408 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q407 e h0 h1 h2 h4) (by decide)
theorem q409 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q390 e h2 h3 h5) (q52 e h0 h1) (by decide)
theorem q410 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q390 e h2 h3 h5) (q54 e h0 h1) (by decide)
theorem q411 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q390 e h2 h3 h5) (q56 e h0 h1) (by decide)
theorem q412 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q390 e h2 h3 h5) (q58 e h0 h1) (by decide)
theorem q413 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q409 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q410 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q411 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q412 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q414 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q413 e h0 h1 h2 h4) (by decide)
theorem q415 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h3 : e 3 = 1) : Typed Op1ca1a77265e6.G e lit14 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q396 (push 0 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q402 (push 1 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q408 (push 2 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q414 (push 3 e) rfl h0 h1 h3).weaken _ (by decide)
theorem q416 (e : Env 3) (h2 : e 2 = 2) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit8 3 := .app (q90 e h2) (q363 e h3 h5) (by decide)
theorem q417 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q416 e h2 h3 h5) (q19 e h0 h1) (by decide)
theorem q418 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q416 e h2 h3 h5) (q21 e h0 h1) (by decide)
theorem q419 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q416 e h2 h3 h5) (q23 e h0 h1) (by decide)
theorem q420 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q416 e h2 h3 h5) (q25 e h0 h1) (by decide)
theorem q421 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q417 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q418 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q419 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q420 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q422 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q421 e h0 h1 h2 h4) (by decide)
theorem q423 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q416 e h2 h3 h5) (q30 e h0 h1) (by decide)
theorem q424 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q416 e h2 h3 h5) (q32 e h0 h1) (by decide)
theorem q425 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q416 e h2 h3 h5) (q34 e h0 h1) (by decide)
theorem q426 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q416 e h2 h3 h5) (q36 e h0 h1) (by decide)
theorem q427 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q423 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q424 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q425 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q426 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q428 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q427 e h0 h1 h2 h4) (by decide)
theorem q429 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q416 e h2 h3 h5) (q41 e h0 h1) (by decide)
theorem q430 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q416 e h2 h3 h5) (q43 e h0 h1) (by decide)
theorem q431 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q416 e h2 h3 h5) (q45 e h0 h1) (by decide)
theorem q432 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q416 e h2 h3 h5) (q47 e h0 h1) (by decide)
theorem q433 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q429 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q430 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q431 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q432 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q434 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q433 e h0 h1 h2 h4) (by decide)
theorem q435 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q416 e h2 h3 h5) (q52 e h0 h1) (by decide)
theorem q436 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q416 e h2 h3 h5) (q54 e h0 h1) (by decide)
theorem q437 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q416 e h2 h3 h5) (q56 e h0 h1) (by decide)
theorem q438 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q416 e h2 h3 h5) (q58 e h0 h1) (by decide)
theorem q439 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q435 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q436 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q437 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q438 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q440 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q439 e h0 h1 h2 h4) (by decide)
theorem q441 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h3 : e 3 = 1) : Typed Op1ca1a77265e6.G e lit14 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q422 (push 0 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q428 (push 1 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q434 (push 2 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q440 (push 3 e) rfl h0 h1 h3).weaken _ (by decide)
theorem q442 (e : Env 3) (h2 : e 2 = 3) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit8 3 := .app (q117 e h2) (q363 e h3 h5) (by decide)
theorem q443 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q442 e h2 h3 h5) (q19 e h0 h1) (by decide)
theorem q444 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q442 e h2 h3 h5) (q21 e h0 h1) (by decide)
theorem q445 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q442 e h2 h3 h5) (q23 e h0 h1) (by decide)
theorem q446 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q442 e h2 h3 h5) (q25 e h0 h1) (by decide)
theorem q447 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q443 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q444 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q445 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q446 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q448 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q447 e h0 h1 h2 h4) (by decide)
theorem q449 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q442 e h2 h3 h5) (q30 e h0 h1) (by decide)
theorem q450 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q442 e h2 h3 h5) (q32 e h0 h1) (by decide)
theorem q451 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q442 e h2 h3 h5) (q34 e h0 h1) (by decide)
theorem q452 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q442 e h2 h3 h5) (q36 e h0 h1) (by decide)
theorem q453 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q449 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q450 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q451 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q452 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q454 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q453 e h0 h1 h2 h4) (by decide)
theorem q455 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q442 e h2 h3 h5) (q41 e h0 h1) (by decide)
theorem q456 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q442 e h2 h3 h5) (q43 e h0 h1) (by decide)
theorem q457 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q442 e h2 h3 h5) (q45 e h0 h1) (by decide)
theorem q458 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q442 e h2 h3 h5) (q47 e h0 h1) (by decide)
theorem q459 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q455 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q456 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q457 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q458 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q460 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q459 e h0 h1 h2 h4) (by decide)
theorem q461 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q442 e h2 h3 h5) (q52 e h0 h1) (by decide)
theorem q462 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q442 e h2 h3 h5) (q54 e h0 h1) (by decide)
theorem q463 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q442 e h2 h3 h5) (q56 e h0 h1) (by decide)
theorem q464 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q442 e h2 h3 h5) (q58 e h0 h1) (by decide)
theorem q465 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q461 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q462 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q463 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q464 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q466 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q465 e h0 h1 h2 h4) (by decide)
theorem q467 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h3 : e 3 = 1) : Typed Op1ca1a77265e6.G e lit14 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q448 (push 0 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q454 (push 1 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q460 (push 2 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q466 (push 3 e) rfl h0 h1 h3).weaken _ (by decide)
theorem q468 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 1) : Typed Op1ca1a77265e6.G e lit15 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q389 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q415 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q441 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q467 (push 3 e) rfl h0 h2).weaken _ (by decide)
theorem q469 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 1) : Typed Op1ca1a77265e6.G e lit16 3 := .app (q12 e) (q468 e h0 h2) (by decide)
theorem q470 (e : Env 3) (h1 : e 1 = 1) : Typed Op1ca1a77265e6.G e lit17 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q145 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q253 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q361 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q469 (push 3 e) rfl h1).weaken _ (by decide)
theorem q471 (e : Env 3) (h1 : e 1 = 1) : Typed Op1ca1a77265e6.G e lit18 0 := .app (q12 e) (q470 e h1) (by decide)
theorem q472 (e : Env 3) (h0 : e 0 = 0) : Typed Op1ca1a77265e6.G e lit19 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q18 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q18 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q18 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q18 (push 3 e) h0).weaken _ (by decide)
theorem q473 (e : Env 3) (h0 : e 0 = 1) : Typed Op1ca1a77265e6.G e lit19 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q29 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q29 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q29 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q29 (push 3 e) h0).weaken _ (by decide)
theorem q474 (e : Env 3) (h0 : e 0 = 2) : Typed Op1ca1a77265e6.G e lit19 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q40 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q40 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q40 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q40 (push 3 e) h0).weaken _ (by decide)
theorem q475 (e : Env 3) (h0 : e 0 = 3) : Typed Op1ca1a77265e6.G e lit19 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q51 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q51 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q51 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q51 (push 3 e) h0).weaken _ (by decide)
theorem q476 (e : Env 3)  : Typed Op1ca1a77265e6.G e lit20 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q472 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q473 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q474 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q475 (push 3 e) rfl).weaken _ (by decide)
theorem q477 (e : Env 3) (h0 : e 0 = 0) : Typed Op1ca1a77265e6.G e lit21 0 := .app (q0 e h0) (q476 e) (by decide)
end Blc.Floor45.Probe9624769225114
