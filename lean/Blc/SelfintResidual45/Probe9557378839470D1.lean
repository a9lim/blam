import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9557378839470D0

set_option Elab.async false
namespace Blc.Floor45.Probe9557378839470
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q148 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op1ca1a77265e6.G e lit10 3 := .app (q53 e h0 h1) (q132 e h2) (by decide)
theorem q149 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op1ca1a77265e6.G e lit10 3 := .app (q56 e h0 h1) (q132 e h2) (by decide)
theorem q150 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op1ca1a77265e6.G e lit10 3 := .app (q59 e h0 h1) (q132 e h2) (by decide)
theorem q151 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op1ca1a77265e6.G e lit10 3 := .app (q62 e h0 h1) (q132 e h2) (by decide)
theorem q152 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op1ca1a77265e6.G e lit11 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q148 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q149 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q150 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q151 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q153 (e : Env 3) (h0 : e 0 = 3) : Typed Op1ca1a77265e6.G e lit12 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q137 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q142 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q147 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q152 (push 3 e) rfl h0).weaken _ (by decide)
theorem q154 (e : Env 3)  : Typed Op1ca1a77265e6.G e lit13 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q87 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q109 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q131 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q153 (push 3 e) rfl).weaken _ (by decide)
theorem q155 (e : Env 3)  : Typed Op1ca1a77265e6.G e lit14 1 := .app (q65 e) (q154 e) (by decide)
theorem q156 (e : Env 3) (h1 : e 1 = 1) : Typed Op1ca1a77265e6.G e lit15 0 := .app (q155 e) (q20 e h1) (by decide)
theorem q157 (e : Env 3) (h0 : e 0 = 0) : Typed Op1ca1a77265e6.G e lit16 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q0 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 3 e) h0).weaken _ (by decide)
theorem q158 (e : Env 3) (h0 : e 0 = 1) : Typed Op1ca1a77265e6.G e lit16 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q20 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q20 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q20 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q20 (push 3 e) h0).weaken _ (by decide)
theorem q159 (e : Env 3) (h0 : e 0 = 2) : Typed Op1ca1a77265e6.G e lit16 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q35 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q35 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q35 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q35 (push 3 e) h0).weaken _ (by decide)
theorem q160 (e : Env 3) (h0 : e 0 = 3) : Typed Op1ca1a77265e6.G e lit16 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q50 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q50 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q50 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q50 (push 3 e) h0).weaken _ (by decide)
theorem q161 (e : Env 3)  : Typed Op1ca1a77265e6.G e lit17 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q157 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q158 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q159 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q160 (push 3 e) rfl).weaken _ (by decide)
theorem q162 (e : Env 3) (h0 : e 0 = 0) : Typed Op1ca1a77265e6.G e lit18 0 := .app (q2 e h0) (q161 e) (by decide)
theorem q163 (e : Env 3)  : Typed Op1ca1a77265e6.G e lit19 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q8 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q8 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q8 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q8 (push 3 e)).weaken _ (by decide)
theorem q164 (e : Env 3) (h0 : e 0 = 0) : Typed Op1ca1a77265e6.G e lit20 0 := .app (q2 e h0) (q163 e) (by decide)
theorem q165 (e : Env 3) (h4 : e 4 = 0) : Typed Op1ca1a77265e6.G e lit21 0 := .var _ _ (by rw [h4]; decide)
theorem q166 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 0) : Typed Op1ca1a77265e6.G e lit22 0 := .app (q162 e h0) (q165 e h4) (by decide)
theorem q167 (e : Env 3) (h0 : e 0 = 1) : Typed Op1ca1a77265e6.G e lit18 3 := .app (q5 e h0) (q161 e) (by decide)
theorem q168 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 0) : Typed Op1ca1a77265e6.G e lit22 3 := .app (q167 e h0) (q165 e h4) (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 2) : Typed Op1ca1a77265e6.G e lit18 3 := .app (q6 e h0) (q161 e) (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 0) : Typed Op1ca1a77265e6.G e lit22 3 := .app (q169 e h0) (q165 e h4) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 3) : Typed Op1ca1a77265e6.G e lit18 3 := .app (q7 e h0) (q161 e) (by decide)
theorem q172 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 0) : Typed Op1ca1a77265e6.G e lit22 3 := .app (q171 e h0) (q165 e h4) (by decide)
theorem q173 (e : Env 3) (h3 : e 3 = 0) : Typed Op1ca1a77265e6.G e lit23 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q166 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q168 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q170 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q172 (push 3 e) rfl h3).weaken _ (by decide)
theorem q174 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op1ca1a77265e6.G e lit24 0 := .app (q164 e h0) (q173 e h3) (by decide)
theorem q175 (e : Env 3) (h0 : e 0 = 1) : Typed Op1ca1a77265e6.G e lit20 3 := .app (q5 e h0) (q163 e) (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op1ca1a77265e6.G e lit24 3 := .app (q175 e h0) (q173 e h3) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 2) : Typed Op1ca1a77265e6.G e lit20 3 := .app (q6 e h0) (q163 e) (by decide)
theorem q178 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op1ca1a77265e6.G e lit24 3 := .app (q177 e h0) (q173 e h3) (by decide)
theorem q179 (e : Env 3) (h0 : e 0 = 3) : Typed Op1ca1a77265e6.G e lit20 3 := .app (q7 e h0) (q163 e) (by decide)
theorem q180 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op1ca1a77265e6.G e lit24 3 := .app (q179 e h0) (q173 e h3) (by decide)
theorem q181 (e : Env 3) (h2 : e 2 = 0) : Typed Op1ca1a77265e6.G e lit25 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q174 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q176 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q178 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q180 (push 3 e) rfl h2).weaken _ (by decide)
theorem q182 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op1ca1a77265e6.G e lit26 0 := .app (q162 e h0) (q181 e h2) (by decide)
theorem q183 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op1ca1a77265e6.G e lit26 3 := .app (q167 e h0) (q181 e h2) (by decide)
theorem q184 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op1ca1a77265e6.G e lit26 3 := .app (q169 e h0) (q181 e h2) (by decide)
theorem q185 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op1ca1a77265e6.G e lit26 3 := .app (q171 e h0) (q181 e h2) (by decide)
theorem q186 (e : Env 3) (h1 : e 1 = 0) : Typed Op1ca1a77265e6.G e lit27 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q182 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q183 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q184 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q185 (push 3 e) rfl h1).weaken _ (by decide)
theorem q187 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op1ca1a77265e6.G e lit28 0 := .app (q162 e h0) (q186 e h1) (by decide)
theorem q188 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op1ca1a77265e6.G e lit28 3 := .app (q167 e h0) (q186 e h1) (by decide)
theorem q189 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op1ca1a77265e6.G e lit28 3 := .app (q169 e h0) (q186 e h1) (by decide)
theorem q190 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op1ca1a77265e6.G e lit28 3 := .app (q171 e h0) (q186 e h1) (by decide)
theorem q191 (e : Env 3) (h0 : e 0 = 0) : Typed Op1ca1a77265e6.G e lit29 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q187 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q188 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q189 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q190 (push 3 e) rfl h0).weaken _ (by decide)
theorem q192 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op1ca1a77265e6.G e lit30 0 := .app (q156 e h1) (q191 e h0) (by decide)
end Blc.Floor45.Probe9557378839470
