import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9646874151894D0

set_option Elab.async false
namespace Blc.Floor45.Probe9646874151894
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q162 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op95262fd4904c.G e lit6 3 := .app (q20 e h1) (q161 e h0 h1 h2) (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op95262fd4904c.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q156 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q158 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q160 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q162 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q164 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op95262fd4904c.G e lit5 3 := .app (q142 e h0 h2) (q30 e h1) (by decide)
theorem q165 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op95262fd4904c.G e lit6 3 := .app (q30 e h1) (q164 e h0 h1 h2) (by decide)
theorem q166 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op95262fd4904c.G e lit5 3 := .app (q145 e h0 h2) (q30 e h1) (by decide)
theorem q167 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op95262fd4904c.G e lit6 3 := .app (q30 e h1) (q166 e h0 h1 h2) (by decide)
theorem q168 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op95262fd4904c.G e lit5 3 := .app (q148 e h0 h2) (q30 e h1) (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op95262fd4904c.G e lit6 3 := .app (q30 e h1) (q168 e h0 h1 h2) (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op95262fd4904c.G e lit5 3 := .app (q151 e h0 h2) (q30 e h1) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op95262fd4904c.G e lit6 3 := .app (q30 e h1) (q170 e h0 h1 h2) (by decide)
theorem q172 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op95262fd4904c.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q165 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q167 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q169 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q171 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q173 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op95262fd4904c.G e lit5 3 := .app (q142 e h0 h2) (q40 e h1) (by decide)
theorem q174 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op95262fd4904c.G e lit6 3 := .app (q40 e h1) (q173 e h0 h1 h2) (by decide)
theorem q175 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op95262fd4904c.G e lit5 3 := .app (q145 e h0 h2) (q40 e h1) (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op95262fd4904c.G e lit6 3 := .app (q40 e h1) (q175 e h0 h1 h2) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op95262fd4904c.G e lit5 3 := .app (q148 e h0 h2) (q40 e h1) (by decide)
theorem q178 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op95262fd4904c.G e lit6 3 := .app (q40 e h1) (q177 e h0 h1 h2) (by decide)
theorem q179 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op95262fd4904c.G e lit5 3 := .app (q151 e h0 h2) (q40 e h1) (by decide)
theorem q180 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op95262fd4904c.G e lit6 3 := .app (q40 e h1) (q179 e h0 h1 h2) (by decide)
theorem q181 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op95262fd4904c.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q174 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q176 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q178 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q180 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q182 (e : Env 3) (h0 : e 0 = 3) : Typed Op95262fd4904c.G e lit8 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q154 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q163 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q172 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q181 (push 3 e) rfl h0).weaken _ (by decide)
theorem q183 (e : Env 3) (h0 : e 0 = 3) : Typed Op95262fd4904c.G e lit9 3 := .app (q140 e h0) (q182 e h0) (by decide)
theorem q184 (e : Env 3)  : Typed Op95262fd4904c.G e lit10 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q51 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q95 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q139 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q183 (push 3 e) rfl).weaken _ (by decide)
theorem q185 (e : Env 3) (h1 : e 1 = 0) : Typed Op95262fd4904c.G e lit11 0 := .app (q184 e) (q2 e h1) (by decide)
theorem q186 (e : Env 3) (h1 : e 1 = 0) : Typed Op95262fd4904c.G e lit12 0 := .app (q2 e h1) (q185 e h1) (by decide)
theorem q187 (e : Env 3) (h0 : e 0 = 0) : Typed Op95262fd4904c.G e lit13 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q186 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q186 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q186 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q186 (push 3 e) h0).weaken _ (by decide)
theorem q188 (e : Env 3) (h1 : e 1 = 1) : Typed Op95262fd4904c.G e lit11 0 := .app (q184 e) (q20 e h1) (by decide)
theorem q189 (e : Env 3) (h1 : e 1 = 1) : Typed Op95262fd4904c.G e lit12 0 := .app (q20 e h1) (q188 e h1) (by decide)
theorem q190 (e : Env 3) (h0 : e 0 = 1) : Typed Op95262fd4904c.G e lit13 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q189 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q189 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q189 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q189 (push 3 e) h0).weaken _ (by decide)
theorem q191 (e : Env 3) (h1 : e 1 = 2) : Typed Op95262fd4904c.G e lit11 0 := .app (q184 e) (q30 e h1) (by decide)
theorem q192 (e : Env 3) (h1 : e 1 = 2) : Typed Op95262fd4904c.G e lit12 0 := .app (q30 e h1) (q191 e h1) (by decide)
theorem q193 (e : Env 3) (h0 : e 0 = 2) : Typed Op95262fd4904c.G e lit13 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q192 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q192 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q192 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q192 (push 3 e) h0).weaken _ (by decide)
theorem q194 (e : Env 3) (h1 : e 1 = 3) : Typed Op95262fd4904c.G e lit11 3 := .app (q184 e) (q40 e h1) (by decide)
theorem q195 (e : Env 3) (h1 : e 1 = 3) : Typed Op95262fd4904c.G e lit12 3 := .app (q40 e h1) (q194 e h1) (by decide)
theorem q196 (e : Env 3) (h0 : e 0 = 3) : Typed Op95262fd4904c.G e lit13 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q195 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q195 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q195 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q195 (push 3 e) h0).weaken _ (by decide)
theorem q197 (e : Env 3)  : Typed Op95262fd4904c.G e lit14 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q187 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q190 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q193 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q196 (push 3 e) rfl).weaken _ (by decide)
theorem q198 (e : Env 3)  : Typed Op95262fd4904c.G e lit15 0 := .app (q184 e) (q197 e) (by decide)
theorem q199 (e : Env 3) (h1 : e 1 = 1) : Typed Op95262fd4904c.G e lit16 0 := .app (q198 e) (q20 e h1) (by decide)
theorem q200 (e : Env 3) (h0 : e 0 = 0) : Typed Op95262fd4904c.G e lit17 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q2 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q2 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q2 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q2 (push 3 e) h0).weaken _ (by decide)
theorem q201 (e : Env 3) (h0 : e 0 = 1) : Typed Op95262fd4904c.G e lit17 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q20 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q20 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q20 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q20 (push 3 e) h0).weaken _ (by decide)
theorem q202 (e : Env 3) (h0 : e 0 = 2) : Typed Op95262fd4904c.G e lit17 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q30 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q30 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q30 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q30 (push 3 e) h0).weaken _ (by decide)
theorem q203 (e : Env 3) (h0 : e 0 = 3) : Typed Op95262fd4904c.G e lit17 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q40 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q40 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q40 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q40 (push 3 e) h0).weaken _ (by decide)
theorem q204 (e : Env 3)  : Typed Op95262fd4904c.G e lit18 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q200 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q201 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q202 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q203 (push 3 e) rfl).weaken _ (by decide)
theorem q205 (e : Env 3) (h0 : e 0 = 0) : Typed Op95262fd4904c.G e lit19 0 := .app (q0 e h0) (q204 e) (by decide)
theorem q206 (e : Env 3)  : Typed Op95262fd4904c.G e lit20 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q0 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q7 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q11 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q15 (push 3 e) rfl).weaken _ (by decide)
theorem q207 (e : Env 3)  : Typed Op95262fd4904c.G e lit21 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q206 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q206 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q206 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q206 (push 3 e)).weaken _ (by decide)
theorem q208 (e : Env 3) (h0 : e 0 = 0) : Typed Op95262fd4904c.G e lit22 0 := .app (q0 e h0) (q207 e) (by decide)
theorem q209 (e : Env 3) (h4 : e 4 = 0) : Typed Op95262fd4904c.G e lit23 0 := .var _ _ (by rw [h4]; decide)
theorem q210 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 0) : Typed Op95262fd4904c.G e lit24 0 := .app (q205 e h0) (q209 e h4) (by decide)
theorem q211 (e : Env 3) (h0 : e 0 = 1) : Typed Op95262fd4904c.G e lit19 3 := .app (q7 e h0) (q204 e) (by decide)
theorem q212 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 0) : Typed Op95262fd4904c.G e lit24 3 := .app (q211 e h0) (q209 e h4) (by decide)
theorem q213 (e : Env 3) (h0 : e 0 = 2) : Typed Op95262fd4904c.G e lit19 3 := .app (q11 e h0) (q204 e) (by decide)
theorem q214 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 0) : Typed Op95262fd4904c.G e lit24 3 := .app (q213 e h0) (q209 e h4) (by decide)
theorem q215 (e : Env 3) (h0 : e 0 = 3) : Typed Op95262fd4904c.G e lit19 3 := .app (q15 e h0) (q204 e) (by decide)
theorem q216 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 0) : Typed Op95262fd4904c.G e lit24 3 := .app (q215 e h0) (q209 e h4) (by decide)
theorem q217 (e : Env 3) (h3 : e 3 = 0) : Typed Op95262fd4904c.G e lit25 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q210 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q212 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q214 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q216 (push 3 e) rfl h3).weaken _ (by decide)
theorem q218 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op95262fd4904c.G e lit26 0 := .app (q208 e h0) (q217 e h3) (by decide)
theorem q219 (e : Env 3) (h0 : e 0 = 1) : Typed Op95262fd4904c.G e lit22 3 := .app (q7 e h0) (q207 e) (by decide)
theorem q220 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op95262fd4904c.G e lit26 3 := .app (q219 e h0) (q217 e h3) (by decide)
theorem q221 (e : Env 3) (h0 : e 0 = 2) : Typed Op95262fd4904c.G e lit22 3 := .app (q11 e h0) (q207 e) (by decide)
theorem q222 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op95262fd4904c.G e lit26 3 := .app (q221 e h0) (q217 e h3) (by decide)
theorem q223 (e : Env 3) (h0 : e 0 = 3) : Typed Op95262fd4904c.G e lit22 3 := .app (q15 e h0) (q207 e) (by decide)
theorem q224 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op95262fd4904c.G e lit26 3 := .app (q223 e h0) (q217 e h3) (by decide)
theorem q225 (e : Env 3) (h2 : e 2 = 0) : Typed Op95262fd4904c.G e lit27 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q218 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q220 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q222 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q224 (push 3 e) rfl h2).weaken _ (by decide)
theorem q226 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op95262fd4904c.G e lit28 0 := .app (q205 e h0) (q225 e h2) (by decide)
theorem q227 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op95262fd4904c.G e lit28 3 := .app (q211 e h0) (q225 e h2) (by decide)
theorem q228 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op95262fd4904c.G e lit28 3 := .app (q213 e h0) (q225 e h2) (by decide)
theorem q229 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op95262fd4904c.G e lit28 3 := .app (q215 e h0) (q225 e h2) (by decide)
theorem q230 (e : Env 3) (h1 : e 1 = 0) : Typed Op95262fd4904c.G e lit29 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q226 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q227 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q228 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q229 (push 3 e) rfl h1).weaken _ (by decide)
theorem q231 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op95262fd4904c.G e lit30 0 := .app (q205 e h0) (q230 e h1) (by decide)
theorem q232 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op95262fd4904c.G e lit30 3 := .app (q211 e h0) (q230 e h1) (by decide)
theorem q233 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op95262fd4904c.G e lit30 3 := .app (q213 e h0) (q230 e h1) (by decide)
theorem q234 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op95262fd4904c.G e lit30 3 := .app (q215 e h0) (q230 e h1) (by decide)
theorem q235 (e : Env 3) (h0 : e 0 = 0) : Typed Op95262fd4904c.G e lit31 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q231 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q232 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q233 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q234 (push 3 e) rfl h0).weaken _ (by decide)
theorem q236 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op95262fd4904c.G e lit32 0 := .app (q199 e h1) (q235 e h0) (by decide)
end Blc.Floor45.Probe9646874151894
