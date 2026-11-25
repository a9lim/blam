import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9692683423246D1

set_option Elab.async false
namespace Blc.Floor45.Probe9692683423246
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q297 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q47 e h0 h1) (by decide)
theorem q298 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q297 e h0 h1 h2) (by decide)
theorem q299 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q50 e h0 h1) (by decide)
theorem q300 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q299 e h0 h1 h2) (by decide)
theorem q301 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q53 e h0 h1) (by decide)
theorem q302 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q301 e h0 h1 h2) (by decide)
theorem q303 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q56 e h0 h1) (by decide)
theorem q304 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q303 e h0 h1 h2) (by decide)
theorem q305 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) : Typed Op8d74bc6e4e13.G e lit10 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q296 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q298 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q300 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q302 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q304 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q306 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q61 e h0 h1) (by decide)
theorem q307 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q306 e h0 h1 h2) (by decide)
theorem q308 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q64 e h0 h1) (by decide)
theorem q309 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q308 e h0 h1 h2) (by decide)
theorem q310 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q67 e h0 h1) (by decide)
theorem q311 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q310 e h0 h1 h2) (by decide)
theorem q312 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q70 e h0 h1) (by decide)
theorem q313 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q312 e h0 h1 h2) (by decide)
theorem q314 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q73 e h0 h1) (by decide)
theorem q315 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q314 e h0 h1 h2) (by decide)
theorem q316 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) : Typed Op8d74bc6e4e13.G e lit10 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q307 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q309 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q311 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q313 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q315 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q317 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q78 e h0 h1) (by decide)
theorem q318 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q317 e h0 h1 h2) (by decide)
theorem q319 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q81 e h0 h1) (by decide)
theorem q320 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q319 e h0 h1 h2) (by decide)
theorem q321 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q84 e h0 h1) (by decide)
theorem q322 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q321 e h0 h1 h2) (by decide)
theorem q323 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q87 e h0 h1) (by decide)
theorem q324 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q323 e h0 h1 h2) (by decide)
theorem q325 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q90 e h0 h1) (by decide)
theorem q326 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q325 e h0 h1 h2) (by decide)
theorem q327 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) : Typed Op8d74bc6e4e13.G e lit10 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q318 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q320 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q322 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q324 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q326 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q328 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q95 e h0 h1) (by decide)
theorem q329 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q328 e h0 h1 h2) (by decide)
theorem q330 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q98 e h0 h1) (by decide)
theorem q331 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q330 e h0 h1 h2) (by decide)
theorem q332 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q101 e h0 h1) (by decide)
theorem q333 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q332 e h0 h1 h2) (by decide)
theorem q334 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q104 e h0 h1) (by decide)
theorem q335 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q334 e h0 h1 h2) (by decide)
theorem q336 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q107 e h0 h1) (by decide)
theorem q337 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q336 e h0 h1 h2) (by decide)
theorem q338 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) : Typed Op8d74bc6e4e13.G e lit10 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q329 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q331 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q333 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q335 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q337 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q339 (e : Env 4) (h0 : e 0 = 4) : Typed Op8d74bc6e4e13.G e lit11 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q294 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q305 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q316 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q327 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q338 (push 4 e) rfl h0).weaken _ (by decide)
theorem q340 (e : Env 4) (h0 : e 0 = 4) : Typed Op8d74bc6e4e13.G e lit12 4 := .app (q8 e h0) (q339 e h0) (by decide)
theorem q341 (e : Env 4)  : Typed Op8d74bc6e4e13.G e lit13 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q112 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q169 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q226 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q283 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q340 (push 4 e) rfl).weaken _ (by decide)
theorem q342 (e : Env 4)  : Typed Op8d74bc6e4e13.G e lit14 3 := .app (q10 e) (q341 e) (by decide)
theorem q343 (e : Env 4) (h1 : e 1 = 0) : Typed Op8d74bc6e4e13.G e lit15 1 := .app (q342 e) (q12 e h1) (by decide)
theorem q344 (e : Env 4) (h0 : e 0 = 0) : Typed Op8d74bc6e4e13.G e lit16 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q12 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q12 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q12 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q12 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q12 (push 4 e) h0).weaken _ (by decide)
theorem q345 (e : Env 4) (h0 : e 0 = 1) : Typed Op8d74bc6e4e13.G e lit16 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q43 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q43 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q43 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q43 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q43 (push 4 e) h0).weaken _ (by decide)
theorem q346 (e : Env 4) (h0 : e 0 = 2) : Typed Op8d74bc6e4e13.G e lit16 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q60 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q60 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q60 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q60 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q60 (push 4 e) h0).weaken _ (by decide)
theorem q347 (e : Env 4) (h0 : e 0 = 3) : Typed Op8d74bc6e4e13.G e lit16 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q77 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q77 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q77 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q77 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q77 (push 4 e) h0).weaken _ (by decide)
theorem q348 (e : Env 4) (h0 : e 0 = 4) : Typed Op8d74bc6e4e13.G e lit16 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q94 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q94 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q94 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q94 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q94 (push 4 e) h0).weaken _ (by decide)
theorem q349 (e : Env 4)  : Typed Op8d74bc6e4e13.G e lit17 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q344 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q345 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q346 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q347 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q348 (push 4 e) rfl).weaken _ (by decide)
theorem q350 (e : Env 4) (h0 : e 0 = 0) : Typed Op8d74bc6e4e13.G e lit18 0 := .app (q0 e h0) (q349 e) (by decide)
theorem q351 (e : Env 4)  : Typed Op8d74bc6e4e13.G e lit19 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q0 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q2 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q4 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q6 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q8 (push 4 e) rfl).weaken _ (by decide)
theorem q352 (e : Env 4)  : Typed Op8d74bc6e4e13.G e lit20 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q351 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q351 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q351 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q351 (push 3 e)).weaken _ (by decide)
  · subst a; exact (q351 (push 4 e)).weaken _ (by decide)
theorem q353 (e : Env 4) (h0 : e 0 = 0) : Typed Op8d74bc6e4e13.G e lit21 1 := .app (q0 e h0) (q352 e) (by decide)
theorem q354 (e : Env 4) (h4 : e 4 = 4) : Typed Op8d74bc6e4e13.G e lit22 4 := .var _ _ (by rw [h4]; decide)
theorem q355 (e : Env 4) (h0 : e 0 = 0) (h4 : e 4 = 4) : Typed Op8d74bc6e4e13.G e lit23 1 := .app (q350 e h0) (q354 e h4) (by decide)
theorem q356 (e : Env 4) (h0 : e 0 = 1) : Typed Op8d74bc6e4e13.G e lit18 0 := .app (q2 e h0) (q349 e) (by decide)
theorem q357 (e : Env 4) (h0 : e 0 = 1) (h4 : e 4 = 4) : Typed Op8d74bc6e4e13.G e lit23 1 := .app (q356 e h0) (q354 e h4) (by decide)
theorem q358 (e : Env 4) (h0 : e 0 = 2) : Typed Op8d74bc6e4e13.G e lit18 4 := .app (q4 e h0) (q349 e) (by decide)
theorem q359 (e : Env 4) (h0 : e 0 = 2) (h4 : e 4 = 4) : Typed Op8d74bc6e4e13.G e lit23 4 := .app (q358 e h0) (q354 e h4) (by decide)
theorem q360 (e : Env 4) (h0 : e 0 = 3) : Typed Op8d74bc6e4e13.G e lit18 4 := .app (q6 e h0) (q349 e) (by decide)
theorem q361 (e : Env 4) (h0 : e 0 = 3) (h4 : e 4 = 4) : Typed Op8d74bc6e4e13.G e lit23 4 := .app (q360 e h0) (q354 e h4) (by decide)
theorem q362 (e : Env 4) (h0 : e 0 = 4) : Typed Op8d74bc6e4e13.G e lit18 4 := .app (q8 e h0) (q349 e) (by decide)
theorem q363 (e : Env 4) (h0 : e 0 = 4) (h4 : e 4 = 4) : Typed Op8d74bc6e4e13.G e lit23 4 := .app (q362 e h0) (q354 e h4) (by decide)
theorem q364 (e : Env 4) (h3 : e 3 = 4) : Typed Op8d74bc6e4e13.G e lit24 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q355 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q357 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q359 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q361 (push 3 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q363 (push 4 e) rfl h3).weaken _ (by decide)
theorem q365 (e : Env 4) (h0 : e 0 = 0) (h3 : e 3 = 4) : Typed Op8d74bc6e4e13.G e lit25 0 := .app (q353 e h0) (q364 e h3) (by decide)
theorem q366 (e : Env 4) (h0 : e 0 = 1) : Typed Op8d74bc6e4e13.G e lit21 1 := .app (q2 e h0) (q352 e) (by decide)
theorem q367 (e : Env 4) (h0 : e 0 = 1) (h3 : e 3 = 4) : Typed Op8d74bc6e4e13.G e lit25 0 := .app (q366 e h0) (q364 e h3) (by decide)
theorem q368 (e : Env 4) (h0 : e 0 = 2) : Typed Op8d74bc6e4e13.G e lit21 4 := .app (q4 e h0) (q352 e) (by decide)
theorem q369 (e : Env 4) (h0 : e 0 = 2) (h3 : e 3 = 4) : Typed Op8d74bc6e4e13.G e lit25 4 := .app (q368 e h0) (q364 e h3) (by decide)
theorem q370 (e : Env 4) (h0 : e 0 = 3) : Typed Op8d74bc6e4e13.G e lit21 4 := .app (q6 e h0) (q352 e) (by decide)
theorem q371 (e : Env 4) (h0 : e 0 = 3) (h3 : e 3 = 4) : Typed Op8d74bc6e4e13.G e lit25 4 := .app (q370 e h0) (q364 e h3) (by decide)
theorem q372 (e : Env 4) (h0 : e 0 = 4) : Typed Op8d74bc6e4e13.G e lit21 4 := .app (q8 e h0) (q352 e) (by decide)
theorem q373 (e : Env 4) (h0 : e 0 = 4) (h3 : e 3 = 4) : Typed Op8d74bc6e4e13.G e lit25 4 := .app (q372 e h0) (q364 e h3) (by decide)
theorem q374 (e : Env 4) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit26 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q365 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q367 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q369 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q371 (push 3 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q373 (push 4 e) rfl h2).weaken _ (by decide)
theorem q375 (e : Env 4) (h0 : e 0 = 0) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit27 0 := .app (q350 e h0) (q374 e h2) (by decide)
theorem q376 (e : Env 4) (h0 : e 0 = 1) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit27 0 := .app (q356 e h0) (q374 e h2) (by decide)
theorem q377 (e : Env 4) (h0 : e 0 = 2) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit27 4 := .app (q358 e h0) (q374 e h2) (by decide)
theorem q378 (e : Env 4) (h0 : e 0 = 3) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit27 4 := .app (q360 e h0) (q374 e h2) (by decide)
theorem q379 (e : Env 4) (h0 : e 0 = 4) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit27 4 := .app (q362 e h0) (q374 e h2) (by decide)
theorem q380 (e : Env 4) (h1 : e 1 = 4) : Typed Op8d74bc6e4e13.G e lit28 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q375 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q376 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q377 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q378 (push 3 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q379 (push 4 e) rfl h1).weaken _ (by decide)
theorem q381 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) : Typed Op8d74bc6e4e13.G e lit29 0 := .app (q350 e h0) (q380 e h1) (by decide)
theorem q382 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) : Typed Op8d74bc6e4e13.G e lit29 0 := .app (q356 e h0) (q380 e h1) (by decide)
theorem q383 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) : Typed Op8d74bc6e4e13.G e lit29 4 := .app (q358 e h0) (q380 e h1) (by decide)
theorem q384 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) : Typed Op8d74bc6e4e13.G e lit29 4 := .app (q360 e h0) (q380 e h1) (by decide)
theorem q385 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) : Typed Op8d74bc6e4e13.G e lit29 4 := .app (q362 e h0) (q380 e h1) (by decide)
theorem q386 (e : Env 4) (h0 : e 0 = 4) : Typed Op8d74bc6e4e13.G e lit30 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q381 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q382 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q383 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q384 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q385 (push 4 e) rfl h0).weaken _ (by decide)
theorem q387 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) : Typed Op8d74bc6e4e13.G e lit31 0 := .app (q343 e h1) (q386 e h0) (by decide)
end Blc.Floor45.Probe9692683423246
