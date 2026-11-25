import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9692869713550D0

set_option Elab.async false
namespace Blc.Floor45.Probe9692869713550
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q154 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit3 3 := .app (q45 e h2) (q15 e h0) (by decide)
theorem q155 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q154 e h0 h2) (q4 e h1) (by decide)
theorem q156 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 2 := .app (q1 e h1) (q155 e h0 h1 h2) (by decide)
theorem q157 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q147 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q150 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q153 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q156 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q158 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q145 e h0 h2) (q22 e h1) (by decide)
theorem q159 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q158 e h0 h1 h2) (by decide)
theorem q160 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q148 e h0 h2) (q22 e h1) (by decide)
theorem q161 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q160 e h0 h1 h2) (by decide)
theorem q162 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q151 e h0 h2) (q22 e h1) (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q162 e h0 h1 h2) (by decide)
theorem q164 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q154 e h0 h2) (q22 e h1) (by decide)
theorem q165 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q164 e h0 h1 h2) (by decide)
theorem q166 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q159 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q161 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q163 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q165 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q167 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q145 e h0 h2) (q34 e h1) (by decide)
theorem q168 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q32 e h1) (q167 e h0 h1 h2) (by decide)
theorem q169 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q148 e h0 h2) (q34 e h1) (by decide)
theorem q170 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q32 e h1) (q169 e h0 h1 h2) (by decide)
theorem q171 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q151 e h0 h2) (q34 e h1) (by decide)
theorem q172 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q32 e h1) (q171 e h0 h1 h2) (by decide)
theorem q173 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q154 e h0 h2) (q34 e h1) (by decide)
theorem q174 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q32 e h1) (q173 e h0 h1 h2) (by decide)
theorem q175 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q168 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q170 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q172 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q174 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q176 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q145 e h0 h2) (q46 e h1) (by decide)
theorem q177 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q44 e h1) (q176 e h0 h1 h2) (by decide)
theorem q178 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q148 e h0 h2) (q46 e h1) (by decide)
theorem q179 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q44 e h1) (q178 e h0 h1 h2) (by decide)
theorem q180 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q151 e h0 h2) (q46 e h1) (by decide)
theorem q181 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q44 e h1) (q180 e h0 h1 h2) (by decide)
theorem q182 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q154 e h0 h2) (q46 e h1) (by decide)
theorem q183 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q44 e h1) (q182 e h0 h1 h2) (by decide)
theorem q184 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q177 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q179 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q181 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q183 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q185 (e : Env 3) (h0 : e 0 = 3) : Typed Op4110659a734a.G e lit8 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q157 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q166 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q175 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q184 (push 3 e) rfl h0).weaken _ (by decide)
theorem q186 (e : Env 3) (h0 : e 0 = 3) : Typed Op4110659a734a.G e lit9 3 := .app (q15 e h0) (q185 e h0) (by decide)
theorem q187 (e : Env 3) (h0 : e 0 = 3) : Typed Op4110659a734a.G e lit10 3 := .app (q15 e h0) (q186 e h0) (by decide)
theorem q188 (e : Env 3)  : Typed Op4110659a734a.G e lit11 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q58 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q101 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q144 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q187 (push 3 e) rfl).weaken _ (by decide)
theorem q189 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit12 0 := .app (q188 e) (q0 e h0) (by decide)
theorem q190 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit13 0 := .app (q189 e h0) (q4 e h1) (by decide)
theorem q191 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit14 0 := .app (q1 e h1) (q190 e h0 h1) (by decide)
theorem q192 (e : Env 3) (h0 : e 0 = 1) : Typed Op4110659a734a.G e lit12 3 := .app (q188 e) (q7 e h0) (by decide)
theorem q193 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit13 3 := .app (q192 e h0) (q4 e h1) (by decide)
theorem q194 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit14 2 := .app (q1 e h1) (q193 e h0 h1) (by decide)
theorem q195 (e : Env 3) (h0 : e 0 = 2) : Typed Op4110659a734a.G e lit12 3 := .app (q188 e) (q11 e h0) (by decide)
theorem q196 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit13 3 := .app (q195 e h0) (q4 e h1) (by decide)
theorem q197 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit14 2 := .app (q1 e h1) (q196 e h0 h1) (by decide)
theorem q198 (e : Env 3) (h0 : e 0 = 3) : Typed Op4110659a734a.G e lit12 3 := .app (q188 e) (q15 e h0) (by decide)
theorem q199 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit13 3 := .app (q198 e h0) (q4 e h1) (by decide)
theorem q200 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit14 2 := .app (q1 e h1) (q199 e h0 h1) (by decide)
theorem q201 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit15 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q191 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q194 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q197 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q200 (push 3 e) rfl h0).weaken _ (by decide)
theorem q202 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit13 2 := .app (q189 e h0) (q22 e h1) (by decide)
theorem q203 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit14 3 := .app (q20 e h1) (q202 e h0 h1) (by decide)
theorem q204 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit13 3 := .app (q192 e h0) (q22 e h1) (by decide)
theorem q205 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit14 3 := .app (q20 e h1) (q204 e h0 h1) (by decide)
theorem q206 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit13 3 := .app (q195 e h0) (q22 e h1) (by decide)
theorem q207 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit14 3 := .app (q20 e h1) (q206 e h0 h1) (by decide)
theorem q208 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit13 3 := .app (q198 e h0) (q22 e h1) (by decide)
theorem q209 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit14 3 := .app (q20 e h1) (q208 e h0 h1) (by decide)
theorem q210 (e : Env 3) (h0 : e 0 = 1) : Typed Op4110659a734a.G e lit15 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q203 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q205 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q207 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q209 (push 3 e) rfl h0).weaken _ (by decide)
theorem q211 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit13 2 := .app (q189 e h0) (q34 e h1) (by decide)
theorem q212 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit14 3 := .app (q32 e h1) (q211 e h0 h1) (by decide)
theorem q213 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit13 3 := .app (q192 e h0) (q34 e h1) (by decide)
theorem q214 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit14 3 := .app (q32 e h1) (q213 e h0 h1) (by decide)
theorem q215 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit13 3 := .app (q195 e h0) (q34 e h1) (by decide)
theorem q216 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit14 3 := .app (q32 e h1) (q215 e h0 h1) (by decide)
theorem q217 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit13 3 := .app (q198 e h0) (q34 e h1) (by decide)
theorem q218 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit14 3 := .app (q32 e h1) (q217 e h0 h1) (by decide)
theorem q219 (e : Env 3) (h0 : e 0 = 2) : Typed Op4110659a734a.G e lit15 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q212 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q214 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q216 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q218 (push 3 e) rfl h0).weaken _ (by decide)
theorem q220 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit13 2 := .app (q189 e h0) (q46 e h1) (by decide)
theorem q221 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit14 3 := .app (q44 e h1) (q220 e h0 h1) (by decide)
theorem q222 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit13 3 := .app (q192 e h0) (q46 e h1) (by decide)
theorem q223 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit14 3 := .app (q44 e h1) (q222 e h0 h1) (by decide)
theorem q224 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit13 3 := .app (q195 e h0) (q46 e h1) (by decide)
theorem q225 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit14 3 := .app (q44 e h1) (q224 e h0 h1) (by decide)
theorem q226 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit13 3 := .app (q198 e h0) (q46 e h1) (by decide)
theorem q227 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit14 3 := .app (q44 e h1) (q226 e h0 h1) (by decide)
theorem q228 (e : Env 3) (h0 : e 0 = 3) : Typed Op4110659a734a.G e lit15 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q221 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q223 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q225 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q227 (push 3 e) rfl h0).weaken _ (by decide)
theorem q229 (e : Env 3)  : Typed Op4110659a734a.G e lit16 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q201 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q210 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q219 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q228 (push 3 e) rfl).weaken _ (by decide)
theorem q230 (e : Env 3)  : Typed Op4110659a734a.G e lit17 0 := .app (q188 e) (q229 e) (by decide)
theorem q231 (e : Env 3)  : Typed Op4110659a734a.G e lit18 0 := .app (q188 e) (q230 e) (by decide)
theorem q232 (e : Env 3) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit19 0 := .app (q231 e) (q1 e h1) (by decide)
theorem q233 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit20 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q1 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 3 e) h0).weaken _ (by decide)
theorem q234 (e : Env 3) (h0 : e 0 = 1) : Typed Op4110659a734a.G e lit20 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q20 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q20 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q20 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q20 (push 3 e) h0).weaken _ (by decide)
theorem q235 (e : Env 3) (h0 : e 0 = 2) : Typed Op4110659a734a.G e lit20 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q32 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q32 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q32 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q32 (push 3 e) h0).weaken _ (by decide)
theorem q236 (e : Env 3) (h0 : e 0 = 3) : Typed Op4110659a734a.G e lit20 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q44 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q44 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q44 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q44 (push 3 e) h0).weaken _ (by decide)
theorem q237 (e : Env 3)  : Typed Op4110659a734a.G e lit21 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q233 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q234 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q235 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q236 (push 3 e) rfl).weaken _ (by decide)
theorem q238 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit22 0 := .app (q0 e h0) (q237 e) (by decide)
theorem q239 (e : Env 3)  : Typed Op4110659a734a.G e lit23 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q0 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q7 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q11 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q15 (push 3 e) rfl).weaken _ (by decide)
theorem q240 (e : Env 3)  : Typed Op4110659a734a.G e lit24 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q239 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q239 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q239 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q239 (push 3 e)).weaken _ (by decide)
theorem q241 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit25 2 := .app (q0 e h0) (q240 e) (by decide)
theorem q242 (e : Env 3) (h4 : e 4 = 0) : Typed Op4110659a734a.G e lit26 0 := .var _ _ (by rw [h4]; decide)
theorem q243 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 0) : Typed Op4110659a734a.G e lit27 0 := .app (q238 e h0) (q242 e h4) (by decide)
theorem q244 (e : Env 3) (h0 : e 0 = 1) : Typed Op4110659a734a.G e lit22 0 := .app (q7 e h0) (q237 e) (by decide)
theorem q245 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 0) : Typed Op4110659a734a.G e lit27 0 := .app (q244 e h0) (q242 e h4) (by decide)
theorem q246 (e : Env 3) (h0 : e 0 = 2) : Typed Op4110659a734a.G e lit22 3 := .app (q11 e h0) (q237 e) (by decide)
theorem q247 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 0) : Typed Op4110659a734a.G e lit27 3 := .app (q246 e h0) (q242 e h4) (by decide)
theorem q248 (e : Env 3) (h0 : e 0 = 3) : Typed Op4110659a734a.G e lit22 3 := .app (q15 e h0) (q237 e) (by decide)
theorem q249 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 0) : Typed Op4110659a734a.G e lit27 3 := .app (q248 e h0) (q242 e h4) (by decide)
theorem q250 (e : Env 3) (h3 : e 3 = 0) : Typed Op4110659a734a.G e lit28 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q243 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q245 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q247 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q249 (push 3 e) rfl h3).weaken _ (by decide)
theorem q251 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op4110659a734a.G e lit29 3 := .app (q241 e h0) (q250 e h3) (by decide)
theorem q252 (e : Env 3) (h0 : e 0 = 1) : Typed Op4110659a734a.G e lit25 3 := .app (q7 e h0) (q240 e) (by decide)
theorem q253 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op4110659a734a.G e lit29 3 := .app (q252 e h0) (q250 e h3) (by decide)
theorem q254 (e : Env 3) (h0 : e 0 = 2) : Typed Op4110659a734a.G e lit25 3 := .app (q11 e h0) (q240 e) (by decide)
theorem q255 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op4110659a734a.G e lit29 3 := .app (q254 e h0) (q250 e h3) (by decide)
theorem q256 (e : Env 3) (h0 : e 0 = 3) : Typed Op4110659a734a.G e lit25 3 := .app (q15 e h0) (q240 e) (by decide)
theorem q257 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op4110659a734a.G e lit29 3 := .app (q256 e h0) (q250 e h3) (by decide)
theorem q258 (e : Env 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit30 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q251 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q253 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q255 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q257 (push 3 e) rfl h2).weaken _ (by decide)
theorem q259 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit31 2 := .app (q238 e h0) (q258 e h2) (by decide)
theorem q260 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit31 2 := .app (q244 e h0) (q258 e h2) (by decide)
theorem q261 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit31 3 := .app (q246 e h0) (q258 e h2) (by decide)
theorem q262 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit31 3 := .app (q248 e h0) (q258 e h2) (by decide)
theorem q263 (e : Env 3) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit32 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q259 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q260 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q261 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q262 (push 3 e) rfl h1).weaken _ (by decide)
theorem q264 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit33 2 := .app (q238 e h0) (q263 e h1) (by decide)
theorem q265 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit33 2 := .app (q244 e h0) (q263 e h1) (by decide)
theorem q266 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit33 3 := .app (q246 e h0) (q263 e h1) (by decide)
theorem q267 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit33 3 := .app (q248 e h0) (q263 e h1) (by decide)
theorem q268 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit34 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q264 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q265 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q266 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q267 (push 3 e) rfl h0).weaken _ (by decide)
theorem q269 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit35 2 := .app (q232 e h1) (q268 e h0) (by decide)
end Blc.Floor45.Probe9692869713550
