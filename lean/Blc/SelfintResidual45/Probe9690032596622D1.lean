import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9690032596622D0

set_option Elab.async false
namespace Blc.Floor45.Probe9690032596622
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q158 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op637762846354.G e lit4 3 := .app (q157 e h2) (q3 e h0 h1) (by decide)
theorem q159 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op637762846354.G e lit6 3 := .app (q158 e h0 h1 h2) (q5 e h0) (by decide)
theorem q160 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op637762846354.G e lit4 3 := .app (q157 e h2) (q8 e h0 h1) (by decide)
theorem q161 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op637762846354.G e lit6 3 := .app (q160 e h0 h1 h2) (q10 e h0) (by decide)
theorem q162 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op637762846354.G e lit4 3 := .app (q157 e h2) (q13 e h0 h1) (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op637762846354.G e lit6 3 := .app (q162 e h0 h1 h2) (q15 e h0) (by decide)
theorem q164 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op637762846354.G e lit4 3 := .app (q157 e h2) (q18 e h0 h1) (by decide)
theorem q165 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op637762846354.G e lit6 3 := .app (q164 e h0 h1 h2) (q20 e h0) (by decide)
theorem q166 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op637762846354.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q159 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q161 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q163 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q165 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q167 (e : Env 3) (h1 : e 1 = 3) : Typed Op637762846354.G e lit8 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q157 (push 0 e) h1).weaken _ (by decide)
  · subst a; exact (q157 (push 1 e) h1).weaken _ (by decide)
  · subst a; exact (q157 (push 2 e) h1).weaken _ (by decide)
  · subst a; exact (q157 (push 3 e) h1).weaken _ (by decide)
theorem q168 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op637762846354.G e lit9 3 := .app (q166 e h0 h1) (q167 e h1) (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op637762846354.G e lit4 3 := .app (q157 e h2) (q26 e h0 h1) (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op637762846354.G e lit6 3 := .app (q169 e h0 h1 h2) (q5 e h0) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op637762846354.G e lit4 3 := .app (q157 e h2) (q29 e h0 h1) (by decide)
theorem q172 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op637762846354.G e lit6 3 := .app (q171 e h0 h1 h2) (q10 e h0) (by decide)
theorem q173 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op637762846354.G e lit4 3 := .app (q157 e h2) (q32 e h0 h1) (by decide)
theorem q174 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op637762846354.G e lit6 3 := .app (q173 e h0 h1 h2) (q15 e h0) (by decide)
theorem q175 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op637762846354.G e lit4 3 := .app (q157 e h2) (q35 e h0 h1) (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op637762846354.G e lit6 3 := .app (q175 e h0 h1 h2) (q20 e h0) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op637762846354.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q170 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q172 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q174 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q176 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q178 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op637762846354.G e lit9 3 := .app (q177 e h0 h1) (q167 e h1) (by decide)
theorem q179 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op637762846354.G e lit4 3 := .app (q157 e h2) (q41 e h0 h1) (by decide)
theorem q180 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op637762846354.G e lit6 3 := .app (q179 e h0 h1 h2) (q5 e h0) (by decide)
theorem q181 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op637762846354.G e lit4 3 := .app (q157 e h2) (q44 e h0 h1) (by decide)
theorem q182 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op637762846354.G e lit6 3 := .app (q181 e h0 h1 h2) (q10 e h0) (by decide)
theorem q183 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op637762846354.G e lit4 3 := .app (q157 e h2) (q47 e h0 h1) (by decide)
theorem q184 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op637762846354.G e lit6 3 := .app (q183 e h0 h1 h2) (q15 e h0) (by decide)
theorem q185 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op637762846354.G e lit4 3 := .app (q157 e h2) (q50 e h0 h1) (by decide)
theorem q186 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op637762846354.G e lit6 3 := .app (q185 e h0 h1 h2) (q20 e h0) (by decide)
theorem q187 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op637762846354.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q180 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q182 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q184 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q186 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q188 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op637762846354.G e lit9 3 := .app (q187 e h0 h1) (q167 e h1) (by decide)
theorem q189 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op637762846354.G e lit4 3 := .app (q157 e h2) (q56 e h0 h1) (by decide)
theorem q190 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op637762846354.G e lit6 3 := .app (q189 e h0 h1 h2) (q5 e h0) (by decide)
theorem q191 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op637762846354.G e lit4 3 := .app (q157 e h2) (q59 e h0 h1) (by decide)
theorem q192 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op637762846354.G e lit6 3 := .app (q191 e h0 h1 h2) (q10 e h0) (by decide)
theorem q193 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op637762846354.G e lit4 3 := .app (q157 e h2) (q62 e h0 h1) (by decide)
theorem q194 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op637762846354.G e lit6 3 := .app (q193 e h0 h1 h2) (q15 e h0) (by decide)
theorem q195 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op637762846354.G e lit4 3 := .app (q157 e h2) (q65 e h0 h1) (by decide)
theorem q196 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op637762846354.G e lit6 3 := .app (q195 e h0 h1 h2) (q20 e h0) (by decide)
theorem q197 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op637762846354.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q190 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q192 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q194 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q196 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q198 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op637762846354.G e lit9 3 := .app (q197 e h0 h1) (q167 e h1) (by decide)
theorem q199 (e : Env 3) (h0 : e 0 = 3) : Typed Op637762846354.G e lit10 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q168 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q178 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q188 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q198 (push 3 e) rfl h0).weaken _ (by decide)
theorem q200 (e : Env 3)  : Typed Op637762846354.G e lit11 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q70 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q113 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q156 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q199 (push 3 e) rfl).weaken _ (by decide)
theorem q201 (e : Env 3)  : Typed Op637762846354.G e lit12 2 := .app (q200 e) (q200 e) (by decide)
theorem q202 (e : Env 3)  : Typed Op637762846354.G e lit13 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q200 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q200 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q200 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q200 (push 3 e)).weaken _ (by decide)
theorem q203 (e : Env 3)  : Typed Op637762846354.G e lit14 2 := .app (q202 e) (q202 e) (by decide)
theorem q204 (e : Env 3)  : Typed Op637762846354.G e lit15 2 := .app (q201 e) (q203 e) (by decide)
theorem q205 (e : Env 3) (h0 : e 0 = 0) : Typed Op637762846354.G e lit16 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q2 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q2 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q2 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q2 (push 3 e) h0).weaken _ (by decide)
theorem q206 (e : Env 3) (h0 : e 0 = 1) : Typed Op637762846354.G e lit16 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q25 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q25 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q25 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q25 (push 3 e) h0).weaken _ (by decide)
theorem q207 (e : Env 3) (h0 : e 0 = 2) : Typed Op637762846354.G e lit16 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q40 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q40 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q40 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q40 (push 3 e) h0).weaken _ (by decide)
theorem q208 (e : Env 3) (h0 : e 0 = 3) : Typed Op637762846354.G e lit16 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q55 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q55 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q55 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q55 (push 3 e) h0).weaken _ (by decide)
theorem q209 (e : Env 3)  : Typed Op637762846354.G e lit17 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q205 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q206 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q207 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q208 (push 3 e) rfl).weaken _ (by decide)
theorem q210 (e : Env 3) (h0 : e 0 = 0) : Typed Op637762846354.G e lit18 2 := .app (q1 e h0) (q209 e) (by decide)
theorem q211 (e : Env 3)  : Typed Op637762846354.G e lit19 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q1 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q7 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q12 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q17 (push 3 e) rfl).weaken _ (by decide)
theorem q212 (e : Env 3)  : Typed Op637762846354.G e lit20 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q211 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q211 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q211 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q211 (push 3 e)).weaken _ (by decide)
theorem q213 (e : Env 3) (h0 : e 0 = 0) : Typed Op637762846354.G e lit21 2 := .app (q1 e h0) (q212 e) (by decide)
theorem q214 (e : Env 3) (h4 : e 4 = 0) : Typed Op637762846354.G e lit22 0 := .var _ _ (by rw [h4]; decide)
theorem q215 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 0) : Typed Op637762846354.G e lit23 2 := .app (q210 e h0) (q214 e h4) (by decide)
theorem q216 (e : Env 3) (h0 : e 0 = 1) : Typed Op637762846354.G e lit18 2 := .app (q7 e h0) (q209 e) (by decide)
theorem q217 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 0) : Typed Op637762846354.G e lit23 2 := .app (q216 e h0) (q214 e h4) (by decide)
theorem q218 (e : Env 3) (h0 : e 0 = 2) : Typed Op637762846354.G e lit18 2 := .app (q12 e h0) (q209 e) (by decide)
theorem q219 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 0) : Typed Op637762846354.G e lit23 2 := .app (q218 e h0) (q214 e h4) (by decide)
theorem q220 (e : Env 3) (h0 : e 0 = 3) : Typed Op637762846354.G e lit18 3 := .app (q17 e h0) (q209 e) (by decide)
theorem q221 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 0) : Typed Op637762846354.G e lit23 3 := .app (q220 e h0) (q214 e h4) (by decide)
theorem q222 (e : Env 3) (h3 : e 3 = 0) : Typed Op637762846354.G e lit24 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q215 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q217 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q219 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q221 (push 3 e) rfl h3).weaken _ (by decide)
theorem q223 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op637762846354.G e lit25 2 := .app (q213 e h0) (q222 e h3) (by decide)
theorem q224 (e : Env 3) (h0 : e 0 = 1) : Typed Op637762846354.G e lit21 2 := .app (q7 e h0) (q212 e) (by decide)
theorem q225 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op637762846354.G e lit25 2 := .app (q224 e h0) (q222 e h3) (by decide)
theorem q226 (e : Env 3) (h0 : e 0 = 2) : Typed Op637762846354.G e lit21 2 := .app (q12 e h0) (q212 e) (by decide)
theorem q227 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op637762846354.G e lit25 2 := .app (q226 e h0) (q222 e h3) (by decide)
theorem q228 (e : Env 3) (h0 : e 0 = 3) : Typed Op637762846354.G e lit21 3 := .app (q17 e h0) (q212 e) (by decide)
theorem q229 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op637762846354.G e lit25 3 := .app (q228 e h0) (q222 e h3) (by decide)
theorem q230 (e : Env 3) (h2 : e 2 = 0) : Typed Op637762846354.G e lit26 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q223 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q225 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q227 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q229 (push 3 e) rfl h2).weaken _ (by decide)
theorem q231 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op637762846354.G e lit27 2 := .app (q210 e h0) (q230 e h2) (by decide)
theorem q232 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op637762846354.G e lit27 2 := .app (q216 e h0) (q230 e h2) (by decide)
theorem q233 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op637762846354.G e lit27 2 := .app (q218 e h0) (q230 e h2) (by decide)
theorem q234 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op637762846354.G e lit27 3 := .app (q220 e h0) (q230 e h2) (by decide)
theorem q235 (e : Env 3) (h1 : e 1 = 0) : Typed Op637762846354.G e lit28 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q231 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q232 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q233 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q234 (push 3 e) rfl h1).weaken _ (by decide)
theorem q236 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op637762846354.G e lit29 2 := .app (q210 e h0) (q235 e h1) (by decide)
theorem q237 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op637762846354.G e lit29 2 := .app (q216 e h0) (q235 e h1) (by decide)
theorem q238 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op637762846354.G e lit29 2 := .app (q218 e h0) (q235 e h1) (by decide)
theorem q239 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op637762846354.G e lit29 3 := .app (q220 e h0) (q235 e h1) (by decide)
theorem q240 (e : Env 3) (h0 : e 0 = 0) : Typed Op637762846354.G e lit30 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q236 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q237 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q238 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q239 (push 3 e) rfl h0).weaken _ (by decide)
theorem q241 (e : Env 3) (h0 : e 0 = 0) : Typed Op637762846354.G e lit31 2 := .app (q204 e) (q240 e h0) (by decide)
end Blc.Floor45.Probe9690032596622
