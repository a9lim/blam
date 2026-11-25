import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9692726283182D3

set_option Elab.async false
namespace Blc.Floor45.Probe9692726283182
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q627 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q63 e h0 h1) (q590 e) (by decide)
theorem q628 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q47 e h1) (q627 e h0 h1) (by decide)
theorem q629 (e : Env 5) (h0 : e 0 = 2) : Typed Ope9b1a410bea0.G e lit18 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q618 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q620 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q622 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q624 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q626 (push 4 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q628 (push 5 e) rfl h0).weaken _ (by decide)
theorem q630 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q68 e h0 h1) (q590 e) (by decide)
theorem q631 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q67 e h1) (q630 e h0 h1) (by decide)
theorem q632 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q71 e h0 h1) (q590 e) (by decide)
theorem q633 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q67 e h1) (q632 e h0 h1) (by decide)
theorem q634 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q74 e h0 h1) (q590 e) (by decide)
theorem q635 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q67 e h1) (q634 e h0 h1) (by decide)
theorem q636 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q77 e h0 h1) (q590 e) (by decide)
theorem q637 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q67 e h1) (q636 e h0 h1) (by decide)
theorem q638 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q80 e h0 h1) (q590 e) (by decide)
theorem q639 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q67 e h1) (q638 e h0 h1) (by decide)
theorem q640 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q83 e h0 h1) (q590 e) (by decide)
theorem q641 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q67 e h1) (q640 e h0 h1) (by decide)
theorem q642 (e : Env 5) (h0 : e 0 = 3) : Typed Ope9b1a410bea0.G e lit18 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q631 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q633 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q635 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q637 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q639 (push 4 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q641 (push 5 e) rfl h0).weaken _ (by decide)
theorem q643 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q88 e h0 h1) (q590 e) (by decide)
theorem q644 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q87 e h1) (q643 e h0 h1) (by decide)
theorem q645 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q91 e h0 h1) (q590 e) (by decide)
theorem q646 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q87 e h1) (q645 e h0 h1) (by decide)
theorem q647 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q94 e h0 h1) (q590 e) (by decide)
theorem q648 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q87 e h1) (q647 e h0 h1) (by decide)
theorem q649 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q97 e h0 h1) (q590 e) (by decide)
theorem q650 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q87 e h1) (q649 e h0 h1) (by decide)
theorem q651 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q100 e h0 h1) (q590 e) (by decide)
theorem q652 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q87 e h1) (q651 e h0 h1) (by decide)
theorem q653 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q103 e h0 h1) (q590 e) (by decide)
theorem q654 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q87 e h1) (q653 e h0 h1) (by decide)
theorem q655 (e : Env 5) (h0 : e 0 = 4) : Typed Ope9b1a410bea0.G e lit18 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q644 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q646 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q648 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q650 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q652 (push 4 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q654 (push 5 e) rfl h0).weaken _ (by decide)
theorem q656 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q108 e h0 h1) (q590 e) (by decide)
theorem q657 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q107 e h1) (q656 e h0 h1) (by decide)
theorem q658 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q111 e h0 h1) (q590 e) (by decide)
theorem q659 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q107 e h1) (q658 e h0 h1) (by decide)
theorem q660 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q114 e h0 h1) (q590 e) (by decide)
theorem q661 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q107 e h1) (q660 e h0 h1) (by decide)
theorem q662 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q117 e h0 h1) (q590 e) (by decide)
theorem q663 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q107 e h1) (q662 e h0 h1) (by decide)
theorem q664 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q120 e h0 h1) (q590 e) (by decide)
theorem q665 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q107 e h1) (q664 e h0 h1) (by decide)
theorem q666 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit16 5 := .app (q123 e h0 h1) (q590 e) (by decide)
theorem q667 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit17 5 := .app (q107 e h1) (q666 e h0 h1) (by decide)
theorem q668 (e : Env 5) (h0 : e 0 = 5) : Typed Ope9b1a410bea0.G e lit18 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q657 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q659 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q661 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q663 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q665 (push 4 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q667 (push 5 e) rfl h0).weaken _ (by decide)
theorem q669 (e : Env 5)  : Typed Ope9b1a410bea0.G e lit19 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q603 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q616 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q629 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q642 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q655 (push 4 e) rfl).weaken _ (by decide)
  · subst a; exact (q668 (push 5 e) rfl).weaken _ (by decide)
theorem q670 (e : Env 5)  : Typed Ope9b1a410bea0.G e lit20 1 := .app (q576 e) (q669 e) (by decide)
theorem q671 (e : Env 5) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit21 1 := .app (q670 e) (q27 e h1) (by decide)
theorem q672 (e : Env 5) (h0 : e 0 = 0) : Typed Ope9b1a410bea0.G e lit22 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q1 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 4 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 5 e) h0).weaken _ (by decide)
theorem q673 (e : Env 5) (h0 : e 0 = 1) : Typed Ope9b1a410bea0.G e lit22 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q27 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q27 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q27 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q27 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q27 (push 4 e) h0).weaken _ (by decide)
  · subst a; exact (q27 (push 5 e) h0).weaken _ (by decide)
theorem q674 (e : Env 5) (h0 : e 0 = 2) : Typed Ope9b1a410bea0.G e lit22 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q47 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q47 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q47 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q47 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q47 (push 4 e) h0).weaken _ (by decide)
  · subst a; exact (q47 (push 5 e) h0).weaken _ (by decide)
theorem q675 (e : Env 5) (h0 : e 0 = 3) : Typed Ope9b1a410bea0.G e lit22 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q67 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q67 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q67 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q67 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q67 (push 4 e) h0).weaken _ (by decide)
  · subst a; exact (q67 (push 5 e) h0).weaken _ (by decide)
theorem q676 (e : Env 5) (h0 : e 0 = 4) : Typed Ope9b1a410bea0.G e lit22 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q87 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q87 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q87 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q87 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q87 (push 4 e) h0).weaken _ (by decide)
  · subst a; exact (q87 (push 5 e) h0).weaken _ (by decide)
theorem q677 (e : Env 5) (h0 : e 0 = 5) : Typed Ope9b1a410bea0.G e lit22 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q107 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q107 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q107 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q107 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q107 (push 4 e) h0).weaken _ (by decide)
  · subst a; exact (q107 (push 5 e) h0).weaken _ (by decide)
theorem q678 (e : Env 5)  : Typed Ope9b1a410bea0.G e lit23 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q672 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q673 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q674 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q675 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q676 (push 4 e) rfl).weaken _ (by decide)
  · subst a; exact (q677 (push 5 e) rfl).weaken _ (by decide)
theorem q679 (e : Env 5) (h0 : e 0 = 0) : Typed Ope9b1a410bea0.G e lit24 1 := .app (q0 e h0) (q678 e) (by decide)
theorem q680 (e : Env 5)  : Typed Ope9b1a410bea0.G e lit25 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q0 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q6 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q10 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q14 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q18 (push 4 e) rfl).weaken _ (by decide)
  · subst a; exact (q22 (push 5 e) rfl).weaken _ (by decide)
theorem q681 (e : Env 5)  : Typed Ope9b1a410bea0.G e lit26 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q680 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q680 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q680 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q680 (push 3 e)).weaken _ (by decide)
  · subst a; exact (q680 (push 4 e)).weaken _ (by decide)
  · subst a; exact (q680 (push 5 e)).weaken _ (by decide)
theorem q682 (e : Env 5) (h0 : e 0 = 0) : Typed Ope9b1a410bea0.G e lit27 1 := .app (q0 e h0) (q681 e) (by decide)
theorem q683 (e : Env 5) (h4 : e 4 = 5) : Typed Ope9b1a410bea0.G e lit28 5 := .var _ _ (by rw [h4]; decide)
theorem q684 (e : Env 5) (h0 : e 0 = 0) (h4 : e 4 = 5) : Typed Ope9b1a410bea0.G e lit29 4 := .app (q679 e h0) (q683 e h4) (by decide)
theorem q685 (e : Env 5) (h0 : e 0 = 1) : Typed Ope9b1a410bea0.G e lit24 1 := .app (q6 e h0) (q678 e) (by decide)
theorem q686 (e : Env 5) (h0 : e 0 = 1) (h4 : e 4 = 5) : Typed Ope9b1a410bea0.G e lit29 4 := .app (q685 e h0) (q683 e h4) (by decide)
theorem q687 (e : Env 5) (h0 : e 0 = 2) : Typed Ope9b1a410bea0.G e lit24 1 := .app (q10 e h0) (q678 e) (by decide)
theorem q688 (e : Env 5) (h0 : e 0 = 2) (h4 : e 4 = 5) : Typed Ope9b1a410bea0.G e lit29 4 := .app (q687 e h0) (q683 e h4) (by decide)
theorem q689 (e : Env 5) (h0 : e 0 = 3) : Typed Ope9b1a410bea0.G e lit24 4 := .app (q14 e h0) (q678 e) (by decide)
theorem q690 (e : Env 5) (h0 : e 0 = 3) (h4 : e 4 = 5) : Typed Ope9b1a410bea0.G e lit29 5 := .app (q689 e h0) (q683 e h4) (by decide)
theorem q691 (e : Env 5) (h0 : e 0 = 4) : Typed Ope9b1a410bea0.G e lit24 5 := .app (q18 e h0) (q678 e) (by decide)
theorem q692 (e : Env 5) (h0 : e 0 = 4) (h4 : e 4 = 5) : Typed Ope9b1a410bea0.G e lit29 5 := .app (q691 e h0) (q683 e h4) (by decide)
theorem q693 (e : Env 5) (h0 : e 0 = 5) : Typed Ope9b1a410bea0.G e lit24 5 := .app (q22 e h0) (q678 e) (by decide)
theorem q694 (e : Env 5) (h0 : e 0 = 5) (h4 : e 4 = 5) : Typed Ope9b1a410bea0.G e lit29 5 := .app (q693 e h0) (q683 e h4) (by decide)
theorem q695 (e : Env 5) (h3 : e 3 = 5) : Typed Ope9b1a410bea0.G e lit30 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q684 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q686 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q688 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q690 (push 3 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q692 (push 4 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q694 (push 5 e) rfl h3).weaken _ (by decide)
theorem q696 (e : Env 5) (h0 : e 0 = 0) (h3 : e 3 = 5) : Typed Ope9b1a410bea0.G e lit31 4 := .app (q682 e h0) (q695 e h3) (by decide)
theorem q697 (e : Env 5) (h0 : e 0 = 1) : Typed Ope9b1a410bea0.G e lit27 4 := .app (q6 e h0) (q681 e) (by decide)
theorem q698 (e : Env 5) (h0 : e 0 = 1) (h3 : e 3 = 5) : Typed Ope9b1a410bea0.G e lit31 5 := .app (q697 e h0) (q695 e h3) (by decide)
theorem q699 (e : Env 5) (h0 : e 0 = 2) : Typed Ope9b1a410bea0.G e lit27 4 := .app (q10 e h0) (q681 e) (by decide)
theorem q700 (e : Env 5) (h0 : e 0 = 2) (h3 : e 3 = 5) : Typed Ope9b1a410bea0.G e lit31 5 := .app (q699 e h0) (q695 e h3) (by decide)
theorem q701 (e : Env 5) (h0 : e 0 = 3) : Typed Ope9b1a410bea0.G e lit27 4 := .app (q14 e h0) (q681 e) (by decide)
theorem q702 (e : Env 5) (h0 : e 0 = 3) (h3 : e 3 = 5) : Typed Ope9b1a410bea0.G e lit31 5 := .app (q701 e h0) (q695 e h3) (by decide)
theorem q703 (e : Env 5) (h0 : e 0 = 4) : Typed Ope9b1a410bea0.G e lit27 5 := .app (q18 e h0) (q681 e) (by decide)
theorem q704 (e : Env 5) (h0 : e 0 = 4) (h3 : e 3 = 5) : Typed Ope9b1a410bea0.G e lit31 5 := .app (q703 e h0) (q695 e h3) (by decide)
theorem q705 (e : Env 5) (h0 : e 0 = 5) : Typed Ope9b1a410bea0.G e lit27 5 := .app (q22 e h0) (q681 e) (by decide)
theorem q706 (e : Env 5) (h0 : e 0 = 5) (h3 : e 3 = 5) : Typed Ope9b1a410bea0.G e lit31 5 := .app (q705 e h0) (q695 e h3) (by decide)
theorem q707 (e : Env 5) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit32 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q696 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q698 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q700 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q702 (push 3 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q704 (push 4 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q706 (push 5 e) rfl h2).weaken _ (by decide)
theorem q708 (e : Env 5) (h0 : e 0 = 0) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit33 4 := .app (q679 e h0) (q707 e h2) (by decide)
theorem q709 (e : Env 5) (h0 : e 0 = 1) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit33 4 := .app (q685 e h0) (q707 e h2) (by decide)
theorem q710 (e : Env 5) (h0 : e 0 = 2) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit33 4 := .app (q687 e h0) (q707 e h2) (by decide)
theorem q711 (e : Env 5) (h0 : e 0 = 3) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit33 5 := .app (q689 e h0) (q707 e h2) (by decide)
theorem q712 (e : Env 5) (h0 : e 0 = 4) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit33 5 := .app (q691 e h0) (q707 e h2) (by decide)
theorem q713 (e : Env 5) (h0 : e 0 = 5) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit33 5 := .app (q693 e h0) (q707 e h2) (by decide)
theorem q714 (e : Env 5) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit34 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q708 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q709 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q710 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q711 (push 3 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q712 (push 4 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q713 (push 5 e) rfl h1).weaken _ (by decide)
theorem q715 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit35 4 := .app (q679 e h0) (q714 e h1) (by decide)
theorem q716 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit35 4 := .app (q685 e h0) (q714 e h1) (by decide)
theorem q717 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit35 4 := .app (q687 e h0) (q714 e h1) (by decide)
theorem q718 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit35 5 := .app (q689 e h0) (q714 e h1) (by decide)
theorem q719 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit35 5 := .app (q691 e h0) (q714 e h1) (by decide)
theorem q720 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit35 5 := .app (q693 e h0) (q714 e h1) (by decide)
theorem q721 (e : Env 5) (h0 : e 0 = 5) : Typed Ope9b1a410bea0.G e lit36 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q715 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q716 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q717 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q718 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q719 (push 4 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q720 (push 5 e) rfl h0).weaken _ (by decide)
theorem q722 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit37 4 := .app (q671 e h1) (q721 e h0) (by decide)
end Blc.Floor45.Probe9692726283182
