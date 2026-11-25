import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9540465256938D1

set_option Elab.async false
namespace Blc.Floor45.Probe9540465256938
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q313 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit37 0 := .app (q287 e h0) (q312 e h1) (by decide)
theorem q314 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit37 3 := .app (q293 e h0) (q312 e h1) (by decide)
theorem q315 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit37 3 := .app (q295 e h0) (q312 e h1) (by decide)
theorem q316 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit37 3 := .app (q297 e h0) (q312 e h1) (by decide)
theorem q317 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit38 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q313 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q314 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q315 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q316 (push 3 e) rfl h0).weaken _ (by decide)
theorem q318 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit39 0 := .app (q281 e h1) (q317 e h0) (by decide)
end Blc.Floor45.Probe9540465256938
