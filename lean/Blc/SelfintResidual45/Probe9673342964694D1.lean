import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9673342964694D0

set_option Elab.async false
namespace Blc.Floor45.Probe9673342964694
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q145 (e : Env 3) (h0 : e 0 = 1) : Typed Op9cd4b4db71e4.G e lit15 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q19 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q19 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q19 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q19 (push 3 e) h0).weaken _ (by decide)
theorem q146 (e : Env 3) (h0 : e 0 = 2) : Typed Op9cd4b4db71e4.G e lit15 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q25 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q25 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q25 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q25 (push 3 e) h0).weaken _ (by decide)
theorem q147 (e : Env 3) (h0 : e 0 = 3) : Typed Op9cd4b4db71e4.G e lit15 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q31 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q31 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q31 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q31 (push 3 e) h0).weaken _ (by decide)
theorem q148 (e : Env 3)  : Typed Op9cd4b4db71e4.G e lit16 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q144 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q145 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q146 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q147 (push 3 e) rfl).weaken _ (by decide)
theorem q149 (e : Env 3) (h0 : e 0 = 0) : Typed Op9cd4b4db71e4.G e lit17 1 := .app (q1 e h0) (q148 e) (by decide)
theorem q150 (e : Env 3)  : Typed Op9cd4b4db71e4.G e lit18 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q129 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q129 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q129 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q129 (push 3 e)).weaken _ (by decide)
theorem q151 (e : Env 3) (h0 : e 0 = 0) : Typed Op9cd4b4db71e4.G e lit19 0 := .app (q1 e h0) (q150 e) (by decide)
theorem q152 (e : Env 3) (h7 : e 7 = 0) : Typed Op9cd4b4db71e4.G e lit20 0 := .var _ _ (by rw [h7]; decide)
theorem q153 (e : Env 3) (h0 : e 0 = 0) (h7 : e 7 = 0) : Typed Op9cd4b4db71e4.G e lit21 0 := .app (q149 e h0) (q152 e h7) (by decide)
theorem q154 (e : Env 3) (h0 : e 0 = 1) : Typed Op9cd4b4db71e4.G e lit17 2 := .app (q6 e h0) (q148 e) (by decide)
theorem q155 (e : Env 3) (h0 : e 0 = 1) (h7 : e 7 = 0) : Typed Op9cd4b4db71e4.G e lit21 1 := .app (q154 e h0) (q152 e h7) (by decide)
theorem q156 (e : Env 3) (h0 : e 0 = 2) : Typed Op9cd4b4db71e4.G e lit17 3 := .app (q10 e h0) (q148 e) (by decide)
theorem q157 (e : Env 3) (h0 : e 0 = 2) (h7 : e 7 = 0) : Typed Op9cd4b4db71e4.G e lit21 3 := .app (q156 e h0) (q152 e h7) (by decide)
theorem q158 (e : Env 3) (h0 : e 0 = 3) : Typed Op9cd4b4db71e4.G e lit17 3 := .app (q14 e h0) (q148 e) (by decide)
theorem q159 (e : Env 3) (h0 : e 0 = 3) (h7 : e 7 = 0) : Typed Op9cd4b4db71e4.G e lit21 3 := .app (q158 e h0) (q152 e h7) (by decide)
theorem q160 (e : Env 3) (h6 : e 6 = 0) : Typed Op9cd4b4db71e4.G e lit22 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q153 (push 0 e) rfl h6).weaken _ (by decide)
  · subst a; exact (q155 (push 1 e) rfl h6).weaken _ (by decide)
  · subst a; exact (q157 (push 2 e) rfl h6).weaken _ (by decide)
  · subst a; exact (q159 (push 3 e) rfl h6).weaken _ (by decide)
theorem q161 (e : Env 3) (h0 : e 0 = 0) (h6 : e 6 = 0) : Typed Op9cd4b4db71e4.G e lit23 0 := .app (q151 e h0) (q160 e h6) (by decide)
theorem q162 (e : Env 3) (h0 : e 0 = 1) : Typed Op9cd4b4db71e4.G e lit19 0 := .app (q6 e h0) (q150 e) (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 1) (h6 : e 6 = 0) : Typed Op9cd4b4db71e4.G e lit23 0 := .app (q162 e h0) (q160 e h6) (by decide)
theorem q164 (e : Env 3) (h0 : e 0 = 2) : Typed Op9cd4b4db71e4.G e lit19 1 := .app (q10 e h0) (q150 e) (by decide)
theorem q165 (e : Env 3) (h0 : e 0 = 2) (h6 : e 6 = 0) : Typed Op9cd4b4db71e4.G e lit23 0 := .app (q164 e h0) (q160 e h6) (by decide)
theorem q166 (e : Env 3) (h0 : e 0 = 3) : Typed Op9cd4b4db71e4.G e lit19 3 := .app (q14 e h0) (q150 e) (by decide)
theorem q167 (e : Env 3) (h0 : e 0 = 3) (h6 : e 6 = 0) : Typed Op9cd4b4db71e4.G e lit23 3 := .app (q166 e h0) (q160 e h6) (by decide)
theorem q168 (e : Env 3) (h5 : e 5 = 0) : Typed Op9cd4b4db71e4.G e lit24 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q161 (push 0 e) rfl h5).weaken _ (by decide)
  · subst a; exact (q163 (push 1 e) rfl h5).weaken _ (by decide)
  · subst a; exact (q165 (push 2 e) rfl h5).weaken _ (by decide)
  · subst a; exact (q167 (push 3 e) rfl h5).weaken _ (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 0) (h5 : e 5 = 0) : Typed Op9cd4b4db71e4.G e lit25 0 := .app (q151 e h0) (q168 e h5) (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 1) (h5 : e 5 = 0) : Typed Op9cd4b4db71e4.G e lit25 0 := .app (q162 e h0) (q168 e h5) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 2) (h5 : e 5 = 0) : Typed Op9cd4b4db71e4.G e lit25 0 := .app (q164 e h0) (q168 e h5) (by decide)
theorem q172 (e : Env 3) (h0 : e 0 = 3) (h5 : e 5 = 0) : Typed Op9cd4b4db71e4.G e lit25 3 := .app (q166 e h0) (q168 e h5) (by decide)
theorem q173 (e : Env 3) (h4 : e 4 = 0) : Typed Op9cd4b4db71e4.G e lit26 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q169 (push 0 e) rfl h4).weaken _ (by decide)
  · subst a; exact (q170 (push 1 e) rfl h4).weaken _ (by decide)
  · subst a; exact (q171 (push 2 e) rfl h4).weaken _ (by decide)
  · subst a; exact (q172 (push 3 e) rfl h4).weaken _ (by decide)
theorem q174 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 0) : Typed Op9cd4b4db71e4.G e lit27 0 := .app (q149 e h0) (q173 e h4) (by decide)
theorem q175 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 0) : Typed Op9cd4b4db71e4.G e lit27 1 := .app (q154 e h0) (q173 e h4) (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 0) : Typed Op9cd4b4db71e4.G e lit27 3 := .app (q156 e h0) (q173 e h4) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 0) : Typed Op9cd4b4db71e4.G e lit27 3 := .app (q158 e h0) (q173 e h4) (by decide)
theorem q178 (e : Env 3) (h3 : e 3 = 0) : Typed Op9cd4b4db71e4.G e lit28 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q174 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q175 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q176 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q177 (push 3 e) rfl h3).weaken _ (by decide)
theorem q179 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op9cd4b4db71e4.G e lit29 0 := .app (q149 e h0) (q178 e h3) (by decide)
theorem q180 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op9cd4b4db71e4.G e lit29 1 := .app (q154 e h0) (q178 e h3) (by decide)
theorem q181 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op9cd4b4db71e4.G e lit29 3 := .app (q156 e h0) (q178 e h3) (by decide)
theorem q182 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op9cd4b4db71e4.G e lit29 3 := .app (q158 e h0) (q178 e h3) (by decide)
theorem q183 (e : Env 3) (h2 : e 2 = 0) : Typed Op9cd4b4db71e4.G e lit30 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q179 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q180 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q181 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q182 (push 3 e) rfl h2).weaken _ (by decide)
theorem q184 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op9cd4b4db71e4.G e lit31 0 := .app (q149 e h0) (q183 e h2) (by decide)
theorem q185 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op9cd4b4db71e4.G e lit31 1 := .app (q154 e h0) (q183 e h2) (by decide)
theorem q186 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op9cd4b4db71e4.G e lit31 3 := .app (q156 e h0) (q183 e h2) (by decide)
theorem q187 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op9cd4b4db71e4.G e lit31 3 := .app (q158 e h0) (q183 e h2) (by decide)
theorem q188 (e : Env 3) (h1 : e 1 = 0) : Typed Op9cd4b4db71e4.G e lit32 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q184 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q185 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q186 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q187 (push 3 e) rfl h1).weaken _ (by decide)
theorem q189 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op9cd4b4db71e4.G e lit33 0 := .app (q149 e h0) (q188 e h1) (by decide)
theorem q190 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op9cd4b4db71e4.G e lit33 1 := .app (q154 e h0) (q188 e h1) (by decide)
theorem q191 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op9cd4b4db71e4.G e lit33 3 := .app (q156 e h0) (q188 e h1) (by decide)
theorem q192 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op9cd4b4db71e4.G e lit33 3 := .app (q158 e h0) (q188 e h1) (by decide)
theorem q193 (e : Env 3) (h0 : e 0 = 0) : Typed Op9cd4b4db71e4.G e lit34 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q189 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q190 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q191 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q192 (push 3 e) rfl h0).weaken _ (by decide)
theorem q194 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op9cd4b4db71e4.G e lit35 1 := .app (q143 e h1) (q193 e h0) (by decide)
end Blc.Floor45.Probe9673342964694
