import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9692869695990D0

set_option Elab.async false
namespace Blc.Floor45.Probe9692869695990
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q141 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q108 e h0 h2) (by decide)
theorem q142 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q116 e h0 h2) (by decide)
theorem q143 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q124 e h0 h2) (by decide)
theorem q144 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op767ae883a0ae.G e lit9 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q139 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q140 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q141 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q142 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q143 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q145 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q92 e h0 h2) (by decide)
theorem q146 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q100 e h0 h2) (by decide)
theorem q147 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q108 e h0 h2) (by decide)
theorem q148 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q116 e h0 h2) (by decide)
theorem q149 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q124 e h0 h2) (by decide)
theorem q150 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) : Typed Op767ae883a0ae.G e lit9 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q145 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q146 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q147 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q148 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q149 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q151 (e : Env 4) (h0 : e 0 = 1) : Typed Op767ae883a0ae.G e lit10 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q126 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q132 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q138 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q144 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q150 (push 4 e) rfl h0).weaken _ (by decide)
theorem q152 (e : Env 4) (h0 : e 0 = 1) : Typed Op767ae883a0ae.G e lit11 0 := .app (q2 e h0) (q151 e h0) (by decide)
theorem q153 (e : Env 4) (h0 : e 0 = 1) : Typed Op767ae883a0ae.G e lit12 0 := .app (q2 e h0) (q152 e h0) (by decide)
theorem q154 (e : Env 4) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit4 2 := .var _ _ (by rw [h3]; decide)
theorem q155 (e : Env 4) (h1 : e 1 = 0) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit5 0 := .app (q154 e h3) (q11 e h1) (by decide)
theorem q156 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q155 e h1 h3) (by decide)
theorem q157 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 0 := .app (q2 e h0) (q155 e h1 h3) (by decide)
theorem q158 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 0 := .app (q4 e h0) (q155 e h1 h3) (by decide)
theorem q159 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 0 := .app (q6 e h0) (q155 e h1 h3) (by decide)
theorem q160 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q155 e h1 h3) (by decide)
theorem q161 (e : Env 4) (h0 : e 0 = 0) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q156 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q157 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q158 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q159 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q160 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q162 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q161 e h0 h2) (by decide)
theorem q163 (e : Env 4) (h1 : e 1 = 1) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit5 0 := .app (q154 e h3) (q21 e h1) (by decide)
theorem q164 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q163 e h1 h3) (by decide)
theorem q165 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 0 := .app (q2 e h0) (q163 e h1 h3) (by decide)
theorem q166 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 0 := .app (q4 e h0) (q163 e h1 h3) (by decide)
theorem q167 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 0 := .app (q6 e h0) (q163 e h1 h3) (by decide)
theorem q168 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q163 e h1 h3) (by decide)
theorem q169 (e : Env 4) (h0 : e 0 = 1) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q164 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q165 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q166 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q167 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q168 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q170 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q169 e h0 h2) (by decide)
theorem q171 (e : Env 4) (h1 : e 1 = 2) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit5 2 := .app (q154 e h3) (q30 e h1) (by decide)
theorem q172 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q171 e h1 h3) (by decide)
theorem q173 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 0 := .app (q2 e h0) (q171 e h1 h3) (by decide)
theorem q174 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 2 := .app (q4 e h0) (q171 e h1 h3) (by decide)
theorem q175 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 4 := .app (q6 e h0) (q171 e h1 h3) (by decide)
theorem q176 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q171 e h1 h3) (by decide)
theorem q177 (e : Env 4) (h0 : e 0 = 2) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q172 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q173 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q174 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q175 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q176 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q178 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q177 e h0 h2) (by decide)
theorem q179 (e : Env 4) (h1 : e 1 = 3) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit5 4 := .app (q154 e h3) (q39 e h1) (by decide)
theorem q180 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q179 e h1 h3) (by decide)
theorem q181 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 4 := .app (q2 e h0) (q179 e h1 h3) (by decide)
theorem q182 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 4 := .app (q4 e h0) (q179 e h1 h3) (by decide)
theorem q183 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 4 := .app (q6 e h0) (q179 e h1 h3) (by decide)
theorem q184 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q179 e h1 h3) (by decide)
theorem q185 (e : Env 4) (h0 : e 0 = 3) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q180 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q181 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q182 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q183 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q184 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q186 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q185 e h0 h2) (by decide)
theorem q187 (e : Env 4) (h1 : e 1 = 4) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit5 4 := .app (q154 e h3) (q48 e h1) (by decide)
theorem q188 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q187 e h1 h3) (by decide)
theorem q189 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 4 := .app (q2 e h0) (q187 e h1 h3) (by decide)
theorem q190 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 4 := .app (q4 e h0) (q187 e h1 h3) (by decide)
theorem q191 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 4 := .app (q6 e h0) (q187 e h1 h3) (by decide)
theorem q192 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h3 : e 3 = 2) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q187 e h1 h3) (by decide)
theorem q193 (e : Env 4) (h0 : e 0 = 4) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q188 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q189 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q190 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q191 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q192 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q194 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q193 e h0 h2) (by decide)
theorem q195 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op767ae883a0ae.G e lit9 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q162 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q170 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q178 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q186 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q194 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q196 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q161 e h0 h2) (by decide)
theorem q197 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q169 e h0 h2) (by decide)
theorem q198 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q177 e h0 h2) (by decide)
theorem q199 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q185 e h0 h2) (by decide)
theorem q200 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q193 e h0 h2) (by decide)
theorem q201 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op767ae883a0ae.G e lit9 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q196 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q197 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q198 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q199 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q200 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q202 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 0 := .app (q30 e h1) (q161 e h0 h2) (by decide)
theorem q203 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 0 := .app (q30 e h1) (q169 e h0 h2) (by decide)
theorem q204 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 2 := .app (q30 e h1) (q177 e h0 h2) (by decide)
theorem q205 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 4 := .app (q30 e h1) (q185 e h0 h2) (by decide)
theorem q206 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 4 := .app (q30 e h1) (q193 e h0 h2) (by decide)
theorem q207 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op767ae883a0ae.G e lit9 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q202 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q203 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q204 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q205 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q206 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q208 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q161 e h0 h2) (by decide)
theorem q209 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q169 e h0 h2) (by decide)
theorem q210 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q177 e h0 h2) (by decide)
theorem q211 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q185 e h0 h2) (by decide)
theorem q212 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q193 e h0 h2) (by decide)
theorem q213 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op767ae883a0ae.G e lit9 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q208 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q209 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q210 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q211 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q212 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q214 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q161 e h0 h2) (by decide)
theorem q215 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q169 e h0 h2) (by decide)
theorem q216 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q177 e h0 h2) (by decide)
theorem q217 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q185 e h0 h2) (by decide)
theorem q218 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q193 e h0 h2) (by decide)
theorem q219 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) : Typed Op767ae883a0ae.G e lit9 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q214 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q215 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q216 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q217 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q218 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q220 (e : Env 4) (h0 : e 0 = 2) : Typed Op767ae883a0ae.G e lit10 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q195 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q201 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q207 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q213 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q219 (push 4 e) rfl h0).weaken _ (by decide)
theorem q221 (e : Env 4) (h0 : e 0 = 2) : Typed Op767ae883a0ae.G e lit11 2 := .app (q4 e h0) (q220 e h0) (by decide)
theorem q222 (e : Env 4) (h0 : e 0 = 2) : Typed Op767ae883a0ae.G e lit12 2 := .app (q4 e h0) (q221 e h0) (by decide)
theorem q223 (e : Env 4) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit4 3 := .var _ _ (by rw [h3]; decide)
theorem q224 (e : Env 4) (h1 : e 1 = 0) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit5 0 := .app (q223 e h3) (q11 e h1) (by decide)
theorem q225 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q224 e h1 h3) (by decide)
theorem q226 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 0 := .app (q2 e h0) (q224 e h1 h3) (by decide)
theorem q227 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 0 := .app (q4 e h0) (q224 e h1 h3) (by decide)
theorem q228 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 0 := .app (q6 e h0) (q224 e h1 h3) (by decide)
theorem q229 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q224 e h1 h3) (by decide)
theorem q230 (e : Env 4) (h0 : e 0 = 0) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q225 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q226 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q227 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q228 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q229 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q231 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q230 e h0 h2) (by decide)
theorem q232 (e : Env 4) (h1 : e 1 = 1) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit5 4 := .app (q223 e h3) (q21 e h1) (by decide)
theorem q233 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q232 e h1 h3) (by decide)
theorem q234 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 4 := .app (q2 e h0) (q232 e h1 h3) (by decide)
theorem q235 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 4 := .app (q4 e h0) (q232 e h1 h3) (by decide)
theorem q236 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 4 := .app (q6 e h0) (q232 e h1 h3) (by decide)
theorem q237 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q232 e h1 h3) (by decide)
theorem q238 (e : Env 4) (h0 : e 0 = 1) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q233 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q234 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q235 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q236 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q237 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q239 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q238 e h0 h2) (by decide)
theorem q240 (e : Env 4) (h1 : e 1 = 2) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit5 4 := .app (q223 e h3) (q30 e h1) (by decide)
theorem q241 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q240 e h1 h3) (by decide)
theorem q242 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 4 := .app (q2 e h0) (q240 e h1 h3) (by decide)
theorem q243 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 4 := .app (q4 e h0) (q240 e h1 h3) (by decide)
theorem q244 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 4 := .app (q6 e h0) (q240 e h1 h3) (by decide)
theorem q245 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q240 e h1 h3) (by decide)
theorem q246 (e : Env 4) (h0 : e 0 = 2) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q241 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q242 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q243 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q244 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q245 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q247 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q246 e h0 h2) (by decide)
theorem q248 (e : Env 4) (h1 : e 1 = 3) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit5 4 := .app (q223 e h3) (q39 e h1) (by decide)
theorem q249 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q248 e h1 h3) (by decide)
theorem q250 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 4 := .app (q2 e h0) (q248 e h1 h3) (by decide)
theorem q251 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 4 := .app (q4 e h0) (q248 e h1 h3) (by decide)
theorem q252 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 4 := .app (q6 e h0) (q248 e h1 h3) (by decide)
theorem q253 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q248 e h1 h3) (by decide)
theorem q254 (e : Env 4) (h0 : e 0 = 3) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q249 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q250 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q251 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q252 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q253 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q255 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q254 e h0 h2) (by decide)
theorem q256 (e : Env 4) (h1 : e 1 = 4) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit5 4 := .app (q223 e h3) (q48 e h1) (by decide)
theorem q257 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q256 e h1 h3) (by decide)
theorem q258 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 4 := .app (q2 e h0) (q256 e h1 h3) (by decide)
theorem q259 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 4 := .app (q4 e h0) (q256 e h1 h3) (by decide)
theorem q260 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 4 := .app (q6 e h0) (q256 e h1 h3) (by decide)
theorem q261 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h3 : e 3 = 3) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q256 e h1 h3) (by decide)
theorem q262 (e : Env 4) (h0 : e 0 = 4) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q257 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q258 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q259 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q260 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q261 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q263 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q262 e h0 h2) (by decide)
theorem q264 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op767ae883a0ae.G e lit9 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q231 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q239 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q247 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q255 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q263 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q265 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q230 e h0 h2) (by decide)
theorem q266 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q238 e h0 h2) (by decide)
theorem q267 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q246 e h0 h2) (by decide)
theorem q268 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q254 e h0 h2) (by decide)
theorem q269 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q262 e h0 h2) (by decide)
theorem q270 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op767ae883a0ae.G e lit9 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q265 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q266 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q267 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q268 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q269 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q271 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 0 := .app (q30 e h1) (q230 e h0 h2) (by decide)
theorem q272 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 4 := .app (q30 e h1) (q238 e h0 h2) (by decide)
theorem q273 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 4 := .app (q30 e h1) (q246 e h0 h2) (by decide)
theorem q274 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 4 := .app (q30 e h1) (q254 e h0 h2) (by decide)
theorem q275 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op767ae883a0ae.G e lit8 4 := .app (q30 e h1) (q262 e h0 h2) (by decide)
theorem q276 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op767ae883a0ae.G e lit9 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q271 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q272 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q273 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q274 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q275 (push 4 e) rfl h0 h1).weaken _ (by decide)
end Blc.Floor45.Probe9692869695990
