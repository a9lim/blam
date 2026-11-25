import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9540465259738D0

set_option Elab.async false
namespace Blc.Floor45.Probe9540465259738
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q165 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 0 := .app (q164 e h0 h1 h2) (q7 e h0) (by decide)
theorem q166 (e : Env 4) (h0 : e 0 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit2 1 := .app (q159 e h2) (q12 e h0) (by decide)
theorem q167 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 1 := .app (q166 e h0 h2) (q14 e h0 h1) (by decide)
theorem q168 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q167 e h0 h1 h2) (q12 e h0) (by decide)
theorem q169 (e : Env 4) (h0 : e 0 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit2 2 := .app (q159 e h2) (q17 e h0) (by decide)
theorem q170 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 1 := .app (q169 e h0 h2) (q19 e h0 h1) (by decide)
theorem q171 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q170 e h0 h1 h2) (q17 e h0) (by decide)
theorem q172 (e : Env 4) (h0 : e 0 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit2 4 := .app (q159 e h2) (q22 e h0) (by decide)
theorem q173 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 4 := .app (q172 e h0 h2) (q24 e h0 h1) (by decide)
theorem q174 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q173 e h0 h1 h2) (q22 e h0) (by decide)
theorem q175 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q162 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q165 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q168 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q171 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q174 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q176 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 0 := .app (q160 e h0 h2) (q29 e h0 h1) (by decide)
theorem q177 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 0 := .app (q176 e h0 h1 h2) (q1 e h0) (by decide)
theorem q178 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 1 := .app (q163 e h0 h2) (q32 e h0 h1) (by decide)
theorem q179 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q178 e h0 h1 h2) (q7 e h0) (by decide)
theorem q180 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 1 := .app (q166 e h0 h2) (q35 e h0 h1) (by decide)
theorem q181 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q180 e h0 h1 h2) (q12 e h0) (by decide)
theorem q182 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 1 := .app (q169 e h0 h2) (q38 e h0 h1) (by decide)
theorem q183 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q182 e h0 h1 h2) (q17 e h0) (by decide)
theorem q184 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 4 := .app (q172 e h0 h2) (q41 e h0 h1) (by decide)
theorem q185 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q184 e h0 h1 h2) (q22 e h0) (by decide)
theorem q186 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q177 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q179 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q181 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q183 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q185 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q187 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 0 := .app (q160 e h0 h2) (q46 e h0 h1) (by decide)
theorem q188 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 0 := .app (q187 e h0 h1 h2) (q1 e h0) (by decide)
theorem q189 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 1 := .app (q163 e h0 h2) (q49 e h0 h1) (by decide)
theorem q190 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q189 e h0 h1 h2) (q7 e h0) (by decide)
theorem q191 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 1 := .app (q166 e h0 h2) (q52 e h0 h1) (by decide)
theorem q192 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q191 e h0 h1 h2) (q12 e h0) (by decide)
theorem q193 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 1 := .app (q169 e h0 h2) (q55 e h0 h1) (by decide)
theorem q194 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q193 e h0 h1 h2) (q17 e h0) (by decide)
theorem q195 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 4 := .app (q172 e h0 h2) (q58 e h0 h1) (by decide)
theorem q196 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q195 e h0 h1 h2) (q22 e h0) (by decide)
theorem q197 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q188 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q190 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q192 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q194 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q196 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q198 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 0 := .app (q160 e h0 h2) (q63 e h0 h1) (by decide)
theorem q199 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 0 := .app (q198 e h0 h1 h2) (q1 e h0) (by decide)
theorem q200 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 1 := .app (q163 e h0 h2) (q66 e h0 h1) (by decide)
theorem q201 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q200 e h0 h1 h2) (q7 e h0) (by decide)
theorem q202 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 1 := .app (q166 e h0 h2) (q69 e h0 h1) (by decide)
theorem q203 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q202 e h0 h1 h2) (q12 e h0) (by decide)
theorem q204 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 1 := .app (q169 e h0 h2) (q72 e h0 h1) (by decide)
theorem q205 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q204 e h0 h1 h2) (q17 e h0) (by decide)
theorem q206 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 4 := .app (q172 e h0 h2) (q75 e h0 h1) (by decide)
theorem q207 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q206 e h0 h1 h2) (q22 e h0) (by decide)
theorem q208 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q199 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q201 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q203 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q205 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q207 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q209 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 1 := .app (q160 e h0 h2) (q80 e h0 h1) (by decide)
theorem q210 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 0 := .app (q209 e h0 h1 h2) (q1 e h0) (by decide)
theorem q211 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 4 := .app (q163 e h0 h2) (q83 e h0 h1) (by decide)
theorem q212 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q211 e h0 h1 h2) (q7 e h0) (by decide)
theorem q213 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 4 := .app (q166 e h0 h2) (q86 e h0 h1) (by decide)
theorem q214 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q213 e h0 h1 h2) (q12 e h0) (by decide)
theorem q215 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 4 := .app (q169 e h0 h2) (q89 e h0 h1) (by decide)
theorem q216 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q215 e h0 h1 h2) (q17 e h0) (by decide)
theorem q217 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 4 := .app (q172 e h0 h2) (q92 e h0 h1) (by decide)
theorem q218 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q217 e h0 h1 h2) (q22 e h0) (by decide)
theorem q219 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q210 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q212 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q214 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q216 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q218 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q220 (e : Env 4) (h0 : e 0 = 2) : Typed Op64d01e7a837a.G e lit8 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q175 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q186 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q197 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q208 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q219 (push 4 e) rfl h0).weaken _ (by decide)
theorem q221 (e : Env 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit0 3 := .var _ _ (by rw [h2]; decide)
theorem q222 (e : Env 4) (h0 : e 0 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit2 2 := .app (q221 e h2) (q1 e h0) (by decide)
theorem q223 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 1 := .app (q222 e h0 h2) (q4 e h0 h1) (by decide)
theorem q224 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 0 := .app (q223 e h0 h1 h2) (q1 e h0) (by decide)
theorem q225 (e : Env 4) (h0 : e 0 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit2 2 := .app (q221 e h2) (q7 e h0) (by decide)
theorem q226 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 1 := .app (q225 e h0 h2) (q9 e h0 h1) (by decide)
theorem q227 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q226 e h0 h1 h2) (q7 e h0) (by decide)
theorem q228 (e : Env 4) (h0 : e 0 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit2 2 := .app (q221 e h2) (q12 e h0) (by decide)
theorem q229 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 1 := .app (q228 e h0 h2) (q14 e h0 h1) (by decide)
theorem q230 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q229 e h0 h1 h2) (q12 e h0) (by decide)
theorem q231 (e : Env 4) (h0 : e 0 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit2 2 := .app (q221 e h2) (q17 e h0) (by decide)
theorem q232 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 1 := .app (q231 e h0 h2) (q19 e h0 h1) (by decide)
theorem q233 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q232 e h0 h1 h2) (q17 e h0) (by decide)
theorem q234 (e : Env 4) (h0 : e 0 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit2 4 := .app (q221 e h2) (q22 e h0) (by decide)
theorem q235 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 4 := .app (q234 e h0 h2) (q24 e h0 h1) (by decide)
theorem q236 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q235 e h0 h1 h2) (q22 e h0) (by decide)
theorem q237 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q224 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q227 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q230 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q233 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q236 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q238 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 1 := .app (q222 e h0 h2) (q29 e h0 h1) (by decide)
theorem q239 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 0 := .app (q238 e h0 h1 h2) (q1 e h0) (by decide)
theorem q240 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 1 := .app (q225 e h0 h2) (q32 e h0 h1) (by decide)
theorem q241 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q240 e h0 h1 h2) (q7 e h0) (by decide)
theorem q242 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 1 := .app (q228 e h0 h2) (q35 e h0 h1) (by decide)
theorem q243 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q242 e h0 h1 h2) (q12 e h0) (by decide)
theorem q244 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 1 := .app (q231 e h0 h2) (q38 e h0 h1) (by decide)
theorem q245 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q244 e h0 h1 h2) (q17 e h0) (by decide)
theorem q246 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 4 := .app (q234 e h0 h2) (q41 e h0 h1) (by decide)
theorem q247 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q246 e h0 h1 h2) (q22 e h0) (by decide)
theorem q248 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q239 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q241 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q243 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q245 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q247 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q249 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 1 := .app (q222 e h0 h2) (q46 e h0 h1) (by decide)
theorem q250 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 0 := .app (q249 e h0 h1 h2) (q1 e h0) (by decide)
theorem q251 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 1 := .app (q225 e h0 h2) (q49 e h0 h1) (by decide)
theorem q252 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q251 e h0 h1 h2) (q7 e h0) (by decide)
theorem q253 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 1 := .app (q228 e h0 h2) (q52 e h0 h1) (by decide)
theorem q254 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q253 e h0 h1 h2) (q12 e h0) (by decide)
theorem q255 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 1 := .app (q231 e h0 h2) (q55 e h0 h1) (by decide)
theorem q256 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q255 e h0 h1 h2) (q17 e h0) (by decide)
theorem q257 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 4 := .app (q234 e h0 h2) (q58 e h0 h1) (by decide)
theorem q258 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q257 e h0 h1 h2) (q22 e h0) (by decide)
theorem q259 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q250 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q252 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q254 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q256 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q258 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q260 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 1 := .app (q222 e h0 h2) (q63 e h0 h1) (by decide)
theorem q261 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 0 := .app (q260 e h0 h1 h2) (q1 e h0) (by decide)
theorem q262 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 1 := .app (q225 e h0 h2) (q66 e h0 h1) (by decide)
theorem q263 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q262 e h0 h1 h2) (q7 e h0) (by decide)
theorem q264 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 1 := .app (q228 e h0 h2) (q69 e h0 h1) (by decide)
theorem q265 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q264 e h0 h1 h2) (q12 e h0) (by decide)
theorem q266 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 1 := .app (q231 e h0 h2) (q72 e h0 h1) (by decide)
theorem q267 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q266 e h0 h1 h2) (q17 e h0) (by decide)
theorem q268 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 4 := .app (q234 e h0 h2) (q75 e h0 h1) (by decide)
theorem q269 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q268 e h0 h1 h2) (q22 e h0) (by decide)
theorem q270 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q261 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q263 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q265 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q267 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q269 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q271 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 1 := .app (q222 e h0 h2) (q80 e h0 h1) (by decide)
theorem q272 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 0 := .app (q271 e h0 h1 h2) (q1 e h0) (by decide)
theorem q273 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 4 := .app (q225 e h0 h2) (q83 e h0 h1) (by decide)
theorem q274 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q273 e h0 h1 h2) (q7 e h0) (by decide)
theorem q275 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 4 := .app (q228 e h0 h2) (q86 e h0 h1) (by decide)
theorem q276 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q275 e h0 h1 h2) (q12 e h0) (by decide)
theorem q277 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 4 := .app (q231 e h0 h2) (q89 e h0 h1) (by decide)
theorem q278 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q277 e h0 h1 h2) (q17 e h0) (by decide)
theorem q279 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 4 := .app (q234 e h0 h2) (q92 e h0 h1) (by decide)
theorem q280 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q279 e h0 h1 h2) (q22 e h0) (by decide)
theorem q281 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q272 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q274 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q276 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q278 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q280 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q282 (e : Env 4) (h0 : e 0 = 3) : Typed Op64d01e7a837a.G e lit8 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q237 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q248 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q259 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q270 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q281 (push 4 e) rfl h0).weaken _ (by decide)
theorem q283 (e : Env 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit0 4 := .var _ _ (by rw [h2]; decide)
theorem q284 (e : Env 4) (h0 : e 0 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit2 4 := .app (q283 e h2) (q1 e h0) (by decide)
theorem q285 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit5 4 := .app (q284 e h0 h2) (q4 e h0 h1) (by decide)
theorem q286 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q285 e h0 h1 h2) (q1 e h0) (by decide)
theorem q287 (e : Env 4) (h0 : e 0 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit2 4 := .app (q283 e h2) (q7 e h0) (by decide)
theorem q288 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit5 4 := .app (q287 e h0 h2) (q9 e h0 h1) (by decide)
theorem q289 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q288 e h0 h1 h2) (q7 e h0) (by decide)
theorem q290 (e : Env 4) (h0 : e 0 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit2 4 := .app (q283 e h2) (q12 e h0) (by decide)
theorem q291 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit5 4 := .app (q290 e h0 h2) (q14 e h0 h1) (by decide)
theorem q292 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q291 e h0 h1 h2) (q12 e h0) (by decide)
theorem q293 (e : Env 4) (h0 : e 0 = 3) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit2 4 := .app (q283 e h2) (q17 e h0) (by decide)
theorem q294 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit5 4 := .app (q293 e h0 h2) (q19 e h0 h1) (by decide)
theorem q295 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q294 e h0 h1 h2) (q17 e h0) (by decide)
theorem q296 (e : Env 4) (h0 : e 0 = 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit2 4 := .app (q283 e h2) (q22 e h0) (by decide)
theorem q297 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit5 4 := .app (q296 e h0 h2) (q24 e h0 h1) (by decide)
theorem q298 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q297 e h0 h1 h2) (q22 e h0) (by decide)
theorem q299 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q286 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q289 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q292 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q295 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q298 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q300 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit5 4 := .app (q284 e h0 h2) (q29 e h0 h1) (by decide)
theorem q301 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q300 e h0 h1 h2) (q1 e h0) (by decide)
theorem q302 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit5 4 := .app (q287 e h0 h2) (q32 e h0 h1) (by decide)
theorem q303 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q302 e h0 h1 h2) (q7 e h0) (by decide)
theorem q304 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit5 4 := .app (q290 e h0 h2) (q35 e h0 h1) (by decide)
theorem q305 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q304 e h0 h1 h2) (q12 e h0) (by decide)
theorem q306 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit5 4 := .app (q293 e h0 h2) (q38 e h0 h1) (by decide)
theorem q307 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q306 e h0 h1 h2) (q17 e h0) (by decide)
theorem q308 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit5 4 := .app (q296 e h0 h2) (q41 e h0 h1) (by decide)
theorem q309 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q308 e h0 h1 h2) (q22 e h0) (by decide)
theorem q310 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q301 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q303 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q305 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q307 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q309 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q311 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit5 4 := .app (q284 e h0 h2) (q46 e h0 h1) (by decide)
theorem q312 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q311 e h0 h1 h2) (q1 e h0) (by decide)
theorem q313 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit5 4 := .app (q287 e h0 h2) (q49 e h0 h1) (by decide)
theorem q314 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q313 e h0 h1 h2) (q7 e h0) (by decide)
theorem q315 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit5 4 := .app (q290 e h0 h2) (q52 e h0 h1) (by decide)
theorem q316 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q315 e h0 h1 h2) (q12 e h0) (by decide)
theorem q317 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit5 4 := .app (q293 e h0 h2) (q55 e h0 h1) (by decide)
theorem q318 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q317 e h0 h1 h2) (q17 e h0) (by decide)
theorem q319 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit5 4 := .app (q296 e h0 h2) (q58 e h0 h1) (by decide)
theorem q320 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q319 e h0 h1 h2) (q22 e h0) (by decide)
theorem q321 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q312 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q314 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q316 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q318 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q320 (push 4 e) rfl h0 h1).weaken _ (by decide)
end Blc.Floor45.Probe9540465259738
