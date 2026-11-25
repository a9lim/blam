import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9570803793114D0

set_option Elab.async false
namespace Blc.Floor45.Probe9570803793114
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q150 (e : Env 3) (h0 : e 0 = 1) : Typed Op8e7c855a107a.G e lit14 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q17 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q17 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q17 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q17 (push 3 e) h0).weaken _ (by decide)
theorem q151 (e : Env 3) (h0 : e 0 = 2) : Typed Op8e7c855a107a.G e lit14 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q29 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q29 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q29 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q29 (push 3 e) h0).weaken _ (by decide)
theorem q152 (e : Env 3) (h0 : e 0 = 3) : Typed Op8e7c855a107a.G e lit14 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q41 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q41 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q41 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q41 (push 3 e) h0).weaken _ (by decide)
theorem q153 (e : Env 3)  : Typed Op8e7c855a107a.G e lit15 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q149 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q150 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q151 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q152 (push 3 e) rfl).weaken _ (by decide)
theorem q154 (e : Env 3) (h0 : e 0 = 0) : Typed Op8e7c855a107a.G e lit16 1 := .app (q2 e h0) (q153 e) (by decide)
theorem q155 (e : Env 3)  : Typed Op8e7c855a107a.G e lit17 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q2 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q5 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q8 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q11 (push 3 e) rfl).weaken _ (by decide)
theorem q156 (e : Env 3)  : Typed Op8e7c855a107a.G e lit18 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q155 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q155 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q155 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q155 (push 3 e)).weaken _ (by decide)
theorem q157 (e : Env 3) (h0 : e 0 = 0) : Typed Op8e7c855a107a.G e lit19 1 := .app (q2 e h0) (q156 e) (by decide)
theorem q158 (e : Env 3) (h4 : e 4 = 3) : Typed Op8e7c855a107a.G e lit20 3 := .var _ _ (by rw [h4]; decide)
theorem q159 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 3) : Typed Op8e7c855a107a.G e lit21 3 := .app (q154 e h0) (q158 e h4) (by decide)
theorem q160 (e : Env 3) (h0 : e 0 = 1) : Typed Op8e7c855a107a.G e lit16 3 := .app (q5 e h0) (q153 e) (by decide)
theorem q161 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 3) : Typed Op8e7c855a107a.G e lit21 3 := .app (q160 e h0) (q158 e h4) (by decide)
theorem q162 (e : Env 3) (h0 : e 0 = 2) : Typed Op8e7c855a107a.G e lit16 3 := .app (q8 e h0) (q153 e) (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 3) : Typed Op8e7c855a107a.G e lit21 3 := .app (q162 e h0) (q158 e h4) (by decide)
theorem q164 (e : Env 3) (h0 : e 0 = 3) : Typed Op8e7c855a107a.G e lit16 3 := .app (q11 e h0) (q153 e) (by decide)
theorem q165 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 3) : Typed Op8e7c855a107a.G e lit21 3 := .app (q164 e h0) (q158 e h4) (by decide)
theorem q166 (e : Env 3) (h3 : e 3 = 3) : Typed Op8e7c855a107a.G e lit22 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q159 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q161 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q163 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q165 (push 3 e) rfl h3).weaken _ (by decide)
theorem q167 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 3) : Typed Op8e7c855a107a.G e lit23 3 := .app (q157 e h0) (q166 e h3) (by decide)
theorem q168 (e : Env 3) (h0 : e 0 = 1) : Typed Op8e7c855a107a.G e lit19 3 := .app (q5 e h0) (q156 e) (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 3) : Typed Op8e7c855a107a.G e lit23 3 := .app (q168 e h0) (q166 e h3) (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 2) : Typed Op8e7c855a107a.G e lit19 3 := .app (q8 e h0) (q156 e) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 3) : Typed Op8e7c855a107a.G e lit23 3 := .app (q170 e h0) (q166 e h3) (by decide)
theorem q172 (e : Env 3) (h0 : e 0 = 3) : Typed Op8e7c855a107a.G e lit19 3 := .app (q11 e h0) (q156 e) (by decide)
theorem q173 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 3) : Typed Op8e7c855a107a.G e lit23 3 := .app (q172 e h0) (q166 e h3) (by decide)
theorem q174 (e : Env 3) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit24 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q167 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q169 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q171 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q173 (push 3 e) rfl h2).weaken _ (by decide)
theorem q175 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit25 3 := .app (q154 e h0) (q174 e h2) (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit25 3 := .app (q160 e h0) (q174 e h2) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit25 3 := .app (q162 e h0) (q174 e h2) (by decide)
theorem q178 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit25 3 := .app (q164 e h0) (q174 e h2) (by decide)
theorem q179 (e : Env 3) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit26 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q175 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q176 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q177 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q178 (push 3 e) rfl h1).weaken _ (by decide)
theorem q180 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit27 3 := .app (q154 e h0) (q179 e h1) (by decide)
theorem q181 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit27 3 := .app (q160 e h0) (q179 e h1) (by decide)
theorem q182 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit27 3 := .app (q162 e h0) (q179 e h1) (by decide)
theorem q183 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit27 3 := .app (q164 e h0) (q179 e h1) (by decide)
theorem q184 (e : Env 3) (h0 : e 0 = 3) : Typed Op8e7c855a107a.G e lit28 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q180 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q181 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q182 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q183 (push 3 e) rfl h0).weaken _ (by decide)
theorem q185 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit29 1 := .app (q148 e h1) (q184 e h0) (by decide)
end Blc.Floor45.Probe9570803793114
