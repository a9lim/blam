import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9540465257370D0

set_option Elab.async false
namespace Blc.Floor45.Probe9540465257370
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q166 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 0 := .app (q29 e h0 h1) (q154 e h2) (by decide)
theorem q167 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 0 := .app (q166 e h0 h1 h2) (q5 e h0) (by decide)
theorem q168 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 1 := .app (q32 e h0 h1) (q154 e h2) (by decide)
theorem q169 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q168 e h0 h1 h2) (q10 e h0) (by decide)
theorem q170 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 1 := .app (q35 e h0 h1) (q154 e h2) (by decide)
theorem q171 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q170 e h0 h1 h2) (q15 e h0) (by decide)
theorem q172 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 1 := .app (q38 e h0 h1) (q154 e h2) (by decide)
theorem q173 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q172 e h0 h1 h2) (q20 e h0) (by decide)
theorem q174 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 4 := .app (q41 e h0 h1) (q154 e h2) (by decide)
theorem q175 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q174 e h0 h1 h2) (q25 e h0) (by decide)
theorem q176 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q167 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q169 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q171 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q173 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q175 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q177 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 1 := .app (q46 e h0 h1) (q154 e h2) (by decide)
theorem q178 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 0 := .app (q177 e h0 h1 h2) (q5 e h0) (by decide)
theorem q179 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 1 := .app (q49 e h0 h1) (q154 e h2) (by decide)
theorem q180 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q179 e h0 h1 h2) (q10 e h0) (by decide)
theorem q181 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 1 := .app (q52 e h0 h1) (q154 e h2) (by decide)
theorem q182 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q181 e h0 h1 h2) (q15 e h0) (by decide)
theorem q183 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 1 := .app (q55 e h0 h1) (q154 e h2) (by decide)
theorem q184 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q183 e h0 h1 h2) (q20 e h0) (by decide)
theorem q185 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 4 := .app (q58 e h0 h1) (q154 e h2) (by decide)
theorem q186 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q185 e h0 h1 h2) (q25 e h0) (by decide)
theorem q187 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q178 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q180 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q182 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q184 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q186 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q188 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 1 := .app (q63 e h0 h1) (q154 e h2) (by decide)
theorem q189 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 0 := .app (q188 e h0 h1 h2) (q5 e h0) (by decide)
theorem q190 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 1 := .app (q66 e h0 h1) (q154 e h2) (by decide)
theorem q191 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q190 e h0 h1 h2) (q10 e h0) (by decide)
theorem q192 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 1 := .app (q69 e h0 h1) (q154 e h2) (by decide)
theorem q193 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q192 e h0 h1 h2) (q15 e h0) (by decide)
theorem q194 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 1 := .app (q72 e h0 h1) (q154 e h2) (by decide)
theorem q195 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q194 e h0 h1 h2) (q20 e h0) (by decide)
theorem q196 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 4 := .app (q75 e h0 h1) (q154 e h2) (by decide)
theorem q197 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q196 e h0 h1 h2) (q25 e h0) (by decide)
theorem q198 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q189 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q191 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q193 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q195 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q197 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q199 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 4 := .app (q80 e h0 h1) (q154 e h2) (by decide)
theorem q200 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q199 e h0 h1 h2) (q5 e h0) (by decide)
theorem q201 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 4 := .app (q83 e h0 h1) (q154 e h2) (by decide)
theorem q202 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q201 e h0 h1 h2) (q10 e h0) (by decide)
theorem q203 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 4 := .app (q86 e h0 h1) (q154 e h2) (by decide)
theorem q204 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q203 e h0 h1 h2) (q15 e h0) (by decide)
theorem q205 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 4 := .app (q89 e h0 h1) (q154 e h2) (by decide)
theorem q206 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q205 e h0 h1 h2) (q20 e h0) (by decide)
theorem q207 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit4 4 := .app (q92 e h0 h1) (q154 e h2) (by decide)
theorem q208 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q207 e h0 h1 h2) (q25 e h0) (by decide)
theorem q209 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q200 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q202 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q204 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q206 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q208 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q210 (e : Env 4) (h0 : e 0 = 2) : Typed Op64d01e7a837a.G e lit8 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q165 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q176 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q187 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q198 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q209 (push 4 e) rfl h0).weaken _ (by decide)
theorem q211 (e : Env 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit3 3 := .var _ _ (by rw [h2]; decide)
theorem q212 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 0 := .app (q2 e h0 h1) (q211 e h2) (by decide)
theorem q213 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 0 := .app (q212 e h0 h1 h2) (q5 e h0) (by decide)
theorem q214 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 0 := .app (q8 e h0 h1) (q211 e h2) (by decide)
theorem q215 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 0 := .app (q214 e h0 h1 h2) (q10 e h0) (by decide)
theorem q216 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 0 := .app (q13 e h0 h1) (q211 e h2) (by decide)
theorem q217 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 0 := .app (q216 e h0 h1 h2) (q15 e h0) (by decide)
theorem q218 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 0 := .app (q18 e h0 h1) (q211 e h2) (by decide)
theorem q219 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 0 := .app (q218 e h0 h1 h2) (q20 e h0) (by decide)
theorem q220 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 2 := .app (q23 e h0 h1) (q211 e h2) (by decide)
theorem q221 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q220 e h0 h1 h2) (q25 e h0) (by decide)
theorem q222 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q213 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q215 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q217 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q219 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q221 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q223 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 0 := .app (q29 e h0 h1) (q211 e h2) (by decide)
theorem q224 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 0 := .app (q223 e h0 h1 h2) (q5 e h0) (by decide)
theorem q225 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 1 := .app (q32 e h0 h1) (q211 e h2) (by decide)
theorem q226 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q225 e h0 h1 h2) (q10 e h0) (by decide)
theorem q227 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 1 := .app (q35 e h0 h1) (q211 e h2) (by decide)
theorem q228 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q227 e h0 h1 h2) (q15 e h0) (by decide)
theorem q229 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 1 := .app (q38 e h0 h1) (q211 e h2) (by decide)
theorem q230 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q229 e h0 h1 h2) (q20 e h0) (by decide)
theorem q231 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 4 := .app (q41 e h0 h1) (q211 e h2) (by decide)
theorem q232 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q231 e h0 h1 h2) (q25 e h0) (by decide)
theorem q233 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q224 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q226 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q228 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q230 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q232 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q234 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 1 := .app (q46 e h0 h1) (q211 e h2) (by decide)
theorem q235 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 0 := .app (q234 e h0 h1 h2) (q5 e h0) (by decide)
theorem q236 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 1 := .app (q49 e h0 h1) (q211 e h2) (by decide)
theorem q237 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q236 e h0 h1 h2) (q10 e h0) (by decide)
theorem q238 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 1 := .app (q52 e h0 h1) (q211 e h2) (by decide)
theorem q239 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q238 e h0 h1 h2) (q15 e h0) (by decide)
theorem q240 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 2 := .app (q55 e h0 h1) (q211 e h2) (by decide)
theorem q241 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q240 e h0 h1 h2) (q20 e h0) (by decide)
theorem q242 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 4 := .app (q58 e h0 h1) (q211 e h2) (by decide)
theorem q243 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q242 e h0 h1 h2) (q25 e h0) (by decide)
theorem q244 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q235 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q237 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q239 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q241 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q243 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q245 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 2 := .app (q63 e h0 h1) (q211 e h2) (by decide)
theorem q246 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q245 e h0 h1 h2) (q5 e h0) (by decide)
theorem q247 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 2 := .app (q66 e h0 h1) (q211 e h2) (by decide)
theorem q248 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q247 e h0 h1 h2) (q10 e h0) (by decide)
theorem q249 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 2 := .app (q69 e h0 h1) (q211 e h2) (by decide)
theorem q250 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q249 e h0 h1 h2) (q15 e h0) (by decide)
theorem q251 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 2 := .app (q72 e h0 h1) (q211 e h2) (by decide)
theorem q252 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q251 e h0 h1 h2) (q20 e h0) (by decide)
theorem q253 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 4 := .app (q75 e h0 h1) (q211 e h2) (by decide)
theorem q254 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q253 e h0 h1 h2) (q25 e h0) (by decide)
theorem q255 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q246 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q248 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q250 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q252 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q254 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q256 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 4 := .app (q80 e h0 h1) (q211 e h2) (by decide)
theorem q257 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q256 e h0 h1 h2) (q5 e h0) (by decide)
theorem q258 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 4 := .app (q83 e h0 h1) (q211 e h2) (by decide)
theorem q259 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q258 e h0 h1 h2) (q10 e h0) (by decide)
theorem q260 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 4 := .app (q86 e h0 h1) (q211 e h2) (by decide)
theorem q261 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q260 e h0 h1 h2) (q15 e h0) (by decide)
theorem q262 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 4 := .app (q89 e h0 h1) (q211 e h2) (by decide)
theorem q263 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q262 e h0 h1 h2) (q20 e h0) (by decide)
theorem q264 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit4 4 := .app (q92 e h0 h1) (q211 e h2) (by decide)
theorem q265 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q264 e h0 h1 h2) (q25 e h0) (by decide)
theorem q266 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q257 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q259 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q261 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q263 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q265 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q267 (e : Env 4) (h0 : e 0 = 3) : Typed Op64d01e7a837a.G e lit8 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q222 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q233 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q244 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q255 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q266 (push 4 e) rfl h0).weaken _ (by decide)
theorem q268 (e : Env 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit3 4 := .var _ _ (by rw [h2]; decide)
theorem q269 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 2 := .app (q2 e h0 h1) (q268 e h2) (by decide)
theorem q270 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 1 := .app (q269 e h0 h1 h2) (q5 e h0) (by decide)
theorem q271 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 2 := .app (q8 e h0 h1) (q268 e h2) (by decide)
theorem q272 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 1 := .app (q271 e h0 h1 h2) (q10 e h0) (by decide)
theorem q273 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 2 := .app (q13 e h0 h1) (q268 e h2) (by decide)
theorem q274 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 1 := .app (q273 e h0 h1 h2) (q15 e h0) (by decide)
theorem q275 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 2 := .app (q18 e h0 h1) (q268 e h2) (by decide)
theorem q276 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 1 := .app (q275 e h0 h1 h2) (q20 e h0) (by decide)
theorem q277 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q23 e h0 h1) (q268 e h2) (by decide)
theorem q278 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q277 e h0 h1 h2) (q25 e h0) (by decide)
theorem q279 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q270 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q272 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q274 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q276 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q278 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q280 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 2 := .app (q29 e h0 h1) (q268 e h2) (by decide)
theorem q281 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 1 := .app (q280 e h0 h1 h2) (q5 e h0) (by decide)
theorem q282 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q32 e h0 h1) (q268 e h2) (by decide)
theorem q283 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q282 e h0 h1 h2) (q10 e h0) (by decide)
theorem q284 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q35 e h0 h1) (q268 e h2) (by decide)
theorem q285 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q284 e h0 h1 h2) (q15 e h0) (by decide)
theorem q286 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q38 e h0 h1) (q268 e h2) (by decide)
theorem q287 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q286 e h0 h1 h2) (q20 e h0) (by decide)
theorem q288 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q41 e h0 h1) (q268 e h2) (by decide)
theorem q289 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q288 e h0 h1 h2) (q25 e h0) (by decide)
theorem q290 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q281 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q283 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q285 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q287 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q289 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q291 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q46 e h0 h1) (q268 e h2) (by decide)
theorem q292 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q291 e h0 h1 h2) (q5 e h0) (by decide)
theorem q293 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q49 e h0 h1) (q268 e h2) (by decide)
theorem q294 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q293 e h0 h1 h2) (q10 e h0) (by decide)
theorem q295 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q52 e h0 h1) (q268 e h2) (by decide)
theorem q296 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q295 e h0 h1 h2) (q15 e h0) (by decide)
theorem q297 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q55 e h0 h1) (q268 e h2) (by decide)
theorem q298 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q297 e h0 h1 h2) (q20 e h0) (by decide)
theorem q299 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q58 e h0 h1) (q268 e h2) (by decide)
theorem q300 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q299 e h0 h1 h2) (q25 e h0) (by decide)
theorem q301 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q292 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q294 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q296 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q298 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q300 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q302 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q63 e h0 h1) (q268 e h2) (by decide)
theorem q303 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q302 e h0 h1 h2) (q5 e h0) (by decide)
theorem q304 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q66 e h0 h1) (q268 e h2) (by decide)
theorem q305 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q304 e h0 h1 h2) (q10 e h0) (by decide)
theorem q306 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q69 e h0 h1) (q268 e h2) (by decide)
theorem q307 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q306 e h0 h1 h2) (q15 e h0) (by decide)
theorem q308 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q72 e h0 h1) (q268 e h2) (by decide)
theorem q309 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q308 e h0 h1 h2) (q20 e h0) (by decide)
theorem q310 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q75 e h0 h1) (q268 e h2) (by decide)
theorem q311 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q310 e h0 h1 h2) (q25 e h0) (by decide)
theorem q312 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q303 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q305 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q307 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q309 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q311 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q313 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q80 e h0 h1) (q268 e h2) (by decide)
theorem q314 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q313 e h0 h1 h2) (q5 e h0) (by decide)
theorem q315 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q83 e h0 h1) (q268 e h2) (by decide)
theorem q316 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q315 e h0 h1 h2) (q10 e h0) (by decide)
theorem q317 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q86 e h0 h1) (q268 e h2) (by decide)
theorem q318 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q317 e h0 h1 h2) (q15 e h0) (by decide)
theorem q319 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q89 e h0 h1) (q268 e h2) (by decide)
end Blc.Floor45.Probe9540465257370
