import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9692869757870D0

set_option Elab.async false
namespace Blc.Floor45.Probe9692869757870
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q150 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op92031aceec5b.G e lit8 4 := .app (q11 e h2) (q149 e h0 h1) (by decide)
theorem q151 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op92031aceec5b.G e lit9 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q122 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q129 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q136 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q143 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q150 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q152 (e : Env 4) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit3 3 := .var _ _ (by rw [h2]; decide)
theorem q153 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 2 := .app (q13 e h0 h1) (q152 e h2) (by decide)
theorem q154 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 2 := .app (q15 e h0 h1) (q152 e h2) (by decide)
theorem q155 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q17 e h0 h1) (q152 e h2) (by decide)
theorem q156 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q19 e h0 h1) (q152 e h2) (by decide)
theorem q157 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q21 e h0 h1) (q152 e h2) (by decide)
theorem q158 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op92031aceec5b.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q153 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q154 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q155 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q156 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q157 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q159 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op92031aceec5b.G e lit8 4 := .app (q11 e h2) (q158 e h0 h1) (by decide)
theorem q160 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 2 := .app (q26 e h0 h1) (q152 e h2) (by decide)
theorem q161 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 2 := .app (q28 e h0 h1) (q152 e h2) (by decide)
theorem q162 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q30 e h0 h1) (q152 e h2) (by decide)
theorem q163 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q32 e h0 h1) (q152 e h2) (by decide)
theorem q164 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q34 e h0 h1) (q152 e h2) (by decide)
theorem q165 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op92031aceec5b.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q160 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q161 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q162 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q163 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q164 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q166 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op92031aceec5b.G e lit8 4 := .app (q11 e h2) (q165 e h0 h1) (by decide)
theorem q167 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q39 e h0 h1) (q152 e h2) (by decide)
theorem q168 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q41 e h0 h1) (q152 e h2) (by decide)
theorem q169 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q43 e h0 h1) (q152 e h2) (by decide)
theorem q170 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q45 e h0 h1) (q152 e h2) (by decide)
theorem q171 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q47 e h0 h1) (q152 e h2) (by decide)
theorem q172 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op92031aceec5b.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q167 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q168 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q169 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q170 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q171 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q173 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op92031aceec5b.G e lit8 4 := .app (q11 e h2) (q172 e h0 h1) (by decide)
theorem q174 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q52 e h0 h1) (q152 e h2) (by decide)
theorem q175 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q54 e h0 h1) (q152 e h2) (by decide)
theorem q176 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q56 e h0 h1) (q152 e h2) (by decide)
theorem q177 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q58 e h0 h1) (q152 e h2) (by decide)
theorem q178 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q60 e h0 h1) (q152 e h2) (by decide)
theorem q179 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op92031aceec5b.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q174 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q175 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q176 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q177 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q178 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q180 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op92031aceec5b.G e lit8 4 := .app (q11 e h2) (q179 e h0 h1) (by decide)
theorem q181 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q65 e h0 h1) (q152 e h2) (by decide)
theorem q182 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q67 e h0 h1) (q152 e h2) (by decide)
theorem q183 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q69 e h0 h1) (q152 e h2) (by decide)
theorem q184 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q71 e h0 h1) (q152 e h2) (by decide)
theorem q185 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op92031aceec5b.G e lit6 4 := .app (q73 e h0 h1) (q152 e h2) (by decide)
theorem q186 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) : Typed Op92031aceec5b.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q181 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q182 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q183 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q184 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q185 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q187 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op92031aceec5b.G e lit8 4 := .app (q11 e h2) (q186 e h0 h1) (by decide)
theorem q188 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op92031aceec5b.G e lit9 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q159 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q166 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q173 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q180 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q187 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q189 (e : Env 4) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit3 4 := .var _ _ (by rw [h2]; decide)
theorem q190 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q13 e h0 h1) (q189 e h2) (by decide)
theorem q191 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q15 e h0 h1) (q189 e h2) (by decide)
theorem q192 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q17 e h0 h1) (q189 e h2) (by decide)
theorem q193 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q19 e h0 h1) (q189 e h2) (by decide)
theorem q194 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q21 e h0 h1) (q189 e h2) (by decide)
theorem q195 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) : Typed Op92031aceec5b.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q190 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q191 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q192 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q193 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q194 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q196 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op92031aceec5b.G e lit8 4 := .app (q11 e h2) (q195 e h0 h1) (by decide)
theorem q197 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q26 e h0 h1) (q189 e h2) (by decide)
theorem q198 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q28 e h0 h1) (q189 e h2) (by decide)
theorem q199 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q30 e h0 h1) (q189 e h2) (by decide)
theorem q200 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q32 e h0 h1) (q189 e h2) (by decide)
theorem q201 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q34 e h0 h1) (q189 e h2) (by decide)
theorem q202 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) : Typed Op92031aceec5b.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q197 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q198 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q199 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q200 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q201 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q203 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op92031aceec5b.G e lit8 4 := .app (q11 e h2) (q202 e h0 h1) (by decide)
theorem q204 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q39 e h0 h1) (q189 e h2) (by decide)
theorem q205 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q41 e h0 h1) (q189 e h2) (by decide)
theorem q206 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q43 e h0 h1) (q189 e h2) (by decide)
theorem q207 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q45 e h0 h1) (q189 e h2) (by decide)
theorem q208 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q47 e h0 h1) (q189 e h2) (by decide)
theorem q209 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) : Typed Op92031aceec5b.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q204 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q205 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q206 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q207 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q208 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q210 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op92031aceec5b.G e lit8 4 := .app (q11 e h2) (q209 e h0 h1) (by decide)
theorem q211 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q52 e h0 h1) (q189 e h2) (by decide)
theorem q212 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q54 e h0 h1) (q189 e h2) (by decide)
theorem q213 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q56 e h0 h1) (q189 e h2) (by decide)
theorem q214 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q58 e h0 h1) (q189 e h2) (by decide)
theorem q215 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q60 e h0 h1) (q189 e h2) (by decide)
theorem q216 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) : Typed Op92031aceec5b.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q211 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q212 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q213 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q214 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q215 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q217 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op92031aceec5b.G e lit8 4 := .app (q11 e h2) (q216 e h0 h1) (by decide)
theorem q218 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q65 e h0 h1) (q189 e h2) (by decide)
theorem q219 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q67 e h0 h1) (q189 e h2) (by decide)
theorem q220 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q69 e h0 h1) (q189 e h2) (by decide)
theorem q221 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q71 e h0 h1) (q189 e h2) (by decide)
theorem q222 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op92031aceec5b.G e lit6 4 := .app (q73 e h0 h1) (q189 e h2) (by decide)
theorem q223 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) : Typed Op92031aceec5b.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q218 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q219 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q220 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q221 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q222 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q224 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op92031aceec5b.G e lit8 4 := .app (q11 e h2) (q223 e h0 h1) (by decide)
theorem q225 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) : Typed Op92031aceec5b.G e lit9 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q196 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q203 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q210 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q217 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q224 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q226 (e : Env 4) (h0 : e 0 = 0) : Typed Op92031aceec5b.G e lit10 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q77 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q114 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q151 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q188 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q225 (push 4 e) rfl h0).weaken _ (by decide)
theorem q227 (e : Env 4) (h0 : e 0 = 0) : Typed Op92031aceec5b.G e lit11 0 := .app (q0 e h0) (q226 e h0) (by decide)
theorem q228 (e : Env 4) (h0 : e 0 = 0) : Typed Op92031aceec5b.G e lit12 0 := .app (q0 e h0) (q227 e h0) (by decide)
theorem q229 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 0 := .app (q78 e h2) (q23 e h0 h1) (by decide)
theorem q230 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 0 := .app (q78 e h2) (q36 e h0 h1) (by decide)
theorem q231 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 2 := .app (q78 e h2) (q49 e h0 h1) (by decide)
theorem q232 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 2 := .app (q78 e h2) (q62 e h0 h1) (by decide)
theorem q233 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 4 := .app (q78 e h2) (q75 e h0 h1) (by decide)
theorem q234 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op92031aceec5b.G e lit9 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q229 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q230 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q231 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q232 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q233 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q235 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 0 := .app (q78 e h2) (q84 e h0 h1) (by decide)
theorem q236 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 0 := .app (q78 e h2) (q91 e h0 h1) (by decide)
theorem q237 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 2 := .app (q78 e h2) (q98 e h0 h1) (by decide)
theorem q238 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 2 := .app (q78 e h2) (q105 e h0 h1) (by decide)
theorem q239 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 4 := .app (q78 e h2) (q112 e h0 h1) (by decide)
theorem q240 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op92031aceec5b.G e lit9 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q235 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q236 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q237 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q238 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q239 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q241 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 2 := .app (q78 e h2) (q121 e h0 h1) (by decide)
theorem q242 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 2 := .app (q78 e h2) (q128 e h0 h1) (by decide)
theorem q243 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 2 := .app (q78 e h2) (q135 e h0 h1) (by decide)
theorem q244 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 4 := .app (q78 e h2) (q142 e h0 h1) (by decide)
theorem q245 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 4 := .app (q78 e h2) (q149 e h0 h1) (by decide)
theorem q246 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op92031aceec5b.G e lit9 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q241 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q242 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q243 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q244 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q245 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q247 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 4 := .app (q78 e h2) (q158 e h0 h1) (by decide)
theorem q248 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 4 := .app (q78 e h2) (q165 e h0 h1) (by decide)
theorem q249 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 4 := .app (q78 e h2) (q172 e h0 h1) (by decide)
theorem q250 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 4 := .app (q78 e h2) (q179 e h0 h1) (by decide)
theorem q251 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 4 := .app (q78 e h2) (q186 e h0 h1) (by decide)
theorem q252 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op92031aceec5b.G e lit9 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q247 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q248 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q249 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q250 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q251 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q253 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 4 := .app (q78 e h2) (q195 e h0 h1) (by decide)
theorem q254 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 4 := .app (q78 e h2) (q202 e h0 h1) (by decide)
theorem q255 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 4 := .app (q78 e h2) (q209 e h0 h1) (by decide)
theorem q256 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 4 := .app (q78 e h2) (q216 e h0 h1) (by decide)
theorem q257 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op92031aceec5b.G e lit8 4 := .app (q78 e h2) (q223 e h0 h1) (by decide)
theorem q258 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) : Typed Op92031aceec5b.G e lit9 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q253 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q254 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q255 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q256 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q257 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q259 (e : Env 4) (h0 : e 0 = 1) : Typed Op92031aceec5b.G e lit10 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q234 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q240 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q246 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q252 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q258 (push 4 e) rfl h0).weaken _ (by decide)
theorem q260 (e : Env 4) (h0 : e 0 = 1) : Typed Op92031aceec5b.G e lit11 0 := .app (q2 e h0) (q259 e h0) (by decide)
theorem q261 (e : Env 4) (h0 : e 0 = 1) : Typed Op92031aceec5b.G e lit12 0 := .app (q2 e h0) (q260 e h0) (by decide)
theorem q262 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op92031aceec5b.G e lit8 2 := .app (q115 e h2) (q23 e h0 h1) (by decide)
theorem q263 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op92031aceec5b.G e lit8 2 := .app (q115 e h2) (q36 e h0 h1) (by decide)
theorem q264 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op92031aceec5b.G e lit8 2 := .app (q115 e h2) (q49 e h0 h1) (by decide)
theorem q265 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op92031aceec5b.G e lit8 2 := .app (q115 e h2) (q62 e h0 h1) (by decide)
theorem q266 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op92031aceec5b.G e lit8 4 := .app (q115 e h2) (q75 e h0 h1) (by decide)
theorem q267 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op92031aceec5b.G e lit9 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q262 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q263 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q264 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q265 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q266 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q268 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op92031aceec5b.G e lit8 2 := .app (q115 e h2) (q84 e h0 h1) (by decide)
theorem q269 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op92031aceec5b.G e lit8 2 := .app (q115 e h2) (q91 e h0 h1) (by decide)
theorem q270 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op92031aceec5b.G e lit8 2 := .app (q115 e h2) (q98 e h0 h1) (by decide)
theorem q271 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op92031aceec5b.G e lit8 2 := .app (q115 e h2) (q105 e h0 h1) (by decide)
theorem q272 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op92031aceec5b.G e lit8 4 := .app (q115 e h2) (q112 e h0 h1) (by decide)
theorem q273 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op92031aceec5b.G e lit9 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q268 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q269 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q270 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q271 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q272 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q274 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op92031aceec5b.G e lit8 2 := .app (q115 e h2) (q121 e h0 h1) (by decide)
theorem q275 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op92031aceec5b.G e lit8 2 := .app (q115 e h2) (q128 e h0 h1) (by decide)
theorem q276 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op92031aceec5b.G e lit8 2 := .app (q115 e h2) (q135 e h0 h1) (by decide)
theorem q277 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op92031aceec5b.G e lit8 4 := .app (q115 e h2) (q142 e h0 h1) (by decide)
theorem q278 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op92031aceec5b.G e lit8 4 := .app (q115 e h2) (q149 e h0 h1) (by decide)
theorem q279 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op92031aceec5b.G e lit9 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q274 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q275 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q276 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q277 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q278 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q280 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op92031aceec5b.G e lit8 4 := .app (q115 e h2) (q158 e h0 h1) (by decide)
end Blc.Floor45.Probe9692869757870
