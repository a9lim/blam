import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9540465257370D1

set_option Elab.async false
namespace Blc.Floor45.Probe9540465257370
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q320 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q319 e h0 h1 h2) (q20 e h0) (by decide)
theorem q321 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q92 e h0 h1) (q268 e h2) (by decide)
theorem q322 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q321 e h0 h1 h2) (q25 e h0) (by decide)
theorem q323 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q314 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q316 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q318 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q320 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q322 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q324 (e : Env 4) (h0 : e 0 = 4) : Typed Op64d01e7a837a.G e lit8 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q279 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q290 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q301 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q312 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q323 (push 4 e) rfl h0).weaken _ (by decide)
theorem q325 (e : Env 4)  : Typed Op64d01e7a837a.G e lit9 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q96 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q153 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q210 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q267 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q324 (push 4 e) rfl).weaken _ (by decide)
theorem q326 (e : Env 4) (h0 : e 0 = 0) : Typed Op64d01e7a837a.G e lit10 2 := .app (q325 e) (q1 e h0) (by decide)
theorem q327 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit11 1 := .app (q326 e h0) (q0 e h1) (by decide)
theorem q328 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit12 0 := .app (q327 e h0 h1) (q5 e h0) (by decide)
theorem q329 (e : Env 4) (h0 : e 0 = 1) : Typed Op64d01e7a837a.G e lit10 2 := .app (q325 e) (q7 e h0) (by decide)
theorem q330 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit11 1 := .app (q329 e h0) (q0 e h1) (by decide)
theorem q331 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit12 1 := .app (q330 e h0 h1) (q10 e h0) (by decide)
theorem q332 (e : Env 4) (h0 : e 0 = 2) : Typed Op64d01e7a837a.G e lit10 2 := .app (q325 e) (q12 e h0) (by decide)
theorem q333 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit11 1 := .app (q332 e h0) (q0 e h1) (by decide)
theorem q334 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit12 1 := .app (q333 e h0 h1) (q15 e h0) (by decide)
theorem q335 (e : Env 4) (h0 : e 0 = 3) : Typed Op64d01e7a837a.G e lit10 2 := .app (q325 e) (q17 e h0) (by decide)
theorem q336 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit11 1 := .app (q335 e h0) (q0 e h1) (by decide)
theorem q337 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit12 1 := .app (q336 e h0 h1) (q20 e h0) (by decide)
theorem q338 (e : Env 4) (h0 : e 0 = 4) : Typed Op64d01e7a837a.G e lit10 4 := .app (q325 e) (q22 e h0) (by decide)
theorem q339 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit11 4 := .app (q338 e h0) (q0 e h1) (by decide)
theorem q340 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit12 4 := .app (q339 e h0 h1) (q25 e h0) (by decide)
theorem q341 (e : Env 4) (h0 : e 0 = 0) : Typed Op64d01e7a837a.G e lit13 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q328 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q331 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q334 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q337 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q340 (push 4 e) rfl h0).weaken _ (by decide)
theorem q342 (e : Env 4) (h0 : e 0 = 0) : Typed Op64d01e7a837a.G e lit14 0 := .app (q341 e h0) (q5 e h0) (by decide)
theorem q343 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit11 1 := .app (q326 e h0) (q28 e h1) (by decide)
theorem q344 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit12 0 := .app (q343 e h0 h1) (q5 e h0) (by decide)
theorem q345 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit11 1 := .app (q329 e h0) (q28 e h1) (by decide)
theorem q346 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit12 1 := .app (q345 e h0 h1) (q10 e h0) (by decide)
theorem q347 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit11 1 := .app (q332 e h0) (q28 e h1) (by decide)
theorem q348 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit12 1 := .app (q347 e h0 h1) (q15 e h0) (by decide)
theorem q349 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit11 1 := .app (q335 e h0) (q28 e h1) (by decide)
theorem q350 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit12 1 := .app (q349 e h0 h1) (q20 e h0) (by decide)
theorem q351 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit11 4 := .app (q338 e h0) (q28 e h1) (by decide)
theorem q352 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit12 4 := .app (q351 e h0 h1) (q25 e h0) (by decide)
theorem q353 (e : Env 4) (h0 : e 0 = 1) : Typed Op64d01e7a837a.G e lit13 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q344 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q346 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q348 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q350 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q352 (push 4 e) rfl h0).weaken _ (by decide)
theorem q354 (e : Env 4) (h0 : e 0 = 1) : Typed Op64d01e7a837a.G e lit14 1 := .app (q353 e h0) (q10 e h0) (by decide)
theorem q355 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit11 1 := .app (q326 e h0) (q45 e h1) (by decide)
theorem q356 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit12 0 := .app (q355 e h0 h1) (q5 e h0) (by decide)
theorem q357 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit11 1 := .app (q329 e h0) (q45 e h1) (by decide)
theorem q358 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit12 1 := .app (q357 e h0 h1) (q10 e h0) (by decide)
theorem q359 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit11 1 := .app (q332 e h0) (q45 e h1) (by decide)
theorem q360 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit12 1 := .app (q359 e h0 h1) (q15 e h0) (by decide)
theorem q361 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit11 1 := .app (q335 e h0) (q45 e h1) (by decide)
theorem q362 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit12 1 := .app (q361 e h0 h1) (q20 e h0) (by decide)
theorem q363 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit11 4 := .app (q338 e h0) (q45 e h1) (by decide)
theorem q364 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit12 4 := .app (q363 e h0 h1) (q25 e h0) (by decide)
theorem q365 (e : Env 4) (h0 : e 0 = 2) : Typed Op64d01e7a837a.G e lit13 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q356 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q358 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q360 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q362 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q364 (push 4 e) rfl h0).weaken _ (by decide)
theorem q366 (e : Env 4) (h0 : e 0 = 2) : Typed Op64d01e7a837a.G e lit14 1 := .app (q365 e h0) (q15 e h0) (by decide)
theorem q367 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit11 2 := .app (q326 e h0) (q62 e h1) (by decide)
theorem q368 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit12 1 := .app (q367 e h0 h1) (q5 e h0) (by decide)
theorem q369 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit11 2 := .app (q329 e h0) (q62 e h1) (by decide)
theorem q370 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit12 1 := .app (q369 e h0 h1) (q10 e h0) (by decide)
theorem q371 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit11 2 := .app (q332 e h0) (q62 e h1) (by decide)
theorem q372 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit12 1 := .app (q371 e h0 h1) (q15 e h0) (by decide)
theorem q373 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit11 2 := .app (q335 e h0) (q62 e h1) (by decide)
theorem q374 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit12 1 := .app (q373 e h0 h1) (q20 e h0) (by decide)
theorem q375 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit11 4 := .app (q338 e h0) (q62 e h1) (by decide)
theorem q376 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit12 4 := .app (q375 e h0 h1) (q25 e h0) (by decide)
theorem q377 (e : Env 4) (h0 : e 0 = 3) : Typed Op64d01e7a837a.G e lit13 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q368 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q370 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q372 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q374 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q376 (push 4 e) rfl h0).weaken _ (by decide)
theorem q378 (e : Env 4) (h0 : e 0 = 3) : Typed Op64d01e7a837a.G e lit14 1 := .app (q377 e h0) (q20 e h0) (by decide)
theorem q379 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit11 4 := .app (q326 e h0) (q79 e h1) (by decide)
theorem q380 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit12 4 := .app (q379 e h0 h1) (q5 e h0) (by decide)
theorem q381 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit11 4 := .app (q329 e h0) (q79 e h1) (by decide)
theorem q382 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit12 4 := .app (q381 e h0 h1) (q10 e h0) (by decide)
theorem q383 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit11 4 := .app (q332 e h0) (q79 e h1) (by decide)
theorem q384 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit12 4 := .app (q383 e h0 h1) (q15 e h0) (by decide)
theorem q385 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit11 4 := .app (q335 e h0) (q79 e h1) (by decide)
theorem q386 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit12 4 := .app (q385 e h0 h1) (q20 e h0) (by decide)
theorem q387 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit11 4 := .app (q338 e h0) (q79 e h1) (by decide)
theorem q388 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit12 4 := .app (q387 e h0 h1) (q25 e h0) (by decide)
theorem q389 (e : Env 4) (h0 : e 0 = 4) : Typed Op64d01e7a837a.G e lit13 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q380 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q382 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q384 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q386 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q388 (push 4 e) rfl h0).weaken _ (by decide)
theorem q390 (e : Env 4) (h0 : e 0 = 4) : Typed Op64d01e7a837a.G e lit14 4 := .app (q389 e h0) (q25 e h0) (by decide)
theorem q391 (e : Env 4)  : Typed Op64d01e7a837a.G e lit15 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q342 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q354 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q366 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q378 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q390 (push 4 e) rfl).weaken _ (by decide)
theorem q392 (e : Env 4)  : Typed Op64d01e7a837a.G e lit16 1 := .app (q391 e) (q325 e) (by decide)
theorem q393 (e : Env 4) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit17 0 := .app (q392 e) (q0 e h1) (by decide)
theorem q394 (e : Env 4) (h0 : e 0 = 0) : Typed Op64d01e7a837a.G e lit18 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q0 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 4 e) h0).weaken _ (by decide)
theorem q395 (e : Env 4) (h0 : e 0 = 1) : Typed Op64d01e7a837a.G e lit18 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q28 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q28 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q28 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q28 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q28 (push 4 e) h0).weaken _ (by decide)
theorem q396 (e : Env 4) (h0 : e 0 = 2) : Typed Op64d01e7a837a.G e lit18 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q45 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q45 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q45 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q45 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q45 (push 4 e) h0).weaken _ (by decide)
theorem q397 (e : Env 4) (h0 : e 0 = 3) : Typed Op64d01e7a837a.G e lit18 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q62 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q62 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q62 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q62 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q62 (push 4 e) h0).weaken _ (by decide)
theorem q398 (e : Env 4) (h0 : e 0 = 4) : Typed Op64d01e7a837a.G e lit18 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q79 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q79 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q79 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q79 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q79 (push 4 e) h0).weaken _ (by decide)
theorem q399 (e : Env 4)  : Typed Op64d01e7a837a.G e lit19 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q394 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q395 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q396 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q397 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q398 (push 4 e) rfl).weaken _ (by decide)
theorem q400 (e : Env 4) (h0 : e 0 = 0) : Typed Op64d01e7a837a.G e lit20 2 := .app (q1 e h0) (q399 e) (by decide)
theorem q401 (e : Env 4)  : Typed Op64d01e7a837a.G e lit21 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q1 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q7 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q12 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q17 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q22 (push 4 e) rfl).weaken _ (by decide)
theorem q402 (e : Env 4)  : Typed Op64d01e7a837a.G e lit22 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q401 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q401 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q401 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q401 (push 3 e)).weaken _ (by decide)
  · subst a; exact (q401 (push 4 e)).weaken _ (by decide)
theorem q403 (e : Env 4) (h0 : e 0 = 0) : Typed Op64d01e7a837a.G e lit23 2 := .app (q1 e h0) (q402 e) (by decide)
theorem q404 (e : Env 4) (h4 : e 4 = 4) : Typed Op64d01e7a837a.G e lit24 4 := .var _ _ (by rw [h4]; decide)
theorem q405 (e : Env 4) (h0 : e 0 = 0) (h4 : e 4 = 4) : Typed Op64d01e7a837a.G e lit25 4 := .app (q400 e h0) (q404 e h4) (by decide)
theorem q406 (e : Env 4) (h0 : e 0 = 1) : Typed Op64d01e7a837a.G e lit20 4 := .app (q7 e h0) (q399 e) (by decide)
theorem q407 (e : Env 4) (h0 : e 0 = 1) (h4 : e 4 = 4) : Typed Op64d01e7a837a.G e lit25 4 := .app (q406 e h0) (q404 e h4) (by decide)
theorem q408 (e : Env 4) (h0 : e 0 = 2) : Typed Op64d01e7a837a.G e lit20 4 := .app (q12 e h0) (q399 e) (by decide)
theorem q409 (e : Env 4) (h0 : e 0 = 2) (h4 : e 4 = 4) : Typed Op64d01e7a837a.G e lit25 4 := .app (q408 e h0) (q404 e h4) (by decide)
theorem q410 (e : Env 4) (h0 : e 0 = 3) : Typed Op64d01e7a837a.G e lit20 4 := .app (q17 e h0) (q399 e) (by decide)
theorem q411 (e : Env 4) (h0 : e 0 = 3) (h4 : e 4 = 4) : Typed Op64d01e7a837a.G e lit25 4 := .app (q410 e h0) (q404 e h4) (by decide)
theorem q412 (e : Env 4) (h0 : e 0 = 4) : Typed Op64d01e7a837a.G e lit20 4 := .app (q22 e h0) (q399 e) (by decide)
theorem q413 (e : Env 4) (h0 : e 0 = 4) (h4 : e 4 = 4) : Typed Op64d01e7a837a.G e lit25 4 := .app (q412 e h0) (q404 e h4) (by decide)
theorem q414 (e : Env 4) (h3 : e 3 = 4) : Typed Op64d01e7a837a.G e lit26 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q405 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q407 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q409 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q411 (push 3 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q413 (push 4 e) rfl h3).weaken _ (by decide)
theorem q415 (e : Env 4) (h0 : e 0 = 0) (h3 : e 3 = 4) : Typed Op64d01e7a837a.G e lit27 4 := .app (q403 e h0) (q414 e h3) (by decide)
theorem q416 (e : Env 4) (h0 : e 0 = 1) : Typed Op64d01e7a837a.G e lit23 4 := .app (q7 e h0) (q402 e) (by decide)
theorem q417 (e : Env 4) (h0 : e 0 = 1) (h3 : e 3 = 4) : Typed Op64d01e7a837a.G e lit27 4 := .app (q416 e h0) (q414 e h3) (by decide)
theorem q418 (e : Env 4) (h0 : e 0 = 2) : Typed Op64d01e7a837a.G e lit23 4 := .app (q12 e h0) (q402 e) (by decide)
theorem q419 (e : Env 4) (h0 : e 0 = 2) (h3 : e 3 = 4) : Typed Op64d01e7a837a.G e lit27 4 := .app (q418 e h0) (q414 e h3) (by decide)
theorem q420 (e : Env 4) (h0 : e 0 = 3) : Typed Op64d01e7a837a.G e lit23 4 := .app (q17 e h0) (q402 e) (by decide)
theorem q421 (e : Env 4) (h0 : e 0 = 3) (h3 : e 3 = 4) : Typed Op64d01e7a837a.G e lit27 4 := .app (q420 e h0) (q414 e h3) (by decide)
theorem q422 (e : Env 4) (h0 : e 0 = 4) : Typed Op64d01e7a837a.G e lit23 4 := .app (q22 e h0) (q402 e) (by decide)
theorem q423 (e : Env 4) (h0 : e 0 = 4) (h3 : e 3 = 4) : Typed Op64d01e7a837a.G e lit27 4 := .app (q422 e h0) (q414 e h3) (by decide)
theorem q424 (e : Env 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit28 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q415 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q417 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q419 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q421 (push 3 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q423 (push 4 e) rfl h2).weaken _ (by decide)
theorem q425 (e : Env 4) (h0 : e 0 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit29 4 := .app (q400 e h0) (q424 e h2) (by decide)
theorem q426 (e : Env 4) (h0 : e 0 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit29 4 := .app (q406 e h0) (q424 e h2) (by decide)
theorem q427 (e : Env 4) (h0 : e 0 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit29 4 := .app (q408 e h0) (q424 e h2) (by decide)
theorem q428 (e : Env 4) (h0 : e 0 = 3) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit29 4 := .app (q410 e h0) (q424 e h2) (by decide)
theorem q429 (e : Env 4) (h0 : e 0 = 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit29 4 := .app (q412 e h0) (q424 e h2) (by decide)
theorem q430 (e : Env 4) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit30 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q425 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q426 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q427 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q428 (push 3 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q429 (push 4 e) rfl h1).weaken _ (by decide)
theorem q431 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit31 4 := .app (q400 e h0) (q430 e h1) (by decide)
theorem q432 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit31 4 := .app (q406 e h0) (q430 e h1) (by decide)
theorem q433 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit31 4 := .app (q408 e h0) (q430 e h1) (by decide)
theorem q434 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit31 4 := .app (q410 e h0) (q430 e h1) (by decide)
theorem q435 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit31 4 := .app (q412 e h0) (q430 e h1) (by decide)
theorem q436 (e : Env 4) (h0 : e 0 = 4) : Typed Op64d01e7a837a.G e lit32 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q431 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q432 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q433 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q434 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q435 (push 4 e) rfl h0).weaken _ (by decide)
theorem q437 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit33 2 := .app (q393 e h1) (q436 e h0) (by decide)
end Blc.Floor45.Probe9540465257370
