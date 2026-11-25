import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9692402103682D0

set_option Elab.async false
namespace Blc.Floor45.Probe9692402103682
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q143 (e : Env 3) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit16 0 := .app (q30 e h1) (q30 e h1) (by decide)
theorem q144 (e : Env 3) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit17 0 := .app (q135 e) (q143 e h1) (by decide)
theorem q145 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit18 0 := .app (q144 e h1) (q5 e h0) (by decide)
theorem q146 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit18 0 := .app (q144 e h1) (q9 e h0) (by decide)
theorem q147 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit18 0 := .app (q144 e h1) (q12 e h0) (by decide)
theorem q148 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit18 0 := .app (q144 e h1) (q15 e h0) (by decide)
theorem q149 (e : Env 3) (h0 : e 0 = 1) : Typed Op8ac318f5209b.G e lit19 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q145 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q146 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q147 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q148 (push 3 e) rfl h0).weaken _ (by decide)
theorem q150 (e : Env 3) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit16 3 := .app (q36 e h1) (q36 e h1) (by decide)
theorem q151 (e : Env 3) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit17 3 := .app (q135 e) (q150 e h1) (by decide)
theorem q152 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit18 3 := .app (q151 e h1) (q5 e h0) (by decide)
theorem q153 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit18 3 := .app (q151 e h1) (q9 e h0) (by decide)
theorem q154 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit18 3 := .app (q151 e h1) (q12 e h0) (by decide)
theorem q155 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit18 3 := .app (q151 e h1) (q15 e h0) (by decide)
theorem q156 (e : Env 3) (h0 : e 0 = 2) : Typed Op8ac318f5209b.G e lit19 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q152 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q153 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q154 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q155 (push 3 e) rfl h0).weaken _ (by decide)
theorem q157 (e : Env 3) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit16 3 := .app (q42 e h1) (q42 e h1) (by decide)
theorem q158 (e : Env 3) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit17 3 := .app (q135 e) (q157 e h1) (by decide)
theorem q159 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit18 3 := .app (q158 e h1) (q5 e h0) (by decide)
theorem q160 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit18 3 := .app (q158 e h1) (q9 e h0) (by decide)
theorem q161 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit18 3 := .app (q158 e h1) (q12 e h0) (by decide)
theorem q162 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit18 3 := .app (q158 e h1) (q15 e h0) (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 3) : Typed Op8ac318f5209b.G e lit19 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q159 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q160 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q161 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q162 (push 3 e) rfl h0).weaken _ (by decide)
theorem q164 (e : Env 3)  : Typed Op8ac318f5209b.G e lit20 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q142 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q149 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q156 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q163 (push 3 e) rfl).weaken _ (by decide)
theorem q165 (e : Env 3)  : Typed Op8ac318f5209b.G e lit21 0 := .app (q18 e) (q164 e) (by decide)
theorem q166 (e : Env 3)  : Typed Op8ac318f5209b.G e lit22 0 := .app (q165 e) (q7 e) (by decide)
theorem q167 (e : Env 3) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit23 0 := .app (q166 e) (q30 e h1) (by decide)
theorem q168 (e : Env 3) (h0 : e 0 = 0) : Typed Op8ac318f5209b.G e lit24 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q21 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q21 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q21 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q21 (push 3 e) h0).weaken _ (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 1) : Typed Op8ac318f5209b.G e lit24 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q30 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q30 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q30 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q30 (push 3 e) h0).weaken _ (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 2) : Typed Op8ac318f5209b.G e lit24 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q36 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q36 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q36 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q36 (push 3 e) h0).weaken _ (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 3) : Typed Op8ac318f5209b.G e lit24 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q42 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q42 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q42 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q42 (push 3 e) h0).weaken _ (by decide)
theorem q172 (e : Env 3)  : Typed Op8ac318f5209b.G e lit25 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q168 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q169 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q170 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q171 (push 3 e) rfl).weaken _ (by decide)
theorem q173 (e : Env 3) (h0 : e 0 = 0) : Typed Op8ac318f5209b.G e lit26 0 := .app (q0 e h0) (q172 e) (by decide)
theorem q174 (e : Env 3) (h0 : e 0 = 0) : Typed Op8ac318f5209b.G e lit27 0 := .app (q0 e h0) (q7 e) (by decide)
theorem q175 (e : Env 3) (h4 : e 4 = 0) : Typed Op8ac318f5209b.G e lit28 0 := .var _ _ (by rw [h4]; decide)
theorem q176 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 0) : Typed Op8ac318f5209b.G e lit29 0 := .app (q173 e h0) (q175 e h4) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 1) : Typed Op8ac318f5209b.G e lit26 3 := .app (q1 e h0) (q172 e) (by decide)
theorem q178 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 0) : Typed Op8ac318f5209b.G e lit29 3 := .app (q177 e h0) (q175 e h4) (by decide)
theorem q179 (e : Env 3) (h0 : e 0 = 2) : Typed Op8ac318f5209b.G e lit26 3 := .app (q2 e h0) (q172 e) (by decide)
theorem q180 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 0) : Typed Op8ac318f5209b.G e lit29 3 := .app (q179 e h0) (q175 e h4) (by decide)
theorem q181 (e : Env 3) (h0 : e 0 = 3) : Typed Op8ac318f5209b.G e lit26 3 := .app (q3 e h0) (q172 e) (by decide)
theorem q182 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 0) : Typed Op8ac318f5209b.G e lit29 3 := .app (q181 e h0) (q175 e h4) (by decide)
theorem q183 (e : Env 3) (h3 : e 3 = 0) : Typed Op8ac318f5209b.G e lit30 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q176 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q178 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q180 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q182 (push 3 e) rfl h3).weaken _ (by decide)
theorem q184 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op8ac318f5209b.G e lit31 0 := .app (q174 e h0) (q183 e h3) (by decide)
theorem q185 (e : Env 3) (h0 : e 0 = 1) : Typed Op8ac318f5209b.G e lit27 3 := .app (q1 e h0) (q7 e) (by decide)
theorem q186 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op8ac318f5209b.G e lit31 3 := .app (q185 e h0) (q183 e h3) (by decide)
theorem q187 (e : Env 3) (h0 : e 0 = 2) : Typed Op8ac318f5209b.G e lit27 3 := .app (q2 e h0) (q7 e) (by decide)
theorem q188 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op8ac318f5209b.G e lit31 3 := .app (q187 e h0) (q183 e h3) (by decide)
theorem q189 (e : Env 3) (h0 : e 0 = 3) : Typed Op8ac318f5209b.G e lit27 3 := .app (q3 e h0) (q7 e) (by decide)
theorem q190 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op8ac318f5209b.G e lit31 3 := .app (q189 e h0) (q183 e h3) (by decide)
theorem q191 (e : Env 3) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit32 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q184 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q186 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q188 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q190 (push 3 e) rfl h2).weaken _ (by decide)
theorem q192 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit33 0 := .app (q173 e h0) (q191 e h2) (by decide)
theorem q193 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit33 3 := .app (q177 e h0) (q191 e h2) (by decide)
theorem q194 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit33 3 := .app (q179 e h0) (q191 e h2) (by decide)
theorem q195 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit33 3 := .app (q181 e h0) (q191 e h2) (by decide)
theorem q196 (e : Env 3) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit34 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q192 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q193 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q194 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q195 (push 3 e) rfl h1).weaken _ (by decide)
theorem q197 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit35 0 := .app (q173 e h0) (q196 e h1) (by decide)
theorem q198 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit35 3 := .app (q177 e h0) (q196 e h1) (by decide)
theorem q199 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit35 3 := .app (q179 e h0) (q196 e h1) (by decide)
theorem q200 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit35 3 := .app (q181 e h0) (q196 e h1) (by decide)
theorem q201 (e : Env 3) (h0 : e 0 = 0) : Typed Op8ac318f5209b.G e lit36 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q197 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q198 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q199 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q200 (push 3 e) rfl h0).weaken _ (by decide)
theorem q202 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit37 0 := .app (q167 e h1) (q201 e h0) (by decide)
end Blc.Floor45.Probe9692402103682
