import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9540465249654D0

set_option Elab.async false
namespace Blc.Floor45.Probe9540465249654
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q146 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q138 e h0 h2) (q28 e h1) (by decide)
theorem q147 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q140 e h0 h2) (q28 e h1) (by decide)
theorem q148 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q143 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q144 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q145 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q146 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q147 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q149 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 0 := .app (q132 e h0 h2) (q35 e h1) (by decide)
theorem q150 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q134 e h0 h2) (q35 e h1) (by decide)
theorem q151 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q136 e h0 h2) (q35 e h1) (by decide)
theorem q152 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q138 e h0 h2) (q35 e h1) (by decide)
theorem q153 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q140 e h0 h2) (q35 e h1) (by decide)
theorem q154 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q149 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q150 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q151 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q152 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q153 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q155 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 0 := .app (q132 e h0 h2) (q42 e h1) (by decide)
theorem q156 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q134 e h0 h2) (q42 e h1) (by decide)
theorem q157 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q136 e h0 h2) (q42 e h1) (by decide)
theorem q158 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 2 := .app (q138 e h0 h2) (q42 e h1) (by decide)
theorem q159 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q140 e h0 h2) (q42 e h1) (by decide)
theorem q160 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q155 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q156 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q157 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q158 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q159 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q161 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 2 := .app (q132 e h0 h2) (q49 e h1) (by decide)
theorem q162 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q134 e h0 h2) (q49 e h1) (by decide)
theorem q163 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q136 e h0 h2) (q49 e h1) (by decide)
theorem q164 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q138 e h0 h2) (q49 e h1) (by decide)
theorem q165 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q140 e h0 h2) (q49 e h1) (by decide)
theorem q166 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q161 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q162 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q163 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q164 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q165 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q167 (e : Env 4) (h0 : e 0 = 3) : Typed Op64d01e7a837a.G e lit8 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q142 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q148 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q154 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q160 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q166 (push 4 e) rfl h0).weaken _ (by decide)
theorem q168 (e : Env 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit3 4 := .var _ _ (by rw [h2]; decide)
theorem q169 (e : Env 4) (h0 : e 0 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 2 := .app (q2 e h0) (q168 e h2) (by decide)
theorem q170 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 1 := .app (q169 e h0 h2) (q5 e h1) (by decide)
theorem q171 (e : Env 4) (h0 : e 0 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q9 e h0) (q168 e h2) (by decide)
theorem q172 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q171 e h0 h2) (q5 e h1) (by decide)
theorem q173 (e : Env 4) (h0 : e 0 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q14 e h0) (q168 e h2) (by decide)
theorem q174 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q173 e h0 h2) (q5 e h1) (by decide)
theorem q175 (e : Env 4) (h0 : e 0 = 3) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q19 e h0) (q168 e h2) (by decide)
theorem q176 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q175 e h0 h2) (q5 e h1) (by decide)
theorem q177 (e : Env 4) (h0 : e 0 = 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q24 e h0) (q168 e h2) (by decide)
theorem q178 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q177 e h0 h2) (q5 e h1) (by decide)
theorem q179 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q170 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q172 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q174 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q176 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q178 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q180 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 1 := .app (q169 e h0 h2) (q28 e h1) (by decide)
theorem q181 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q171 e h0 h2) (q28 e h1) (by decide)
theorem q182 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q173 e h0 h2) (q28 e h1) (by decide)
theorem q183 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q175 e h0 h2) (q28 e h1) (by decide)
theorem q184 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q177 e h0 h2) (q28 e h1) (by decide)
theorem q185 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q180 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q181 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q182 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q183 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q184 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q186 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 1 := .app (q169 e h0 h2) (q35 e h1) (by decide)
theorem q187 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q171 e h0 h2) (q35 e h1) (by decide)
theorem q188 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q173 e h0 h2) (q35 e h1) (by decide)
theorem q189 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q175 e h0 h2) (q35 e h1) (by decide)
theorem q190 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q177 e h0 h2) (q35 e h1) (by decide)
theorem q191 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q186 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q187 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q188 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q189 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q190 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q192 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 2 := .app (q169 e h0 h2) (q42 e h1) (by decide)
theorem q193 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q171 e h0 h2) (q42 e h1) (by decide)
theorem q194 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q173 e h0 h2) (q42 e h1) (by decide)
theorem q195 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q175 e h0 h2) (q42 e h1) (by decide)
theorem q196 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q177 e h0 h2) (q42 e h1) (by decide)
theorem q197 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q192 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q193 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q194 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q195 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q196 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q198 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q169 e h0 h2) (q49 e h1) (by decide)
theorem q199 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q171 e h0 h2) (q49 e h1) (by decide)
theorem q200 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q173 e h0 h2) (q49 e h1) (by decide)
theorem q201 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q175 e h0 h2) (q49 e h1) (by decide)
theorem q202 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit6 4 := .app (q177 e h0 h2) (q49 e h1) (by decide)
theorem q203 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q198 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q199 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q200 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q201 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q202 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q204 (e : Env 4) (h0 : e 0 = 4) : Typed Op64d01e7a837a.G e lit8 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q179 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q185 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q191 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q197 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q203 (push 4 e) rfl h0).weaken _ (by decide)
theorem q205 (e : Env 4)  : Typed Op64d01e7a837a.G e lit9 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q56 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q93 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q130 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q167 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q204 (push 4 e) rfl).weaken _ (by decide)
theorem q206 (e : Env 4)  : Typed Op64d01e7a837a.G e lit10 2 := .app (q205 e) (q205 e) (by decide)
theorem q207 (e : Env 4) (h0 : e 0 = 0) : Typed Op64d01e7a837a.G e lit11 0 := .app (q2 e h0) (q206 e) (by decide)
theorem q208 (e : Env 4) (h0 : e 0 = 0) : Typed Op64d01e7a837a.G e lit12 0 := .app (q207 e h0) (q205 e) (by decide)
theorem q209 (e : Env 4) (h0 : e 0 = 1) : Typed Op64d01e7a837a.G e lit11 1 := .app (q9 e h0) (q206 e) (by decide)
theorem q210 (e : Env 4) (h0 : e 0 = 1) : Typed Op64d01e7a837a.G e lit12 1 := .app (q209 e h0) (q205 e) (by decide)
theorem q211 (e : Env 4) (h0 : e 0 = 2) : Typed Op64d01e7a837a.G e lit11 1 := .app (q14 e h0) (q206 e) (by decide)
theorem q212 (e : Env 4) (h0 : e 0 = 2) : Typed Op64d01e7a837a.G e lit12 1 := .app (q211 e h0) (q205 e) (by decide)
theorem q213 (e : Env 4) (h0 : e 0 = 3) : Typed Op64d01e7a837a.G e lit11 1 := .app (q19 e h0) (q206 e) (by decide)
theorem q214 (e : Env 4) (h0 : e 0 = 3) : Typed Op64d01e7a837a.G e lit12 1 := .app (q213 e h0) (q205 e) (by decide)
theorem q215 (e : Env 4) (h0 : e 0 = 4) : Typed Op64d01e7a837a.G e lit11 4 := .app (q24 e h0) (q206 e) (by decide)
theorem q216 (e : Env 4) (h0 : e 0 = 4) : Typed Op64d01e7a837a.G e lit12 4 := .app (q215 e h0) (q205 e) (by decide)
theorem q217 (e : Env 4)  : Typed Op64d01e7a837a.G e lit13 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q208 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q210 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q212 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q214 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q216 (push 4 e) rfl).weaken _ (by decide)
theorem q218 (e : Env 4)  : Typed Op64d01e7a837a.G e lit14 1 := .app (q217 e) (q205 e) (by decide)
theorem q219 (e : Env 4) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit15 0 := .app (q218 e) (q5 e h1) (by decide)
theorem q220 (e : Env 4) (h0 : e 0 = 0) : Typed Op64d01e7a837a.G e lit16 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q5 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q5 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q5 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q5 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q5 (push 4 e) h0).weaken _ (by decide)
theorem q221 (e : Env 4) (h0 : e 0 = 1) : Typed Op64d01e7a837a.G e lit16 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q28 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q28 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q28 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q28 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q28 (push 4 e) h0).weaken _ (by decide)
theorem q222 (e : Env 4) (h0 : e 0 = 2) : Typed Op64d01e7a837a.G e lit16 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q35 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q35 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q35 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q35 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q35 (push 4 e) h0).weaken _ (by decide)
theorem q223 (e : Env 4) (h0 : e 0 = 3) : Typed Op64d01e7a837a.G e lit16 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q42 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q42 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q42 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q42 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q42 (push 4 e) h0).weaken _ (by decide)
theorem q224 (e : Env 4) (h0 : e 0 = 4) : Typed Op64d01e7a837a.G e lit16 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q49 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q49 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q49 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q49 (push 3 e) h0).weaken _ (by decide)
  · subst a; exact (q49 (push 4 e) h0).weaken _ (by decide)
theorem q225 (e : Env 4)  : Typed Op64d01e7a837a.G e lit17 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q220 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q221 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q222 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q223 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q224 (push 4 e) rfl).weaken _ (by decide)
theorem q226 (e : Env 4) (h0 : e 0 = 0) : Typed Op64d01e7a837a.G e lit18 2 := .app (q0 e h0) (q225 e) (by decide)
theorem q227 (e : Env 4)  : Typed Op64d01e7a837a.G e lit19 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q0 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q7 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q12 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q17 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q22 (push 4 e) rfl).weaken _ (by decide)
theorem q228 (e : Env 4)  : Typed Op64d01e7a837a.G e lit20 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q227 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q227 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q227 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q227 (push 3 e)).weaken _ (by decide)
  · subst a; exact (q227 (push 4 e)).weaken _ (by decide)
theorem q229 (e : Env 4) (h0 : e 0 = 0) : Typed Op64d01e7a837a.G e lit21 2 := .app (q0 e h0) (q228 e) (by decide)
theorem q230 (e : Env 4) (h4 : e 4 = 4) : Typed Op64d01e7a837a.G e lit22 4 := .var _ _ (by rw [h4]; decide)
theorem q231 (e : Env 4) (h0 : e 0 = 0) (h4 : e 4 = 4) : Typed Op64d01e7a837a.G e lit23 4 := .app (q226 e h0) (q230 e h4) (by decide)
theorem q232 (e : Env 4) (h0 : e 0 = 1) : Typed Op64d01e7a837a.G e lit18 4 := .app (q7 e h0) (q225 e) (by decide)
theorem q233 (e : Env 4) (h0 : e 0 = 1) (h4 : e 4 = 4) : Typed Op64d01e7a837a.G e lit23 4 := .app (q232 e h0) (q230 e h4) (by decide)
theorem q234 (e : Env 4) (h0 : e 0 = 2) : Typed Op64d01e7a837a.G e lit18 4 := .app (q12 e h0) (q225 e) (by decide)
theorem q235 (e : Env 4) (h0 : e 0 = 2) (h4 : e 4 = 4) : Typed Op64d01e7a837a.G e lit23 4 := .app (q234 e h0) (q230 e h4) (by decide)
theorem q236 (e : Env 4) (h0 : e 0 = 3) : Typed Op64d01e7a837a.G e lit18 4 := .app (q17 e h0) (q225 e) (by decide)
theorem q237 (e : Env 4) (h0 : e 0 = 3) (h4 : e 4 = 4) : Typed Op64d01e7a837a.G e lit23 4 := .app (q236 e h0) (q230 e h4) (by decide)
theorem q238 (e : Env 4) (h0 : e 0 = 4) : Typed Op64d01e7a837a.G e lit18 4 := .app (q22 e h0) (q225 e) (by decide)
theorem q239 (e : Env 4) (h0 : e 0 = 4) (h4 : e 4 = 4) : Typed Op64d01e7a837a.G e lit23 4 := .app (q238 e h0) (q230 e h4) (by decide)
theorem q240 (e : Env 4) (h3 : e 3 = 4) : Typed Op64d01e7a837a.G e lit24 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q231 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q233 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q235 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q237 (push 3 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q239 (push 4 e) rfl h3).weaken _ (by decide)
theorem q241 (e : Env 4) (h0 : e 0 = 0) (h3 : e 3 = 4) : Typed Op64d01e7a837a.G e lit25 4 := .app (q229 e h0) (q240 e h3) (by decide)
theorem q242 (e : Env 4) (h0 : e 0 = 1) : Typed Op64d01e7a837a.G e lit21 4 := .app (q7 e h0) (q228 e) (by decide)
theorem q243 (e : Env 4) (h0 : e 0 = 1) (h3 : e 3 = 4) : Typed Op64d01e7a837a.G e lit25 4 := .app (q242 e h0) (q240 e h3) (by decide)
theorem q244 (e : Env 4) (h0 : e 0 = 2) : Typed Op64d01e7a837a.G e lit21 4 := .app (q12 e h0) (q228 e) (by decide)
theorem q245 (e : Env 4) (h0 : e 0 = 2) (h3 : e 3 = 4) : Typed Op64d01e7a837a.G e lit25 4 := .app (q244 e h0) (q240 e h3) (by decide)
theorem q246 (e : Env 4) (h0 : e 0 = 3) : Typed Op64d01e7a837a.G e lit21 4 := .app (q17 e h0) (q228 e) (by decide)
theorem q247 (e : Env 4) (h0 : e 0 = 3) (h3 : e 3 = 4) : Typed Op64d01e7a837a.G e lit25 4 := .app (q246 e h0) (q240 e h3) (by decide)
theorem q248 (e : Env 4) (h0 : e 0 = 4) : Typed Op64d01e7a837a.G e lit21 4 := .app (q22 e h0) (q228 e) (by decide)
theorem q249 (e : Env 4) (h0 : e 0 = 4) (h3 : e 3 = 4) : Typed Op64d01e7a837a.G e lit25 4 := .app (q248 e h0) (q240 e h3) (by decide)
theorem q250 (e : Env 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit26 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q241 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q243 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q245 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q247 (push 3 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q249 (push 4 e) rfl h2).weaken _ (by decide)
theorem q251 (e : Env 4) (h0 : e 0 = 0) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit27 4 := .app (q226 e h0) (q250 e h2) (by decide)
theorem q252 (e : Env 4) (h0 : e 0 = 1) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit27 4 := .app (q232 e h0) (q250 e h2) (by decide)
theorem q253 (e : Env 4) (h0 : e 0 = 2) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit27 4 := .app (q234 e h0) (q250 e h2) (by decide)
theorem q254 (e : Env 4) (h0 : e 0 = 3) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit27 4 := .app (q236 e h0) (q250 e h2) (by decide)
theorem q255 (e : Env 4) (h0 : e 0 = 4) (h2 : e 2 = 4) : Typed Op64d01e7a837a.G e lit27 4 := .app (q238 e h0) (q250 e h2) (by decide)
theorem q256 (e : Env 4) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit28 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q251 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q252 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q253 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q254 (push 3 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q255 (push 4 e) rfl h1).weaken _ (by decide)
theorem q257 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit29 4 := .app (q226 e h0) (q256 e h1) (by decide)
theorem q258 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit29 4 := .app (q232 e h0) (q256 e h1) (by decide)
theorem q259 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit29 4 := .app (q234 e h0) (q256 e h1) (by decide)
theorem q260 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit29 4 := .app (q236 e h0) (q256 e h1) (by decide)
theorem q261 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit29 4 := .app (q238 e h0) (q256 e h1) (by decide)
theorem q262 (e : Env 4) (h0 : e 0 = 4) : Typed Op64d01e7a837a.G e lit30 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q257 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q258 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q259 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q260 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q261 (push 4 e) rfl h0).weaken _ (by decide)
theorem q263 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit31 2 := .app (q219 e h1) (q262 e h0) (by decide)
end Blc.Floor45.Probe9540465249654
