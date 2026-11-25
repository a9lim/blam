import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9692726283182D2

set_option Elab.async false
namespace Blc.Floor45.Probe9692726283182
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q475 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q40 e h0 h1) (q453 e h2) (by decide)
theorem q476 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q475 e h0 h1 h2) (by decide)
theorem q477 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 1) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q43 e h0 h1) (q453 e h2) (by decide)
theorem q478 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 1) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q477 e h0 h1 h2) (by decide)
theorem q479 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit6 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q468 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q470 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q472 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q474 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q476 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q478 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q480 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q48 e h0 h1) (q453 e h2) (by decide)
theorem q481 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q480 e h0 h1 h2) (by decide)
theorem q482 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q51 e h0 h1) (q453 e h2) (by decide)
theorem q483 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q482 e h0 h1 h2) (by decide)
theorem q484 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q54 e h0 h1) (q453 e h2) (by decide)
theorem q485 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q484 e h0 h1 h2) (by decide)
theorem q486 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q57 e h0 h1) (q453 e h2) (by decide)
theorem q487 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q486 e h0 h1 h2) (by decide)
theorem q488 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q60 e h0 h1) (q453 e h2) (by decide)
theorem q489 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q488 e h0 h1 h2) (by decide)
theorem q490 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 2) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q63 e h0 h1) (q453 e h2) (by decide)
theorem q491 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 2) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q490 e h0 h1 h2) (by decide)
theorem q492 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q481 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q483 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q485 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q487 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q489 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q491 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q493 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q68 e h0 h1) (q453 e h2) (by decide)
theorem q494 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q493 e h0 h1 h2) (by decide)
theorem q495 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q71 e h0 h1) (q453 e h2) (by decide)
theorem q496 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q495 e h0 h1 h2) (by decide)
theorem q497 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q74 e h0 h1) (q453 e h2) (by decide)
theorem q498 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q497 e h0 h1 h2) (by decide)
theorem q499 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q77 e h0 h1) (q453 e h2) (by decide)
theorem q500 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q499 e h0 h1 h2) (by decide)
theorem q501 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q80 e h0 h1) (q453 e h2) (by decide)
theorem q502 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q501 e h0 h1 h2) (by decide)
theorem q503 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 3) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q83 e h0 h1) (q453 e h2) (by decide)
theorem q504 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 3) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q503 e h0 h1 h2) (by decide)
theorem q505 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q494 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q496 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q498 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q500 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q502 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q504 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q506 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q88 e h0 h1) (q453 e h2) (by decide)
theorem q507 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q506 e h0 h1 h2) (by decide)
theorem q508 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q91 e h0 h1) (q453 e h2) (by decide)
theorem q509 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q508 e h0 h1 h2) (by decide)
theorem q510 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q94 e h0 h1) (q453 e h2) (by decide)
theorem q511 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q510 e h0 h1 h2) (by decide)
theorem q512 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q97 e h0 h1) (q453 e h2) (by decide)
theorem q513 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q512 e h0 h1 h2) (by decide)
theorem q514 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q100 e h0 h1) (q453 e h2) (by decide)
theorem q515 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q514 e h0 h1 h2) (by decide)
theorem q516 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 4) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q103 e h0 h1) (q453 e h2) (by decide)
theorem q517 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 4) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q516 e h0 h1 h2) (by decide)
theorem q518 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q507 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q509 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q511 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q513 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q515 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q517 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q519 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 5) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q108 e h0 h1) (q453 e h2) (by decide)
theorem q520 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 5) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q519 e h0 h1 h2) (by decide)
theorem q521 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 5) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q111 e h0 h1) (q453 e h2) (by decide)
theorem q522 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 5) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q521 e h0 h1 h2) (by decide)
theorem q523 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 5) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q114 e h0 h1) (q453 e h2) (by decide)
theorem q524 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 5) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q523 e h0 h1 h2) (by decide)
theorem q525 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 5) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q117 e h0 h1) (q453 e h2) (by decide)
theorem q526 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 5) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q525 e h0 h1 h2) (by decide)
theorem q527 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 5) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q120 e h0 h1) (q453 e h2) (by decide)
theorem q528 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 5) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q527 e h0 h1 h2) (by decide)
theorem q529 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 5) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q123 e h0 h1) (q453 e h2) (by decide)
theorem q530 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 5) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q529 e h0 h1 h2) (by decide)
theorem q531 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q520 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q522 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q524 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q526 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q528 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q530 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q532 (e : Env 5) (h0 : e 0 = 5) : Typed Ope9b1a410bea0.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q466 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q479 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q492 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q505 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q518 (push 4 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q531 (push 5 e) rfl h0).weaken _ (by decide)
theorem q533 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit8 1 := .app (q1 e h1) (q532 e h0) (by decide)
theorem q534 (e : Env 5) (h0 : e 0 = 0) : Typed Ope9b1a410bea0.G e lit9 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q128 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q209 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q290 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q371 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q452 (push 4 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q533 (push 5 e) rfl h0).weaken _ (by decide)
theorem q535 (e : Env 5) (h0 : e 0 = 0) : Typed Ope9b1a410bea0.G e lit10 1 := .app (q0 e h0) (q534 e h0) (by decide)
theorem q536 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit8 1 := .app (q27 e h1) (q127 e h0) (by decide)
theorem q537 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit8 1 := .app (q27 e h1) (q208 e h0) (by decide)
theorem q538 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit8 4 := .app (q27 e h1) (q289 e h0) (by decide)
theorem q539 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit8 4 := .app (q27 e h1) (q370 e h0) (by decide)
theorem q540 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit8 4 := .app (q27 e h1) (q451 e h0) (by decide)
theorem q541 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit8 4 := .app (q27 e h1) (q532 e h0) (by decide)
theorem q542 (e : Env 5) (h0 : e 0 = 1) : Typed Ope9b1a410bea0.G e lit9 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q536 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q537 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q538 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q539 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q540 (push 4 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q541 (push 5 e) rfl h0).weaken _ (by decide)
theorem q543 (e : Env 5) (h0 : e 0 = 1) : Typed Ope9b1a410bea0.G e lit10 1 := .app (q6 e h0) (q542 e h0) (by decide)
theorem q544 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit8 1 := .app (q47 e h1) (q127 e h0) (by decide)
theorem q545 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit8 1 := .app (q47 e h1) (q208 e h0) (by decide)
theorem q546 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit8 4 := .app (q47 e h1) (q289 e h0) (by decide)
theorem q547 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit8 4 := .app (q47 e h1) (q370 e h0) (by decide)
theorem q548 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit8 4 := .app (q47 e h1) (q451 e h0) (by decide)
theorem q549 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit8 4 := .app (q47 e h1) (q532 e h0) (by decide)
theorem q550 (e : Env 5) (h0 : e 0 = 2) : Typed Ope9b1a410bea0.G e lit9 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q544 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q545 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q546 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q547 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q548 (push 4 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q549 (push 5 e) rfl h0).weaken _ (by decide)
theorem q551 (e : Env 5) (h0 : e 0 = 2) : Typed Ope9b1a410bea0.G e lit10 1 := .app (q10 e h0) (q550 e h0) (by decide)
theorem q552 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit8 4 := .app (q67 e h1) (q127 e h0) (by decide)
theorem q553 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit8 4 := .app (q67 e h1) (q208 e h0) (by decide)
theorem q554 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit8 4 := .app (q67 e h1) (q289 e h0) (by decide)
theorem q555 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit8 4 := .app (q67 e h1) (q370 e h0) (by decide)
theorem q556 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit8 4 := .app (q67 e h1) (q451 e h0) (by decide)
theorem q557 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit8 4 := .app (q67 e h1) (q532 e h0) (by decide)
theorem q558 (e : Env 5) (h0 : e 0 = 3) : Typed Ope9b1a410bea0.G e lit9 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q552 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q553 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q554 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q555 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q556 (push 4 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q557 (push 5 e) rfl h0).weaken _ (by decide)
theorem q559 (e : Env 5) (h0 : e 0 = 3) : Typed Ope9b1a410bea0.G e lit10 4 := .app (q14 e h0) (q558 e h0) (by decide)
theorem q560 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit8 5 := .app (q87 e h1) (q127 e h0) (by decide)
theorem q561 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit8 5 := .app (q87 e h1) (q208 e h0) (by decide)
theorem q562 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit8 5 := .app (q87 e h1) (q289 e h0) (by decide)
theorem q563 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit8 5 := .app (q87 e h1) (q370 e h0) (by decide)
theorem q564 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit8 5 := .app (q87 e h1) (q451 e h0) (by decide)
theorem q565 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit8 5 := .app (q87 e h1) (q532 e h0) (by decide)
theorem q566 (e : Env 5) (h0 : e 0 = 4) : Typed Ope9b1a410bea0.G e lit9 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q560 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q561 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q562 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q563 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q564 (push 4 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q565 (push 5 e) rfl h0).weaken _ (by decide)
theorem q567 (e : Env 5) (h0 : e 0 = 4) : Typed Ope9b1a410bea0.G e lit10 5 := .app (q18 e h0) (q566 e h0) (by decide)
theorem q568 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit8 5 := .app (q107 e h1) (q127 e h0) (by decide)
theorem q569 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit8 5 := .app (q107 e h1) (q208 e h0) (by decide)
theorem q570 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit8 5 := .app (q107 e h1) (q289 e h0) (by decide)
theorem q571 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit8 5 := .app (q107 e h1) (q370 e h0) (by decide)
theorem q572 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit8 5 := .app (q107 e h1) (q451 e h0) (by decide)
theorem q573 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit8 5 := .app (q107 e h1) (q532 e h0) (by decide)
theorem q574 (e : Env 5) (h0 : e 0 = 5) : Typed Ope9b1a410bea0.G e lit9 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q568 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q569 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q570 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q571 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q572 (push 4 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q573 (push 5 e) rfl h0).weaken _ (by decide)
theorem q575 (e : Env 5) (h0 : e 0 = 5) : Typed Ope9b1a410bea0.G e lit10 5 := .app (q22 e h0) (q574 e h0) (by decide)
theorem q576 (e : Env 5)  : Typed Ope9b1a410bea0.G e lit11 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q535 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q543 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q551 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q559 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q567 (push 4 e) rfl).weaken _ (by decide)
  · subst a; exact (q575 (push 5 e) rfl).weaken _ (by decide)
theorem q577 (e : Env 5) (h0 : e 0 = 0) : Typed Ope9b1a410bea0.G e lit12 1 := .app (q576 e) (q127 e h0) (by decide)
theorem q578 (e : Env 5) (h0 : e 0 = 1) : Typed Ope9b1a410bea0.G e lit12 1 := .app (q576 e) (q208 e h0) (by decide)
theorem q579 (e : Env 5) (h0 : e 0 = 2) : Typed Ope9b1a410bea0.G e lit12 4 := .app (q576 e) (q289 e h0) (by decide)
theorem q580 (e : Env 5) (h0 : e 0 = 3) : Typed Ope9b1a410bea0.G e lit12 4 := .app (q576 e) (q370 e h0) (by decide)
theorem q581 (e : Env 5) (h0 : e 0 = 4) : Typed Ope9b1a410bea0.G e lit12 4 := .app (q576 e) (q451 e h0) (by decide)
theorem q582 (e : Env 5) (h0 : e 0 = 5) : Typed Ope9b1a410bea0.G e lit12 4 := .app (q576 e) (q532 e h0) (by decide)
theorem q583 (e : Env 5)  : Typed Ope9b1a410bea0.G e lit13 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q577 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q578 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q579 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q580 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q581 (push 4 e) rfl).weaken _ (by decide)
  · subst a; exact (q582 (push 5 e) rfl).weaken _ (by decide)
theorem q584 (e : Env 5) (h0 : e 0 = 0) : Typed Ope9b1a410bea0.G e lit14 1 := .app (q583 e) (q127 e h0) (by decide)
theorem q585 (e : Env 5) (h0 : e 0 = 1) : Typed Ope9b1a410bea0.G e lit14 1 := .app (q583 e) (q208 e h0) (by decide)
theorem q586 (e : Env 5) (h0 : e 0 = 2) : Typed Ope9b1a410bea0.G e lit14 4 := .app (q583 e) (q289 e h0) (by decide)
theorem q587 (e : Env 5) (h0 : e 0 = 3) : Typed Ope9b1a410bea0.G e lit14 4 := .app (q583 e) (q370 e h0) (by decide)
theorem q588 (e : Env 5) (h0 : e 0 = 4) : Typed Ope9b1a410bea0.G e lit14 4 := .app (q583 e) (q451 e h0) (by decide)
theorem q589 (e : Env 5) (h0 : e 0 = 5) : Typed Ope9b1a410bea0.G e lit14 4 := .app (q583 e) (q532 e h0) (by decide)
theorem q590 (e : Env 5)  : Typed Ope9b1a410bea0.G e lit15 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q584 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q585 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q586 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q587 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q588 (push 4 e) rfl).weaken _ (by decide)
  · subst a; exact (q589 (push 5 e) rfl).weaken _ (by decide)
theorem q591 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit16 1 := .app (q2 e h0 h1) (q590 e) (by decide)
theorem q592 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit17 1 := .app (q1 e h1) (q591 e h0 h1) (by decide)
theorem q593 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit16 1 := .app (q7 e h0 h1) (q590 e) (by decide)
theorem q594 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit17 1 := .app (q1 e h1) (q593 e h0 h1) (by decide)
theorem q595 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit16 1 := .app (q11 e h0 h1) (q590 e) (by decide)
theorem q596 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit17 1 := .app (q1 e h1) (q595 e h0 h1) (by decide)
theorem q597 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit16 1 := .app (q15 e h0 h1) (q590 e) (by decide)
theorem q598 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit17 1 := .app (q1 e h1) (q597 e h0 h1) (by decide)
theorem q599 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit16 1 := .app (q19 e h0 h1) (q590 e) (by decide)
theorem q600 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit17 1 := .app (q1 e h1) (q599 e h0 h1) (by decide)
theorem q601 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit16 1 := .app (q23 e h0 h1) (q590 e) (by decide)
theorem q602 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit17 1 := .app (q1 e h1) (q601 e h0 h1) (by decide)
theorem q603 (e : Env 5) (h0 : e 0 = 0) : Typed Ope9b1a410bea0.G e lit18 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q592 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q594 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q596 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q598 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q600 (push 4 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q602 (push 5 e) rfl h0).weaken _ (by decide)
theorem q604 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit16 1 := .app (q28 e h0 h1) (q590 e) (by decide)
theorem q605 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit17 1 := .app (q27 e h1) (q604 e h0 h1) (by decide)
theorem q606 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit16 1 := .app (q31 e h0 h1) (q590 e) (by decide)
theorem q607 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit17 1 := .app (q27 e h1) (q606 e h0 h1) (by decide)
theorem q608 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q34 e h0 h1) (q590 e) (by decide)
theorem q609 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit17 4 := .app (q27 e h1) (q608 e h0 h1) (by decide)
theorem q610 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q37 e h0 h1) (q590 e) (by decide)
theorem q611 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit17 4 := .app (q27 e h1) (q610 e h0 h1) (by decide)
theorem q612 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q40 e h0 h1) (q590 e) (by decide)
theorem q613 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit17 4 := .app (q27 e h1) (q612 e h0 h1) (by decide)
theorem q614 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q43 e h0 h1) (q590 e) (by decide)
theorem q615 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit17 4 := .app (q27 e h1) (q614 e h0 h1) (by decide)
theorem q616 (e : Env 5) (h0 : e 0 = 1) : Typed Ope9b1a410bea0.G e lit18 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q605 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q607 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q609 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q611 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q613 (push 4 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q615 (push 5 e) rfl h0).weaken _ (by decide)
theorem q617 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit16 1 := .app (q48 e h0 h1) (q590 e) (by decide)
theorem q618 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit17 1 := .app (q47 e h1) (q617 e h0 h1) (by decide)
theorem q619 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit16 1 := .app (q51 e h0 h1) (q590 e) (by decide)
theorem q620 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit17 1 := .app (q47 e h1) (q619 e h0 h1) (by decide)
theorem q621 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q54 e h0 h1) (q590 e) (by decide)
theorem q622 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q47 e h1) (q621 e h0 h1) (by decide)
theorem q623 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q57 e h0 h1) (q590 e) (by decide)
theorem q624 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q47 e h1) (q623 e h0 h1) (by decide)
theorem q625 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q60 e h0 h1) (q590 e) (by decide)
theorem q626 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q47 e h1) (q625 e h0 h1) (by decide)
end Blc.Floor45.Probe9692726283182
