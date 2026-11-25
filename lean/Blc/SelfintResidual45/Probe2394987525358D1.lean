import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe2394987525358D0

set_option Elab.async false
namespace Blc.Floor45.Probe2394987525358
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q146 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit20 3 := .app (q83 e h0 h1) (q143 e h1 h2) (by decide)
theorem q147 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit20 3 := .app (q85 e h0 h1) (q143 e h1 h2) (by decide)
theorem q148 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit21 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q144 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q145 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q146 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q147 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q149 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit22 3 := .app (q13 e h0) (q148 e h0 h1) (by decide)
theorem q150 (e : Env 3) (h0 : e 0 = 1) : Typed Op8ac318f5209b.G e lit23 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q128 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q135 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q142 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q149 (push 3 e) rfl h0).weaken _ (by decide)
theorem q151 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit29 0 := .app (q150 e h0) (q119 e h2) (by decide)
theorem q152 (e : Env 3) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit18 2 := .var _ _ (by rw [h2]; decide)
theorem q153 (e : Env 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit19 0 := .app (q0 e h1) (q152 e h2) (by decide)
theorem q154 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit20 0 := .app (q44 e h0 h1) (q153 e h1 h2) (by decide)
theorem q155 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit20 0 := .app (q48 e h0 h1) (q153 e h1 h2) (by decide)
theorem q156 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit20 0 := .app (q50 e h0 h1) (q153 e h1 h2) (by decide)
theorem q157 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit20 0 := .app (q52 e h0 h1) (q153 e h1 h2) (by decide)
theorem q158 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit21 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q154 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q155 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q156 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q157 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q159 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit22 0 := .app (q9 e h0) (q158 e h0 h1) (by decide)
theorem q160 (e : Env 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit19 3 := .app (q2 e h1) (q152 e h2) (by decide)
theorem q161 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit20 0 := .app (q56 e h0 h1) (q160 e h1 h2) (by decide)
theorem q162 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit20 0 := .app (q59 e h0 h1) (q160 e h1 h2) (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit20 3 := .app (q61 e h0 h1) (q160 e h1 h2) (by decide)
theorem q164 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit20 3 := .app (q63 e h0 h1) (q160 e h1 h2) (by decide)
theorem q165 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit21 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q161 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q162 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q163 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q164 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q166 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit22 0 := .app (q11 e h0) (q165 e h0 h1) (by decide)
theorem q167 (e : Env 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit19 3 := .app (q4 e h1) (q152 e h2) (by decide)
theorem q168 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit20 0 := .app (q67 e h0 h1) (q167 e h1 h2) (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit20 3 := .app (q70 e h0 h1) (q167 e h1 h2) (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit20 3 := .app (q72 e h0 h1) (q167 e h1 h2) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit20 3 := .app (q74 e h0 h1) (q167 e h1 h2) (by decide)
theorem q172 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit21 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q168 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q169 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q170 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q171 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q173 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit22 3 := .app (q12 e h0) (q172 e h0 h1) (by decide)
theorem q174 (e : Env 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit19 3 := .app (q6 e h1) (q152 e h2) (by decide)
theorem q175 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit20 3 := .app (q78 e h0 h1) (q174 e h1 h2) (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit20 3 := .app (q81 e h0 h1) (q174 e h1 h2) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit20 3 := .app (q83 e h0 h1) (q174 e h1 h2) (by decide)
theorem q178 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit20 3 := .app (q85 e h0 h1) (q174 e h1 h2) (by decide)
theorem q179 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit21 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q175 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q176 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q177 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q178 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q180 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit22 3 := .app (q13 e h0) (q179 e h0 h1) (by decide)
theorem q181 (e : Env 3) (h0 : e 0 = 2) : Typed Op8ac318f5209b.G e lit23 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q159 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q166 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q173 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q180 (push 3 e) rfl h0).weaken _ (by decide)
theorem q182 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit29 0 := .app (q181 e h0) (q119 e h2) (by decide)
theorem q183 (e : Env 3) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit18 3 := .var _ _ (by rw [h2]; decide)
theorem q184 (e : Env 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit19 0 := .app (q0 e h1) (q183 e h2) (by decide)
theorem q185 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit20 0 := .app (q44 e h0 h1) (q184 e h1 h2) (by decide)
theorem q186 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit20 0 := .app (q48 e h0 h1) (q184 e h1 h2) (by decide)
theorem q187 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit20 0 := .app (q50 e h0 h1) (q184 e h1 h2) (by decide)
theorem q188 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit20 0 := .app (q52 e h0 h1) (q184 e h1 h2) (by decide)
theorem q189 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit21 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q185 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q186 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q187 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q188 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q190 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit22 0 := .app (q9 e h0) (q189 e h0 h1) (by decide)
theorem q191 (e : Env 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit19 3 := .app (q2 e h1) (q183 e h2) (by decide)
theorem q192 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit20 0 := .app (q56 e h0 h1) (q191 e h1 h2) (by decide)
theorem q193 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit20 0 := .app (q59 e h0 h1) (q191 e h1 h2) (by decide)
theorem q194 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit20 3 := .app (q61 e h0 h1) (q191 e h1 h2) (by decide)
theorem q195 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit20 3 := .app (q63 e h0 h1) (q191 e h1 h2) (by decide)
theorem q196 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit21 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q192 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q193 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q194 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q195 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q197 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit22 0 := .app (q11 e h0) (q196 e h0 h1) (by decide)
theorem q198 (e : Env 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit19 3 := .app (q4 e h1) (q183 e h2) (by decide)
theorem q199 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit20 0 := .app (q67 e h0 h1) (q198 e h1 h2) (by decide)
theorem q200 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit20 3 := .app (q70 e h0 h1) (q198 e h1 h2) (by decide)
theorem q201 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit20 3 := .app (q72 e h0 h1) (q198 e h1 h2) (by decide)
theorem q202 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit20 3 := .app (q74 e h0 h1) (q198 e h1 h2) (by decide)
theorem q203 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit21 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q199 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q200 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q201 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q202 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q204 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit22 3 := .app (q12 e h0) (q203 e h0 h1) (by decide)
theorem q205 (e : Env 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit19 3 := .app (q6 e h1) (q183 e h2) (by decide)
theorem q206 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit20 3 := .app (q78 e h0 h1) (q205 e h1 h2) (by decide)
theorem q207 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit20 3 := .app (q81 e h0 h1) (q205 e h1 h2) (by decide)
theorem q208 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit20 3 := .app (q83 e h0 h1) (q205 e h1 h2) (by decide)
theorem q209 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit20 3 := .app (q85 e h0 h1) (q205 e h1 h2) (by decide)
theorem q210 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit21 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q206 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q207 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q208 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q209 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q211 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit22 3 := .app (q13 e h0) (q210 e h0 h1) (by decide)
theorem q212 (e : Env 3) (h0 : e 0 = 3) : Typed Op8ac318f5209b.G e lit23 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q190 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q197 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q204 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q211 (push 3 e) rfl h0).weaken _ (by decide)
theorem q213 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit29 0 := .app (q212 e h0) (q119 e h2) (by decide)
theorem q214 (e : Env 3) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit30 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q120 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q151 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q182 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q213 (push 3 e) rfl h1).weaken _ (by decide)
theorem q215 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit31 0 := .app (q43 e h0) (q214 e h1) (by decide)
theorem q216 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit32 0 := .app (q8 e) (q215 e h0 h1) (by decide)
theorem q217 (e : Env 3) (h3 : e 3 = 0) : Typed Op8ac318f5209b.G e lit33 0 := .var _ _ (by rw [h3]; decide)
theorem q218 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op8ac318f5209b.G e lit34 0 := .app (q10 e h0) (q217 e h3) (by decide)
theorem q219 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op8ac318f5209b.G e lit34 3 := .app (q19 e h0) (q217 e h3) (by decide)
theorem q220 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op8ac318f5209b.G e lit34 3 := .app (q21 e h0) (q217 e h3) (by decide)
theorem q221 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op8ac318f5209b.G e lit34 3 := .app (q23 e h0) (q217 e h3) (by decide)
theorem q222 (e : Env 3) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit35 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q218 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q219 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q220 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q221 (push 3 e) rfl h2).weaken _ (by decide)
theorem q223 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit36 0 := .app (q16 e h0) (q222 e h2) (by decide)
theorem q224 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit36 3 := .app (q27 e h0) (q222 e h2) (by decide)
theorem q225 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit36 3 := .app (q29 e h0) (q222 e h2) (by decide)
theorem q226 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit36 3 := .app (q31 e h0) (q222 e h2) (by decide)
theorem q227 (e : Env 3) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit37 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q223 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q224 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q225 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q226 (push 3 e) rfl h1).weaken _ (by decide)
theorem q228 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit38 0 := .app (q10 e h0) (q227 e h1) (by decide)
theorem q229 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit38 3 := .app (q19 e h0) (q227 e h1) (by decide)
theorem q230 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit38 3 := .app (q21 e h0) (q227 e h1) (by decide)
theorem q231 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit38 3 := .app (q23 e h0) (q227 e h1) (by decide)
theorem q232 (e : Env 3) (h0 : e 0 = 0) : Typed Op8ac318f5209b.G e lit39 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q228 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q229 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q230 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q231 (push 3 e) rfl h0).weaken _ (by decide)
theorem q233 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit40 0 := .app (q216 e h0 h1) (q232 e h0) (by decide)
end Blc.Floor45.Probe2394987525358
