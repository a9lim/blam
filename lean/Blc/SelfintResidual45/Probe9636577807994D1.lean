import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9636577807994D0

set_option Elab.async false
namespace Blc.Floor45.Probe9636577807994
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q138 (e : Env 3) (h0 : e 0 = 3) : Typed Op4b638b5bed78.G e lit14 3 := .app (q11 e h0) (q127 e) (by decide)
theorem q139 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 3) : Typed Op4b638b5bed78.G e lit19 3 := .app (q138 e h0) (q132 e h4) (by decide)
theorem q140 (e : Env 3) (h3 : e 3 = 3) : Typed Op4b638b5bed78.G e lit20 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q133 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q135 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q137 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q139 (push 3 e) rfl h3).weaken _ (by decide)
theorem q141 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 3) : Typed Op4b638b5bed78.G e lit21 0 := .app (q131 e h0) (q140 e h3) (by decide)
theorem q142 (e : Env 3) (h0 : e 0 = 1) : Typed Op4b638b5bed78.G e lit17 2 := .app (q5 e h0) (q130 e) (by decide)
theorem q143 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 3) : Typed Op4b638b5bed78.G e lit21 3 := .app (q142 e h0) (q140 e h3) (by decide)
theorem q144 (e : Env 3) (h0 : e 0 = 2) : Typed Op4b638b5bed78.G e lit17 3 := .app (q8 e h0) (q130 e) (by decide)
theorem q145 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 3) : Typed Op4b638b5bed78.G e lit21 3 := .app (q144 e h0) (q140 e h3) (by decide)
theorem q146 (e : Env 3) (h0 : e 0 = 3) : Typed Op4b638b5bed78.G e lit17 3 := .app (q11 e h0) (q130 e) (by decide)
theorem q147 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 3) : Typed Op4b638b5bed78.G e lit21 3 := .app (q146 e h0) (q140 e h3) (by decide)
theorem q148 (e : Env 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit22 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q141 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q143 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q145 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q147 (push 3 e) rfl h2).weaken _ (by decide)
theorem q149 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit23 0 := .app (q128 e h0) (q148 e h2) (by decide)
theorem q150 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit23 3 := .app (q134 e h0) (q148 e h2) (by decide)
theorem q151 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit23 3 := .app (q136 e h0) (q148 e h2) (by decide)
theorem q152 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit23 3 := .app (q138 e h0) (q148 e h2) (by decide)
theorem q153 (e : Env 3) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit24 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q149 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q150 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q151 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q152 (push 3 e) rfl h1).weaken _ (by decide)
theorem q154 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit25 0 := .app (q128 e h0) (q153 e h1) (by decide)
theorem q155 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit25 3 := .app (q134 e h0) (q153 e h1) (by decide)
theorem q156 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit25 3 := .app (q136 e h0) (q153 e h1) (by decide)
theorem q157 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit25 3 := .app (q138 e h0) (q153 e h1) (by decide)
theorem q158 (e : Env 3) (h0 : e 0 = 3) : Typed Op4b638b5bed78.G e lit26 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q154 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q155 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q156 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q157 (push 3 e) rfl h0).weaken _ (by decide)
theorem q159 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op4b638b5bed78.G e lit27 2 := .app (q122 e h1) (q158 e h0) (by decide)
end Blc.Floor45.Probe9636577807994
