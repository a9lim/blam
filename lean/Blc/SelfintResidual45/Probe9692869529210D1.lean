import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9692869529210D0

set_option Elab.async false
namespace Blc.Floor45.Probe9692869529210
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q141 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit13 3 := .app (q20 e h1) (q135 e h0) (by decide)
theorem q142 (e : Env 3) (h0 : e 0 = 1) : Typed Op4110659a734a.G e lit14 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q138 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q139 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q140 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q141 (push 3 e) rfl h0).weaken _ (by decide)
theorem q143 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit13 3 := .app (q29 e h1) (q129 e h0) (by decide)
theorem q144 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit13 3 := .app (q29 e h1) (q131 e h0) (by decide)
theorem q145 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit13 3 := .app (q29 e h1) (q133 e h0) (by decide)
theorem q146 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit13 3 := .app (q29 e h1) (q135 e h0) (by decide)
theorem q147 (e : Env 3) (h0 : e 0 = 2) : Typed Op4110659a734a.G e lit14 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q143 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q144 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q145 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q146 (push 3 e) rfl h0).weaken _ (by decide)
theorem q148 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit13 3 := .app (q38 e h1) (q129 e h0) (by decide)
theorem q149 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit13 3 := .app (q38 e h1) (q131 e h0) (by decide)
theorem q150 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit13 3 := .app (q38 e h1) (q133 e h0) (by decide)
theorem q151 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit13 3 := .app (q38 e h1) (q135 e h0) (by decide)
theorem q152 (e : Env 3) (h0 : e 0 = 3) : Typed Op4110659a734a.G e lit14 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q148 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q149 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q150 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q151 (push 3 e) rfl h0).weaken _ (by decide)
theorem q153 (e : Env 3)  : Typed Op4110659a734a.G e lit15 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q137 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q142 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q147 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q152 (push 3 e) rfl).weaken _ (by decide)
theorem q154 (e : Env 3)  : Typed Op4110659a734a.G e lit16 0 := .app (q128 e) (q153 e) (by decide)
theorem q155 (e : Env 3)  : Typed Op4110659a734a.G e lit17 0 := .app (q128 e) (q154 e) (by decide)
theorem q156 (e : Env 3) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit18 0 := .app (q155 e) (q1 e h1) (by decide)
theorem q157 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit19 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q1 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 3 e) h0).weaken _ (by decide)
theorem q158 (e : Env 3) (h0 : e 0 = 1) : Typed Op4110659a734a.G e lit19 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q17 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q17 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q17 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q17 (push 3 e) h0).weaken _ (by decide)
theorem q159 (e : Env 3) (h0 : e 0 = 2) : Typed Op4110659a734a.G e lit19 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q26 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q26 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q26 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q26 (push 3 e) h0).weaken _ (by decide)
theorem q160 (e : Env 3) (h0 : e 0 = 3) : Typed Op4110659a734a.G e lit19 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q35 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q35 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q35 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q35 (push 3 e) h0).weaken _ (by decide)
theorem q161 (e : Env 3)  : Typed Op4110659a734a.G e lit20 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q157 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q158 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q159 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q160 (push 3 e) rfl).weaken _ (by decide)
theorem q162 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit21 0 := .app (q0 e h0) (q161 e) (by decide)
theorem q163 (e : Env 3)  : Typed Op4110659a734a.G e lit22 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q0 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q7 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q10 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q13 (push 3 e) rfl).weaken _ (by decide)
theorem q164 (e : Env 3)  : Typed Op4110659a734a.G e lit23 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q163 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q163 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q163 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q163 (push 3 e)).weaken _ (by decide)
theorem q165 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit24 2 := .app (q0 e h0) (q164 e) (by decide)
theorem q166 (e : Env 3) (h4 : e 4 = 0) : Typed Op4110659a734a.G e lit25 0 := .var _ _ (by rw [h4]; decide)
theorem q167 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 0) : Typed Op4110659a734a.G e lit26 0 := .app (q162 e h0) (q166 e h4) (by decide)
theorem q168 (e : Env 3) (h0 : e 0 = 1) : Typed Op4110659a734a.G e lit21 0 := .app (q7 e h0) (q161 e) (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 0) : Typed Op4110659a734a.G e lit26 0 := .app (q168 e h0) (q166 e h4) (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 2) : Typed Op4110659a734a.G e lit21 3 := .app (q10 e h0) (q161 e) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 0) : Typed Op4110659a734a.G e lit26 3 := .app (q170 e h0) (q166 e h4) (by decide)
theorem q172 (e : Env 3) (h0 : e 0 = 3) : Typed Op4110659a734a.G e lit21 3 := .app (q13 e h0) (q161 e) (by decide)
theorem q173 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 0) : Typed Op4110659a734a.G e lit26 3 := .app (q172 e h0) (q166 e h4) (by decide)
theorem q174 (e : Env 3) (h3 : e 3 = 0) : Typed Op4110659a734a.G e lit27 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q167 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q169 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q171 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q173 (push 3 e) rfl h3).weaken _ (by decide)
theorem q175 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op4110659a734a.G e lit28 3 := .app (q165 e h0) (q174 e h3) (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 1) : Typed Op4110659a734a.G e lit24 3 := .app (q7 e h0) (q164 e) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op4110659a734a.G e lit28 3 := .app (q176 e h0) (q174 e h3) (by decide)
theorem q178 (e : Env 3) (h0 : e 0 = 2) : Typed Op4110659a734a.G e lit24 3 := .app (q10 e h0) (q164 e) (by decide)
theorem q179 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op4110659a734a.G e lit28 3 := .app (q178 e h0) (q174 e h3) (by decide)
theorem q180 (e : Env 3) (h0 : e 0 = 3) : Typed Op4110659a734a.G e lit24 3 := .app (q13 e h0) (q164 e) (by decide)
theorem q181 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op4110659a734a.G e lit28 3 := .app (q180 e h0) (q174 e h3) (by decide)
theorem q182 (e : Env 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit29 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q175 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q177 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q179 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q181 (push 3 e) rfl h2).weaken _ (by decide)
theorem q183 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit30 2 := .app (q162 e h0) (q182 e h2) (by decide)
theorem q184 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit30 2 := .app (q168 e h0) (q182 e h2) (by decide)
theorem q185 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit30 3 := .app (q170 e h0) (q182 e h2) (by decide)
theorem q186 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit30 3 := .app (q172 e h0) (q182 e h2) (by decide)
theorem q187 (e : Env 3) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit31 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q183 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q184 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q185 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q186 (push 3 e) rfl h1).weaken _ (by decide)
theorem q188 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit32 2 := .app (q162 e h0) (q187 e h1) (by decide)
theorem q189 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit32 2 := .app (q168 e h0) (q187 e h1) (by decide)
theorem q190 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit32 3 := .app (q170 e h0) (q187 e h1) (by decide)
theorem q191 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit32 3 := .app (q172 e h0) (q187 e h1) (by decide)
theorem q192 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit33 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q188 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q189 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q190 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q191 (push 3 e) rfl h0).weaken _ (by decide)
theorem q193 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit34 2 := .app (q156 e h1) (q192 e h0) (by decide)
end Blc.Floor45.Probe9692869529210
