import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9646874151898D0

set_option Elab.async false
namespace Blc.Floor45.Probe9646874151898
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q161 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q154 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q156 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q158 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q160 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q162 (e : Env 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 3 := .app (q141 e h2) (q28 e h1) (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit5 3 := .app (q162 e h1 h2) (q0 e h0) (by decide)
theorem q164 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit6 3 := .app (q28 e h1) (q163 e h0 h1 h2) (by decide)
theorem q165 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit5 3 := .app (q162 e h1 h2) (q7 e h0) (by decide)
theorem q166 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit6 3 := .app (q28 e h1) (q165 e h0 h1 h2) (by decide)
theorem q167 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit5 3 := .app (q162 e h1 h2) (q10 e h0) (by decide)
theorem q168 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit6 3 := .app (q28 e h1) (q167 e h0 h1 h2) (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit5 3 := .app (q162 e h1 h2) (q13 e h0) (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit6 3 := .app (q28 e h1) (q169 e h0 h1 h2) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q164 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q166 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q168 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q170 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q172 (e : Env 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 3 := .app (q141 e h2) (q39 e h1) (by decide)
theorem q173 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit5 3 := .app (q172 e h1 h2) (q0 e h0) (by decide)
theorem q174 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit6 3 := .app (q39 e h1) (q173 e h0 h1 h2) (by decide)
theorem q175 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit5 3 := .app (q172 e h1 h2) (q7 e h0) (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit6 3 := .app (q39 e h1) (q175 e h0 h1 h2) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit5 3 := .app (q172 e h1 h2) (q10 e h0) (by decide)
theorem q178 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit6 3 := .app (q39 e h1) (q177 e h0 h1 h2) (by decide)
theorem q179 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit5 3 := .app (q172 e h1 h2) (q13 e h0) (by decide)
theorem q180 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit6 3 := .app (q39 e h1) (q179 e h0 h1 h2) (by decide)
theorem q181 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q174 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q176 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q178 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q180 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q182 (e : Env 3) (h0 : e 0 = 3) : Typed Op4b638b5bed78.G e lit8 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q151 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q161 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q171 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q181 (push 3 e) rfl h0).weaken _ (by decide)
theorem q183 (e : Env 3) (h0 : e 0 = 3) : Typed Op4b638b5bed78.G e lit9 3 := .app (q140 e h0) (q182 e h0) (by decide)
theorem q184 (e : Env 3)  : Typed Op4b638b5bed78.G e lit10 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q51 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q95 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q139 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q183 (push 3 e) rfl).weaken _ (by decide)
theorem q185 (e : Env 3) (h0 : e 0 = 0) : Typed Op4b638b5bed78.G e lit11 0 := .app (q184 e) (q0 e h0) (by decide)
theorem q186 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op4b638b5bed78.G e lit12 0 := .app (q2 e h1) (q185 e h0) (by decide)
theorem q187 (e : Env 3) (h0 : e 0 = 1) : Typed Op4b638b5bed78.G e lit11 1 := .app (q184 e) (q7 e h0) (by decide)
theorem q188 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op4b638b5bed78.G e lit12 0 := .app (q2 e h1) (q187 e h0) (by decide)
theorem q189 (e : Env 3) (h0 : e 0 = 2) : Typed Op4b638b5bed78.G e lit11 2 := .app (q184 e) (q10 e h0) (by decide)
theorem q190 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op4b638b5bed78.G e lit12 0 := .app (q2 e h1) (q189 e h0) (by decide)
theorem q191 (e : Env 3) (h0 : e 0 = 3) : Typed Op4b638b5bed78.G e lit11 3 := .app (q184 e) (q13 e h0) (by decide)
theorem q192 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op4b638b5bed78.G e lit12 0 := .app (q2 e h1) (q191 e h0) (by decide)
theorem q193 (e : Env 3) (h0 : e 0 = 0) : Typed Op4b638b5bed78.G e lit13 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q186 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q188 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q190 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q192 (push 3 e) rfl h0).weaken _ (by decide)
theorem q194 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op4b638b5bed78.G e lit12 0 := .app (q17 e h1) (q185 e h0) (by decide)
theorem q195 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op4b638b5bed78.G e lit12 0 := .app (q17 e h1) (q187 e h0) (by decide)
theorem q196 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op4b638b5bed78.G e lit12 0 := .app (q17 e h1) (q189 e h0) (by decide)
theorem q197 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op4b638b5bed78.G e lit12 2 := .app (q17 e h1) (q191 e h0) (by decide)
theorem q198 (e : Env 3) (h0 : e 0 = 1) : Typed Op4b638b5bed78.G e lit13 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q194 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q195 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q196 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q197 (push 3 e) rfl h0).weaken _ (by decide)
theorem q199 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op4b638b5bed78.G e lit12 0 := .app (q28 e h1) (q185 e h0) (by decide)
theorem q200 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op4b638b5bed78.G e lit12 1 := .app (q28 e h1) (q187 e h0) (by decide)
theorem q201 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op4b638b5bed78.G e lit12 2 := .app (q28 e h1) (q189 e h0) (by decide)
theorem q202 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op4b638b5bed78.G e lit12 3 := .app (q28 e h1) (q191 e h0) (by decide)
theorem q203 (e : Env 3) (h0 : e 0 = 2) : Typed Op4b638b5bed78.G e lit13 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q199 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q200 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q201 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q202 (push 3 e) rfl h0).weaken _ (by decide)
theorem q204 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit12 3 := .app (q39 e h1) (q185 e h0) (by decide)
theorem q205 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit12 3 := .app (q39 e h1) (q187 e h0) (by decide)
theorem q206 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit12 3 := .app (q39 e h1) (q189 e h0) (by decide)
theorem q207 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit12 3 := .app (q39 e h1) (q191 e h0) (by decide)
theorem q208 (e : Env 3) (h0 : e 0 = 3) : Typed Op4b638b5bed78.G e lit13 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q204 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q205 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q206 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q207 (push 3 e) rfl h0).weaken _ (by decide)
theorem q209 (e : Env 3)  : Typed Op4b638b5bed78.G e lit14 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q193 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q198 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q203 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q208 (push 3 e) rfl).weaken _ (by decide)
theorem q210 (e : Env 3)  : Typed Op4b638b5bed78.G e lit15 2 := .app (q184 e) (q209 e) (by decide)
theorem q211 (e : Env 3) (h1 : e 1 = 1) : Typed Op4b638b5bed78.G e lit16 1 := .app (q210 e) (q17 e h1) (by decide)
theorem q212 (e : Env 3) (h0 : e 0 = 0) : Typed Op4b638b5bed78.G e lit17 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q2 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q2 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q2 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q2 (push 3 e) h0).weaken _ (by decide)
theorem q213 (e : Env 3) (h0 : e 0 = 1) : Typed Op4b638b5bed78.G e lit17 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q17 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q17 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q17 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q17 (push 3 e) h0).weaken _ (by decide)
theorem q214 (e : Env 3) (h0 : e 0 = 2) : Typed Op4b638b5bed78.G e lit17 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q28 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q28 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q28 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q28 (push 3 e) h0).weaken _ (by decide)
theorem q215 (e : Env 3) (h0 : e 0 = 3) : Typed Op4b638b5bed78.G e lit17 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q39 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q39 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q39 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q39 (push 3 e) h0).weaken _ (by decide)
theorem q216 (e : Env 3)  : Typed Op4b638b5bed78.G e lit18 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q212 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q213 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q214 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q215 (push 3 e) rfl).weaken _ (by decide)
theorem q217 (e : Env 3) (h0 : e 0 = 0) : Typed Op4b638b5bed78.G e lit19 0 := .app (q0 e h0) (q216 e) (by decide)
theorem q218 (e : Env 3)  : Typed Op4b638b5bed78.G e lit20 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q0 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q7 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q10 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q13 (push 3 e) rfl).weaken _ (by decide)
theorem q219 (e : Env 3)  : Typed Op4b638b5bed78.G e lit21 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q218 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q218 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q218 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q218 (push 3 e)).weaken _ (by decide)
theorem q220 (e : Env 3) (h0 : e 0 = 0) : Typed Op4b638b5bed78.G e lit22 0 := .app (q0 e h0) (q219 e) (by decide)
theorem q221 (e : Env 3) (h4 : e 4 = 3) : Typed Op4b638b5bed78.G e lit23 3 := .var _ _ (by rw [h4]; decide)
theorem q222 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 3) : Typed Op4b638b5bed78.G e lit24 0 := .app (q217 e h0) (q221 e h4) (by decide)
theorem q223 (e : Env 3) (h0 : e 0 = 1) : Typed Op4b638b5bed78.G e lit19 2 := .app (q7 e h0) (q216 e) (by decide)
theorem q224 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 3) : Typed Op4b638b5bed78.G e lit24 3 := .app (q223 e h0) (q221 e h4) (by decide)
theorem q225 (e : Env 3) (h0 : e 0 = 2) : Typed Op4b638b5bed78.G e lit19 3 := .app (q10 e h0) (q216 e) (by decide)
theorem q226 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 3) : Typed Op4b638b5bed78.G e lit24 3 := .app (q225 e h0) (q221 e h4) (by decide)
theorem q227 (e : Env 3) (h0 : e 0 = 3) : Typed Op4b638b5bed78.G e lit19 3 := .app (q13 e h0) (q216 e) (by decide)
theorem q228 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 3) : Typed Op4b638b5bed78.G e lit24 3 := .app (q227 e h0) (q221 e h4) (by decide)
theorem q229 (e : Env 3) (h3 : e 3 = 3) : Typed Op4b638b5bed78.G e lit25 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q222 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q224 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q226 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q228 (push 3 e) rfl h3).weaken _ (by decide)
theorem q230 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 3) : Typed Op4b638b5bed78.G e lit26 0 := .app (q220 e h0) (q229 e h3) (by decide)
theorem q231 (e : Env 3) (h0 : e 0 = 1) : Typed Op4b638b5bed78.G e lit22 2 := .app (q7 e h0) (q219 e) (by decide)
theorem q232 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 3) : Typed Op4b638b5bed78.G e lit26 3 := .app (q231 e h0) (q229 e h3) (by decide)
theorem q233 (e : Env 3) (h0 : e 0 = 2) : Typed Op4b638b5bed78.G e lit22 3 := .app (q10 e h0) (q219 e) (by decide)
theorem q234 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 3) : Typed Op4b638b5bed78.G e lit26 3 := .app (q233 e h0) (q229 e h3) (by decide)
theorem q235 (e : Env 3) (h0 : e 0 = 3) : Typed Op4b638b5bed78.G e lit22 3 := .app (q13 e h0) (q219 e) (by decide)
theorem q236 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 3) : Typed Op4b638b5bed78.G e lit26 3 := .app (q235 e h0) (q229 e h3) (by decide)
theorem q237 (e : Env 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit27 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q230 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q232 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q234 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q236 (push 3 e) rfl h2).weaken _ (by decide)
theorem q238 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit28 0 := .app (q217 e h0) (q237 e h2) (by decide)
theorem q239 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit28 3 := .app (q223 e h0) (q237 e h2) (by decide)
theorem q240 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit28 3 := .app (q225 e h0) (q237 e h2) (by decide)
theorem q241 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit28 3 := .app (q227 e h0) (q237 e h2) (by decide)
theorem q242 (e : Env 3) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit29 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q238 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q239 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q240 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q241 (push 3 e) rfl h1).weaken _ (by decide)
theorem q243 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit30 0 := .app (q217 e h0) (q242 e h1) (by decide)
theorem q244 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit30 3 := .app (q223 e h0) (q242 e h1) (by decide)
theorem q245 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit30 3 := .app (q225 e h0) (q242 e h1) (by decide)
theorem q246 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit30 3 := .app (q227 e h0) (q242 e h1) (by decide)
theorem q247 (e : Env 3) (h0 : e 0 = 3) : Typed Op4b638b5bed78.G e lit31 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q243 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q244 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q245 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q246 (push 3 e) rfl h0).weaken _ (by decide)
theorem q248 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op4b638b5bed78.G e lit32 2 := .app (q211 e h1) (q247 e h0) (by decide)
end Blc.Floor45.Probe9646874151898
