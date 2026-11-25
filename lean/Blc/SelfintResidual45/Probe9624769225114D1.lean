import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9624769225114D0

set_option Elab.async false
namespace Blc.Floor45.Probe9624769225114
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q135 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q131 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q132 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q133 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q134 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q136 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q135 e h0 h1 h2 h4) (by decide)
theorem q137 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q118 e h2 h3 h5) (q52 e h0 h1) (by decide)
theorem q138 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q118 e h2 h3 h5) (q54 e h0 h1) (by decide)
theorem q139 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q118 e h2 h3 h5) (q56 e h0 h1) (by decide)
theorem q140 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q118 e h2 h3 h5) (q58 e h0 h1) (by decide)
theorem q141 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q137 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q138 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q139 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q140 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q142 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q141 e h0 h1 h2 h4) (by decide)
theorem q143 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h3 : e 3 = 1) : Typed Op1ca1a77265e6.G e lit14 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q124 (push 0 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q130 (push 1 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q136 (push 2 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q142 (push 3 e) rfl h0 h1 h3).weaken _ (by decide)
theorem q144 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 1) : Typed Op1ca1a77265e6.G e lit15 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q62 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q89 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q116 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q143 (push 3 e) rfl h0 h2).weaken _ (by decide)
theorem q145 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 1) : Typed Op1ca1a77265e6.G e lit16 0 := .app (q12 e) (q144 e h0 h2) (by decide)
theorem q146 (e : Env 3) (h3 : e 3 = 1) : Typed Op1ca1a77265e6.G e lit5 1 := .var _ _ (by rw [h3]; decide)
theorem q147 (e : Env 3) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit7 0 := .app (q146 e h3) (q15 e h5) (by decide)
theorem q148 (e : Env 3) (h2 : e 2 = 0) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit8 0 := .app (q13 e h2) (q147 e h3 h5) (by decide)
theorem q149 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q148 e h2 h3 h5) (q19 e h0 h1) (by decide)
theorem q150 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q148 e h2 h3 h5) (q21 e h0 h1) (by decide)
theorem q151 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q148 e h2 h3 h5) (q23 e h0 h1) (by decide)
theorem q152 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q148 e h2 h3 h5) (q25 e h0 h1) (by decide)
theorem q153 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q149 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q150 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q151 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q152 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q154 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q153 e h0 h1 h2 h4) (by decide)
theorem q155 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q148 e h2 h3 h5) (q30 e h0 h1) (by decide)
theorem q156 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q148 e h2 h3 h5) (q32 e h0 h1) (by decide)
theorem q157 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q148 e h2 h3 h5) (q34 e h0 h1) (by decide)
theorem q158 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q148 e h2 h3 h5) (q36 e h0 h1) (by decide)
theorem q159 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q155 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q156 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q157 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q158 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q160 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q159 e h0 h1 h2 h4) (by decide)
theorem q161 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q148 e h2 h3 h5) (q41 e h0 h1) (by decide)
theorem q162 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q148 e h2 h3 h5) (q43 e h0 h1) (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q148 e h2 h3 h5) (q45 e h0 h1) (by decide)
theorem q164 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q148 e h2 h3 h5) (q47 e h0 h1) (by decide)
theorem q165 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q161 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q162 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q163 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q164 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q166 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q165 e h0 h1 h2 h4) (by decide)
theorem q167 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q148 e h2 h3 h5) (q52 e h0 h1) (by decide)
theorem q168 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q148 e h2 h3 h5) (q54 e h0 h1) (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q148 e h2 h3 h5) (q56 e h0 h1) (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q148 e h2 h3 h5) (q58 e h0 h1) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q167 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q168 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q169 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q170 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q172 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q171 e h0 h1 h2 h4) (by decide)
theorem q173 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h3 : e 3 = 1) : Typed Op1ca1a77265e6.G e lit14 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q154 (push 0 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q160 (push 1 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q166 (push 2 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q172 (push 3 e) rfl h0 h1 h3).weaken _ (by decide)
theorem q174 (e : Env 3) (h2 : e 2 = 1) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit8 0 := .app (q63 e h2) (q147 e h3 h5) (by decide)
theorem q175 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q174 e h2 h3 h5) (q19 e h0 h1) (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q174 e h2 h3 h5) (q21 e h0 h1) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q174 e h2 h3 h5) (q23 e h0 h1) (by decide)
theorem q178 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q174 e h2 h3 h5) (q25 e h0 h1) (by decide)
theorem q179 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q175 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q176 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q177 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q178 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q180 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q179 e h0 h1 h2 h4) (by decide)
theorem q181 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q174 e h2 h3 h5) (q30 e h0 h1) (by decide)
theorem q182 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q174 e h2 h3 h5) (q32 e h0 h1) (by decide)
theorem q183 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q174 e h2 h3 h5) (q34 e h0 h1) (by decide)
theorem q184 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q174 e h2 h3 h5) (q36 e h0 h1) (by decide)
theorem q185 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q181 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q182 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q183 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q184 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q186 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q185 e h0 h1 h2 h4) (by decide)
theorem q187 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q174 e h2 h3 h5) (q41 e h0 h1) (by decide)
theorem q188 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q174 e h2 h3 h5) (q43 e h0 h1) (by decide)
theorem q189 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q174 e h2 h3 h5) (q45 e h0 h1) (by decide)
theorem q190 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q174 e h2 h3 h5) (q47 e h0 h1) (by decide)
theorem q191 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q187 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q188 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q189 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q190 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q192 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q191 e h0 h1 h2 h4) (by decide)
theorem q193 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q174 e h2 h3 h5) (q52 e h0 h1) (by decide)
theorem q194 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q174 e h2 h3 h5) (q54 e h0 h1) (by decide)
theorem q195 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q174 e h2 h3 h5) (q56 e h0 h1) (by decide)
theorem q196 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q174 e h2 h3 h5) (q58 e h0 h1) (by decide)
theorem q197 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q193 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q194 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q195 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q196 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q198 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q197 e h0 h1 h2 h4) (by decide)
theorem q199 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h3 : e 3 = 1) : Typed Op1ca1a77265e6.G e lit14 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q180 (push 0 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q186 (push 1 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q192 (push 2 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q198 (push 3 e) rfl h0 h1 h3).weaken _ (by decide)
theorem q200 (e : Env 3) (h2 : e 2 = 2) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit8 1 := .app (q90 e h2) (q147 e h3 h5) (by decide)
theorem q201 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q200 e h2 h3 h5) (q19 e h0 h1) (by decide)
theorem q202 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q200 e h2 h3 h5) (q21 e h0 h1) (by decide)
theorem q203 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q200 e h2 h3 h5) (q23 e h0 h1) (by decide)
theorem q204 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q200 e h2 h3 h5) (q25 e h0 h1) (by decide)
theorem q205 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q201 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q202 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q203 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q204 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q206 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q205 e h0 h1 h2 h4) (by decide)
theorem q207 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q200 e h2 h3 h5) (q30 e h0 h1) (by decide)
theorem q208 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q200 e h2 h3 h5) (q32 e h0 h1) (by decide)
theorem q209 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q200 e h2 h3 h5) (q34 e h0 h1) (by decide)
theorem q210 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q200 e h2 h3 h5) (q36 e h0 h1) (by decide)
theorem q211 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q207 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q208 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q209 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q210 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q212 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q211 e h0 h1 h2 h4) (by decide)
theorem q213 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q200 e h2 h3 h5) (q41 e h0 h1) (by decide)
theorem q214 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q200 e h2 h3 h5) (q43 e h0 h1) (by decide)
theorem q215 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q200 e h2 h3 h5) (q45 e h0 h1) (by decide)
theorem q216 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q200 e h2 h3 h5) (q47 e h0 h1) (by decide)
theorem q217 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q213 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q214 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q215 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q216 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q218 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q217 e h0 h1 h2 h4) (by decide)
theorem q219 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q200 e h2 h3 h5) (q52 e h0 h1) (by decide)
theorem q220 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q200 e h2 h3 h5) (q54 e h0 h1) (by decide)
theorem q221 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q200 e h2 h3 h5) (q56 e h0 h1) (by decide)
theorem q222 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q200 e h2 h3 h5) (q58 e h0 h1) (by decide)
theorem q223 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q219 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q220 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q221 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q222 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q224 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q223 e h0 h1 h2 h4) (by decide)
theorem q225 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h3 : e 3 = 1) : Typed Op1ca1a77265e6.G e lit14 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q206 (push 0 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q212 (push 1 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q218 (push 2 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q224 (push 3 e) rfl h0 h1 h3).weaken _ (by decide)
theorem q226 (e : Env 3) (h2 : e 2 = 3) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit8 3 := .app (q117 e h2) (q147 e h3 h5) (by decide)
theorem q227 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q226 e h2 h3 h5) (q19 e h0 h1) (by decide)
theorem q228 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q226 e h2 h3 h5) (q21 e h0 h1) (by decide)
theorem q229 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q226 e h2 h3 h5) (q23 e h0 h1) (by decide)
theorem q230 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q226 e h2 h3 h5) (q25 e h0 h1) (by decide)
theorem q231 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q227 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q228 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q229 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q230 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q232 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q231 e h0 h1 h2 h4) (by decide)
theorem q233 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q226 e h2 h3 h5) (q30 e h0 h1) (by decide)
theorem q234 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q226 e h2 h3 h5) (q32 e h0 h1) (by decide)
theorem q235 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q226 e h2 h3 h5) (q34 e h0 h1) (by decide)
theorem q236 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q226 e h2 h3 h5) (q36 e h0 h1) (by decide)
theorem q237 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q233 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q234 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q235 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q236 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q238 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q237 e h0 h1 h2 h4) (by decide)
theorem q239 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q226 e h2 h3 h5) (q41 e h0 h1) (by decide)
theorem q240 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q226 e h2 h3 h5) (q43 e h0 h1) (by decide)
theorem q241 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q226 e h2 h3 h5) (q45 e h0 h1) (by decide)
theorem q242 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q226 e h2 h3 h5) (q47 e h0 h1) (by decide)
theorem q243 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q239 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q240 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q241 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q242 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q244 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q243 e h0 h1 h2 h4) (by decide)
theorem q245 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q226 e h2 h3 h5) (q52 e h0 h1) (by decide)
theorem q246 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q226 e h2 h3 h5) (q54 e h0 h1) (by decide)
theorem q247 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q226 e h2 h3 h5) (q56 e h0 h1) (by decide)
theorem q248 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) (h3 : e 3 = 1) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q226 e h2 h3 h5) (q58 e h0 h1) (by decide)
theorem q249 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q245 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q246 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q247 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q248 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q250 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q249 e h0 h1 h2 h4) (by decide)
end Blc.Floor45.Probe9624769225114
