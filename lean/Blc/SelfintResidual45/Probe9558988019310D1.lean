import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9558988019310D0

set_option Elab.async false
namespace Blc.Floor45.Probe9558988019310
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q148 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit13 0 := .app (q1 e h0) (q147 e h3) (by decide)
theorem q149 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit14 0 := .app (q3 e h0 h1) (q148 e h0 h3) (by decide)
theorem q150 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit13 1 := .app (q8 e h0) (q147 e h3) (by decide)
theorem q151 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit14 0 := .app (q10 e h0 h1) (q150 e h0 h3) (by decide)
theorem q152 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit13 1 := .app (q13 e h0) (q147 e h3) (by decide)
theorem q153 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit14 0 := .app (q15 e h0 h1) (q152 e h0 h3) (by decide)
theorem q154 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit13 3 := .app (q18 e h0) (q147 e h3) (by decide)
theorem q155 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit14 1 := .app (q20 e h0 h1) (q154 e h0 h3) (by decide)
theorem q156 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit15 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q149 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q151 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q153 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q155 (push 3 e) rfl h0 h2).weaken _ (by decide)
theorem q157 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit14 0 := .app (q26 e h0 h1) (q148 e h0 h3) (by decide)
theorem q158 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit14 1 := .app (q29 e h0 h1) (q150 e h0 h3) (by decide)
theorem q159 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit14 1 := .app (q32 e h0 h1) (q152 e h0 h3) (by decide)
theorem q160 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit14 3 := .app (q35 e h0 h1) (q154 e h0 h3) (by decide)
theorem q161 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit15 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q157 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q158 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q159 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q160 (push 3 e) rfl h0 h2).weaken _ (by decide)
theorem q162 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit14 0 := .app (q40 e h0 h1) (q148 e h0 h3) (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit14 1 := .app (q43 e h0 h1) (q150 e h0 h3) (by decide)
theorem q164 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit14 1 := .app (q46 e h0 h1) (q152 e h0 h3) (by decide)
theorem q165 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit14 3 := .app (q49 e h0 h1) (q154 e h0 h3) (by decide)
theorem q166 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit15 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q162 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q163 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q164 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q165 (push 3 e) rfl h0 h2).weaken _ (by decide)
theorem q167 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit14 3 := .app (q54 e h0 h1) (q148 e h0 h3) (by decide)
theorem q168 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit14 3 := .app (q57 e h0 h1) (q150 e h0 h3) (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit14 3 := .app (q60 e h0 h1) (q152 e h0 h3) (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit14 3 := .app (q63 e h0 h1) (q154 e h0 h3) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit15 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q167 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q168 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q169 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q170 (push 3 e) rfl h0 h2).weaken _ (by decide)
theorem q172 (e : Env 3) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit16 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q156 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q161 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q166 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q171 (push 3 e) rfl h1).weaken _ (by decide)
theorem q173 (e : Env 3) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit17 1 := .app (q172 e h1) (q145 e) (by decide)
theorem q174 (e : Env 3) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit18 1 := .app (q0 e h1) (q146 e) (by decide)
theorem q175 (e : Env 3) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit19 0 := .app (q174 e h1) (q0 e h1) (by decide)
theorem q176 (e : Env 3) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit20 0 := .app (q173 e h1) (q175 e h1) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 0) : Typed Op8e7c855a107a.G e lit21 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q0 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 3 e) h0).weaken _ (by decide)
theorem q178 (e : Env 3) (h0 : e 0 = 1) : Typed Op8e7c855a107a.G e lit21 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q24 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q24 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q24 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q24 (push 3 e) h0).weaken _ (by decide)
theorem q179 (e : Env 3) (h0 : e 0 = 2) : Typed Op8e7c855a107a.G e lit21 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q38 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q38 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q38 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q38 (push 3 e) h0).weaken _ (by decide)
theorem q180 (e : Env 3) (h0 : e 0 = 3) : Typed Op8e7c855a107a.G e lit21 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q52 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q52 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q52 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q52 (push 3 e) h0).weaken _ (by decide)
theorem q181 (e : Env 3)  : Typed Op8e7c855a107a.G e lit22 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q177 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q178 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q179 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q180 (push 3 e) rfl).weaken _ (by decide)
theorem q182 (e : Env 3) (h0 : e 0 = 0) : Typed Op8e7c855a107a.G e lit23 1 := .app (q1 e h0) (q181 e) (by decide)
theorem q183 (e : Env 3)  : Typed Op8e7c855a107a.G e lit24 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q1 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q8 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q13 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q18 (push 3 e) rfl).weaken _ (by decide)
theorem q184 (e : Env 3)  : Typed Op8e7c855a107a.G e lit25 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q183 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q183 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q183 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q183 (push 3 e)).weaken _ (by decide)
theorem q185 (e : Env 3) (h0 : e 0 = 0) : Typed Op8e7c855a107a.G e lit26 1 := .app (q1 e h0) (q184 e) (by decide)
theorem q186 (e : Env 3) (h4 : e 4 = 3) : Typed Op8e7c855a107a.G e lit27 3 := .var _ _ (by rw [h4]; decide)
theorem q187 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 3) : Typed Op8e7c855a107a.G e lit28 3 := .app (q182 e h0) (q186 e h4) (by decide)
theorem q188 (e : Env 3) (h0 : e 0 = 1) : Typed Op8e7c855a107a.G e lit23 3 := .app (q8 e h0) (q181 e) (by decide)
theorem q189 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 3) : Typed Op8e7c855a107a.G e lit28 3 := .app (q188 e h0) (q186 e h4) (by decide)
theorem q190 (e : Env 3) (h0 : e 0 = 2) : Typed Op8e7c855a107a.G e lit23 3 := .app (q13 e h0) (q181 e) (by decide)
theorem q191 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 3) : Typed Op8e7c855a107a.G e lit28 3 := .app (q190 e h0) (q186 e h4) (by decide)
theorem q192 (e : Env 3) (h0 : e 0 = 3) : Typed Op8e7c855a107a.G e lit23 3 := .app (q18 e h0) (q181 e) (by decide)
theorem q193 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 3) : Typed Op8e7c855a107a.G e lit28 3 := .app (q192 e h0) (q186 e h4) (by decide)
theorem q194 (e : Env 3) (h3 : e 3 = 3) : Typed Op8e7c855a107a.G e lit29 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q187 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q189 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q191 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q193 (push 3 e) rfl h3).weaken _ (by decide)
theorem q195 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 3) : Typed Op8e7c855a107a.G e lit30 3 := .app (q185 e h0) (q194 e h3) (by decide)
theorem q196 (e : Env 3) (h0 : e 0 = 1) : Typed Op8e7c855a107a.G e lit26 3 := .app (q8 e h0) (q184 e) (by decide)
theorem q197 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 3) : Typed Op8e7c855a107a.G e lit30 3 := .app (q196 e h0) (q194 e h3) (by decide)
theorem q198 (e : Env 3) (h0 : e 0 = 2) : Typed Op8e7c855a107a.G e lit26 3 := .app (q13 e h0) (q184 e) (by decide)
theorem q199 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 3) : Typed Op8e7c855a107a.G e lit30 3 := .app (q198 e h0) (q194 e h3) (by decide)
theorem q200 (e : Env 3) (h0 : e 0 = 3) : Typed Op8e7c855a107a.G e lit26 3 := .app (q18 e h0) (q184 e) (by decide)
theorem q201 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 3) : Typed Op8e7c855a107a.G e lit30 3 := .app (q200 e h0) (q194 e h3) (by decide)
theorem q202 (e : Env 3) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit31 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q195 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q197 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q199 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q201 (push 3 e) rfl h2).weaken _ (by decide)
theorem q203 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit32 3 := .app (q182 e h0) (q202 e h2) (by decide)
theorem q204 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit32 3 := .app (q188 e h0) (q202 e h2) (by decide)
theorem q205 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit32 3 := .app (q190 e h0) (q202 e h2) (by decide)
theorem q206 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit32 3 := .app (q192 e h0) (q202 e h2) (by decide)
theorem q207 (e : Env 3) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit33 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q203 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q204 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q205 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q206 (push 3 e) rfl h1).weaken _ (by decide)
theorem q208 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit34 3 := .app (q182 e h0) (q207 e h1) (by decide)
theorem q209 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit34 3 := .app (q188 e h0) (q207 e h1) (by decide)
theorem q210 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit34 3 := .app (q190 e h0) (q207 e h1) (by decide)
theorem q211 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit34 3 := .app (q192 e h0) (q207 e h1) (by decide)
theorem q212 (e : Env 3) (h0 : e 0 = 3) : Typed Op8e7c855a107a.G e lit35 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q208 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q209 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q210 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q211 (push 3 e) rfl h0).weaken _ (by decide)
theorem q213 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit36 1 := .app (q176 e h1) (q212 e h0) (by decide)
end Blc.Floor45.Probe9558988019310
