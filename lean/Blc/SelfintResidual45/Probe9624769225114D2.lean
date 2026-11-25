import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9624769225114D1

set_option Elab.async false
namespace Blc.Floor45.Probe9624769225114
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q251 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h3 : e 3 = 1) : Typed Op1ca1a77265e6.G e lit14 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q232 (push 0 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q238 (push 1 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q244 (push 2 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q250 (push 3 e) rfl h0 h1 h3).weaken _ (by decide)
theorem q252 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 1) : Typed Op1ca1a77265e6.G e lit15 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q173 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q199 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q225 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q251 (push 3 e) rfl h0 h2).weaken _ (by decide)
theorem q253 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 1) : Typed Op1ca1a77265e6.G e lit16 0 := .app (q12 e) (q252 e h0 h2) (by decide)
theorem q254 (e : Env 3) (h3 : e 3 = 2) : Typed Op1ca1a77265e6.G e lit5 2 := .var _ _ (by rw [h3]; decide)
theorem q255 (e : Env 3) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit7 1 := .app (q254 e h3) (q15 e h5) (by decide)
theorem q256 (e : Env 3) (h2 : e 2 = 0) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit8 0 := .app (q13 e h2) (q255 e h3 h5) (by decide)
theorem q257 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q256 e h2 h3 h5) (q19 e h0 h1) (by decide)
theorem q258 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q256 e h2 h3 h5) (q21 e h0 h1) (by decide)
theorem q259 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q256 e h2 h3 h5) (q23 e h0 h1) (by decide)
theorem q260 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q256 e h2 h3 h5) (q25 e h0 h1) (by decide)
theorem q261 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q257 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q258 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q259 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q260 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q262 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q261 e h0 h1 h2 h4) (by decide)
theorem q263 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q256 e h2 h3 h5) (q30 e h0 h1) (by decide)
theorem q264 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q256 e h2 h3 h5) (q32 e h0 h1) (by decide)
theorem q265 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q256 e h2 h3 h5) (q34 e h0 h1) (by decide)
theorem q266 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q256 e h2 h3 h5) (q36 e h0 h1) (by decide)
theorem q267 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q263 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q264 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q265 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q266 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q268 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q267 e h0 h1 h2 h4) (by decide)
theorem q269 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q256 e h2 h3 h5) (q41 e h0 h1) (by decide)
theorem q270 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q256 e h2 h3 h5) (q43 e h0 h1) (by decide)
theorem q271 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q256 e h2 h3 h5) (q45 e h0 h1) (by decide)
theorem q272 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q256 e h2 h3 h5) (q47 e h0 h1) (by decide)
theorem q273 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q269 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q270 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q271 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q272 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q274 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q273 e h0 h1 h2 h4) (by decide)
theorem q275 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q256 e h2 h3 h5) (q52 e h0 h1) (by decide)
theorem q276 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q256 e h2 h3 h5) (q54 e h0 h1) (by decide)
theorem q277 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q256 e h2 h3 h5) (q56 e h0 h1) (by decide)
theorem q278 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q256 e h2 h3 h5) (q58 e h0 h1) (by decide)
theorem q279 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q275 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q276 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q277 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q278 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q280 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q279 e h0 h1 h2 h4) (by decide)
theorem q281 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h3 : e 3 = 1) : Typed Op1ca1a77265e6.G e lit14 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q262 (push 0 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q268 (push 1 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q274 (push 2 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q280 (push 3 e) rfl h0 h1 h3).weaken _ (by decide)
theorem q282 (e : Env 3) (h2 : e 2 = 1) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit8 0 := .app (q63 e h2) (q255 e h3 h5) (by decide)
theorem q283 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q282 e h2 h3 h5) (q19 e h0 h1) (by decide)
theorem q284 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q282 e h2 h3 h5) (q21 e h0 h1) (by decide)
theorem q285 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q282 e h2 h3 h5) (q23 e h0 h1) (by decide)
theorem q286 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q282 e h2 h3 h5) (q25 e h0 h1) (by decide)
theorem q287 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q283 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q284 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q285 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q286 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q288 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q287 e h0 h1 h2 h4) (by decide)
theorem q289 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q282 e h2 h3 h5) (q30 e h0 h1) (by decide)
theorem q290 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q282 e h2 h3 h5) (q32 e h0 h1) (by decide)
theorem q291 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q282 e h2 h3 h5) (q34 e h0 h1) (by decide)
theorem q292 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q282 e h2 h3 h5) (q36 e h0 h1) (by decide)
theorem q293 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q289 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q290 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q291 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q292 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q294 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q293 e h0 h1 h2 h4) (by decide)
theorem q295 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q282 e h2 h3 h5) (q41 e h0 h1) (by decide)
theorem q296 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q282 e h2 h3 h5) (q43 e h0 h1) (by decide)
theorem q297 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q282 e h2 h3 h5) (q45 e h0 h1) (by decide)
theorem q298 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q282 e h2 h3 h5) (q47 e h0 h1) (by decide)
theorem q299 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q295 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q296 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q297 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q298 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q300 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q299 e h0 h1 h2 h4) (by decide)
theorem q301 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q282 e h2 h3 h5) (q52 e h0 h1) (by decide)
theorem q302 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q282 e h2 h3 h5) (q54 e h0 h1) (by decide)
theorem q303 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q282 e h2 h3 h5) (q56 e h0 h1) (by decide)
theorem q304 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q282 e h2 h3 h5) (q58 e h0 h1) (by decide)
theorem q305 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q301 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q302 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q303 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q304 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q306 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q305 e h0 h1 h2 h4) (by decide)
theorem q307 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h3 : e 3 = 1) : Typed Op1ca1a77265e6.G e lit14 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q288 (push 0 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q294 (push 1 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q300 (push 2 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q306 (push 3 e) rfl h0 h1 h3).weaken _ (by decide)
theorem q308 (e : Env 3) (h2 : e 2 = 2) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit8 1 := .app (q90 e h2) (q255 e h3 h5) (by decide)
theorem q309 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q308 e h2 h3 h5) (q19 e h0 h1) (by decide)
theorem q310 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q308 e h2 h3 h5) (q21 e h0 h1) (by decide)
theorem q311 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q308 e h2 h3 h5) (q23 e h0 h1) (by decide)
theorem q312 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q308 e h2 h3 h5) (q25 e h0 h1) (by decide)
theorem q313 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q309 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q310 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q311 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q312 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q314 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q313 e h0 h1 h2 h4) (by decide)
theorem q315 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q308 e h2 h3 h5) (q30 e h0 h1) (by decide)
theorem q316 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q308 e h2 h3 h5) (q32 e h0 h1) (by decide)
theorem q317 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q308 e h2 h3 h5) (q34 e h0 h1) (by decide)
theorem q318 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q308 e h2 h3 h5) (q36 e h0 h1) (by decide)
theorem q319 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q315 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q316 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q317 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q318 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q320 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q319 e h0 h1 h2 h4) (by decide)
theorem q321 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q308 e h2 h3 h5) (q41 e h0 h1) (by decide)
theorem q322 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q308 e h2 h3 h5) (q43 e h0 h1) (by decide)
theorem q323 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q308 e h2 h3 h5) (q45 e h0 h1) (by decide)
theorem q324 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q308 e h2 h3 h5) (q47 e h0 h1) (by decide)
theorem q325 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q321 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q322 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q323 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q324 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q326 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q325 e h0 h1 h2 h4) (by decide)
theorem q327 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q308 e h2 h3 h5) (q52 e h0 h1) (by decide)
theorem q328 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q308 e h2 h3 h5) (q54 e h0 h1) (by decide)
theorem q329 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q308 e h2 h3 h5) (q56 e h0 h1) (by decide)
theorem q330 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q308 e h2 h3 h5) (q58 e h0 h1) (by decide)
theorem q331 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q327 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q328 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q329 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q330 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q332 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q331 e h0 h1 h2 h4) (by decide)
theorem q333 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h3 : e 3 = 1) : Typed Op1ca1a77265e6.G e lit14 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q314 (push 0 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q320 (push 1 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q326 (push 2 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q332 (push 3 e) rfl h0 h1 h3).weaken _ (by decide)
theorem q334 (e : Env 3) (h2 : e 2 = 3) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit8 3 := .app (q117 e h2) (q255 e h3 h5) (by decide)
theorem q335 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q334 e h2 h3 h5) (q19 e h0 h1) (by decide)
theorem q336 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q334 e h2 h3 h5) (q21 e h0 h1) (by decide)
theorem q337 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q334 e h2 h3 h5) (q23 e h0 h1) (by decide)
theorem q338 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q334 e h2 h3 h5) (q25 e h0 h1) (by decide)
theorem q339 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q335 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q336 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q337 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q338 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q340 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q339 e h0 h1 h2 h4) (by decide)
theorem q341 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q334 e h2 h3 h5) (q30 e h0 h1) (by decide)
theorem q342 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q334 e h2 h3 h5) (q32 e h0 h1) (by decide)
theorem q343 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q334 e h2 h3 h5) (q34 e h0 h1) (by decide)
theorem q344 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q334 e h2 h3 h5) (q36 e h0 h1) (by decide)
theorem q345 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q341 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q342 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q343 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q344 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q346 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q345 e h0 h1 h2 h4) (by decide)
theorem q347 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q334 e h2 h3 h5) (q41 e h0 h1) (by decide)
theorem q348 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q334 e h2 h3 h5) (q43 e h0 h1) (by decide)
theorem q349 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q334 e h2 h3 h5) (q45 e h0 h1) (by decide)
theorem q350 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q334 e h2 h3 h5) (q47 e h0 h1) (by decide)
theorem q351 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q347 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q348 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q349 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q350 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q352 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q351 e h0 h1 h2 h4) (by decide)
theorem q353 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q334 e h2 h3 h5) (q52 e h0 h1) (by decide)
theorem q354 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q334 e h2 h3 h5) (q54 e h0 h1) (by decide)
theorem q355 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q334 e h2 h3 h5) (q56 e h0 h1) (by decide)
theorem q356 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) (h3 : e 3 = 2) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q334 e h2 h3 h5) (q58 e h0 h1) (by decide)
theorem q357 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q353 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q354 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q355 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q356 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q358 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q357 e h0 h1 h2 h4) (by decide)
theorem q359 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h3 : e 3 = 1) : Typed Op1ca1a77265e6.G e lit14 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q340 (push 0 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q346 (push 1 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q352 (push 2 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q358 (push 3 e) rfl h0 h1 h3).weaken _ (by decide)
theorem q360 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 1) : Typed Op1ca1a77265e6.G e lit15 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q281 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q307 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q333 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q359 (push 3 e) rfl h0 h2).weaken _ (by decide)
theorem q361 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 1) : Typed Op1ca1a77265e6.G e lit16 0 := .app (q12 e) (q360 e h0 h2) (by decide)
theorem q362 (e : Env 3) (h3 : e 3 = 3) : Typed Op1ca1a77265e6.G e lit5 3 := .var _ _ (by rw [h3]; decide)
theorem q363 (e : Env 3) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit7 3 := .app (q362 e h3) (q15 e h5) (by decide)
theorem q364 (e : Env 3) (h2 : e 2 = 0) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit8 0 := .app (q13 e h2) (q363 e h3 h5) (by decide)
theorem q365 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q364 e h2 h3 h5) (q19 e h0 h1) (by decide)
theorem q366 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q364 e h2 h3 h5) (q21 e h0 h1) (by decide)
theorem q367 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) (h3 : e 3 = 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q364 e h2 h3 h5) (q23 e h0 h1) (by decide)
end Blc.Floor45.Probe9624769225114
