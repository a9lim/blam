import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9692402110306D0

set_option Elab.async false
namespace Blc.Floor45.Probe9692402110306
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q146 (e : Env 4) (h0 : e 0 = 2) : Typed Op6cd54e290b69.G e lit9 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q117 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q124 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q131 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q138 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q145 (push 4 e) rfl h0).weaken _ (by decide)
theorem q147 (e : Env 4) (h0 : e 0 = 2) : Typed Op6cd54e290b69.G e lit10 1 := .app (q4 e h0) (q146 e h0) (by decide)
theorem q148 (e : Env 4) (h0 : e 0 = 2) : Typed Op6cd54e290b69.G e lit12 1 := .app (q147 e h0) (q59 e) (by decide)
theorem q149 (e : Env 4) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit3 3 := .var _ _ (by rw [h2]; decide)
theorem q150 (e : Env 4) (h0 : e 0 = 0) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit4 1 := .app (q149 e h2) (q0 e h0) (by decide)
theorem q151 (e : Env 4) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit6 1 := .app (q149 e h2) (q13 e h1) (by decide)
theorem q152 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 0 := .app (q150 e h0 h2) (q151 e h1 h2) (by decide)
theorem q153 (e : Env 4) (h0 : e 0 = 1) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit4 1 := .app (q149 e h2) (q2 e h0) (by decide)
theorem q154 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 0 := .app (q153 e h0 h2) (q151 e h1 h2) (by decide)
theorem q155 (e : Env 4) (h0 : e 0 = 2) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit4 3 := .app (q149 e h2) (q4 e h0) (by decide)
theorem q156 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 1 := .app (q155 e h0 h2) (q151 e h1 h2) (by decide)
theorem q157 (e : Env 4) (h0 : e 0 = 3) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit4 3 := .app (q149 e h2) (q6 e h0) (by decide)
theorem q158 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 1 := .app (q157 e h0 h2) (q151 e h1 h2) (by decide)
theorem q159 (e : Env 4) (h0 : e 0 = 4) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit4 4 := .app (q149 e h2) (q8 e h0) (by decide)
theorem q160 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 4 := .app (q159 e h0 h2) (q151 e h1 h2) (by decide)
theorem q161 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op6cd54e290b69.G e lit8 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q152 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q154 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q156 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q158 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q160 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q162 (e : Env 4) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit6 1 := .app (q149 e h2) (q25 e h1) (by decide)
theorem q163 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 0 := .app (q150 e h0 h2) (q162 e h1 h2) (by decide)
theorem q164 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 0 := .app (q153 e h0 h2) (q162 e h1 h2) (by decide)
theorem q165 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 1 := .app (q155 e h0 h2) (q162 e h1 h2) (by decide)
theorem q166 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 1 := .app (q157 e h0 h2) (q162 e h1 h2) (by decide)
theorem q167 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 4 := .app (q159 e h0 h2) (q162 e h1 h2) (by decide)
theorem q168 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op6cd54e290b69.G e lit8 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q163 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q164 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q165 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q166 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q167 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q169 (e : Env 4) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit6 3 := .app (q149 e h2) (q33 e h1) (by decide)
theorem q170 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 1 := .app (q150 e h0 h2) (q169 e h1 h2) (by decide)
theorem q171 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 1 := .app (q153 e h0 h2) (q169 e h1 h2) (by decide)
theorem q172 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 3 := .app (q155 e h0 h2) (q169 e h1 h2) (by decide)
theorem q173 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 3 := .app (q157 e h0 h2) (q169 e h1 h2) (by decide)
theorem q174 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 4 := .app (q159 e h0 h2) (q169 e h1 h2) (by decide)
theorem q175 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op6cd54e290b69.G e lit8 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q170 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q171 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q172 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q173 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q174 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q176 (e : Env 4) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit6 3 := .app (q149 e h2) (q41 e h1) (by decide)
theorem q177 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 1 := .app (q150 e h0 h2) (q176 e h1 h2) (by decide)
theorem q178 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 1 := .app (q153 e h0 h2) (q176 e h1 h2) (by decide)
theorem q179 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 3 := .app (q155 e h0 h2) (q176 e h1 h2) (by decide)
theorem q180 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 3 := .app (q157 e h0 h2) (q176 e h1 h2) (by decide)
theorem q181 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 4 := .app (q159 e h0 h2) (q176 e h1 h2) (by decide)
theorem q182 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op6cd54e290b69.G e lit8 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q177 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q178 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q179 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q180 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q181 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q183 (e : Env 4) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit6 4 := .app (q149 e h2) (q49 e h1) (by decide)
theorem q184 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 4 := .app (q150 e h0 h2) (q183 e h1 h2) (by decide)
theorem q185 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 4 := .app (q153 e h0 h2) (q183 e h1 h2) (by decide)
theorem q186 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 4 := .app (q155 e h0 h2) (q183 e h1 h2) (by decide)
theorem q187 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 4 := .app (q157 e h0 h2) (q183 e h1 h2) (by decide)
theorem q188 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op6cd54e290b69.G e lit7 4 := .app (q159 e h0 h2) (q183 e h1 h2) (by decide)
theorem q189 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) : Typed Op6cd54e290b69.G e lit8 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q184 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q185 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q186 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q187 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q188 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q190 (e : Env 4) (h0 : e 0 = 3) : Typed Op6cd54e290b69.G e lit9 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q161 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q168 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q175 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q182 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q189 (push 4 e) rfl h0).weaken _ (by decide)
theorem q191 (e : Env 4) (h0 : e 0 = 3) : Typed Op6cd54e290b69.G e lit10 3 := .app (q6 e h0) (q190 e h0) (by decide)
theorem q192 (e : Env 4) (h0 : e 0 = 3) : Typed Op6cd54e290b69.G e lit12 3 := .app (q191 e h0) (q59 e) (by decide)
theorem q193 (e : Env 4) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit3 4 := .var _ _ (by rw [h2]; decide)
theorem q194 (e : Env 4) (h0 : e 0 = 0) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit4 4 := .app (q193 e h2) (q0 e h0) (by decide)
theorem q195 (e : Env 4) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit6 4 := .app (q193 e h2) (q13 e h1) (by decide)
theorem q196 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q194 e h0 h2) (q195 e h1 h2) (by decide)
theorem q197 (e : Env 4) (h0 : e 0 = 1) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit4 4 := .app (q193 e h2) (q2 e h0) (by decide)
theorem q198 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q197 e h0 h2) (q195 e h1 h2) (by decide)
theorem q199 (e : Env 4) (h0 : e 0 = 2) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit4 4 := .app (q193 e h2) (q4 e h0) (by decide)
theorem q200 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q199 e h0 h2) (q195 e h1 h2) (by decide)
theorem q201 (e : Env 4) (h0 : e 0 = 3) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit4 4 := .app (q193 e h2) (q6 e h0) (by decide)
theorem q202 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q201 e h0 h2) (q195 e h1 h2) (by decide)
theorem q203 (e : Env 4) (h0 : e 0 = 4) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit4 4 := .app (q193 e h2) (q8 e h0) (by decide)
theorem q204 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q203 e h0 h2) (q195 e h1 h2) (by decide)
theorem q205 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) : Typed Op6cd54e290b69.G e lit8 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q196 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q198 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q200 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q202 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q204 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q206 (e : Env 4) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit6 4 := .app (q193 e h2) (q25 e h1) (by decide)
theorem q207 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q194 e h0 h2) (q206 e h1 h2) (by decide)
theorem q208 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q197 e h0 h2) (q206 e h1 h2) (by decide)
theorem q209 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q199 e h0 h2) (q206 e h1 h2) (by decide)
theorem q210 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q201 e h0 h2) (q206 e h1 h2) (by decide)
theorem q211 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q203 e h0 h2) (q206 e h1 h2) (by decide)
theorem q212 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) : Typed Op6cd54e290b69.G e lit8 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q207 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q208 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q209 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q210 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q211 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q213 (e : Env 4) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit6 4 := .app (q193 e h2) (q33 e h1) (by decide)
theorem q214 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q194 e h0 h2) (q213 e h1 h2) (by decide)
theorem q215 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q197 e h0 h2) (q213 e h1 h2) (by decide)
theorem q216 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q199 e h0 h2) (q213 e h1 h2) (by decide)
theorem q217 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q201 e h0 h2) (q213 e h1 h2) (by decide)
theorem q218 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q203 e h0 h2) (q213 e h1 h2) (by decide)
theorem q219 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) : Typed Op6cd54e290b69.G e lit8 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q214 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q215 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q216 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q217 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q218 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q220 (e : Env 4) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit6 4 := .app (q193 e h2) (q41 e h1) (by decide)
theorem q221 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q194 e h0 h2) (q220 e h1 h2) (by decide)
theorem q222 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q197 e h0 h2) (q220 e h1 h2) (by decide)
theorem q223 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q199 e h0 h2) (q220 e h1 h2) (by decide)
theorem q224 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q201 e h0 h2) (q220 e h1 h2) (by decide)
theorem q225 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q203 e h0 h2) (q220 e h1 h2) (by decide)
theorem q226 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) : Typed Op6cd54e290b69.G e lit8 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q221 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q222 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q223 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q224 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q225 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q227 (e : Env 4) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit6 4 := .app (q193 e h2) (q49 e h1) (by decide)
theorem q228 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q194 e h0 h2) (q227 e h1 h2) (by decide)
theorem q229 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q197 e h0 h2) (q227 e h1 h2) (by decide)
theorem q230 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q199 e h0 h2) (q227 e h1 h2) (by decide)
theorem q231 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q201 e h0 h2) (q227 e h1 h2) (by decide)
theorem q232 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op6cd54e290b69.G e lit7 4 := .app (q203 e h0 h2) (q227 e h1 h2) (by decide)
theorem q233 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) : Typed Op6cd54e290b69.G e lit8 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q228 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q229 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q230 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q231 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q232 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q234 (e : Env 4) (h0 : e 0 = 4) : Typed Op6cd54e290b69.G e lit9 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q205 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q212 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q219 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q226 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q233 (push 4 e) rfl h0).weaken _ (by decide)
theorem q235 (e : Env 4) (h0 : e 0 = 4) : Typed Op6cd54e290b69.G e lit10 4 := .app (q8 e h0) (q234 e h0) (by decide)
theorem q236 (e : Env 4) (h0 : e 0 = 4) : Typed Op6cd54e290b69.G e lit12 4 := .app (q235 e h0) (q59 e) (by decide)
theorem q237 (e : Env 4)  : Typed Op6cd54e290b69.G e lit13 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q60 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q104 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q148 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q192 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q236 (push 4 e) rfl).weaken _ (by decide)
theorem q238 (e : Env 4)  : Typed Op6cd54e290b69.G e lit14 1 := .app (q10 e) (q237 e) (by decide)
theorem q239 (e : Env 4) (h1 : e 1 = 1) : Typed Op6cd54e290b69.G e lit15 0 := .app (q238 e) (q25 e h1) (by decide)
theorem q240 (e : Env 4) (h0 : e 0 = 0) : Typed Op6cd54e290b69.G e lit16 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q13 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q13 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q13 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q13 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q13 (push 4 e) h0).weaken _ (by decide)
theorem q241 (e : Env 4) (h0 : e 0 = 1) : Typed Op6cd54e290b69.G e lit16 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q25 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q25 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q25 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q25 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q25 (push 4 e) h0).weaken _ (by decide)
theorem q242 (e : Env 4) (h0 : e 0 = 2) : Typed Op6cd54e290b69.G e lit16 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q33 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q33 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q33 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q33 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q33 (push 4 e) h0).weaken _ (by decide)
theorem q243 (e : Env 4) (h0 : e 0 = 3) : Typed Op6cd54e290b69.G e lit16 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q41 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q41 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q41 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q41 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q41 (push 4 e) h0).weaken _ (by decide)
theorem q244 (e : Env 4) (h0 : e 0 = 4) : Typed Op6cd54e290b69.G e lit16 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q49 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q49 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q49 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q49 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q49 (push 4 e) h0).weaken _ (by decide)
theorem q245 (e : Env 4)  : Typed Op6cd54e290b69.G e lit17 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q240 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q241 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q242 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q243 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q244 (push 4 e) rfl).weaken _ (by decide)
theorem q246 (e : Env 4) (h0 : e 0 = 0) : Typed Op6cd54e290b69.G e lit18 0 := .app (q0 e h0) (q245 e) (by decide)
theorem q247 (e : Env 4)  : Typed Op6cd54e290b69.G e lit19 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q59 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q59 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q59 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q59 (push 3 e)).weaken _ (by decide)
  · subst a; exact (q59 (push 4 e)).weaken _ (by decide)
theorem q248 (e : Env 4) (h0 : e 0 = 0) : Typed Op6cd54e290b69.G e lit20 0 := .app (q0 e h0) (q247 e) (by decide)
theorem q249 (e : Env 4) (h4 : e 4 = 0) : Typed Op6cd54e290b69.G e lit21 0 := .var _ _ (by rw [h4]; decide)
theorem q250 (e : Env 4) (h0 : e 0 = 0) (h4 : e 4 = 0) : Typed Op6cd54e290b69.G e lit22 0 := .app (q246 e h0) (q249 e h4) (by decide)
theorem q251 (e : Env 4) (h0 : e 0 = 1) : Typed Op6cd54e290b69.G e lit18 4 := .app (q2 e h0) (q245 e) (by decide)
theorem q252 (e : Env 4) (h0 : e 0 = 1) (h4 : e 4 = 0) : Typed Op6cd54e290b69.G e lit22 4 := .app (q251 e h0) (q249 e h4) (by decide)
theorem q253 (e : Env 4) (h0 : e 0 = 2) : Typed Op6cd54e290b69.G e lit18 4 := .app (q4 e h0) (q245 e) (by decide)
theorem q254 (e : Env 4) (h0 : e 0 = 2) (h4 : e 4 = 0) : Typed Op6cd54e290b69.G e lit22 4 := .app (q253 e h0) (q249 e h4) (by decide)
theorem q255 (e : Env 4) (h0 : e 0 = 3) : Typed Op6cd54e290b69.G e lit18 4 := .app (q6 e h0) (q245 e) (by decide)
theorem q256 (e : Env 4) (h0 : e 0 = 3) (h4 : e 4 = 0) : Typed Op6cd54e290b69.G e lit22 4 := .app (q255 e h0) (q249 e h4) (by decide)
theorem q257 (e : Env 4) (h0 : e 0 = 4) : Typed Op6cd54e290b69.G e lit18 4 := .app (q8 e h0) (q245 e) (by decide)
theorem q258 (e : Env 4) (h0 : e 0 = 4) (h4 : e 4 = 0) : Typed Op6cd54e290b69.G e lit22 4 := .app (q257 e h0) (q249 e h4) (by decide)
theorem q259 (e : Env 4) (h3 : e 3 = 0) : Typed Op6cd54e290b69.G e lit23 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q250 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q252 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q254 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q256 (push 3 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q258 (push 4 e) rfl h3).weaken _ (by decide)
theorem q260 (e : Env 4) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op6cd54e290b69.G e lit24 0 := .app (q248 e h0) (q259 e h3) (by decide)
theorem q261 (e : Env 4) (h0 : e 0 = 1) : Typed Op6cd54e290b69.G e lit20 4 := .app (q2 e h0) (q247 e) (by decide)
theorem q262 (e : Env 4) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op6cd54e290b69.G e lit24 4 := .app (q261 e h0) (q259 e h3) (by decide)
theorem q263 (e : Env 4) (h0 : e 0 = 2) : Typed Op6cd54e290b69.G e lit20 4 := .app (q4 e h0) (q247 e) (by decide)
theorem q264 (e : Env 4) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op6cd54e290b69.G e lit24 4 := .app (q263 e h0) (q259 e h3) (by decide)
theorem q265 (e : Env 4) (h0 : e 0 = 3) : Typed Op6cd54e290b69.G e lit20 4 := .app (q6 e h0) (q247 e) (by decide)
theorem q266 (e : Env 4) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op6cd54e290b69.G e lit24 4 := .app (q265 e h0) (q259 e h3) (by decide)
theorem q267 (e : Env 4) (h0 : e 0 = 4) : Typed Op6cd54e290b69.G e lit20 4 := .app (q8 e h0) (q247 e) (by decide)
theorem q268 (e : Env 4) (h0 : e 0 = 4) (h3 : e 3 = 0) : Typed Op6cd54e290b69.G e lit24 4 := .app (q267 e h0) (q259 e h3) (by decide)
theorem q269 (e : Env 4) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit25 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q260 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q262 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q264 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q266 (push 3 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q268 (push 4 e) rfl h2).weaken _ (by decide)
theorem q270 (e : Env 4) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit26 0 := .app (q246 e h0) (q269 e h2) (by decide)
theorem q271 (e : Env 4) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit26 4 := .app (q251 e h0) (q269 e h2) (by decide)
theorem q272 (e : Env 4) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit26 4 := .app (q253 e h0) (q269 e h2) (by decide)
theorem q273 (e : Env 4) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit26 4 := .app (q255 e h0) (q269 e h2) (by decide)
theorem q274 (e : Env 4) (h0 : e 0 = 4) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit26 4 := .app (q257 e h0) (q269 e h2) (by decide)
theorem q275 (e : Env 4) (h1 : e 1 = 0) : Typed Op6cd54e290b69.G e lit27 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q270 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q271 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q272 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q273 (push 3 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q274 (push 4 e) rfl h1).weaken _ (by decide)
theorem q276 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op6cd54e290b69.G e lit28 0 := .app (q246 e h0) (q275 e h1) (by decide)
theorem q277 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op6cd54e290b69.G e lit28 4 := .app (q251 e h0) (q275 e h1) (by decide)
theorem q278 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op6cd54e290b69.G e lit28 4 := .app (q253 e h0) (q275 e h1) (by decide)
theorem q279 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op6cd54e290b69.G e lit28 4 := .app (q255 e h0) (q275 e h1) (by decide)
theorem q280 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) : Typed Op6cd54e290b69.G e lit28 4 := .app (q257 e h0) (q275 e h1) (by decide)
theorem q281 (e : Env 4) (h0 : e 0 = 0) : Typed Op6cd54e290b69.G e lit29 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q276 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q277 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q278 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q279 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q280 (push 4 e) rfl h0).weaken _ (by decide)
end Blc.Floor45.Probe9692402110306
