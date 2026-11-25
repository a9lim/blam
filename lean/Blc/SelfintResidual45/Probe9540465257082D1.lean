import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9540465257082D0

set_option Elab.async false
namespace Blc.Floor45.Probe9540465257082
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q155 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit9 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q151 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q152 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q153 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q154 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q156 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit8 0 := .app (q44 e h0 h1) (q142 e h0 h2) (by decide)
theorem q157 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit8 0 := .app (q47 e h0 h1) (q144 e h0 h2) (by decide)
theorem q158 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit8 0 := .app (q50 e h0 h1) (q146 e h0 h2) (by decide)
theorem q159 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit8 3 := .app (q53 e h0 h1) (q148 e h0 h2) (by decide)
theorem q160 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit9 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q156 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q157 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q158 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q159 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q161 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit8 3 := .app (q58 e h0 h1) (q142 e h0 h2) (by decide)
theorem q162 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit8 3 := .app (q61 e h0 h1) (q144 e h0 h2) (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit8 3 := .app (q64 e h0 h1) (q146 e h0 h2) (by decide)
theorem q164 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit8 3 := .app (q67 e h0 h1) (q148 e h0 h2) (by decide)
theorem q165 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit9 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q161 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q162 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q163 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q164 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q166 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit10 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q150 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q155 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q160 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q165 (push 3 e) rfl h0).weaken _ (by decide)
theorem q167 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit11 3 := .app (q140 e h0) (q166 e h0) (by decide)
theorem q168 (e : Env 3)  : Typed Op42b062149732.G e lit12 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q71 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q103 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q135 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q167 (push 3 e) rfl).weaken _ (by decide)
theorem q169 (e : Env 3)  : Typed Op42b062149732.G e lit13 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q70 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q102 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q134 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q166 (push 3 e) rfl).weaken _ (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit14 3 := .app (q169 e) (q1 e h0) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit15 0 := .app (q3 e h0 h1) (q170 e h0) (by decide)
theorem q172 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit14 3 := .app (q169 e) (q5 e h0) (by decide)
theorem q173 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit15 0 := .app (q7 e h0 h1) (q172 e h0) (by decide)
theorem q174 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit14 3 := .app (q169 e) (q9 e h0) (by decide)
theorem q175 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit15 0 := .app (q11 e h0 h1) (q174 e h0) (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit14 3 := .app (q169 e) (q13 e h0) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit15 0 := .app (q15 e h0 h1) (q176 e h0) (by decide)
theorem q178 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit16 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q171 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q173 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q175 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q177 (push 3 e) rfl h0).weaken _ (by decide)
theorem q179 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit15 0 := .app (q30 e h0 h1) (q170 e h0) (by decide)
theorem q180 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit15 0 := .app (q33 e h0 h1) (q172 e h0) (by decide)
theorem q181 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit15 0 := .app (q36 e h0 h1) (q174 e h0) (by decide)
theorem q182 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit15 3 := .app (q39 e h0 h1) (q176 e h0) (by decide)
theorem q183 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit16 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q179 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q180 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q181 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q182 (push 3 e) rfl h0).weaken _ (by decide)
theorem q184 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit15 0 := .app (q44 e h0 h1) (q170 e h0) (by decide)
theorem q185 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit15 0 := .app (q47 e h0 h1) (q172 e h0) (by decide)
theorem q186 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit15 0 := .app (q50 e h0 h1) (q174 e h0) (by decide)
theorem q187 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit15 3 := .app (q53 e h0 h1) (q176 e h0) (by decide)
theorem q188 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit16 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q184 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q185 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q186 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q187 (push 3 e) rfl h0).weaken _ (by decide)
theorem q189 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit15 3 := .app (q58 e h0 h1) (q170 e h0) (by decide)
theorem q190 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit15 3 := .app (q61 e h0 h1) (q172 e h0) (by decide)
theorem q191 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit15 3 := .app (q64 e h0 h1) (q174 e h0) (by decide)
theorem q192 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit15 3 := .app (q67 e h0 h1) (q176 e h0) (by decide)
theorem q193 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit16 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q189 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q190 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q191 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q192 (push 3 e) rfl h0).weaken _ (by decide)
theorem q194 (e : Env 3)  : Typed Op42b062149732.G e lit17 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q178 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q183 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q188 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q193 (push 3 e) rfl).weaken _ (by decide)
theorem q195 (e : Env 3)  : Typed Op42b062149732.G e lit18 0 := .app (q168 e) (q194 e) (by decide)
theorem q196 (e : Env 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit19 0 := .app (q195 e) (q28 e h1) (by decide)
theorem q197 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit20 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q0 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 3 e) h0).weaken _ (by decide)
theorem q198 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit20 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q28 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q28 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q28 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q28 (push 3 e) h0).weaken _ (by decide)
theorem q199 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit20 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q42 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q42 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q42 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q42 (push 3 e) h0).weaken _ (by decide)
theorem q200 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit20 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q56 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q56 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q56 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q56 (push 3 e) h0).weaken _ (by decide)
theorem q201 (e : Env 3)  : Typed Op42b062149732.G e lit21 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q197 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q198 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q199 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q200 (push 3 e) rfl).weaken _ (by decide)
theorem q202 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit22 0 := .app (q1 e h0) (q201 e) (by decide)
theorem q203 (e : Env 3)  : Typed Op42b062149732.G e lit23 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q1 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q5 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q9 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q13 (push 3 e) rfl).weaken _ (by decide)
theorem q204 (e : Env 3)  : Typed Op42b062149732.G e lit24 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q203 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q203 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q203 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q203 (push 3 e)).weaken _ (by decide)
theorem q205 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit25 0 := .app (q1 e h0) (q204 e) (by decide)
theorem q206 (e : Env 3) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit26 0 := .var _ _ (by rw [h4]; decide)
theorem q207 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit27 0 := .app (q202 e h0) (q206 e h4) (by decide)
theorem q208 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit22 3 := .app (q5 e h0) (q201 e) (by decide)
theorem q209 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit27 3 := .app (q208 e h0) (q206 e h4) (by decide)
theorem q210 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit22 3 := .app (q9 e h0) (q201 e) (by decide)
theorem q211 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit27 3 := .app (q210 e h0) (q206 e h4) (by decide)
theorem q212 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit22 3 := .app (q13 e h0) (q201 e) (by decide)
theorem q213 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 0) : Typed Op42b062149732.G e lit27 3 := .app (q212 e h0) (q206 e h4) (by decide)
theorem q214 (e : Env 3) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit28 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q207 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q209 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q211 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q213 (push 3 e) rfl h3).weaken _ (by decide)
theorem q215 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit29 0 := .app (q205 e h0) (q214 e h3) (by decide)
theorem q216 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit25 3 := .app (q5 e h0) (q204 e) (by decide)
theorem q217 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit29 3 := .app (q216 e h0) (q214 e h3) (by decide)
theorem q218 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit25 3 := .app (q9 e h0) (q204 e) (by decide)
theorem q219 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit29 3 := .app (q218 e h0) (q214 e h3) (by decide)
theorem q220 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit25 3 := .app (q13 e h0) (q204 e) (by decide)
theorem q221 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op42b062149732.G e lit29 3 := .app (q220 e h0) (q214 e h3) (by decide)
theorem q222 (e : Env 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit30 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q215 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q217 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q219 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q221 (push 3 e) rfl h2).weaken _ (by decide)
theorem q223 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit31 0 := .app (q202 e h0) (q222 e h2) (by decide)
theorem q224 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit31 3 := .app (q208 e h0) (q222 e h2) (by decide)
theorem q225 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit31 3 := .app (q210 e h0) (q222 e h2) (by decide)
theorem q226 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit31 3 := .app (q212 e h0) (q222 e h2) (by decide)
theorem q227 (e : Env 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit32 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q223 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q224 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q225 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q226 (push 3 e) rfl h1).weaken _ (by decide)
theorem q228 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit33 0 := .app (q202 e h0) (q227 e h1) (by decide)
theorem q229 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit33 3 := .app (q208 e h0) (q227 e h1) (by decide)
theorem q230 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit33 3 := .app (q210 e h0) (q227 e h1) (by decide)
theorem q231 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit33 3 := .app (q212 e h0) (q227 e h1) (by decide)
theorem q232 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit34 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q228 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q229 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q230 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q231 (push 3 e) rfl h0).weaken _ (by decide)
theorem q233 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit35 0 := .app (q196 e h1) (q232 e h0) (by decide)
end Blc.Floor45.Probe9540465257082
