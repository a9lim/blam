import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9690028559758D0

set_option Elab.async false
namespace Blc.Floor45.Probe9690028559758
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q150 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op637762846354.G e lit9 3 := .app (q149 e h0 h1) (q131 e h1) (by decide)
theorem q151 (e : Env 3) (h0 : e 0 = 3) : Typed Op637762846354.G e lit10 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q132 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q138 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q144 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q150 (push 3 e) rfl h0).weaken _ (by decide)
theorem q152 (e : Env 3)  : Typed Op637762846354.G e lit11 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q58 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q89 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q120 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q151 (push 3 e) rfl).weaken _ (by decide)
theorem q153 (e : Env 3)  : Typed Op637762846354.G e lit12 2 := .app (q152 e) (q152 e) (by decide)
theorem q154 (e : Env 3)  : Typed Op637762846354.G e lit13 2 := .app (q153 e) (q152 e) (by decide)
theorem q155 (e : Env 3) (h0 : e 0 = 0) : Typed Op637762846354.G e lit14 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q4 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q4 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q4 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q4 (push 3 e) h0).weaken _ (by decide)
theorem q156 (e : Env 3) (h0 : e 0 = 1) : Typed Op637762846354.G e lit14 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q25 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q25 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q25 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q25 (push 3 e) h0).weaken _ (by decide)
theorem q157 (e : Env 3) (h0 : e 0 = 2) : Typed Op637762846354.G e lit14 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q36 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q36 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q36 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q36 (push 3 e) h0).weaken _ (by decide)
theorem q158 (e : Env 3) (h0 : e 0 = 3) : Typed Op637762846354.G e lit14 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q47 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q47 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q47 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q47 (push 3 e) h0).weaken _ (by decide)
theorem q159 (e : Env 3)  : Typed Op637762846354.G e lit15 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q155 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q156 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q157 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q158 (push 3 e) rfl).weaken _ (by decide)
theorem q160 (e : Env 3) (h0 : e 0 = 0) : Typed Op637762846354.G e lit16 2 := .app (q0 e h0) (q159 e) (by decide)
theorem q161 (e : Env 3)  : Typed Op637762846354.G e lit17 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q0 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q7 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q12 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q17 (push 3 e) rfl).weaken _ (by decide)
theorem q162 (e : Env 3)  : Typed Op637762846354.G e lit18 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q161 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q161 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q161 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q161 (push 3 e)).weaken _ (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 0) : Typed Op637762846354.G e lit19 2 := .app (q0 e h0) (q162 e) (by decide)
theorem q164 (e : Env 3) (h4 : e 4 = 0) : Typed Op637762846354.G e lit20 0 := .var _ _ (by rw [h4]; decide)
theorem q165 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 0) : Typed Op637762846354.G e lit21 2 := .app (q160 e h0) (q164 e h4) (by decide)
theorem q166 (e : Env 3) (h0 : e 0 = 1) : Typed Op637762846354.G e lit16 2 := .app (q7 e h0) (q159 e) (by decide)
theorem q167 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 0) : Typed Op637762846354.G e lit21 2 := .app (q166 e h0) (q164 e h4) (by decide)
theorem q168 (e : Env 3) (h0 : e 0 = 2) : Typed Op637762846354.G e lit16 2 := .app (q12 e h0) (q159 e) (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 0) : Typed Op637762846354.G e lit21 2 := .app (q168 e h0) (q164 e h4) (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 3) : Typed Op637762846354.G e lit16 3 := .app (q17 e h0) (q159 e) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 0) : Typed Op637762846354.G e lit21 3 := .app (q170 e h0) (q164 e h4) (by decide)
theorem q172 (e : Env 3) (h3 : e 3 = 0) : Typed Op637762846354.G e lit22 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q165 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q167 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q169 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q171 (push 3 e) rfl h3).weaken _ (by decide)
theorem q173 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op637762846354.G e lit23 2 := .app (q163 e h0) (q172 e h3) (by decide)
theorem q174 (e : Env 3) (h0 : e 0 = 1) : Typed Op637762846354.G e lit19 2 := .app (q7 e h0) (q162 e) (by decide)
theorem q175 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op637762846354.G e lit23 2 := .app (q174 e h0) (q172 e h3) (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 2) : Typed Op637762846354.G e lit19 2 := .app (q12 e h0) (q162 e) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op637762846354.G e lit23 2 := .app (q176 e h0) (q172 e h3) (by decide)
theorem q178 (e : Env 3) (h0 : e 0 = 3) : Typed Op637762846354.G e lit19 3 := .app (q17 e h0) (q162 e) (by decide)
theorem q179 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op637762846354.G e lit23 3 := .app (q178 e h0) (q172 e h3) (by decide)
theorem q180 (e : Env 3) (h2 : e 2 = 0) : Typed Op637762846354.G e lit24 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q173 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q175 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q177 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q179 (push 3 e) rfl h2).weaken _ (by decide)
theorem q181 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op637762846354.G e lit25 2 := .app (q160 e h0) (q180 e h2) (by decide)
theorem q182 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op637762846354.G e lit25 2 := .app (q166 e h0) (q180 e h2) (by decide)
theorem q183 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op637762846354.G e lit25 2 := .app (q168 e h0) (q180 e h2) (by decide)
theorem q184 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op637762846354.G e lit25 3 := .app (q170 e h0) (q180 e h2) (by decide)
theorem q185 (e : Env 3) (h1 : e 1 = 0) : Typed Op637762846354.G e lit26 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q181 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q182 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q183 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q184 (push 3 e) rfl h1).weaken _ (by decide)
theorem q186 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op637762846354.G e lit27 2 := .app (q160 e h0) (q185 e h1) (by decide)
theorem q187 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op637762846354.G e lit27 2 := .app (q166 e h0) (q185 e h1) (by decide)
theorem q188 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op637762846354.G e lit27 2 := .app (q168 e h0) (q185 e h1) (by decide)
theorem q189 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op637762846354.G e lit27 3 := .app (q170 e h0) (q185 e h1) (by decide)
theorem q190 (e : Env 3) (h0 : e 0 = 0) : Typed Op637762846354.G e lit28 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q186 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q187 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q188 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q189 (push 3 e) rfl h0).weaken _ (by decide)
theorem q191 (e : Env 3) (h0 : e 0 = 0) : Typed Op637762846354.G e lit29 2 := .app (q154 e) (q190 e h0) (by decide)
end Blc.Floor45.Probe9690028559758
