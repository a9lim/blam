import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9624769225114D3

set_option Elab.async false
namespace Blc.Floor45.Probe9624769225114
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q478 (e : Env 3)  : Typed Op1ca1a77265e6.G e lit22 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q0 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q3 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q6 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q9 (push 3 e) rfl).weaken _ (by decide)
theorem q479 (e : Env 3)  : Typed Op1ca1a77265e6.G e lit23 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q478 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q478 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q478 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q478 (push 3 e)).weaken _ (by decide)
theorem q480 (e : Env 3) (h0 : e 0 = 0) : Typed Op1ca1a77265e6.G e lit24 0 := .app (q0 e h0) (q479 e) (by decide)
theorem q481 (e : Env 3) (h4 : e 4 = 0) : Typed Op1ca1a77265e6.G e lit25 0 := .var _ _ (by rw [h4]; decide)
theorem q482 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 0) : Typed Op1ca1a77265e6.G e lit26 0 := .app (q477 e h0) (q481 e h4) (by decide)
theorem q483 (e : Env 3) (h0 : e 0 = 1) : Typed Op1ca1a77265e6.G e lit21 3 := .app (q3 e h0) (q476 e) (by decide)
theorem q484 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 0) : Typed Op1ca1a77265e6.G e lit26 3 := .app (q483 e h0) (q481 e h4) (by decide)
theorem q485 (e : Env 3) (h0 : e 0 = 2) : Typed Op1ca1a77265e6.G e lit21 3 := .app (q6 e h0) (q476 e) (by decide)
theorem q486 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 0) : Typed Op1ca1a77265e6.G e lit26 3 := .app (q485 e h0) (q481 e h4) (by decide)
theorem q487 (e : Env 3) (h0 : e 0 = 3) : Typed Op1ca1a77265e6.G e lit21 3 := .app (q9 e h0) (q476 e) (by decide)
theorem q488 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 0) : Typed Op1ca1a77265e6.G e lit26 3 := .app (q487 e h0) (q481 e h4) (by decide)
theorem q489 (e : Env 3) (h3 : e 3 = 0) : Typed Op1ca1a77265e6.G e lit27 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q482 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q484 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q486 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q488 (push 3 e) rfl h3).weaken _ (by decide)
theorem q490 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op1ca1a77265e6.G e lit28 0 := .app (q480 e h0) (q489 e h3) (by decide)
theorem q491 (e : Env 3) (h0 : e 0 = 1) : Typed Op1ca1a77265e6.G e lit24 3 := .app (q3 e h0) (q479 e) (by decide)
theorem q492 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op1ca1a77265e6.G e lit28 3 := .app (q491 e h0) (q489 e h3) (by decide)
theorem q493 (e : Env 3) (h0 : e 0 = 2) : Typed Op1ca1a77265e6.G e lit24 3 := .app (q6 e h0) (q479 e) (by decide)
theorem q494 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op1ca1a77265e6.G e lit28 3 := .app (q493 e h0) (q489 e h3) (by decide)
theorem q495 (e : Env 3) (h0 : e 0 = 3) : Typed Op1ca1a77265e6.G e lit24 3 := .app (q9 e h0) (q479 e) (by decide)
theorem q496 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op1ca1a77265e6.G e lit28 3 := .app (q495 e h0) (q489 e h3) (by decide)
theorem q497 (e : Env 3) (h2 : e 2 = 0) : Typed Op1ca1a77265e6.G e lit29 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q490 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q492 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q494 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q496 (push 3 e) rfl h2).weaken _ (by decide)
theorem q498 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op1ca1a77265e6.G e lit30 0 := .app (q477 e h0) (q497 e h2) (by decide)
theorem q499 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op1ca1a77265e6.G e lit30 3 := .app (q483 e h0) (q497 e h2) (by decide)
theorem q500 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op1ca1a77265e6.G e lit30 3 := .app (q485 e h0) (q497 e h2) (by decide)
theorem q501 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op1ca1a77265e6.G e lit30 3 := .app (q487 e h0) (q497 e h2) (by decide)
theorem q502 (e : Env 3) (h1 : e 1 = 0) : Typed Op1ca1a77265e6.G e lit31 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q498 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q499 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q500 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q501 (push 3 e) rfl h1).weaken _ (by decide)
theorem q503 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op1ca1a77265e6.G e lit32 0 := .app (q477 e h0) (q502 e h1) (by decide)
theorem q504 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op1ca1a77265e6.G e lit32 3 := .app (q483 e h0) (q502 e h1) (by decide)
theorem q505 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op1ca1a77265e6.G e lit32 3 := .app (q485 e h0) (q502 e h1) (by decide)
theorem q506 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op1ca1a77265e6.G e lit32 3 := .app (q487 e h0) (q502 e h1) (by decide)
theorem q507 (e : Env 3) (h0 : e 0 = 0) : Typed Op1ca1a77265e6.G e lit33 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q503 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q504 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q505 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q506 (push 3 e) rfl h0).weaken _ (by decide)
theorem q508 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op1ca1a77265e6.G e lit34 0 := .app (q471 e h1) (q507 e h0) (by decide)
end Blc.Floor45.Probe9624769225114
