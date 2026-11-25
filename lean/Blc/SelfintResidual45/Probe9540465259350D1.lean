import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9540465259350D0

set_option Elab.async false
namespace Blc.Floor45.Probe9540465259350
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q148 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit16 0 := .app (q23 e h0) (q147 e) (by decide)
theorem q149 (e : Env 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit1 0 := .app (q38 e h1) (q38 e h1) (by decide)
theorem q150 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit4 0 := .app (q149 e h1) (q3 e h0) (by decide)
theorem q151 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit5 0 := .app (q150 e h0 h1) (q2 e h0) (by decide)
theorem q152 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit6 0 := .app (q151 e h0 h1) (q38 e h1) (by decide)
theorem q153 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit4 0 := .app (q149 e h1) (q8 e h0) (by decide)
theorem q154 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit5 0 := .app (q153 e h0 h1) (q7 e h0) (by decide)
theorem q155 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit6 0 := .app (q154 e h0 h1) (q38 e h1) (by decide)
theorem q156 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit4 0 := .app (q149 e h1) (q13 e h0) (by decide)
theorem q157 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit5 0 := .app (q156 e h0 h1) (q12 e h0) (by decide)
theorem q158 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit6 0 := .app (q157 e h0 h1) (q38 e h1) (by decide)
theorem q159 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit4 0 := .app (q149 e h1) (q18 e h0) (by decide)
theorem q160 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit5 0 := .app (q159 e h0 h1) (q17 e h0) (by decide)
theorem q161 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit6 0 := .app (q160 e h0 h1) (q38 e h1) (by decide)
theorem q162 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit7 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q152 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q155 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q158 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q161 (push 3 e) rfl h0).weaken _ (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit8 0 := .app (q162 e h0) (q8 e h0) (by decide)
theorem q164 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit16 0 := .app (q163 e h0) (q147 e) (by decide)
theorem q165 (e : Env 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit1 1 := .app (q44 e h1) (q44 e h1) (by decide)
theorem q166 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit4 0 := .app (q165 e h1) (q3 e h0) (by decide)
theorem q167 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit5 0 := .app (q166 e h0 h1) (q2 e h0) (by decide)
theorem q168 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit6 0 := .app (q167 e h0 h1) (q44 e h1) (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit4 0 := .app (q165 e h1) (q8 e h0) (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit5 0 := .app (q169 e h0 h1) (q7 e h0) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit6 0 := .app (q170 e h0 h1) (q44 e h1) (by decide)
theorem q172 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit4 0 := .app (q165 e h1) (q13 e h0) (by decide)
theorem q173 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit5 0 := .app (q172 e h0 h1) (q12 e h0) (by decide)
theorem q174 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit6 0 := .app (q173 e h0 h1) (q44 e h1) (by decide)
theorem q175 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit4 3 := .app (q165 e h1) (q18 e h0) (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit5 3 := .app (q175 e h0 h1) (q17 e h0) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit6 3 := .app (q176 e h0 h1) (q44 e h1) (by decide)
theorem q178 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q168 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q171 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q174 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q177 (push 3 e) rfl h0).weaken _ (by decide)
theorem q179 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit8 0 := .app (q178 e h0) (q13 e h0) (by decide)
theorem q180 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit16 0 := .app (q179 e h0) (q147 e) (by decide)
theorem q181 (e : Env 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit1 3 := .app (q50 e h1) (q50 e h1) (by decide)
theorem q182 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit4 3 := .app (q181 e h1) (q3 e h0) (by decide)
theorem q183 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit5 3 := .app (q182 e h0 h1) (q2 e h0) (by decide)
theorem q184 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit6 3 := .app (q183 e h0 h1) (q50 e h1) (by decide)
theorem q185 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit4 3 := .app (q181 e h1) (q8 e h0) (by decide)
theorem q186 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit5 3 := .app (q185 e h0 h1) (q7 e h0) (by decide)
theorem q187 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit6 3 := .app (q186 e h0 h1) (q50 e h1) (by decide)
theorem q188 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit4 3 := .app (q181 e h1) (q13 e h0) (by decide)
theorem q189 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit5 3 := .app (q188 e h0 h1) (q12 e h0) (by decide)
theorem q190 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit6 3 := .app (q189 e h0 h1) (q50 e h1) (by decide)
theorem q191 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit4 3 := .app (q181 e h1) (q18 e h0) (by decide)
theorem q192 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit5 3 := .app (q191 e h0 h1) (q17 e h0) (by decide)
theorem q193 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit6 3 := .app (q192 e h0 h1) (q50 e h1) (by decide)
theorem q194 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q184 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q187 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q190 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q193 (push 3 e) rfl h0).weaken _ (by decide)
theorem q195 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit8 3 := .app (q194 e h0) (q18 e h0) (by decide)
theorem q196 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit16 3 := .app (q195 e h0) (q147 e) (by decide)
theorem q197 (e : Env 3)  : Typed Op42b062149732.G e lit17 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q148 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q164 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q180 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q196 (push 3 e) rfl).weaken _ (by decide)
theorem q198 (e : Env 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit18 0 := .app (q24 e h2) (q24 e h2) (by decide)
theorem q199 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit19 0 := .app (q198 e h2) (q3 e h0) (by decide)
theorem q200 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit20 0 := .app (q199 e h0 h2) (q2 e h0) (by decide)
theorem q201 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit21 0 := .app (q200 e h0 h2) (q0 e h1) (by decide)
theorem q202 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit19 0 := .app (q198 e h2) (q8 e h0) (by decide)
theorem q203 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit20 0 := .app (q202 e h0 h2) (q7 e h0) (by decide)
theorem q204 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit21 0 := .app (q203 e h0 h2) (q0 e h1) (by decide)
theorem q205 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit19 0 := .app (q198 e h2) (q13 e h0) (by decide)
theorem q206 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit20 0 := .app (q205 e h0 h2) (q12 e h0) (by decide)
theorem q207 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit21 0 := .app (q206 e h0 h2) (q0 e h1) (by decide)
theorem q208 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit19 0 := .app (q198 e h2) (q18 e h0) (by decide)
theorem q209 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit20 0 := .app (q208 e h0 h2) (q17 e h0) (by decide)
theorem q210 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit21 0 := .app (q209 e h0 h2) (q0 e h1) (by decide)
theorem q211 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit22 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q201 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q204 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q207 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q210 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q212 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit21 0 := .app (q200 e h0 h2) (q38 e h1) (by decide)
theorem q213 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit21 0 := .app (q203 e h0 h2) (q38 e h1) (by decide)
theorem q214 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit21 0 := .app (q206 e h0 h2) (q38 e h1) (by decide)
theorem q215 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit21 0 := .app (q209 e h0 h2) (q38 e h1) (by decide)
theorem q216 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit22 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q212 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q213 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q214 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q215 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q217 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit21 0 := .app (q200 e h0 h2) (q44 e h1) (by decide)
theorem q218 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit21 0 := .app (q203 e h0 h2) (q44 e h1) (by decide)
theorem q219 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit21 0 := .app (q206 e h0 h2) (q44 e h1) (by decide)
theorem q220 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit21 0 := .app (q209 e h0 h2) (q44 e h1) (by decide)
theorem q221 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit22 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q217 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q218 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q219 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q220 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q222 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit21 0 := .app (q200 e h0 h2) (q50 e h1) (by decide)
theorem q223 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit21 0 := .app (q203 e h0 h2) (q50 e h1) (by decide)
theorem q224 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit21 0 := .app (q206 e h0 h2) (q50 e h1) (by decide)
theorem q225 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit21 0 := .app (q209 e h0 h2) (q50 e h1) (by decide)
theorem q226 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit22 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q222 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q223 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q224 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q225 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q227 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit23 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q211 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q216 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q221 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q226 (push 3 e) rfl h0).weaken _ (by decide)
theorem q228 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit24 0 := .app (q227 e h0) (q2 e h0) (by decide)
theorem q229 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit25 0 := .app (q228 e h0) (q0 e h1) (by decide)
theorem q230 (e : Env 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit18 0 := .app (q57 e h2) (q57 e h2) (by decide)
theorem q231 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit19 0 := .app (q230 e h2) (q3 e h0) (by decide)
theorem q232 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit20 0 := .app (q231 e h0 h2) (q2 e h0) (by decide)
theorem q233 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit21 0 := .app (q232 e h0 h2) (q0 e h1) (by decide)
theorem q234 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit19 0 := .app (q230 e h2) (q8 e h0) (by decide)
theorem q235 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit20 0 := .app (q234 e h0 h2) (q7 e h0) (by decide)
theorem q236 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit21 0 := .app (q235 e h0 h2) (q0 e h1) (by decide)
theorem q237 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit19 0 := .app (q230 e h2) (q13 e h0) (by decide)
theorem q238 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit20 0 := .app (q237 e h0 h2) (q12 e h0) (by decide)
theorem q239 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit21 0 := .app (q238 e h0 h2) (q0 e h1) (by decide)
theorem q240 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit19 0 := .app (q230 e h2) (q18 e h0) (by decide)
theorem q241 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit20 0 := .app (q240 e h0 h2) (q17 e h0) (by decide)
theorem q242 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit21 0 := .app (q241 e h0 h2) (q0 e h1) (by decide)
theorem q243 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit22 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q233 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q236 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q239 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q242 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q244 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit21 0 := .app (q232 e h0 h2) (q38 e h1) (by decide)
theorem q245 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit21 0 := .app (q235 e h0 h2) (q38 e h1) (by decide)
theorem q246 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit21 0 := .app (q238 e h0 h2) (q38 e h1) (by decide)
theorem q247 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit21 0 := .app (q241 e h0 h2) (q38 e h1) (by decide)
theorem q248 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit22 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q244 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q245 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q246 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q247 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q249 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit21 0 := .app (q232 e h0 h2) (q44 e h1) (by decide)
theorem q250 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit21 0 := .app (q235 e h0 h2) (q44 e h1) (by decide)
theorem q251 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit21 0 := .app (q238 e h0 h2) (q44 e h1) (by decide)
theorem q252 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit21 0 := .app (q241 e h0 h2) (q44 e h1) (by decide)
theorem q253 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit22 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q249 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q250 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q251 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q252 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q254 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit21 0 := .app (q232 e h0 h2) (q50 e h1) (by decide)
theorem q255 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit21 0 := .app (q235 e h0 h2) (q50 e h1) (by decide)
theorem q256 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit21 0 := .app (q238 e h0 h2) (q50 e h1) (by decide)
theorem q257 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit21 0 := .app (q241 e h0 h2) (q50 e h1) (by decide)
theorem q258 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit22 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q254 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q255 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q256 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q257 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q259 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit23 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q243 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q248 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q253 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q258 (push 3 e) rfl h0).weaken _ (by decide)
theorem q260 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit24 0 := .app (q259 e h0) (q7 e h0) (by decide)
theorem q261 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit25 0 := .app (q260 e h0) (q0 e h1) (by decide)
theorem q262 (e : Env 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit18 1 := .app (q87 e h2) (q87 e h2) (by decide)
theorem q263 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit19 0 := .app (q262 e h2) (q3 e h0) (by decide)
theorem q264 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit20 0 := .app (q263 e h0 h2) (q2 e h0) (by decide)
theorem q265 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit21 0 := .app (q264 e h0 h2) (q0 e h1) (by decide)
theorem q266 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit19 0 := .app (q262 e h2) (q8 e h0) (by decide)
theorem q267 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit20 0 := .app (q266 e h0 h2) (q7 e h0) (by decide)
theorem q268 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit21 0 := .app (q267 e h0 h2) (q0 e h1) (by decide)
theorem q269 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit19 0 := .app (q262 e h2) (q13 e h0) (by decide)
theorem q270 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit20 0 := .app (q269 e h0 h2) (q12 e h0) (by decide)
theorem q271 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit21 0 := .app (q270 e h0 h2) (q0 e h1) (by decide)
theorem q272 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit19 3 := .app (q262 e h2) (q18 e h0) (by decide)
theorem q273 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit20 3 := .app (q272 e h0 h2) (q17 e h0) (by decide)
theorem q274 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit21 3 := .app (q273 e h0 h2) (q0 e h1) (by decide)
theorem q275 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit22 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q265 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q268 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q271 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q274 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q276 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit21 0 := .app (q264 e h0 h2) (q38 e h1) (by decide)
theorem q277 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit21 0 := .app (q267 e h0 h2) (q38 e h1) (by decide)
theorem q278 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit21 0 := .app (q270 e h0 h2) (q38 e h1) (by decide)
theorem q279 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit21 3 := .app (q273 e h0 h2) (q38 e h1) (by decide)
theorem q280 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit22 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q276 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q277 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q278 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q279 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q281 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit21 0 := .app (q264 e h0 h2) (q44 e h1) (by decide)
theorem q282 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit21 0 := .app (q267 e h0 h2) (q44 e h1) (by decide)
theorem q283 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit21 0 := .app (q270 e h0 h2) (q44 e h1) (by decide)
theorem q284 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit21 3 := .app (q273 e h0 h2) (q44 e h1) (by decide)
theorem q285 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit22 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q281 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q282 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q283 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q284 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q286 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit21 0 := .app (q264 e h0 h2) (q50 e h1) (by decide)
theorem q287 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit21 0 := .app (q267 e h0 h2) (q50 e h1) (by decide)
theorem q288 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit21 0 := .app (q270 e h0 h2) (q50 e h1) (by decide)
theorem q289 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit21 3 := .app (q273 e h0 h2) (q50 e h1) (by decide)
theorem q290 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit22 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q286 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q287 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q288 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q289 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q291 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit23 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q275 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q280 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q285 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q290 (push 3 e) rfl h0).weaken _ (by decide)
theorem q292 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit24 1 := .app (q291 e h0) (q12 e h0) (by decide)
theorem q293 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit25 0 := .app (q292 e h0) (q0 e h1) (by decide)
theorem q294 (e : Env 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit18 3 := .app (q117 e h2) (q117 e h2) (by decide)
theorem q295 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit19 3 := .app (q294 e h2) (q3 e h0) (by decide)
theorem q296 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit20 3 := .app (q295 e h0 h2) (q2 e h0) (by decide)
theorem q297 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit21 3 := .app (q296 e h0 h2) (q0 e h1) (by decide)
theorem q298 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit19 3 := .app (q294 e h2) (q8 e h0) (by decide)
theorem q299 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit20 3 := .app (q298 e h0 h2) (q7 e h0) (by decide)
theorem q300 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit21 3 := .app (q299 e h0 h2) (q0 e h1) (by decide)
theorem q301 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit19 3 := .app (q294 e h2) (q13 e h0) (by decide)
theorem q302 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit20 3 := .app (q301 e h0 h2) (q12 e h0) (by decide)
theorem q303 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit21 3 := .app (q302 e h0 h2) (q0 e h1) (by decide)
theorem q304 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit19 3 := .app (q294 e h2) (q18 e h0) (by decide)
theorem q305 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit20 3 := .app (q304 e h0 h2) (q17 e h0) (by decide)
theorem q306 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit21 3 := .app (q305 e h0 h2) (q0 e h1) (by decide)
theorem q307 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit22 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q297 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q300 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q303 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q306 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q308 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit21 3 := .app (q296 e h0 h2) (q38 e h1) (by decide)
theorem q309 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit21 3 := .app (q299 e h0 h2) (q38 e h1) (by decide)
end Blc.Floor45.Probe9540465259350
