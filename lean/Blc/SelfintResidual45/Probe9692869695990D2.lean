import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9692869695990D1

set_option Elab.async false
namespace Blc.Floor45.Probe9692869695990
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q277 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q230 e h0 h2) (by decide)
theorem q278 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q238 e h0 h2) (by decide)
theorem q279 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q246 e h0 h2) (by decide)
theorem q280 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q254 e h0 h2) (by decide)
theorem q281 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q262 e h0 h2) (by decide)
theorem q282 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op767ae883a0ae.G e lit9 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q277 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q278 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q279 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q280 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q281 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q283 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q230 e h0 h2) (by decide)
theorem q284 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q238 e h0 h2) (by decide)
theorem q285 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q246 e h0 h2) (by decide)
theorem q286 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q254 e h0 h2) (by decide)
theorem q287 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q262 e h0 h2) (by decide)
theorem q288 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) : Typed Op767ae883a0ae.G e lit9 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q283 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q284 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q285 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q286 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q287 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q289 (e : Env 4) (h0 : e 0 = 3) : Typed Op767ae883a0ae.G e lit10 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q264 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q270 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q276 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q282 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q288 (push 4 e) rfl h0).weaken _ (by decide)
theorem q290 (e : Env 4) (h0 : e 0 = 3) : Typed Op767ae883a0ae.G e lit11 4 := .app (q6 e h0) (q289 e h0) (by decide)
theorem q291 (e : Env 4) (h0 : e 0 = 3) : Typed Op767ae883a0ae.G e lit12 4 := .app (q6 e h0) (q290 e h0) (by decide)
theorem q292 (e : Env 4) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit4 4 := .var _ _ (by rw [h3]; decide)
theorem q293 (e : Env 4) (h1 : e 1 = 0) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit5 4 := .app (q292 e h3) (q11 e h1) (by decide)
theorem q294 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q293 e h1 h3) (by decide)
theorem q295 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q2 e h0) (q293 e h1 h3) (by decide)
theorem q296 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q4 e h0) (q293 e h1 h3) (by decide)
theorem q297 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q6 e h0) (q293 e h1 h3) (by decide)
theorem q298 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q293 e h1 h3) (by decide)
theorem q299 (e : Env 4) (h0 : e 0 = 0) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q294 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q295 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q296 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q297 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q298 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q300 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q299 e h0 h2) (by decide)
theorem q301 (e : Env 4) (h1 : e 1 = 1) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit5 4 := .app (q292 e h3) (q21 e h1) (by decide)
theorem q302 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q301 e h1 h3) (by decide)
theorem q303 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q2 e h0) (q301 e h1 h3) (by decide)
theorem q304 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q4 e h0) (q301 e h1 h3) (by decide)
theorem q305 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q6 e h0) (q301 e h1 h3) (by decide)
theorem q306 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q301 e h1 h3) (by decide)
theorem q307 (e : Env 4) (h0 : e 0 = 1) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q302 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q303 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q304 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q305 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q306 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q308 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q307 e h0 h2) (by decide)
theorem q309 (e : Env 4) (h1 : e 1 = 2) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit5 4 := .app (q292 e h3) (q30 e h1) (by decide)
theorem q310 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q309 e h1 h3) (by decide)
theorem q311 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q2 e h0) (q309 e h1 h3) (by decide)
theorem q312 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q4 e h0) (q309 e h1 h3) (by decide)
theorem q313 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q6 e h0) (q309 e h1 h3) (by decide)
theorem q314 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q309 e h1 h3) (by decide)
theorem q315 (e : Env 4) (h0 : e 0 = 2) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q310 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q311 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q312 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q313 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q314 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q316 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q315 e h0 h2) (by decide)
theorem q317 (e : Env 4) (h1 : e 1 = 3) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit5 4 := .app (q292 e h3) (q39 e h1) (by decide)
theorem q318 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q317 e h1 h3) (by decide)
theorem q319 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q2 e h0) (q317 e h1 h3) (by decide)
theorem q320 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q4 e h0) (q317 e h1 h3) (by decide)
theorem q321 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q6 e h0) (q317 e h1 h3) (by decide)
theorem q322 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q317 e h1 h3) (by decide)
theorem q323 (e : Env 4) (h0 : e 0 = 3) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q318 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q319 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q320 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q321 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q322 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q324 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q323 e h0 h2) (by decide)
theorem q325 (e : Env 4) (h1 : e 1 = 4) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit5 4 := .app (q292 e h3) (q48 e h1) (by decide)
theorem q326 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q325 e h1 h3) (by decide)
theorem q327 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q2 e h0) (q325 e h1 h3) (by decide)
theorem q328 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q4 e h0) (q325 e h1 h3) (by decide)
theorem q329 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q6 e h0) (q325 e h1 h3) (by decide)
theorem q330 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h3 : e 3 = 4) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q325 e h1 h3) (by decide)
theorem q331 (e : Env 4) (h0 : e 0 = 4) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q326 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q327 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q328 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q329 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q330 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q332 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q331 e h0 h2) (by decide)
theorem q333 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) : Typed Op767ae883a0ae.G e lit9 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q300 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q308 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q316 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q324 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q332 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q334 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q299 e h0 h2) (by decide)
theorem q335 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q307 e h0 h2) (by decide)
theorem q336 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q315 e h0 h2) (by decide)
theorem q337 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q323 e h0 h2) (by decide)
theorem q338 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q331 e h0 h2) (by decide)
theorem q339 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) : Typed Op767ae883a0ae.G e lit9 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q334 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q335 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q336 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q337 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q338 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q340 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 4 := .app (q30 e h1) (q299 e h0 h2) (by decide)
theorem q341 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 4 := .app (q30 e h1) (q307 e h0 h2) (by decide)
theorem q342 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 4 := .app (q30 e h1) (q315 e h0 h2) (by decide)
theorem q343 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 4 := .app (q30 e h1) (q323 e h0 h2) (by decide)
theorem q344 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 4 := .app (q30 e h1) (q331 e h0 h2) (by decide)
theorem q345 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) : Typed Op767ae883a0ae.G e lit9 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q340 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q341 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q342 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q343 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q344 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q346 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q299 e h0 h2) (by decide)
theorem q347 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q307 e h0 h2) (by decide)
theorem q348 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q315 e h0 h2) (by decide)
theorem q349 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q323 e h0 h2) (by decide)
theorem q350 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q331 e h0 h2) (by decide)
theorem q351 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) : Typed Op767ae883a0ae.G e lit9 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q346 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q347 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q348 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q349 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q350 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q352 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q299 e h0 h2) (by decide)
theorem q353 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q307 e h0 h2) (by decide)
theorem q354 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q315 e h0 h2) (by decide)
theorem q355 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q323 e h0 h2) (by decide)
theorem q356 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q331 e h0 h2) (by decide)
theorem q357 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) : Typed Op767ae883a0ae.G e lit9 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q352 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q353 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q354 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q355 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q356 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q358 (e : Env 4) (h0 : e 0 = 4) : Typed Op767ae883a0ae.G e lit10 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q333 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q339 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q345 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q351 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q357 (push 4 e) rfl h0).weaken _ (by decide)
theorem q359 (e : Env 4) (h0 : e 0 = 4) : Typed Op767ae883a0ae.G e lit11 4 := .app (q8 e h0) (q358 e h0) (by decide)
theorem q360 (e : Env 4) (h0 : e 0 = 4) : Typed Op767ae883a0ae.G e lit12 4 := .app (q8 e h0) (q359 e h0) (by decide)
theorem q361 (e : Env 4)  : Typed Op767ae883a0ae.G e lit13 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q84 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q153 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q222 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q291 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q360 (push 4 e) rfl).weaken _ (by decide)
theorem q362 (e : Env 4)  : Typed Op767ae883a0ae.G e lit14 2 := .app (q10 e) (q361 e) (by decide)
theorem q363 (e : Env 4) (h1 : e 1 = 1) : Typed Op767ae883a0ae.G e lit15 0 := .app (q362 e) (q21 e h1) (by decide)
theorem q364 (e : Env 4) (h0 : e 0 = 0) : Typed Op767ae883a0ae.G e lit16 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q11 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q11 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q11 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q11 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q11 (push 4 e) h0).weaken _ (by decide)
theorem q365 (e : Env 4) (h0 : e 0 = 1) : Typed Op767ae883a0ae.G e lit16 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q21 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q21 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q21 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q21 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q21 (push 4 e) h0).weaken _ (by decide)
theorem q366 (e : Env 4) (h0 : e 0 = 2) : Typed Op767ae883a0ae.G e lit16 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q30 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q30 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q30 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q30 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q30 (push 4 e) h0).weaken _ (by decide)
theorem q367 (e : Env 4) (h0 : e 0 = 3) : Typed Op767ae883a0ae.G e lit16 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q39 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q39 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q39 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q39 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q39 (push 4 e) h0).weaken _ (by decide)
theorem q368 (e : Env 4) (h0 : e 0 = 4) : Typed Op767ae883a0ae.G e lit16 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q48 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q48 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q48 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q48 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q48 (push 4 e) h0).weaken _ (by decide)
theorem q369 (e : Env 4)  : Typed Op767ae883a0ae.G e lit17 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q364 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q365 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q366 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q367 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q368 (push 4 e) rfl).weaken _ (by decide)
theorem q370 (e : Env 4) (h0 : e 0 = 0) : Typed Op767ae883a0ae.G e lit18 0 := .app (q0 e h0) (q369 e) (by decide)
theorem q371 (e : Env 4)  : Typed Op767ae883a0ae.G e lit19 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q0 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q2 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q4 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q6 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q8 (push 4 e) rfl).weaken _ (by decide)
theorem q372 (e : Env 4)  : Typed Op767ae883a0ae.G e lit20 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q371 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q371 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q371 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q371 (push 3 e)).weaken _ (by decide)
  · subst a; exact (q371 (push 4 e)).weaken _ (by decide)
theorem q373 (e : Env 4) (h0 : e 0 = 0) : Typed Op767ae883a0ae.G e lit21 0 := .app (q0 e h0) (q372 e) (by decide)
theorem q374 (e : Env 4) (h4 : e 4 = 0) : Typed Op767ae883a0ae.G e lit22 0 := .var _ _ (by rw [h4]; decide)
theorem q375 (e : Env 4) (h0 : e 0 = 0) (h4 : e 4 = 0) : Typed Op767ae883a0ae.G e lit23 0 := .app (q370 e h0) (q374 e h4) (by decide)
theorem q376 (e : Env 4) (h0 : e 0 = 1) : Typed Op767ae883a0ae.G e lit18 0 := .app (q2 e h0) (q369 e) (by decide)
theorem q377 (e : Env 4) (h0 : e 0 = 1) (h4 : e 4 = 0) : Typed Op767ae883a0ae.G e lit23 0 := .app (q376 e h0) (q374 e h4) (by decide)
theorem q378 (e : Env 4) (h0 : e 0 = 2) : Typed Op767ae883a0ae.G e lit18 4 := .app (q4 e h0) (q369 e) (by decide)
theorem q379 (e : Env 4) (h0 : e 0 = 2) (h4 : e 4 = 0) : Typed Op767ae883a0ae.G e lit23 4 := .app (q378 e h0) (q374 e h4) (by decide)
theorem q380 (e : Env 4) (h0 : e 0 = 3) : Typed Op767ae883a0ae.G e lit18 4 := .app (q6 e h0) (q369 e) (by decide)
theorem q381 (e : Env 4) (h0 : e 0 = 3) (h4 : e 4 = 0) : Typed Op767ae883a0ae.G e lit23 4 := .app (q380 e h0) (q374 e h4) (by decide)
theorem q382 (e : Env 4) (h0 : e 0 = 4) : Typed Op767ae883a0ae.G e lit18 4 := .app (q8 e h0) (q369 e) (by decide)
theorem q383 (e : Env 4) (h0 : e 0 = 4) (h4 : e 4 = 0) : Typed Op767ae883a0ae.G e lit23 4 := .app (q382 e h0) (q374 e h4) (by decide)
theorem q384 (e : Env 4) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit24 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q375 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q377 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q379 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q381 (push 3 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q383 (push 4 e) rfl h3).weaken _ (by decide)
theorem q385 (e : Env 4) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit25 0 := .app (q373 e h0) (q384 e h3) (by decide)
theorem q386 (e : Env 4) (h0 : e 0 = 1) : Typed Op767ae883a0ae.G e lit21 4 := .app (q2 e h0) (q372 e) (by decide)
theorem q387 (e : Env 4) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit25 4 := .app (q386 e h0) (q384 e h3) (by decide)
theorem q388 (e : Env 4) (h0 : e 0 = 2) : Typed Op767ae883a0ae.G e lit21 4 := .app (q4 e h0) (q372 e) (by decide)
theorem q389 (e : Env 4) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit25 4 := .app (q388 e h0) (q384 e h3) (by decide)
theorem q390 (e : Env 4) (h0 : e 0 = 3) : Typed Op767ae883a0ae.G e lit21 4 := .app (q6 e h0) (q372 e) (by decide)
theorem q391 (e : Env 4) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit25 4 := .app (q390 e h0) (q384 e h3) (by decide)
theorem q392 (e : Env 4) (h0 : e 0 = 4) : Typed Op767ae883a0ae.G e lit21 4 := .app (q8 e h0) (q372 e) (by decide)
theorem q393 (e : Env 4) (h0 : e 0 = 4) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit25 4 := .app (q392 e h0) (q384 e h3) (by decide)
theorem q394 (e : Env 4) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit26 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q385 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q387 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q389 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q391 (push 3 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q393 (push 4 e) rfl h2).weaken _ (by decide)
theorem q395 (e : Env 4) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit27 0 := .app (q370 e h0) (q394 e h2) (by decide)
theorem q396 (e : Env 4) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit27 0 := .app (q376 e h0) (q394 e h2) (by decide)
theorem q397 (e : Env 4) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit27 4 := .app (q378 e h0) (q394 e h2) (by decide)
theorem q398 (e : Env 4) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit27 4 := .app (q380 e h0) (q394 e h2) (by decide)
theorem q399 (e : Env 4) (h0 : e 0 = 4) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit27 4 := .app (q382 e h0) (q394 e h2) (by decide)
theorem q400 (e : Env 4) (h1 : e 1 = 0) : Typed Op767ae883a0ae.G e lit28 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q395 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q396 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q397 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q398 (push 3 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q399 (push 4 e) rfl h1).weaken _ (by decide)
theorem q401 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op767ae883a0ae.G e lit29 0 := .app (q370 e h0) (q400 e h1) (by decide)
theorem q402 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op767ae883a0ae.G e lit29 0 := .app (q376 e h0) (q400 e h1) (by decide)
theorem q403 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op767ae883a0ae.G e lit29 4 := .app (q378 e h0) (q400 e h1) (by decide)
theorem q404 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op767ae883a0ae.G e lit29 4 := .app (q380 e h0) (q400 e h1) (by decide)
theorem q405 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) : Typed Op767ae883a0ae.G e lit29 4 := .app (q382 e h0) (q400 e h1) (by decide)
theorem q406 (e : Env 4) (h0 : e 0 = 0) : Typed Op767ae883a0ae.G e lit30 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q401 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q402 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q403 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q404 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q405 (push 4 e) rfl h0).weaken _ (by decide)
end Blc.Floor45.Probe9692869695990
