import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9690032682638D0

set_option Elab.async false
namespace Blc.Floor45.Probe9690032682638
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q156 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op3f588a48d7fb.G e lit9 3 := .app (q155 e h0 h1) (q143 e h1) (by decide)
theorem q157 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op3f588a48d7fb.G e lit6 3 := .app (q134 e h0 h2) (q57 e h0 h1) (by decide)
theorem q158 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op3f588a48d7fb.G e lit6 3 := .app (q136 e h0 h2) (q60 e h0 h1) (by decide)
theorem q159 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op3f588a48d7fb.G e lit6 3 := .app (q138 e h0 h2) (q63 e h0 h1) (by decide)
theorem q160 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op3f588a48d7fb.G e lit6 3 := .app (q140 e h0 h2) (q66 e h0 h1) (by decide)
theorem q161 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op3f588a48d7fb.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q157 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q158 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q159 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q160 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q162 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op3f588a48d7fb.G e lit9 3 := .app (q161 e h0 h1) (q143 e h1) (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 3) : Typed Op3f588a48d7fb.G e lit10 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q144 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q150 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q156 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q162 (push 3 e) rfl h0).weaken _ (by decide)
theorem q164 (e : Env 3)  : Typed Op3f588a48d7fb.G e lit11 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q70 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q101 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q132 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q163 (push 3 e) rfl).weaken _ (by decide)
theorem q165 (e : Env 3) (h0 : e 0 = 0) : Typed Op3f588a48d7fb.G e lit12 3 := .app (q164 e) (q1 e h0) (by decide)
theorem q166 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q165 e h0) (q5 e h0 h1) (by decide)
theorem q167 (e : Env 3) (h0 : e 0 = 1) : Typed Op3f588a48d7fb.G e lit12 3 := .app (q164 e) (q7 e h0) (by decide)
theorem q168 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q167 e h0) (q10 e h0 h1) (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 2) : Typed Op3f588a48d7fb.G e lit12 3 := .app (q164 e) (q12 e h0) (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q169 e h0) (q15 e h0 h1) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 3) : Typed Op3f588a48d7fb.G e lit12 3 := .app (q164 e) (q17 e h0) (by decide)
theorem q172 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q171 e h0) (q20 e h0 h1) (by decide)
theorem q173 (e : Env 3) (h0 : e 0 = 0) : Typed Op3f588a48d7fb.G e lit14 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q166 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q168 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q170 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q172 (push 3 e) rfl h0).weaken _ (by decide)
theorem q174 (e : Env 3)  : Typed Op3f588a48d7fb.G e lit15 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q164 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q164 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q164 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q164 (push 3 e)).weaken _ (by decide)
theorem q175 (e : Env 3) (h0 : e 0 = 0) : Typed Op3f588a48d7fb.G e lit16 3 := .app (q173 e h0) (q174 e) (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q165 e h0) (q27 e h0 h1) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q167 e h0) (q30 e h0 h1) (by decide)
theorem q178 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q169 e h0) (q33 e h0 h1) (by decide)
theorem q179 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q171 e h0) (q36 e h0 h1) (by decide)
theorem q180 (e : Env 3) (h0 : e 0 = 1) : Typed Op3f588a48d7fb.G e lit14 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q176 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q177 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q178 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q179 (push 3 e) rfl h0).weaken _ (by decide)
theorem q181 (e : Env 3) (h0 : e 0 = 1) : Typed Op3f588a48d7fb.G e lit16 3 := .app (q180 e h0) (q174 e) (by decide)
theorem q182 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q165 e h0) (q42 e h0 h1) (by decide)
theorem q183 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q167 e h0) (q45 e h0 h1) (by decide)
theorem q184 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q169 e h0) (q48 e h0 h1) (by decide)
theorem q185 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q171 e h0) (q51 e h0 h1) (by decide)
theorem q186 (e : Env 3) (h0 : e 0 = 2) : Typed Op3f588a48d7fb.G e lit14 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q182 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q183 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q184 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q185 (push 3 e) rfl h0).weaken _ (by decide)
theorem q187 (e : Env 3) (h0 : e 0 = 2) : Typed Op3f588a48d7fb.G e lit16 3 := .app (q186 e h0) (q174 e) (by decide)
theorem q188 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q165 e h0) (q57 e h0 h1) (by decide)
theorem q189 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q167 e h0) (q60 e h0 h1) (by decide)
theorem q190 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q169 e h0) (q63 e h0 h1) (by decide)
theorem q191 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op3f588a48d7fb.G e lit13 3 := .app (q171 e h0) (q66 e h0 h1) (by decide)
theorem q192 (e : Env 3) (h0 : e 0 = 3) : Typed Op3f588a48d7fb.G e lit14 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q188 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q189 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q190 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q191 (push 3 e) rfl h0).weaken _ (by decide)
theorem q193 (e : Env 3) (h0 : e 0 = 3) : Typed Op3f588a48d7fb.G e lit16 3 := .app (q192 e h0) (q174 e) (by decide)
theorem q194 (e : Env 3)  : Typed Op3f588a48d7fb.G e lit17 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q175 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q181 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q187 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q193 (push 3 e) rfl).weaken _ (by decide)
end Blc.Floor45.Probe9690032682638
