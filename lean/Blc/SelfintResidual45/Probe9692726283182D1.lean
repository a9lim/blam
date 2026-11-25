import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9692726283182D0

set_option Elab.async false
namespace Blc.Floor45.Probe9692726283182
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q169 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q68 e h0 h1) (q129 e h2) (by decide)
theorem q170 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q169 e h0 h1 h2) (by decide)
theorem q171 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q71 e h0 h1) (q129 e h2) (by decide)
theorem q172 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q171 e h0 h1 h2) (by decide)
theorem q173 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q74 e h0 h1) (q129 e h2) (by decide)
theorem q174 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q173 e h0 h1 h2) (by decide)
theorem q175 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q77 e h0 h1) (q129 e h2) (by decide)
theorem q176 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q175 e h0 h1 h2) (by decide)
theorem q177 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q80 e h0 h1) (q129 e h2) (by decide)
theorem q178 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q177 e h0 h1 h2) (by decide)
theorem q179 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q83 e h0 h1) (q129 e h2) (by decide)
theorem q180 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q179 e h0 h1 h2) (by decide)
theorem q181 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q170 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q172 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q174 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q176 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q178 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q180 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q182 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q88 e h0 h1) (q129 e h2) (by decide)
theorem q183 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q182 e h0 h1 h2) (by decide)
theorem q184 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q91 e h0 h1) (q129 e h2) (by decide)
theorem q185 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q184 e h0 h1 h2) (by decide)
theorem q186 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q94 e h0 h1) (q129 e h2) (by decide)
theorem q187 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q186 e h0 h1 h2) (by decide)
theorem q188 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q97 e h0 h1) (q129 e h2) (by decide)
theorem q189 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q188 e h0 h1 h2) (by decide)
theorem q190 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q100 e h0 h1) (q129 e h2) (by decide)
theorem q191 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q190 e h0 h1 h2) (by decide)
theorem q192 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q103 e h0 h1) (q129 e h2) (by decide)
theorem q193 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q192 e h0 h1 h2) (by decide)
theorem q194 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q183 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q185 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q187 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q189 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q191 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q193 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q195 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 5) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q108 e h0 h1) (q129 e h2) (by decide)
theorem q196 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 5) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q195 e h0 h1 h2) (by decide)
theorem q197 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 5) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q111 e h0 h1) (q129 e h2) (by decide)
theorem q198 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 5) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q197 e h0 h1 h2) (by decide)
theorem q199 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 5) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q114 e h0 h1) (q129 e h2) (by decide)
theorem q200 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 5) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q199 e h0 h1 h2) (by decide)
theorem q201 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 5) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q117 e h0 h1) (q129 e h2) (by decide)
theorem q202 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 5) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q201 e h0 h1 h2) (by decide)
theorem q203 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 5) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q120 e h0 h1) (q129 e h2) (by decide)
theorem q204 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 5) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q203 e h0 h1 h2) (by decide)
theorem q205 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 5) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q123 e h0 h1) (q129 e h2) (by decide)
theorem q206 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 5) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q205 e h0 h1 h2) (by decide)
theorem q207 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q196 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q198 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q200 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q202 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q204 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q206 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q208 (e : Env 5) (h0 : e 0 = 1) : Typed Ope9b1a410bea0.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q142 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q155 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q168 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q181 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q194 (push 4 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q207 (push 5 e) rfl h0).weaken _ (by decide)
theorem q209 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit8 1 := .app (q1 e h1) (q208 e h0) (by decide)
theorem q210 (e : Env 5) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit3 2 := .var _ _ (by rw [h2]; decide)
theorem q211 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q2 e h0 h1) (q210 e h2) (by decide)
theorem q212 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q211 e h0 h1 h2) (by decide)
theorem q213 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q7 e h0 h1) (q210 e h2) (by decide)
theorem q214 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q213 e h0 h1 h2) (by decide)
theorem q215 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q11 e h0 h1) (q210 e h2) (by decide)
theorem q216 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q215 e h0 h1 h2) (by decide)
theorem q217 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q15 e h0 h1) (q210 e h2) (by decide)
theorem q218 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q217 e h0 h1 h2) (by decide)
theorem q219 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q19 e h0 h1) (q210 e h2) (by decide)
theorem q220 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q219 e h0 h1 h2) (by decide)
theorem q221 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q23 e h0 h1) (q210 e h2) (by decide)
theorem q222 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q221 e h0 h1 h2) (by decide)
theorem q223 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit6 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q212 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q214 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q216 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q218 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q220 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q222 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q224 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q28 e h0 h1) (q210 e h2) (by decide)
theorem q225 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q224 e h0 h1 h2) (by decide)
theorem q226 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q31 e h0 h1) (q210 e h2) (by decide)
theorem q227 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q226 e h0 h1 h2) (by decide)
theorem q228 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q34 e h0 h1) (q210 e h2) (by decide)
theorem q229 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q228 e h0 h1 h2) (by decide)
theorem q230 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q37 e h0 h1) (q210 e h2) (by decide)
theorem q231 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q230 e h0 h1 h2) (by decide)
theorem q232 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q40 e h0 h1) (q210 e h2) (by decide)
theorem q233 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q232 e h0 h1 h2) (by decide)
theorem q234 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q43 e h0 h1) (q210 e h2) (by decide)
theorem q235 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q234 e h0 h1 h2) (by decide)
theorem q236 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit6 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q225 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q227 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q229 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q231 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q233 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q235 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q237 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q48 e h0 h1) (q210 e h2) (by decide)
theorem q238 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q237 e h0 h1 h2) (by decide)
theorem q239 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q51 e h0 h1) (q210 e h2) (by decide)
theorem q240 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q239 e h0 h1 h2) (by decide)
theorem q241 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q54 e h0 h1) (q210 e h2) (by decide)
theorem q242 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q241 e h0 h1 h2) (by decide)
theorem q243 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q57 e h0 h1) (q210 e h2) (by decide)
theorem q244 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q243 e h0 h1 h2) (by decide)
theorem q245 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q60 e h0 h1) (q210 e h2) (by decide)
theorem q246 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q245 e h0 h1 h2) (by decide)
theorem q247 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q63 e h0 h1) (q210 e h2) (by decide)
theorem q248 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q247 e h0 h1 h2) (by decide)
theorem q249 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q238 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q240 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q242 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q244 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q246 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q248 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q250 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q68 e h0 h1) (q210 e h2) (by decide)
theorem q251 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q250 e h0 h1 h2) (by decide)
theorem q252 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q71 e h0 h1) (q210 e h2) (by decide)
theorem q253 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q252 e h0 h1 h2) (by decide)
theorem q254 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q74 e h0 h1) (q210 e h2) (by decide)
theorem q255 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q254 e h0 h1 h2) (by decide)
theorem q256 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q77 e h0 h1) (q210 e h2) (by decide)
theorem q257 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q256 e h0 h1 h2) (by decide)
theorem q258 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q80 e h0 h1) (q210 e h2) (by decide)
theorem q259 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q258 e h0 h1 h2) (by decide)
theorem q260 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q83 e h0 h1) (q210 e h2) (by decide)
theorem q261 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q260 e h0 h1 h2) (by decide)
theorem q262 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q251 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q253 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q255 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q257 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q259 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q261 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q263 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q88 e h0 h1) (q210 e h2) (by decide)
theorem q264 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q263 e h0 h1 h2) (by decide)
theorem q265 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q91 e h0 h1) (q210 e h2) (by decide)
theorem q266 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q265 e h0 h1 h2) (by decide)
theorem q267 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q94 e h0 h1) (q210 e h2) (by decide)
theorem q268 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q267 e h0 h1 h2) (by decide)
theorem q269 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q97 e h0 h1) (q210 e h2) (by decide)
theorem q270 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q269 e h0 h1 h2) (by decide)
theorem q271 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q100 e h0 h1) (q210 e h2) (by decide)
theorem q272 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q271 e h0 h1 h2) (by decide)
theorem q273 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q103 e h0 h1) (q210 e h2) (by decide)
theorem q274 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q273 e h0 h1 h2) (by decide)
theorem q275 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q264 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q266 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q268 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q270 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q272 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q274 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q276 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 5) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q108 e h0 h1) (q210 e h2) (by decide)
theorem q277 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 5) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q276 e h0 h1 h2) (by decide)
theorem q278 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 5) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q111 e h0 h1) (q210 e h2) (by decide)
theorem q279 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 5) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q278 e h0 h1 h2) (by decide)
theorem q280 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 5) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q114 e h0 h1) (q210 e h2) (by decide)
theorem q281 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 5) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q280 e h0 h1 h2) (by decide)
theorem q282 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 5) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q117 e h0 h1) (q210 e h2) (by decide)
theorem q283 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 5) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q282 e h0 h1 h2) (by decide)
theorem q284 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 5) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q120 e h0 h1) (q210 e h2) (by decide)
theorem q285 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 5) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q284 e h0 h1 h2) (by decide)
theorem q286 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 5) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q123 e h0 h1) (q210 e h2) (by decide)
theorem q287 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 5) (h2 : e 2 = 2) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q286 e h0 h1 h2) (by decide)
theorem q288 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q277 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q279 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q281 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q283 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q285 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q287 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q289 (e : Env 5) (h0 : e 0 = 2) : Typed Ope9b1a410bea0.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q223 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q236 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q249 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q262 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q275 (push 4 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q288 (push 5 e) rfl h0).weaken _ (by decide)
theorem q290 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit8 1 := .app (q1 e h1) (q289 e h0) (by decide)
theorem q291 (e : Env 5) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit3 3 := .var _ _ (by rw [h2]; decide)
theorem q292 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q2 e h0 h1) (q291 e h2) (by decide)
theorem q293 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q292 e h0 h1 h2) (by decide)
theorem q294 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q7 e h0 h1) (q291 e h2) (by decide)
theorem q295 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q294 e h0 h1 h2) (by decide)
theorem q296 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q11 e h0 h1) (q291 e h2) (by decide)
theorem q297 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q296 e h0 h1 h2) (by decide)
theorem q298 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q15 e h0 h1) (q291 e h2) (by decide)
theorem q299 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q298 e h0 h1 h2) (by decide)
theorem q300 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q19 e h0 h1) (q291 e h2) (by decide)
theorem q301 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q300 e h0 h1 h2) (by decide)
theorem q302 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q23 e h0 h1) (q291 e h2) (by decide)
theorem q303 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q302 e h0 h1 h2) (by decide)
theorem q304 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit6 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q293 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q295 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q297 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q299 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q301 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q303 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q305 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q28 e h0 h1) (q291 e h2) (by decide)
theorem q306 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q305 e h0 h1 h2) (by decide)
theorem q307 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q31 e h0 h1) (q291 e h2) (by decide)
theorem q308 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q307 e h0 h1 h2) (by decide)
theorem q309 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q34 e h0 h1) (q291 e h2) (by decide)
theorem q310 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q309 e h0 h1 h2) (by decide)
theorem q311 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q37 e h0 h1) (q291 e h2) (by decide)
theorem q312 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q311 e h0 h1 h2) (by decide)
theorem q313 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q40 e h0 h1) (q291 e h2) (by decide)
theorem q314 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q313 e h0 h1 h2) (by decide)
theorem q315 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q43 e h0 h1) (q291 e h2) (by decide)
theorem q316 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q315 e h0 h1 h2) (by decide)
theorem q317 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit6 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q306 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q308 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q310 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q312 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q314 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q316 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q318 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q48 e h0 h1) (q291 e h2) (by decide)
theorem q319 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q318 e h0 h1 h2) (by decide)
theorem q320 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q51 e h0 h1) (q291 e h2) (by decide)
theorem q321 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q320 e h0 h1 h2) (by decide)
end Blc.Floor45.Probe9692726283182
