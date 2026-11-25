import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9624769225066D0

set_option Elab.async false
namespace Blc.Floor45.Probe9624769225066
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q144 (e : Env 3)  : Typed Op42b062149732.G e lit15 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q140 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q141 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q142 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q143 (push 3 e) rfl).weaken _ (by decide)
theorem q145 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit16 0 := .app (q0 e h0) (q144 e) (by decide)
theorem q146 (e : Env 3)  : Typed Op42b062149732.G e lit17 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q0 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q3 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q6 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q9 (push 3 e) rfl).weaken _ (by decide)
theorem q147 (e : Env 3)  : Typed Op42b062149732.G e lit18 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q146 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q146 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q146 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q146 (push 3 e)).weaken _ (by decide)
theorem q148 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit19 0 := .app (q0 e h0) (q147 e) (by decide)
theorem q149 (e : Env 3) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit20 0 := .var _ _ (by rw [h4]; decide)
theorem q150 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit21 0 := .app (q145 e h0) (q149 e h4) (by decide)
theorem q151 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit16 3 := .app (q3 e h0) (q144 e) (by decide)
theorem q152 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit21 3 := .app (q151 e h0) (q149 e h4) (by decide)
theorem q153 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit16 3 := .app (q6 e h0) (q144 e) (by decide)
theorem q154 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit21 3 := .app (q153 e h0) (q149 e h4) (by decide)
theorem q155 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit16 3 := .app (q9 e h0) (q144 e) (by decide)
theorem q156 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit21 3 := .app (q155 e h0) (q149 e h4) (by decide)
theorem q157 (e : Env 3) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit22 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q150 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q152 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q154 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q156 (push 3 e) rfl h3).weaken _ (by decide)
theorem q158 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit23 0 := .app (q148 e h0) (q157 e h3) (by decide)
theorem q159 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit19 3 := .app (q3 e h0) (q147 e) (by decide)
theorem q160 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit23 3 := .app (q159 e h0) (q157 e h3) (by decide)
theorem q161 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit19 3 := .app (q6 e h0) (q147 e) (by decide)
theorem q162 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit23 3 := .app (q161 e h0) (q157 e h3) (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit19 3 := .app (q9 e h0) (q147 e) (by decide)
theorem q164 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit23 3 := .app (q163 e h0) (q157 e h3) (by decide)
theorem q165 (e : Env 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit24 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q158 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q160 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q162 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q164 (push 3 e) rfl h2).weaken _ (by decide)
theorem q166 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit25 0 := .app (q145 e h0) (q165 e h2) (by decide)
theorem q167 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit25 3 := .app (q151 e h0) (q165 e h2) (by decide)
theorem q168 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit25 3 := .app (q153 e h0) (q165 e h2) (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit25 3 := .app (q155 e h0) (q165 e h2) (by decide)
theorem q170 (e : Env 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit26 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q166 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q167 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q168 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q169 (push 3 e) rfl h1).weaken _ (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit27 0 := .app (q145 e h0) (q170 e h1) (by decide)
theorem q172 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit27 3 := .app (q151 e h0) (q170 e h1) (by decide)
theorem q173 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit27 3 := .app (q153 e h0) (q170 e h1) (by decide)
theorem q174 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit27 3 := .app (q155 e h0) (q170 e h1) (by decide)
theorem q175 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit28 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q171 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q172 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q173 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q174 (push 3 e) rfl h0).weaken _ (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit29 0 := .app (q139 e h1) (q175 e h0) (by decide)
end Blc.Floor45.Probe9624769225066
