import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9540465256938D0

set_option Elab.async false
namespace Blc.Floor45.Probe9540465256938
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q168 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit11 1 := .app (q161 e h2) (q9 e h0) (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q10 e h0 h1) (q168 e h0 h2) (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit13 0 := .app (q169 e h0 h1 h2) (q9 e h0) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit11 3 := .app (q161 e h2) (q13 e h0) (by decide)
theorem q172 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q14 e h0 h1) (q171 e h0 h2) (by decide)
theorem q173 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit13 0 := .app (q172 e h0 h1 h2) (q13 e h0) (by decide)
theorem q174 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit14 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q164 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q167 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q170 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q173 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q175 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q22 e h0 h1) (q162 e h0 h2) (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit13 0 := .app (q175 e h0 h1 h2) (q1 e h0) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q25 e h0 h1) (q165 e h0 h2) (by decide)
theorem q178 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit13 0 := .app (q177 e h0 h1 h2) (q5 e h0) (by decide)
theorem q179 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q28 e h0 h1) (q168 e h0 h2) (by decide)
theorem q180 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit13 0 := .app (q179 e h0 h1 h2) (q9 e h0) (by decide)
theorem q181 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 3 := .app (q31 e h0 h1) (q171 e h0 h2) (by decide)
theorem q182 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit13 3 := .app (q181 e h0 h1 h2) (q13 e h0) (by decide)
theorem q183 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit14 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q176 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q178 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q180 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q182 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q184 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q39 e h0 h1) (q162 e h0 h2) (by decide)
theorem q185 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit13 0 := .app (q184 e h0 h1 h2) (q1 e h0) (by decide)
theorem q186 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q42 e h0 h1) (q165 e h0 h2) (by decide)
theorem q187 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit13 0 := .app (q186 e h0 h1 h2) (q5 e h0) (by decide)
theorem q188 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q45 e h0 h1) (q168 e h0 h2) (by decide)
theorem q189 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit13 0 := .app (q188 e h0 h1 h2) (q9 e h0) (by decide)
theorem q190 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 3 := .app (q48 e h0 h1) (q171 e h0 h2) (by decide)
theorem q191 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit13 3 := .app (q190 e h0 h1 h2) (q13 e h0) (by decide)
theorem q192 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit14 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q185 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q187 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q189 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q191 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q193 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 3 := .app (q56 e h0 h1) (q162 e h0 h2) (by decide)
theorem q194 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit13 3 := .app (q193 e h0 h1 h2) (q1 e h0) (by decide)
theorem q195 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 3 := .app (q59 e h0 h1) (q165 e h0 h2) (by decide)
theorem q196 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit13 3 := .app (q195 e h0 h1 h2) (q5 e h0) (by decide)
theorem q197 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 3 := .app (q62 e h0 h1) (q168 e h0 h2) (by decide)
theorem q198 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit13 3 := .app (q197 e h0 h1 h2) (q9 e h0) (by decide)
theorem q199 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 3 := .app (q65 e h0 h1) (q171 e h0 h2) (by decide)
theorem q200 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit13 3 := .app (q199 e h0 h1 h2) (q13 e h0) (by decide)
theorem q201 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit14 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q194 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q196 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q198 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q200 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q202 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit15 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q174 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q183 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q192 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q201 (push 3 e) rfl h0).weaken _ (by decide)
theorem q203 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit16 0 := .app (q10 e h0 h1) (q202 e h0) (by decide)
theorem q204 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit17 0 := .app (q203 e h0 h1) (q9 e h0) (by decide)
theorem q205 (e : Env 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit10 3 := .var _ _ (by rw [h2]; decide)
theorem q206 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit11 3 := .app (q205 e h2) (q1 e h0) (by decide)
theorem q207 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 0 := .app (q2 e h0 h1) (q206 e h0 h2) (by decide)
theorem q208 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit13 0 := .app (q207 e h0 h1 h2) (q1 e h0) (by decide)
theorem q209 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit11 3 := .app (q205 e h2) (q5 e h0) (by decide)
theorem q210 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 0 := .app (q6 e h0 h1) (q209 e h0 h2) (by decide)
theorem q211 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit13 0 := .app (q210 e h0 h1 h2) (q5 e h0) (by decide)
theorem q212 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit11 3 := .app (q205 e h2) (q9 e h0) (by decide)
theorem q213 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 0 := .app (q10 e h0 h1) (q212 e h0 h2) (by decide)
theorem q214 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit13 0 := .app (q213 e h0 h1 h2) (q9 e h0) (by decide)
theorem q215 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit11 3 := .app (q205 e h2) (q13 e h0) (by decide)
theorem q216 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 0 := .app (q14 e h0 h1) (q215 e h0 h2) (by decide)
theorem q217 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit13 0 := .app (q216 e h0 h1 h2) (q13 e h0) (by decide)
theorem q218 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit14 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q208 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q211 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q214 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q217 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q219 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 0 := .app (q22 e h0 h1) (q206 e h0 h2) (by decide)
theorem q220 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit13 0 := .app (q219 e h0 h1 h2) (q1 e h0) (by decide)
theorem q221 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 0 := .app (q25 e h0 h1) (q209 e h0 h2) (by decide)
theorem q222 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit13 0 := .app (q221 e h0 h1 h2) (q5 e h0) (by decide)
theorem q223 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 0 := .app (q28 e h0 h1) (q212 e h0 h2) (by decide)
theorem q224 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit13 0 := .app (q223 e h0 h1 h2) (q9 e h0) (by decide)
theorem q225 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q31 e h0 h1) (q215 e h0 h2) (by decide)
theorem q226 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit13 3 := .app (q225 e h0 h1 h2) (q13 e h0) (by decide)
theorem q227 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit14 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q220 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q222 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q224 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q226 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q228 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q39 e h0 h1) (q206 e h0 h2) (by decide)
theorem q229 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit13 3 := .app (q228 e h0 h1 h2) (q1 e h0) (by decide)
theorem q230 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q42 e h0 h1) (q209 e h0 h2) (by decide)
theorem q231 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit13 3 := .app (q230 e h0 h1 h2) (q5 e h0) (by decide)
theorem q232 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q45 e h0 h1) (q212 e h0 h2) (by decide)
theorem q233 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit13 3 := .app (q232 e h0 h1 h2) (q9 e h0) (by decide)
theorem q234 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q48 e h0 h1) (q215 e h0 h2) (by decide)
theorem q235 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit13 3 := .app (q234 e h0 h1 h2) (q13 e h0) (by decide)
theorem q236 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit14 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q229 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q231 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q233 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q235 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q237 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q56 e h0 h1) (q206 e h0 h2) (by decide)
theorem q238 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit13 3 := .app (q237 e h0 h1 h2) (q1 e h0) (by decide)
theorem q239 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q59 e h0 h1) (q209 e h0 h2) (by decide)
theorem q240 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit13 3 := .app (q239 e h0 h1 h2) (q5 e h0) (by decide)
theorem q241 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q62 e h0 h1) (q212 e h0 h2) (by decide)
theorem q242 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit13 3 := .app (q241 e h0 h1 h2) (q9 e h0) (by decide)
theorem q243 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q65 e h0 h1) (q215 e h0 h2) (by decide)
theorem q244 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit13 3 := .app (q243 e h0 h1 h2) (q13 e h0) (by decide)
theorem q245 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit14 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q238 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q240 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q242 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q244 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q246 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit15 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q218 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q227 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q236 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q245 (push 3 e) rfl h0).weaken _ (by decide)
theorem q247 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit16 0 := .app (q14 e h0 h1) (q246 e h0) (by decide)
theorem q248 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit17 0 := .app (q247 e h0 h1) (q13 e h0) (by decide)
theorem q249 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit18 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q116 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q160 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q204 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q248 (push 3 e) rfl h0).weaken _ (by decide)
theorem q250 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit16 0 := .app (q22 e h0 h1) (q114 e h0) (by decide)
theorem q251 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit17 0 := .app (q250 e h0 h1) (q1 e h0) (by decide)
theorem q252 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit16 0 := .app (q25 e h0 h1) (q158 e h0) (by decide)
theorem q253 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit17 0 := .app (q252 e h0 h1) (q5 e h0) (by decide)
theorem q254 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit16 0 := .app (q28 e h0 h1) (q202 e h0) (by decide)
theorem q255 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit17 0 := .app (q254 e h0 h1) (q9 e h0) (by decide)
theorem q256 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit16 3 := .app (q31 e h0 h1) (q246 e h0) (by decide)
theorem q257 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit17 3 := .app (q256 e h0 h1) (q13 e h0) (by decide)
theorem q258 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit18 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q251 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q253 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q255 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q257 (push 3 e) rfl h0).weaken _ (by decide)
theorem q259 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit16 0 := .app (q39 e h0 h1) (q114 e h0) (by decide)
theorem q260 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit17 0 := .app (q259 e h0 h1) (q1 e h0) (by decide)
theorem q261 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit16 0 := .app (q42 e h0 h1) (q158 e h0) (by decide)
theorem q262 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit17 0 := .app (q261 e h0 h1) (q5 e h0) (by decide)
theorem q263 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit16 0 := .app (q45 e h0 h1) (q202 e h0) (by decide)
theorem q264 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit17 0 := .app (q263 e h0 h1) (q9 e h0) (by decide)
theorem q265 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit16 3 := .app (q48 e h0 h1) (q246 e h0) (by decide)
theorem q266 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit17 3 := .app (q265 e h0 h1) (q13 e h0) (by decide)
theorem q267 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit18 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q260 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q262 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q264 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q266 (push 3 e) rfl h0).weaken _ (by decide)
theorem q268 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit16 3 := .app (q56 e h0 h1) (q114 e h0) (by decide)
theorem q269 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit17 3 := .app (q268 e h0 h1) (q1 e h0) (by decide)
theorem q270 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit16 3 := .app (q59 e h0 h1) (q158 e h0) (by decide)
theorem q271 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit17 3 := .app (q270 e h0 h1) (q5 e h0) (by decide)
theorem q272 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit16 3 := .app (q62 e h0 h1) (q202 e h0) (by decide)
theorem q273 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit17 3 := .app (q272 e h0 h1) (q9 e h0) (by decide)
theorem q274 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit16 3 := .app (q65 e h0 h1) (q246 e h0) (by decide)
theorem q275 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit17 3 := .app (q274 e h0 h1) (q13 e h0) (by decide)
theorem q276 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit18 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q269 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q271 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q273 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q275 (push 3 e) rfl h0).weaken _ (by decide)
theorem q277 (e : Env 3)  : Typed Op42b062149732.G e lit19 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q249 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q258 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q267 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q276 (push 3 e) rfl).weaken _ (by decide)
theorem q278 (e : Env 3)  : Typed Op42b062149732.G e lit20 0 := .app (q72 e) (q277 e) (by decide)
theorem q279 (e : Env 3)  : Typed Op42b062149732.G e lit21 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q114 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q158 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q202 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q246 (push 3 e) rfl).weaken _ (by decide)
theorem q280 (e : Env 3)  : Typed Op42b062149732.G e lit22 0 := .app (q278 e) (q279 e) (by decide)
theorem q281 (e : Env 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit23 0 := .app (q280 e) (q21 e h1) (by decide)
theorem q282 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit24 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q0 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 3 e) h0).weaken _ (by decide)
theorem q283 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit24 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q21 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q21 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q21 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q21 (push 3 e) h0).weaken _ (by decide)
theorem q284 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit24 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q38 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q38 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q38 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q38 (push 3 e) h0).weaken _ (by decide)
theorem q285 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit24 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q55 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q55 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q55 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q55 (push 3 e) h0).weaken _ (by decide)
theorem q286 (e : Env 3)  : Typed Op42b062149732.G e lit25 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q282 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q283 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q284 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q285 (push 3 e) rfl).weaken _ (by decide)
theorem q287 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit26 0 := .app (q1 e h0) (q286 e) (by decide)
theorem q288 (e : Env 3)  : Typed Op42b062149732.G e lit27 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q1 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q5 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q9 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q13 (push 3 e) rfl).weaken _ (by decide)
theorem q289 (e : Env 3)  : Typed Op42b062149732.G e lit28 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q288 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q288 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q288 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q288 (push 3 e)).weaken _ (by decide)
theorem q290 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit29 0 := .app (q1 e h0) (q289 e) (by decide)
theorem q291 (e : Env 3) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit30 0 := .var _ _ (by rw [h4]; decide)
theorem q292 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit31 0 := .app (q287 e h0) (q291 e h4) (by decide)
theorem q293 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit26 3 := .app (q5 e h0) (q286 e) (by decide)
theorem q294 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit31 3 := .app (q293 e h0) (q291 e h4) (by decide)
theorem q295 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit26 3 := .app (q9 e h0) (q286 e) (by decide)
theorem q296 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit31 3 := .app (q295 e h0) (q291 e h4) (by decide)
theorem q297 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit26 3 := .app (q13 e h0) (q286 e) (by decide)
theorem q298 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit31 3 := .app (q297 e h0) (q291 e h4) (by decide)
theorem q299 (e : Env 3) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit32 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q292 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q294 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q296 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q298 (push 3 e) rfl h3).weaken _ (by decide)
theorem q300 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit33 0 := .app (q290 e h0) (q299 e h3) (by decide)
theorem q301 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit29 3 := .app (q5 e h0) (q289 e) (by decide)
theorem q302 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit33 3 := .app (q301 e h0) (q299 e h3) (by decide)
theorem q303 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit29 3 := .app (q9 e h0) (q289 e) (by decide)
theorem q304 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit33 3 := .app (q303 e h0) (q299 e h3) (by decide)
theorem q305 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit29 3 := .app (q13 e h0) (q289 e) (by decide)
theorem q306 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit33 3 := .app (q305 e h0) (q299 e h3) (by decide)
theorem q307 (e : Env 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit34 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q300 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q302 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q304 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q306 (push 3 e) rfl h2).weaken _ (by decide)
theorem q308 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit35 0 := .app (q287 e h0) (q307 e h2) (by decide)
theorem q309 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit35 3 := .app (q293 e h0) (q307 e h2) (by decide)
theorem q310 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit35 3 := .app (q295 e h0) (q307 e h2) (by decide)
theorem q311 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit35 3 := .app (q297 e h0) (q307 e h2) (by decide)
theorem q312 (e : Env 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit36 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q308 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q309 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q310 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q311 (push 3 e) rfl h1).weaken _ (by decide)
end Blc.Floor45.Probe9540465256938
