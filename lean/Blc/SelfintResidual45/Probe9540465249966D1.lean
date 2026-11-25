import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9540465249966D0

set_option Elab.async false
namespace Blc.Floor45.Probe9540465249966
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q152 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q26 e h0 h1) (q146 e) (by decide)
theorem q153 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q30 e h0 h1) (q146 e) (by decide)
theorem q154 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q34 e h0 h1) (q146 e) (by decide)
theorem q155 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit12 3 := .app (q38 e h0 h1) (q146 e) (by decide)
theorem q156 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit13 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q152 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q153 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q154 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q155 (push 3 e) rfl h0).weaken _ (by decide)
theorem q157 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q44 e h0 h1) (q146 e) (by decide)
theorem q158 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q48 e h0 h1) (q146 e) (by decide)
theorem q159 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q52 e h0 h1) (q146 e) (by decide)
theorem q160 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit12 3 := .app (q56 e h0 h1) (q146 e) (by decide)
theorem q161 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit13 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q157 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q158 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q159 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q160 (push 3 e) rfl h0).weaken _ (by decide)
theorem q162 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit12 0 := .app (q62 e h0 h1) (q146 e) (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q66 e h0 h1) (q146 e) (by decide)
theorem q164 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q70 e h0 h1) (q146 e) (by decide)
theorem q165 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q74 e h0 h1) (q146 e) (by decide)
theorem q166 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit13 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q162 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q163 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q164 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q165 (push 3 e) rfl h0).weaken _ (by decide)
theorem q167 (e : Env 3)  : Typed Op42b062149732.G e lit14 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q151 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q156 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q161 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q166 (push 3 e) rfl).weaken _ (by decide)
theorem q168 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit15 0 := .app (q79 e h0) (q167 e) (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit9 0 := .app (q7 e h0) (q101 e h0) (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit10 0 := .app (q169 e h0) (q7 e h0) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit15 0 := .app (q170 e h0) (q167 e) (by decide)
theorem q172 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit9 1 := .app (q12 e h0) (q123 e h0) (by decide)
theorem q173 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit10 0 := .app (q172 e h0) (q12 e h0) (by decide)
theorem q174 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit15 0 := .app (q173 e h0) (q167 e) (by decide)
theorem q175 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit9 3 := .app (q17 e h0) (q145 e h0) (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit10 3 := .app (q175 e h0) (q17 e h0) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit15 3 := .app (q176 e h0) (q167 e) (by decide)
theorem q178 (e : Env 3)  : Typed Op42b062149732.G e lit16 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q168 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q171 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q174 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q177 (push 3 e) rfl).weaken _ (by decide)
theorem q179 (e : Env 3)  : Typed Op42b062149732.G e lit17 0 := .app (q178 e) (q167 e) (by decide)
theorem q180 (e : Env 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit18 0 := .app (q179 e) (q23 e h1) (by decide)
theorem q181 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit19 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q1 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 3 e) h0).weaken _ (by decide)
theorem q182 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit19 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q23 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q23 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q23 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q23 (push 3 e) h0).weaken _ (by decide)
theorem q183 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit19 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q41 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q41 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q41 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q41 (push 3 e) h0).weaken _ (by decide)
theorem q184 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit19 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q59 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q59 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q59 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q59 (push 3 e) h0).weaken _ (by decide)
theorem q185 (e : Env 3)  : Typed Op42b062149732.G e lit20 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q181 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q182 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q183 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q184 (push 3 e) rfl).weaken _ (by decide)
theorem q186 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit21 0 := .app (q0 e h0) (q185 e) (by decide)
theorem q187 (e : Env 3)  : Typed Op42b062149732.G e lit22 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q0 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q7 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q12 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q17 (push 3 e) rfl).weaken _ (by decide)
theorem q188 (e : Env 3)  : Typed Op42b062149732.G e lit23 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q187 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q187 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q187 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q187 (push 3 e)).weaken _ (by decide)
theorem q189 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit24 0 := .app (q0 e h0) (q188 e) (by decide)
theorem q190 (e : Env 3) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit25 0 := .var _ _ (by rw [h4]; decide)
theorem q191 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit26 0 := .app (q186 e h0) (q190 e h4) (by decide)
theorem q192 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit21 3 := .app (q7 e h0) (q185 e) (by decide)
theorem q193 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit26 3 := .app (q192 e h0) (q190 e h4) (by decide)
theorem q194 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit21 3 := .app (q12 e h0) (q185 e) (by decide)
theorem q195 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit26 3 := .app (q194 e h0) (q190 e h4) (by decide)
theorem q196 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit21 3 := .app (q17 e h0) (q185 e) (by decide)
theorem q197 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit26 3 := .app (q196 e h0) (q190 e h4) (by decide)
theorem q198 (e : Env 3) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit27 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q191 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q193 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q195 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q197 (push 3 e) rfl h3).weaken _ (by decide)
theorem q199 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit28 0 := .app (q189 e h0) (q198 e h3) (by decide)
theorem q200 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit24 3 := .app (q7 e h0) (q188 e) (by decide)
theorem q201 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit28 3 := .app (q200 e h0) (q198 e h3) (by decide)
theorem q202 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit24 3 := .app (q12 e h0) (q188 e) (by decide)
theorem q203 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit28 3 := .app (q202 e h0) (q198 e h3) (by decide)
theorem q204 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit24 3 := .app (q17 e h0) (q188 e) (by decide)
theorem q205 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit28 3 := .app (q204 e h0) (q198 e h3) (by decide)
theorem q206 (e : Env 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit29 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q199 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q201 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q203 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q205 (push 3 e) rfl h2).weaken _ (by decide)
theorem q207 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit30 0 := .app (q186 e h0) (q206 e h2) (by decide)
theorem q208 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit30 3 := .app (q192 e h0) (q206 e h2) (by decide)
theorem q209 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit30 3 := .app (q194 e h0) (q206 e h2) (by decide)
theorem q210 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit30 3 := .app (q196 e h0) (q206 e h2) (by decide)
theorem q211 (e : Env 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit31 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q207 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q208 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q209 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q210 (push 3 e) rfl h1).weaken _ (by decide)
theorem q212 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit32 0 := .app (q186 e h0) (q211 e h1) (by decide)
theorem q213 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit32 3 := .app (q192 e h0) (q211 e h1) (by decide)
theorem q214 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit32 3 := .app (q194 e h0) (q211 e h1) (by decide)
theorem q215 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit32 3 := .app (q196 e h0) (q211 e h1) (by decide)
theorem q216 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit33 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q212 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q213 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q214 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q215 (push 3 e) rfl h0).weaken _ (by decide)
theorem q217 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit34 0 := .app (q180 e h1) (q216 e h0) (by decide)
end Blc.Floor45.Probe9540465249966
