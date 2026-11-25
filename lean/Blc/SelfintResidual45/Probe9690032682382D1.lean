import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9690032682382D0

set_option Elab.async false
namespace Blc.Floor45.Probe9690032682382
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q150 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op3f588a48d7fb.G e lit9 3 := .app (q149 e h0 h1) (q131 e h1) (by decide)
theorem q151 (e : Env 3) (h0 : e 0 = 3) : Typed Op3f588a48d7fb.G e lit10 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q132 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q138 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q144 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q150 (push 3 e) rfl h0).weaken _ (by decide)
theorem q152 (e : Env 3)  : Typed Op3f588a48d7fb.G e lit11 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q58 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q89 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q120 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q151 (push 3 e) rfl).weaken _ (by decide)
theorem q153 (e : Env 3) (h0 : e 0 = 0) : Typed Op3f588a48d7fb.G e lit12 3 := .app (q152 e) (q1 e h0) (by decide)
theorem q154 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q153 e h0) (q5 e h0 h1) (by decide)
theorem q155 (e : Env 3) (h0 : e 0 = 1) : Typed Op3f588a48d7fb.G e lit12 3 := .app (q152 e) (q7 e h0) (by decide)
theorem q156 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q155 e h0) (q10 e h0 h1) (by decide)
theorem q157 (e : Env 3) (h0 : e 0 = 2) : Typed Op3f588a48d7fb.G e lit12 3 := .app (q152 e) (q12 e h0) (by decide)
theorem q158 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q157 e h0) (q15 e h0 h1) (by decide)
theorem q159 (e : Env 3) (h0 : e 0 = 3) : Typed Op3f588a48d7fb.G e lit12 3 := .app (q152 e) (q17 e h0) (by decide)
theorem q160 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q159 e h0) (q20 e h0 h1) (by decide)
theorem q161 (e : Env 3) (h0 : e 0 = 0) : Typed Op3f588a48d7fb.G e lit14 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q154 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q156 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q158 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q160 (push 3 e) rfl h0).weaken _ (by decide)
theorem q162 (e : Env 3)  : Typed Op3f588a48d7fb.G e lit15 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q152 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q152 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q152 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q152 (push 3 e)).weaken _ (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 0) : Typed Op3f588a48d7fb.G e lit16 3 := .app (q161 e h0) (q162 e) (by decide)
theorem q164 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q153 e h0) (q26 e h0 h1) (by decide)
theorem q165 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q155 e h0) (q28 e h0 h1) (by decide)
theorem q166 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q157 e h0) (q30 e h0 h1) (by decide)
theorem q167 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q159 e h0) (q32 e h0 h1) (by decide)
theorem q168 (e : Env 3) (h0 : e 0 = 1) : Typed Op3f588a48d7fb.G e lit14 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q164 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q165 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q166 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q167 (push 3 e) rfl h0).weaken _ (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 1) : Typed Op3f588a48d7fb.G e lit16 3 := .app (q168 e h0) (q162 e) (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q153 e h0) (q37 e h0 h1) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q155 e h0) (q39 e h0 h1) (by decide)
theorem q172 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q157 e h0) (q41 e h0 h1) (by decide)
theorem q173 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q159 e h0) (q43 e h0 h1) (by decide)
theorem q174 (e : Env 3) (h0 : e 0 = 2) : Typed Op3f588a48d7fb.G e lit14 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q170 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q171 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q172 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q173 (push 3 e) rfl h0).weaken _ (by decide)
theorem q175 (e : Env 3) (h0 : e 0 = 2) : Typed Op3f588a48d7fb.G e lit16 3 := .app (q174 e h0) (q162 e) (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q153 e h0) (q48 e h0 h1) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q155 e h0) (q50 e h0 h1) (by decide)
theorem q178 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q157 e h0) (q52 e h0 h1) (by decide)
theorem q179 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q159 e h0) (q54 e h0 h1) (by decide)
theorem q180 (e : Env 3) (h0 : e 0 = 3) : Typed Op3f588a48d7fb.G e lit14 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q176 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q177 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q178 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q179 (push 3 e) rfl h0).weaken _ (by decide)
theorem q181 (e : Env 3) (h0 : e 0 = 3) : Typed Op3f588a48d7fb.G e lit16 3 := .app (q180 e h0) (q162 e) (by decide)
theorem q182 (e : Env 3)  : Typed Op3f588a48d7fb.G e lit17 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q163 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q169 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q175 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q181 (push 3 e) rfl).weaken _ (by decide)
end Blc.Floor45.Probe9690032682382
