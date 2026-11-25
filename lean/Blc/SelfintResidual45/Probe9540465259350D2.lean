import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9540465259350D1

set_option Elab.async false
namespace Blc.Floor45.Probe9540465259350
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q310 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit21 3 := .app (q302 e h0 h2) (q38 e h1) (by decide)
theorem q311 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit21 3 := .app (q305 e h0 h2) (q38 e h1) (by decide)
theorem q312 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit22 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q308 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q309 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q310 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q311 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q313 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit21 3 := .app (q296 e h0 h2) (q44 e h1) (by decide)
theorem q314 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit21 3 := .app (q299 e h0 h2) (q44 e h1) (by decide)
theorem q315 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit21 3 := .app (q302 e h0 h2) (q44 e h1) (by decide)
theorem q316 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit21 3 := .app (q305 e h0 h2) (q44 e h1) (by decide)
theorem q317 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit22 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q313 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q314 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q315 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q316 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q318 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit21 3 := .app (q296 e h0 h2) (q50 e h1) (by decide)
theorem q319 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit21 3 := .app (q299 e h0 h2) (q50 e h1) (by decide)
theorem q320 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit21 3 := .app (q302 e h0 h2) (q50 e h1) (by decide)
theorem q321 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit21 3 := .app (q305 e h0 h2) (q50 e h1) (by decide)
theorem q322 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit22 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q318 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q319 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q320 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q321 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q323 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit23 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q307 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q312 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q317 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q322 (push 3 e) rfl h0).weaken _ (by decide)
theorem q324 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit24 3 := .app (q323 e h0) (q17 e h0) (by decide)
theorem q325 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit25 3 := .app (q324 e h0) (q0 e h1) (by decide)
theorem q326 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit26 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q229 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q261 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q293 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q325 (push 3 e) rfl h0).weaken _ (by decide)
theorem q327 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit25 0 := .app (q228 e h0) (q38 e h1) (by decide)
theorem q328 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit25 0 := .app (q260 e h0) (q38 e h1) (by decide)
theorem q329 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit25 0 := .app (q292 e h0) (q38 e h1) (by decide)
theorem q330 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit25 3 := .app (q324 e h0) (q38 e h1) (by decide)
theorem q331 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit26 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q327 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q328 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q329 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q330 (push 3 e) rfl h0).weaken _ (by decide)
theorem q332 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit25 0 := .app (q228 e h0) (q44 e h1) (by decide)
theorem q333 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit25 0 := .app (q260 e h0) (q44 e h1) (by decide)
theorem q334 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit25 0 := .app (q292 e h0) (q44 e h1) (by decide)
theorem q335 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit25 3 := .app (q324 e h0) (q44 e h1) (by decide)
theorem q336 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit26 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q332 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q333 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q334 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q335 (push 3 e) rfl h0).weaken _ (by decide)
theorem q337 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit25 0 := .app (q228 e h0) (q50 e h1) (by decide)
theorem q338 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit25 0 := .app (q260 e h0) (q50 e h1) (by decide)
theorem q339 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit25 3 := .app (q292 e h0) (q50 e h1) (by decide)
theorem q340 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit25 3 := .app (q324 e h0) (q50 e h1) (by decide)
theorem q341 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit26 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q337 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q338 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q339 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q340 (push 3 e) rfl h0).weaken _ (by decide)
theorem q342 (e : Env 3)  : Typed Op42b062149732.G e lit27 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q326 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q331 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q336 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q341 (push 3 e) rfl).weaken _ (by decide)
theorem q343 (e : Env 3)  : Typed Op42b062149732.G e lit28 0 := .app (q197 e) (q342 e) (by decide)
theorem q344 (e : Env 3)  : Typed Op42b062149732.G e lit29 0 := .app (q343 e) (q147 e) (by decide)
theorem q345 (e : Env 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit30 0 := .app (q344 e) (q38 e h1) (by decide)
theorem q346 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit31 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q0 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 3 e) h0).weaken _ (by decide)
theorem q347 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit31 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q38 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q38 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q38 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q38 (push 3 e) h0).weaken _ (by decide)
theorem q348 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit31 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q44 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q44 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q44 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q44 (push 3 e) h0).weaken _ (by decide)
theorem q349 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit31 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q50 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q50 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q50 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q50 (push 3 e) h0).weaken _ (by decide)
theorem q350 (e : Env 3)  : Typed Op42b062149732.G e lit32 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q346 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q347 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q348 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q349 (push 3 e) rfl).weaken _ (by decide)
theorem q351 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit33 0 := .app (q2 e h0) (q350 e) (by decide)
theorem q352 (e : Env 3)  : Typed Op42b062149732.G e lit34 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q2 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q7 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q12 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q17 (push 3 e) rfl).weaken _ (by decide)
theorem q353 (e : Env 3)  : Typed Op42b062149732.G e lit35 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q352 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q352 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q352 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q352 (push 3 e)).weaken _ (by decide)
theorem q354 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit36 0 := .app (q2 e h0) (q353 e) (by decide)
theorem q355 (e : Env 3) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit37 0 := .var _ _ (by rw [h4]; decide)
theorem q356 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit38 0 := .app (q351 e h0) (q355 e h4) (by decide)
theorem q357 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit33 3 := .app (q7 e h0) (q350 e) (by decide)
theorem q358 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit38 3 := .app (q357 e h0) (q355 e h4) (by decide)
theorem q359 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit33 3 := .app (q12 e h0) (q350 e) (by decide)
theorem q360 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit38 3 := .app (q359 e h0) (q355 e h4) (by decide)
theorem q361 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit33 3 := .app (q17 e h0) (q350 e) (by decide)
theorem q362 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit38 3 := .app (q361 e h0) (q355 e h4) (by decide)
theorem q363 (e : Env 3) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit39 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q356 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q358 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q360 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q362 (push 3 e) rfl h3).weaken _ (by decide)
theorem q364 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit40 0 := .app (q354 e h0) (q363 e h3) (by decide)
theorem q365 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit36 3 := .app (q7 e h0) (q353 e) (by decide)
theorem q366 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit40 3 := .app (q365 e h0) (q363 e h3) (by decide)
theorem q367 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit36 3 := .app (q12 e h0) (q353 e) (by decide)
theorem q368 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit40 3 := .app (q367 e h0) (q363 e h3) (by decide)
theorem q369 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit36 3 := .app (q17 e h0) (q353 e) (by decide)
theorem q370 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit40 3 := .app (q369 e h0) (q363 e h3) (by decide)
theorem q371 (e : Env 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit41 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q364 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q366 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q368 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q370 (push 3 e) rfl h2).weaken _ (by decide)
theorem q372 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit42 0 := .app (q351 e h0) (q371 e h2) (by decide)
theorem q373 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit42 3 := .app (q357 e h0) (q371 e h2) (by decide)
theorem q374 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit42 3 := .app (q359 e h0) (q371 e h2) (by decide)
theorem q375 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit42 3 := .app (q361 e h0) (q371 e h2) (by decide)
theorem q376 (e : Env 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit43 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q372 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q373 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q374 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q375 (push 3 e) rfl h1).weaken _ (by decide)
theorem q377 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit44 0 := .app (q351 e h0) (q376 e h1) (by decide)
theorem q378 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit44 3 := .app (q357 e h0) (q376 e h1) (by decide)
theorem q379 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit44 3 := .app (q359 e h0) (q376 e h1) (by decide)
theorem q380 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit44 3 := .app (q361 e h0) (q376 e h1) (by decide)
theorem q381 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit45 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q377 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q378 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q379 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q380 (push 3 e) rfl h0).weaken _ (by decide)
theorem q382 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit46 0 := .app (q345 e h1) (q381 e h0) (by decide)
end Blc.Floor45.Probe9540465259350
