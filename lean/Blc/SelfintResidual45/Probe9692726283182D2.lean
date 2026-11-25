import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9692726283182D1

set_option Elab.async false
namespace Blc.Floor45.Probe9692726283182
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q322 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q54 e h0 h1) (q291 e h2) (by decide)
theorem q323 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q322 e h0 h1 h2) (by decide)
theorem q324 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q57 e h0 h1) (q291 e h2) (by decide)
theorem q325 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q324 e h0 h1 h2) (by decide)
theorem q326 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q60 e h0 h1) (q291 e h2) (by decide)
theorem q327 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q326 e h0 h1 h2) (by decide)
theorem q328 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q63 e h0 h1) (q291 e h2) (by decide)
theorem q329 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q328 e h0 h1 h2) (by decide)
theorem q330 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q319 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q321 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q323 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q325 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q327 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q329 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q331 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q68 e h0 h1) (q291 e h2) (by decide)
theorem q332 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q331 e h0 h1 h2) (by decide)
theorem q333 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q71 e h0 h1) (q291 e h2) (by decide)
theorem q334 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q333 e h0 h1 h2) (by decide)
theorem q335 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q74 e h0 h1) (q291 e h2) (by decide)
theorem q336 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q335 e h0 h1 h2) (by decide)
theorem q337 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q77 e h0 h1) (q291 e h2) (by decide)
theorem q338 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q337 e h0 h1 h2) (by decide)
theorem q339 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q80 e h0 h1) (q291 e h2) (by decide)
theorem q340 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q339 e h0 h1 h2) (by decide)
theorem q341 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q83 e h0 h1) (q291 e h2) (by decide)
theorem q342 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q341 e h0 h1 h2) (by decide)
theorem q343 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q332 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q334 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q336 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q338 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q340 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q342 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q344 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q88 e h0 h1) (q291 e h2) (by decide)
theorem q345 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q344 e h0 h1 h2) (by decide)
theorem q346 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q91 e h0 h1) (q291 e h2) (by decide)
theorem q347 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q346 e h0 h1 h2) (by decide)
theorem q348 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q94 e h0 h1) (q291 e h2) (by decide)
theorem q349 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q348 e h0 h1 h2) (by decide)
theorem q350 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q97 e h0 h1) (q291 e h2) (by decide)
theorem q351 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q350 e h0 h1 h2) (by decide)
theorem q352 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q100 e h0 h1) (q291 e h2) (by decide)
theorem q353 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q352 e h0 h1 h2) (by decide)
theorem q354 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q103 e h0 h1) (q291 e h2) (by decide)
theorem q355 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q354 e h0 h1 h2) (by decide)
theorem q356 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q345 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q347 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q349 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q351 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q353 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q355 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q357 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 5) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q108 e h0 h1) (q291 e h2) (by decide)
theorem q358 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 5) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q357 e h0 h1 h2) (by decide)
theorem q359 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 5) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q111 e h0 h1) (q291 e h2) (by decide)
theorem q360 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 5) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q359 e h0 h1 h2) (by decide)
theorem q361 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 5) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q114 e h0 h1) (q291 e h2) (by decide)
theorem q362 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 5) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q361 e h0 h1 h2) (by decide)
theorem q363 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 5) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q117 e h0 h1) (q291 e h2) (by decide)
theorem q364 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 5) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q363 e h0 h1 h2) (by decide)
theorem q365 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 5) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q120 e h0 h1) (q291 e h2) (by decide)
theorem q366 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 5) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q365 e h0 h1 h2) (by decide)
theorem q367 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 5) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q123 e h0 h1) (q291 e h2) (by decide)
theorem q368 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 5) (h2 : e 2 = 3) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q367 e h0 h1 h2) (by decide)
theorem q369 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q358 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q360 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q362 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q364 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q366 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q368 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q370 (e : Env 5) (h0 : e 0 = 3) : Typed Ope9b1a410bea0.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q304 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q317 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q330 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q343 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q356 (push 4 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q369 (push 5 e) rfl h0).weaken _ (by decide)
theorem q371 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit8 1 := .app (q1 e h1) (q370 e h0) (by decide)
theorem q372 (e : Env 5) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit3 4 := .var _ _ (by rw [h2]; decide)
theorem q373 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q2 e h0 h1) (q372 e h2) (by decide)
theorem q374 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q373 e h0 h1 h2) (by decide)
theorem q375 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q7 e h0 h1) (q372 e h2) (by decide)
theorem q376 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q375 e h0 h1 h2) (by decide)
theorem q377 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q11 e h0 h1) (q372 e h2) (by decide)
theorem q378 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q377 e h0 h1 h2) (by decide)
theorem q379 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q15 e h0 h1) (q372 e h2) (by decide)
theorem q380 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q379 e h0 h1 h2) (by decide)
theorem q381 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q19 e h0 h1) (q372 e h2) (by decide)
theorem q382 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q381 e h0 h1 h2) (by decide)
theorem q383 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q23 e h0 h1) (q372 e h2) (by decide)
theorem q384 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 2 := .app (q1 e h1) (q383 e h0 h1 h2) (by decide)
theorem q385 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit6 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q374 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q376 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q378 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q380 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q382 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q384 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q386 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q28 e h0 h1) (q372 e h2) (by decide)
theorem q387 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q386 e h0 h1 h2) (by decide)
theorem q388 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q31 e h0 h1) (q372 e h2) (by decide)
theorem q389 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q388 e h0 h1 h2) (by decide)
theorem q390 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q34 e h0 h1) (q372 e h2) (by decide)
theorem q391 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q390 e h0 h1 h2) (by decide)
theorem q392 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q37 e h0 h1) (q372 e h2) (by decide)
theorem q393 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q392 e h0 h1 h2) (by decide)
theorem q394 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q40 e h0 h1) (q372 e h2) (by decide)
theorem q395 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q394 e h0 h1 h2) (by decide)
theorem q396 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q43 e h0 h1) (q372 e h2) (by decide)
theorem q397 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q396 e h0 h1 h2) (by decide)
theorem q398 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit6 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q387 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q389 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q391 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q393 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q395 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q397 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q399 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q48 e h0 h1) (q372 e h2) (by decide)
theorem q400 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q399 e h0 h1 h2) (by decide)
theorem q401 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q51 e h0 h1) (q372 e h2) (by decide)
theorem q402 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q401 e h0 h1 h2) (by decide)
theorem q403 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q54 e h0 h1) (q372 e h2) (by decide)
theorem q404 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q403 e h0 h1 h2) (by decide)
theorem q405 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q57 e h0 h1) (q372 e h2) (by decide)
theorem q406 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q405 e h0 h1 h2) (by decide)
theorem q407 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q60 e h0 h1) (q372 e h2) (by decide)
theorem q408 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q407 e h0 h1 h2) (by decide)
theorem q409 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q63 e h0 h1) (q372 e h2) (by decide)
theorem q410 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q409 e h0 h1 h2) (by decide)
theorem q411 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q400 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q402 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q404 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q406 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q408 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q410 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q412 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q68 e h0 h1) (q372 e h2) (by decide)
theorem q413 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q412 e h0 h1 h2) (by decide)
theorem q414 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q71 e h0 h1) (q372 e h2) (by decide)
theorem q415 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q414 e h0 h1 h2) (by decide)
theorem q416 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q74 e h0 h1) (q372 e h2) (by decide)
theorem q417 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q416 e h0 h1 h2) (by decide)
theorem q418 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q77 e h0 h1) (q372 e h2) (by decide)
theorem q419 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q418 e h0 h1 h2) (by decide)
theorem q420 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q80 e h0 h1) (q372 e h2) (by decide)
theorem q421 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q420 e h0 h1 h2) (by decide)
theorem q422 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q83 e h0 h1) (q372 e h2) (by decide)
theorem q423 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q422 e h0 h1 h2) (by decide)
theorem q424 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q413 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q415 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q417 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q419 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q421 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q423 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q425 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q88 e h0 h1) (q372 e h2) (by decide)
theorem q426 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q425 e h0 h1 h2) (by decide)
theorem q427 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q91 e h0 h1) (q372 e h2) (by decide)
theorem q428 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q427 e h0 h1 h2) (by decide)
theorem q429 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q94 e h0 h1) (q372 e h2) (by decide)
theorem q430 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q429 e h0 h1 h2) (by decide)
theorem q431 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q97 e h0 h1) (q372 e h2) (by decide)
theorem q432 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q431 e h0 h1 h2) (by decide)
theorem q433 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q100 e h0 h1) (q372 e h2) (by decide)
theorem q434 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q433 e h0 h1 h2) (by decide)
theorem q435 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q103 e h0 h1) (q372 e h2) (by decide)
theorem q436 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q435 e h0 h1 h2) (by decide)
theorem q437 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q426 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q428 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q430 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q432 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q434 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q436 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q438 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 5) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q108 e h0 h1) (q372 e h2) (by decide)
theorem q439 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 5) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q438 e h0 h1 h2) (by decide)
theorem q440 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 5) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q111 e h0 h1) (q372 e h2) (by decide)
theorem q441 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 5) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q440 e h0 h1 h2) (by decide)
theorem q442 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 5) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q114 e h0 h1) (q372 e h2) (by decide)
theorem q443 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 5) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q442 e h0 h1 h2) (by decide)
theorem q444 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 5) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q117 e h0 h1) (q372 e h2) (by decide)
theorem q445 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 5) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q444 e h0 h1 h2) (by decide)
theorem q446 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 5) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q120 e h0 h1) (q372 e h2) (by decide)
theorem q447 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 5) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q446 e h0 h1 h2) (by decide)
theorem q448 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 5) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q123 e h0 h1) (q372 e h2) (by decide)
theorem q449 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 5) (h2 : e 2 = 4) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q448 e h0 h1 h2) (by decide)
theorem q450 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q439 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q441 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q443 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q445 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q447 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q449 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q451 (e : Env 5) (h0 : e 0 = 4) : Typed Ope9b1a410bea0.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q385 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q398 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q411 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q424 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q437 (push 4 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q450 (push 5 e) rfl h0).weaken _ (by decide)
theorem q452 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit8 1 := .app (q1 e h1) (q451 e h0) (by decide)
theorem q453 (e : Env 5) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit3 5 := .var _ _ (by rw [h2]; decide)
theorem q454 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 2 := .app (q2 e h0 h1) (q453 e h2) (by decide)
theorem q455 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q454 e h0 h1 h2) (by decide)
theorem q456 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q7 e h0 h1) (q453 e h2) (by decide)
theorem q457 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q456 e h0 h1 h2) (by decide)
theorem q458 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q11 e h0 h1) (q453 e h2) (by decide)
theorem q459 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q458 e h0 h1 h2) (by decide)
theorem q460 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q15 e h0 h1) (q453 e h2) (by decide)
theorem q461 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q460 e h0 h1 h2) (by decide)
theorem q462 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q19 e h0 h1) (q453 e h2) (by decide)
theorem q463 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q462 e h0 h1 h2) (by decide)
theorem q464 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 0) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q23 e h0 h1) (q453 e h2) (by decide)
theorem q465 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 0) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 2 := .app (q1 e h1) (q464 e h0 h1 h2) (by decide)
theorem q466 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit6 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q455 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q457 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q459 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q461 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q463 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q465 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q467 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q28 e h0 h1) (q453 e h2) (by decide)
theorem q468 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q467 e h0 h1 h2) (by decide)
theorem q469 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 4 := .app (q31 e h0 h1) (q453 e h2) (by decide)
theorem q470 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q469 e h0 h1 h2) (by decide)
theorem q471 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q34 e h0 h1) (q453 e h2) (by decide)
theorem q472 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q471 e h0 h1 h2) (by decide)
theorem q473 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q37 e h0 h1) (q453 e h2) (by decide)
theorem q474 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 5) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q473 e h0 h1 h2) (by decide)
end Blc.Floor45.Probe9692726283182
