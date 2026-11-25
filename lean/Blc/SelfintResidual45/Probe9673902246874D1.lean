import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9673902246874D0

set_option Elab.async false
namespace Blc.Floor45.Probe9673902246874
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q158 (e : Env 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Opbfabf9ad3f19.G e lit3 3 := .app (q137 e h2) (q27 e h1) (by decide)
theorem q159 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Opbfabf9ad3f19.G e lit4 3 := .app (q158 e h1 h2) (q0 e h0) (by decide)
theorem q160 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Opbfabf9ad3f19.G e lit5 3 := .app (q27 e h1) (q159 e h0 h1 h2) (by decide)
theorem q161 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Opbfabf9ad3f19.G e lit4 3 := .app (q158 e h1 h2) (q6 e h0) (by decide)
theorem q162 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Opbfabf9ad3f19.G e lit5 3 := .app (q27 e h1) (q161 e h0 h1 h2) (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Opbfabf9ad3f19.G e lit4 3 := .app (q158 e h1 h2) (q9 e h0) (by decide)
theorem q164 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Opbfabf9ad3f19.G e lit5 3 := .app (q27 e h1) (q163 e h0 h1 h2) (by decide)
theorem q165 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Opbfabf9ad3f19.G e lit4 3 := .app (q158 e h1 h2) (q12 e h0) (by decide)
theorem q166 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Opbfabf9ad3f19.G e lit5 3 := .app (q27 e h1) (q165 e h0 h1 h2) (by decide)
theorem q167 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Opbfabf9ad3f19.G e lit6 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q160 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q162 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q164 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q166 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q168 (e : Env 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Opbfabf9ad3f19.G e lit3 3 := .app (q137 e h2) (q38 e h1) (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Opbfabf9ad3f19.G e lit4 3 := .app (q168 e h1 h2) (q0 e h0) (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Opbfabf9ad3f19.G e lit5 3 := .app (q38 e h1) (q169 e h0 h1 h2) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Opbfabf9ad3f19.G e lit4 3 := .app (q168 e h1 h2) (q6 e h0) (by decide)
theorem q172 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Opbfabf9ad3f19.G e lit5 3 := .app (q38 e h1) (q171 e h0 h1 h2) (by decide)
theorem q173 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Opbfabf9ad3f19.G e lit4 3 := .app (q168 e h1 h2) (q9 e h0) (by decide)
theorem q174 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Opbfabf9ad3f19.G e lit5 3 := .app (q38 e h1) (q173 e h0 h1 h2) (by decide)
theorem q175 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Opbfabf9ad3f19.G e lit4 3 := .app (q168 e h1 h2) (q12 e h0) (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Opbfabf9ad3f19.G e lit5 3 := .app (q38 e h1) (q175 e h0 h1 h2) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Opbfabf9ad3f19.G e lit6 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q170 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q172 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q174 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q176 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q178 (e : Env 3) (h0 : e 0 = 3) : Typed Opbfabf9ad3f19.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q147 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q157 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q167 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q177 (push 3 e) rfl h0).weaken _ (by decide)
theorem q179 (e : Env 3) (h0 : e 0 = 3) : Typed Opbfabf9ad3f19.G e lit8 3 := .app (q12 e h0) (q178 e h0) (by decide)
theorem q180 (e : Env 3)  : Typed Opbfabf9ad3f19.G e lit9 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q50 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q93 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q136 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q179 (push 3 e) rfl).weaken _ (by decide)
theorem q181 (e : Env 3)  : Typed Opbfabf9ad3f19.G e lit10 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q180 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q180 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q180 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q180 (push 3 e)).weaken _ (by decide)
theorem q182 (e : Env 3)  : Typed Opbfabf9ad3f19.G e lit11 2 := .app (q180 e) (q181 e) (by decide)
theorem q183 (e : Env 3) (h1 : e 1 = 0) : Typed Opbfabf9ad3f19.G e lit12 1 := .app (q182 e) (q1 e h1) (by decide)
theorem q184 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Opbfabf9ad3f19.G e lit13 0 := .app (q183 e h1) (q0 e h0) (by decide)
theorem q185 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Opbfabf9ad3f19.G e lit14 0 := .app (q1 e h1) (q184 e h0 h1) (by decide)
theorem q186 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Opbfabf9ad3f19.G e lit13 1 := .app (q183 e h1) (q6 e h0) (by decide)
theorem q187 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Opbfabf9ad3f19.G e lit14 0 := .app (q1 e h1) (q186 e h0 h1) (by decide)
theorem q188 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Opbfabf9ad3f19.G e lit13 2 := .app (q183 e h1) (q9 e h0) (by decide)
theorem q189 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Opbfabf9ad3f19.G e lit14 0 := .app (q1 e h1) (q188 e h0 h1) (by decide)
theorem q190 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Opbfabf9ad3f19.G e lit13 3 := .app (q183 e h1) (q12 e h0) (by decide)
theorem q191 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Opbfabf9ad3f19.G e lit14 1 := .app (q1 e h1) (q190 e h0 h1) (by decide)
theorem q192 (e : Env 3) (h0 : e 0 = 0) : Typed Opbfabf9ad3f19.G e lit15 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q185 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q187 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q189 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q191 (push 3 e) rfl h0).weaken _ (by decide)
theorem q193 (e : Env 3) (h1 : e 1 = 1) : Typed Opbfabf9ad3f19.G e lit12 1 := .app (q182 e) (q16 e h1) (by decide)
theorem q194 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Opbfabf9ad3f19.G e lit13 0 := .app (q193 e h1) (q0 e h0) (by decide)
theorem q195 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Opbfabf9ad3f19.G e lit14 0 := .app (q16 e h1) (q194 e h0 h1) (by decide)
theorem q196 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Opbfabf9ad3f19.G e lit13 1 := .app (q193 e h1) (q6 e h0) (by decide)
theorem q197 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Opbfabf9ad3f19.G e lit14 1 := .app (q16 e h1) (q196 e h0 h1) (by decide)
theorem q198 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Opbfabf9ad3f19.G e lit13 2 := .app (q193 e h1) (q9 e h0) (by decide)
theorem q199 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Opbfabf9ad3f19.G e lit14 2 := .app (q16 e h1) (q198 e h0 h1) (by decide)
theorem q200 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Opbfabf9ad3f19.G e lit13 3 := .app (q193 e h1) (q12 e h0) (by decide)
theorem q201 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Opbfabf9ad3f19.G e lit14 3 := .app (q16 e h1) (q200 e h0 h1) (by decide)
theorem q202 (e : Env 3) (h0 : e 0 = 1) : Typed Opbfabf9ad3f19.G e lit15 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q195 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q197 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q199 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q201 (push 3 e) rfl h0).weaken _ (by decide)
theorem q203 (e : Env 3) (h1 : e 1 = 2) : Typed Opbfabf9ad3f19.G e lit12 2 := .app (q182 e) (q27 e h1) (by decide)
theorem q204 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Opbfabf9ad3f19.G e lit13 1 := .app (q203 e h1) (q0 e h0) (by decide)
theorem q205 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Opbfabf9ad3f19.G e lit14 1 := .app (q27 e h1) (q204 e h0 h1) (by decide)
theorem q206 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Opbfabf9ad3f19.G e lit13 1 := .app (q203 e h1) (q6 e h0) (by decide)
theorem q207 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Opbfabf9ad3f19.G e lit14 1 := .app (q27 e h1) (q206 e h0 h1) (by decide)
theorem q208 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Opbfabf9ad3f19.G e lit13 2 := .app (q203 e h1) (q9 e h0) (by decide)
theorem q209 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Opbfabf9ad3f19.G e lit14 2 := .app (q27 e h1) (q208 e h0 h1) (by decide)
theorem q210 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Opbfabf9ad3f19.G e lit13 3 := .app (q203 e h1) (q12 e h0) (by decide)
theorem q211 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Opbfabf9ad3f19.G e lit14 3 := .app (q27 e h1) (q210 e h0 h1) (by decide)
theorem q212 (e : Env 3) (h0 : e 0 = 2) : Typed Opbfabf9ad3f19.G e lit15 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q205 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q207 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q209 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q211 (push 3 e) rfl h0).weaken _ (by decide)
theorem q213 (e : Env 3) (h1 : e 1 = 3) : Typed Opbfabf9ad3f19.G e lit12 3 := .app (q182 e) (q38 e h1) (by decide)
theorem q214 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Opbfabf9ad3f19.G e lit13 3 := .app (q213 e h1) (q0 e h0) (by decide)
theorem q215 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Opbfabf9ad3f19.G e lit14 3 := .app (q38 e h1) (q214 e h0 h1) (by decide)
theorem q216 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Opbfabf9ad3f19.G e lit13 3 := .app (q213 e h1) (q6 e h0) (by decide)
theorem q217 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Opbfabf9ad3f19.G e lit14 3 := .app (q38 e h1) (q216 e h0 h1) (by decide)
theorem q218 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Opbfabf9ad3f19.G e lit13 3 := .app (q213 e h1) (q9 e h0) (by decide)
theorem q219 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Opbfabf9ad3f19.G e lit14 3 := .app (q38 e h1) (q218 e h0 h1) (by decide)
theorem q220 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Opbfabf9ad3f19.G e lit13 3 := .app (q213 e h1) (q12 e h0) (by decide)
theorem q221 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Opbfabf9ad3f19.G e lit14 3 := .app (q38 e h1) (q220 e h0 h1) (by decide)
theorem q222 (e : Env 3) (h0 : e 0 = 3) : Typed Opbfabf9ad3f19.G e lit15 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q215 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q217 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q219 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q221 (push 3 e) rfl h0).weaken _ (by decide)
theorem q223 (e : Env 3)  : Typed Opbfabf9ad3f19.G e lit16 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q192 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q202 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q212 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q222 (push 3 e) rfl).weaken _ (by decide)
theorem q224 (e : Env 3)  : Typed Opbfabf9ad3f19.G e lit17 1 := .app (q182 e) (q223 e) (by decide)
theorem q225 (e : Env 3) (h1 : e 1 = 0) : Typed Opbfabf9ad3f19.G e lit18 0 := .app (q224 e) (q1 e h1) (by decide)
theorem q226 (e : Env 3) (h0 : e 0 = 0) : Typed Opbfabf9ad3f19.G e lit19 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q1 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 3 e) h0).weaken _ (by decide)
theorem q227 (e : Env 3) (h0 : e 0 = 1) : Typed Opbfabf9ad3f19.G e lit19 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q16 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q16 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q16 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q16 (push 3 e) h0).weaken _ (by decide)
theorem q228 (e : Env 3) (h0 : e 0 = 2) : Typed Opbfabf9ad3f19.G e lit19 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q27 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q27 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q27 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q27 (push 3 e) h0).weaken _ (by decide)
theorem q229 (e : Env 3) (h0 : e 0 = 3) : Typed Opbfabf9ad3f19.G e lit19 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q38 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q38 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q38 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q38 (push 3 e) h0).weaken _ (by decide)
theorem q230 (e : Env 3)  : Typed Opbfabf9ad3f19.G e lit20 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q226 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q227 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q228 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q229 (push 3 e) rfl).weaken _ (by decide)
theorem q231 (e : Env 3) (h0 : e 0 = 0) : Typed Opbfabf9ad3f19.G e lit21 1 := .app (q0 e h0) (q230 e) (by decide)
theorem q232 (e : Env 3)  : Typed Opbfabf9ad3f19.G e lit22 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q0 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q6 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q9 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q12 (push 3 e) rfl).weaken _ (by decide)
theorem q233 (e : Env 3)  : Typed Opbfabf9ad3f19.G e lit23 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q232 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q232 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q232 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q232 (push 3 e)).weaken _ (by decide)
theorem q234 (e : Env 3) (h0 : e 0 = 0) : Typed Opbfabf9ad3f19.G e lit24 0 := .app (q0 e h0) (q233 e) (by decide)
theorem q235 (e : Env 3) (h6 : e 6 = 2) : Typed Opbfabf9ad3f19.G e lit25 2 := .var _ _ (by rw [h6]; decide)
theorem q236 (e : Env 3) (h0 : e 0 = 0) (h6 : e 6 = 2) : Typed Opbfabf9ad3f19.G e lit26 2 := .app (q231 e h0) (q235 e h6) (by decide)
theorem q237 (e : Env 3) (h0 : e 0 = 1) : Typed Opbfabf9ad3f19.G e lit21 3 := .app (q6 e h0) (q230 e) (by decide)
theorem q238 (e : Env 3) (h0 : e 0 = 1) (h6 : e 6 = 2) : Typed Opbfabf9ad3f19.G e lit26 3 := .app (q237 e h0) (q235 e h6) (by decide)
theorem q239 (e : Env 3) (h0 : e 0 = 2) : Typed Opbfabf9ad3f19.G e lit21 3 := .app (q9 e h0) (q230 e) (by decide)
theorem q240 (e : Env 3) (h0 : e 0 = 2) (h6 : e 6 = 2) : Typed Opbfabf9ad3f19.G e lit26 3 := .app (q239 e h0) (q235 e h6) (by decide)
theorem q241 (e : Env 3) (h0 : e 0 = 3) : Typed Opbfabf9ad3f19.G e lit21 3 := .app (q12 e h0) (q230 e) (by decide)
theorem q242 (e : Env 3) (h0 : e 0 = 3) (h6 : e 6 = 2) : Typed Opbfabf9ad3f19.G e lit26 3 := .app (q241 e h0) (q235 e h6) (by decide)
theorem q243 (e : Env 3) (h5 : e 5 = 2) : Typed Opbfabf9ad3f19.G e lit27 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q236 (push 0 e) rfl h5).weaken _ (by decide)
  · subst a; exact (q238 (push 1 e) rfl h5).weaken _ (by decide)
  · subst a; exact (q240 (push 2 e) rfl h5).weaken _ (by decide)
  · subst a; exact (q242 (push 3 e) rfl h5).weaken _ (by decide)
theorem q244 (e : Env 3) (h0 : e 0 = 0) (h5 : e 5 = 2) : Typed Opbfabf9ad3f19.G e lit28 1 := .app (q234 e h0) (q243 e h5) (by decide)
theorem q245 (e : Env 3) (h0 : e 0 = 1) : Typed Opbfabf9ad3f19.G e lit24 2 := .app (q6 e h0) (q233 e) (by decide)
theorem q246 (e : Env 3) (h0 : e 0 = 1) (h5 : e 5 = 2) : Typed Opbfabf9ad3f19.G e lit28 3 := .app (q245 e h0) (q243 e h5) (by decide)
theorem q247 (e : Env 3) (h0 : e 0 = 2) : Typed Opbfabf9ad3f19.G e lit24 2 := .app (q9 e h0) (q233 e) (by decide)
theorem q248 (e : Env 3) (h0 : e 0 = 2) (h5 : e 5 = 2) : Typed Opbfabf9ad3f19.G e lit28 3 := .app (q247 e h0) (q243 e h5) (by decide)
theorem q249 (e : Env 3) (h0 : e 0 = 3) : Typed Opbfabf9ad3f19.G e lit24 3 := .app (q12 e h0) (q233 e) (by decide)
theorem q250 (e : Env 3) (h0 : e 0 = 3) (h5 : e 5 = 2) : Typed Opbfabf9ad3f19.G e lit28 3 := .app (q249 e h0) (q243 e h5) (by decide)
theorem q251 (e : Env 3) (h4 : e 4 = 2) : Typed Opbfabf9ad3f19.G e lit29 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q244 (push 0 e) rfl h4).weaken _ (by decide)
  · subst a; exact (q246 (push 1 e) rfl h4).weaken _ (by decide)
  · subst a; exact (q248 (push 2 e) rfl h4).weaken _ (by decide)
  · subst a; exact (q250 (push 3 e) rfl h4).weaken _ (by decide)
theorem q252 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 2) : Typed Opbfabf9ad3f19.G e lit30 3 := .app (q231 e h0) (q251 e h4) (by decide)
theorem q253 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 2) : Typed Opbfabf9ad3f19.G e lit30 3 := .app (q237 e h0) (q251 e h4) (by decide)
theorem q254 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 2) : Typed Opbfabf9ad3f19.G e lit30 3 := .app (q239 e h0) (q251 e h4) (by decide)
theorem q255 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 2) : Typed Opbfabf9ad3f19.G e lit30 3 := .app (q241 e h0) (q251 e h4) (by decide)
theorem q256 (e : Env 3) (h3 : e 3 = 2) : Typed Opbfabf9ad3f19.G e lit31 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q252 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q253 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q254 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q255 (push 3 e) rfl h3).weaken _ (by decide)
theorem q257 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 2) : Typed Opbfabf9ad3f19.G e lit32 3 := .app (q231 e h0) (q256 e h3) (by decide)
theorem q258 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 2) : Typed Opbfabf9ad3f19.G e lit32 3 := .app (q237 e h0) (q256 e h3) (by decide)
theorem q259 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 2) : Typed Opbfabf9ad3f19.G e lit32 3 := .app (q239 e h0) (q256 e h3) (by decide)
theorem q260 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 2) : Typed Opbfabf9ad3f19.G e lit32 3 := .app (q241 e h0) (q256 e h3) (by decide)
theorem q261 (e : Env 3) (h2 : e 2 = 2) : Typed Opbfabf9ad3f19.G e lit33 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q257 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q258 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q259 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q260 (push 3 e) rfl h2).weaken _ (by decide)
theorem q262 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 2) : Typed Opbfabf9ad3f19.G e lit34 3 := .app (q231 e h0) (q261 e h2) (by decide)
theorem q263 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 2) : Typed Opbfabf9ad3f19.G e lit34 3 := .app (q237 e h0) (q261 e h2) (by decide)
theorem q264 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 2) : Typed Opbfabf9ad3f19.G e lit34 3 := .app (q239 e h0) (q261 e h2) (by decide)
theorem q265 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 2) : Typed Opbfabf9ad3f19.G e lit34 3 := .app (q241 e h0) (q261 e h2) (by decide)
theorem q266 (e : Env 3) (h1 : e 1 = 2) : Typed Opbfabf9ad3f19.G e lit35 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q262 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q263 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q264 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q265 (push 3 e) rfl h1).weaken _ (by decide)
theorem q267 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Opbfabf9ad3f19.G e lit36 3 := .app (q231 e h0) (q266 e h1) (by decide)
theorem q268 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Opbfabf9ad3f19.G e lit36 3 := .app (q237 e h0) (q266 e h1) (by decide)
theorem q269 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Opbfabf9ad3f19.G e lit36 3 := .app (q239 e h0) (q266 e h1) (by decide)
theorem q270 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Opbfabf9ad3f19.G e lit36 3 := .app (q241 e h0) (q266 e h1) (by decide)
theorem q271 (e : Env 3) (h0 : e 0 = 2) : Typed Opbfabf9ad3f19.G e lit37 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q267 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q268 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q269 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q270 (push 3 e) rfl h0).weaken _ (by decide)
theorem q272 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Opbfabf9ad3f19.G e lit38 1 := .app (q225 e h1) (q271 e h0) (by decide)
end Blc.Floor45.Probe9673902246874
