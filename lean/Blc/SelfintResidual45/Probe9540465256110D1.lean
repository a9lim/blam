import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9540465256110D0

set_option Elab.async false
namespace Blc.Floor45.Probe9540465256110
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q147 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit13 3 := .app (q40 e h0 h1) (q138 e) (by decide)
theorem q148 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit14 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q144 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q145 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q146 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q147 (push 3 e) rfl h0).weaken _ (by decide)
theorem q149 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit13 0 := .app (q45 e h0 h1) (q138 e) (by decide)
theorem q150 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit13 0 := .app (q48 e h0 h1) (q138 e) (by decide)
theorem q151 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit13 0 := .app (q51 e h0 h1) (q138 e) (by decide)
theorem q152 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit13 3 := .app (q54 e h0 h1) (q138 e) (by decide)
theorem q153 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit14 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q149 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q150 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q151 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q152 (push 3 e) rfl h0).weaken _ (by decide)
theorem q154 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit13 3 := .app (q59 e h0 h1) (q138 e) (by decide)
theorem q155 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit13 3 := .app (q62 e h0 h1) (q138 e) (by decide)
theorem q156 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit13 3 := .app (q65 e h0 h1) (q138 e) (by decide)
theorem q157 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit13 3 := .app (q68 e h0 h1) (q138 e) (by decide)
theorem q158 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit14 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q154 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q155 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q156 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q157 (push 3 e) rfl h0).weaken _ (by decide)
theorem q159 (e : Env 3)  : Typed Op42b062149732.G e lit15 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q143 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q148 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q153 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q158 (push 3 e) rfl).weaken _ (by decide)
theorem q160 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit16 0 := .app (q22 e h0) (q159 e) (by decide)
theorem q161 (e : Env 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit5 0 := .app (q29 e h1) (q29 e h1) (by decide)
theorem q162 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit6 0 := .app (q31 e h0 h1) (q161 e h1) (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit6 0 := .app (q34 e h0 h1) (q161 e h1) (by decide)
theorem q164 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit6 0 := .app (q37 e h0 h1) (q161 e h1) (by decide)
theorem q165 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit6 3 := .app (q40 e h0 h1) (q161 e h1) (by decide)
theorem q166 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q162 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q163 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q164 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q165 (push 3 e) rfl h0).weaken _ (by decide)
theorem q167 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit16 0 := .app (q166 e h0) (q159 e) (by decide)
theorem q168 (e : Env 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit5 1 := .app (q43 e h1) (q43 e h1) (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit6 0 := .app (q45 e h0 h1) (q168 e h1) (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit6 0 := .app (q48 e h0 h1) (q168 e h1) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit6 0 := .app (q51 e h0 h1) (q168 e h1) (by decide)
theorem q172 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit6 3 := .app (q54 e h0 h1) (q168 e h1) (by decide)
theorem q173 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q169 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q170 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q171 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q172 (push 3 e) rfl h0).weaken _ (by decide)
theorem q174 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit16 0 := .app (q173 e h0) (q159 e) (by decide)
theorem q175 (e : Env 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit5 3 := .app (q57 e h1) (q57 e h1) (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit6 3 := .app (q59 e h0 h1) (q175 e h1) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit6 3 := .app (q62 e h0 h1) (q175 e h1) (by decide)
theorem q178 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit6 3 := .app (q65 e h0 h1) (q175 e h1) (by decide)
theorem q179 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit6 3 := .app (q68 e h0 h1) (q175 e h1) (by decide)
theorem q180 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q176 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q177 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q178 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q179 (push 3 e) rfl h0).weaken _ (by decide)
theorem q181 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit16 3 := .app (q180 e h0) (q159 e) (by decide)
theorem q182 (e : Env 3)  : Typed Op42b062149732.G e lit17 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q160 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q167 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q174 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q181 (push 3 e) rfl).weaken _ (by decide)
theorem q183 (e : Env 3)  : Typed Op42b062149732.G e lit18 0 := .app (q182 e) (q159 e) (by decide)
theorem q184 (e : Env 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit19 0 := .app (q183 e) (q29 e h1) (by decide)
theorem q185 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit20 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q0 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 3 e) h0).weaken _ (by decide)
theorem q186 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit20 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q29 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q29 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q29 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q29 (push 3 e) h0).weaken _ (by decide)
theorem q187 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit20 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q43 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q43 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q43 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q43 (push 3 e) h0).weaken _ (by decide)
theorem q188 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit20 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q57 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q57 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q57 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q57 (push 3 e) h0).weaken _ (by decide)
theorem q189 (e : Env 3)  : Typed Op42b062149732.G e lit21 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q185 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q186 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q187 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q188 (push 3 e) rfl).weaken _ (by decide)
theorem q190 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit22 0 := .app (q1 e h0) (q189 e) (by decide)
theorem q191 (e : Env 3)  : Typed Op42b062149732.G e lit23 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q1 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q7 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q12 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q17 (push 3 e) rfl).weaken _ (by decide)
theorem q192 (e : Env 3)  : Typed Op42b062149732.G e lit24 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q191 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q191 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q191 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q191 (push 3 e)).weaken _ (by decide)
theorem q193 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit25 0 := .app (q1 e h0) (q192 e) (by decide)
theorem q194 (e : Env 3) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit26 0 := .var _ _ (by rw [h4]; decide)
theorem q195 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit27 0 := .app (q190 e h0) (q194 e h4) (by decide)
theorem q196 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit22 3 := .app (q7 e h0) (q189 e) (by decide)
theorem q197 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit27 3 := .app (q196 e h0) (q194 e h4) (by decide)
theorem q198 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit22 3 := .app (q12 e h0) (q189 e) (by decide)
theorem q199 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit27 3 := .app (q198 e h0) (q194 e h4) (by decide)
theorem q200 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit22 3 := .app (q17 e h0) (q189 e) (by decide)
theorem q201 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit27 3 := .app (q200 e h0) (q194 e h4) (by decide)
theorem q202 (e : Env 3) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit28 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q195 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q197 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q199 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q201 (push 3 e) rfl h3).weaken _ (by decide)
theorem q203 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit29 0 := .app (q193 e h0) (q202 e h3) (by decide)
theorem q204 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit25 3 := .app (q7 e h0) (q192 e) (by decide)
theorem q205 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit29 3 := .app (q204 e h0) (q202 e h3) (by decide)
theorem q206 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit25 3 := .app (q12 e h0) (q192 e) (by decide)
theorem q207 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit29 3 := .app (q206 e h0) (q202 e h3) (by decide)
theorem q208 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit25 3 := .app (q17 e h0) (q192 e) (by decide)
theorem q209 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit29 3 := .app (q208 e h0) (q202 e h3) (by decide)
theorem q210 (e : Env 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit30 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q203 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q205 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q207 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q209 (push 3 e) rfl h2).weaken _ (by decide)
theorem q211 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit31 0 := .app (q190 e h0) (q210 e h2) (by decide)
theorem q212 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit31 3 := .app (q196 e h0) (q210 e h2) (by decide)
theorem q213 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit31 3 := .app (q198 e h0) (q210 e h2) (by decide)
theorem q214 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit31 3 := .app (q200 e h0) (q210 e h2) (by decide)
theorem q215 (e : Env 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit32 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q211 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q212 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q213 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q214 (push 3 e) rfl h1).weaken _ (by decide)
theorem q216 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit33 0 := .app (q190 e h0) (q215 e h1) (by decide)
theorem q217 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit33 3 := .app (q196 e h0) (q215 e h1) (by decide)
theorem q218 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit33 3 := .app (q198 e h0) (q215 e h1) (by decide)
theorem q219 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit33 3 := .app (q200 e h0) (q215 e h1) (by decide)
theorem q220 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit34 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q216 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q217 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q218 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q219 (push 3 e) rfl h0).weaken _ (by decide)
theorem q221 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit35 0 := .app (q184 e h1) (q220 e h0) (by decide)
end Blc.Floor45.Probe9540465256110
