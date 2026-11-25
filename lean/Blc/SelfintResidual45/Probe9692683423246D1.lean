import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9692683423246D0

set_option Elab.async false
namespace Blc.Floor45.Probe9692683423246
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q146 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit8 0 := .app (q18 e h2) (q78 e h0 h1) (by decide)
theorem q147 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q18 e h2) (q146 e h0 h1 h2) (by decide)
theorem q148 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit8 1 := .app (q18 e h2) (q81 e h0 h1) (by decide)
theorem q149 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q18 e h2) (q148 e h0 h1 h2) (by decide)
theorem q150 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit8 1 := .app (q18 e h2) (q84 e h0 h1) (by decide)
theorem q151 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q18 e h2) (q150 e h0 h1 h2) (by decide)
theorem q152 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit8 1 := .app (q18 e h2) (q87 e h0 h1) (by decide)
theorem q153 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q18 e h2) (q152 e h0 h1 h2) (by decide)
theorem q154 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit8 1 := .app (q18 e h2) (q90 e h0 h1) (by decide)
theorem q155 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q18 e h2) (q154 e h0 h1 h2) (by decide)
theorem q156 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op8d74bc6e4e13.G e lit10 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q147 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q149 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q151 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q153 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q155 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q157 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit8 1 := .app (q18 e h2) (q95 e h0 h1) (by decide)
theorem q158 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q18 e h2) (q157 e h0 h1 h2) (by decide)
theorem q159 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit8 1 := .app (q18 e h2) (q98 e h0 h1) (by decide)
theorem q160 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q18 e h2) (q159 e h0 h1 h2) (by decide)
theorem q161 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit8 1 := .app (q18 e h2) (q101 e h0 h1) (by decide)
theorem q162 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q18 e h2) (q161 e h0 h1 h2) (by decide)
theorem q163 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit8 1 := .app (q18 e h2) (q104 e h0 h1) (by decide)
theorem q164 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q18 e h2) (q163 e h0 h1 h2) (by decide)
theorem q165 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit8 1 := .app (q18 e h2) (q107 e h0 h1) (by decide)
theorem q166 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q18 e h2) (q165 e h0 h1 h2) (by decide)
theorem q167 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) : Typed Op8d74bc6e4e13.G e lit10 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q158 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q160 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q162 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q164 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q166 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q168 (e : Env 4) (h0 : e 0 = 1) : Typed Op8d74bc6e4e13.G e lit11 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q123 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q134 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q145 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q156 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q167 (push 4 e) rfl h0).weaken _ (by decide)
theorem q169 (e : Env 4) (h0 : e 0 = 1) : Typed Op8d74bc6e4e13.G e lit12 0 := .app (q2 e h0) (q168 e h0) (by decide)
theorem q170 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 0 := .app (q24 e h2) (q15 e h0 h1) (by decide)
theorem q171 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q24 e h2) (q170 e h0 h1 h2) (by decide)
theorem q172 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 0 := .app (q24 e h2) (q21 e h0 h1) (by decide)
theorem q173 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q24 e h2) (q172 e h0 h1 h2) (by decide)
theorem q174 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 0 := .app (q24 e h2) (q27 e h0 h1) (by decide)
theorem q175 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q24 e h2) (q174 e h0 h1 h2) (by decide)
theorem q176 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 0 := .app (q24 e h2) (q33 e h0 h1) (by decide)
theorem q177 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q24 e h2) (q176 e h0 h1 h2) (by decide)
theorem q178 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 0 := .app (q24 e h2) (q39 e h0 h1) (by decide)
theorem q179 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q24 e h2) (q178 e h0 h1 h2) (by decide)
theorem q180 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op8d74bc6e4e13.G e lit10 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q171 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q173 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q175 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q177 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q179 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q181 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 0 := .app (q24 e h2) (q44 e h0 h1) (by decide)
theorem q182 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q24 e h2) (q181 e h0 h1 h2) (by decide)
theorem q183 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 0 := .app (q24 e h2) (q47 e h0 h1) (by decide)
theorem q184 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q24 e h2) (q183 e h0 h1 h2) (by decide)
theorem q185 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 0 := .app (q24 e h2) (q50 e h0 h1) (by decide)
theorem q186 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q24 e h2) (q185 e h0 h1 h2) (by decide)
theorem q187 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 0 := .app (q24 e h2) (q53 e h0 h1) (by decide)
theorem q188 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q24 e h2) (q187 e h0 h1 h2) (by decide)
theorem q189 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 0 := .app (q24 e h2) (q56 e h0 h1) (by decide)
theorem q190 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q24 e h2) (q189 e h0 h1 h2) (by decide)
theorem q191 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op8d74bc6e4e13.G e lit10 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q182 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q184 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q186 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q188 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q190 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q192 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 0 := .app (q24 e h2) (q61 e h0 h1) (by decide)
theorem q193 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q24 e h2) (q192 e h0 h1 h2) (by decide)
theorem q194 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q24 e h2) (q64 e h0 h1) (by decide)
theorem q195 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q24 e h2) (q194 e h0 h1 h2) (by decide)
theorem q196 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q24 e h2) (q67 e h0 h1) (by decide)
theorem q197 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q24 e h2) (q196 e h0 h1 h2) (by decide)
theorem q198 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q24 e h2) (q70 e h0 h1) (by decide)
theorem q199 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q24 e h2) (q198 e h0 h1 h2) (by decide)
theorem q200 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q24 e h2) (q73 e h0 h1) (by decide)
theorem q201 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q24 e h2) (q200 e h0 h1 h2) (by decide)
theorem q202 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op8d74bc6e4e13.G e lit10 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q193 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q195 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q197 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q199 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q201 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q203 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 0 := .app (q24 e h2) (q78 e h0 h1) (by decide)
theorem q204 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 0 := .app (q24 e h2) (q203 e h0 h1 h2) (by decide)
theorem q205 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q24 e h2) (q81 e h0 h1) (by decide)
theorem q206 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q24 e h2) (q205 e h0 h1 h2) (by decide)
theorem q207 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q24 e h2) (q84 e h0 h1) (by decide)
theorem q208 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q24 e h2) (q207 e h0 h1 h2) (by decide)
theorem q209 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q24 e h2) (q87 e h0 h1) (by decide)
theorem q210 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q24 e h2) (q209 e h0 h1 h2) (by decide)
theorem q211 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q24 e h2) (q90 e h0 h1) (by decide)
theorem q212 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q24 e h2) (q211 e h0 h1 h2) (by decide)
theorem q213 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op8d74bc6e4e13.G e lit10 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q204 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q206 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q208 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q210 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q212 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q214 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q24 e h2) (q95 e h0 h1) (by decide)
theorem q215 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q24 e h2) (q214 e h0 h1 h2) (by decide)
theorem q216 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q24 e h2) (q98 e h0 h1) (by decide)
theorem q217 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q24 e h2) (q216 e h0 h1 h2) (by decide)
theorem q218 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q24 e h2) (q101 e h0 h1) (by decide)
theorem q219 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q24 e h2) (q218 e h0 h1 h2) (by decide)
theorem q220 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q24 e h2) (q104 e h0 h1) (by decide)
theorem q221 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q24 e h2) (q220 e h0 h1 h2) (by decide)
theorem q222 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q24 e h2) (q107 e h0 h1) (by decide)
theorem q223 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q24 e h2) (q222 e h0 h1 h2) (by decide)
theorem q224 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) : Typed Op8d74bc6e4e13.G e lit10 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q215 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q217 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q219 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q221 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q223 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q225 (e : Env 4) (h0 : e 0 = 2) : Typed Op8d74bc6e4e13.G e lit11 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q180 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q191 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q202 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q213 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q224 (push 4 e) rfl h0).weaken _ (by decide)
theorem q226 (e : Env 4) (h0 : e 0 = 2) : Typed Op8d74bc6e4e13.G e lit12 3 := .app (q4 e h0) (q225 e h0) (by decide)
theorem q227 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 1 := .app (q30 e h2) (q15 e h0 h1) (by decide)
theorem q228 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q227 e h0 h1 h2) (by decide)
theorem q229 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q21 e h0 h1) (by decide)
theorem q230 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q229 e h0 h1 h2) (by decide)
theorem q231 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q27 e h0 h1) (by decide)
theorem q232 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q231 e h0 h1 h2) (by decide)
theorem q233 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q33 e h0 h1) (by decide)
theorem q234 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q233 e h0 h1 h2) (by decide)
theorem q235 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q39 e h0 h1) (by decide)
theorem q236 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q235 e h0 h1 h2) (by decide)
theorem q237 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op8d74bc6e4e13.G e lit10 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q228 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q230 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q232 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q234 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q236 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q238 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 1 := .app (q30 e h2) (q44 e h0 h1) (by decide)
theorem q239 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q238 e h0 h1 h2) (by decide)
theorem q240 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q47 e h0 h1) (by decide)
theorem q241 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q240 e h0 h1 h2) (by decide)
theorem q242 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q50 e h0 h1) (by decide)
theorem q243 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q242 e h0 h1 h2) (by decide)
theorem q244 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q53 e h0 h1) (by decide)
theorem q245 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q244 e h0 h1 h2) (by decide)
theorem q246 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q56 e h0 h1) (by decide)
theorem q247 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q246 e h0 h1 h2) (by decide)
theorem q248 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op8d74bc6e4e13.G e lit10 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q239 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q241 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q243 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q245 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q247 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q249 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 1 := .app (q30 e h2) (q61 e h0 h1) (by decide)
theorem q250 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q249 e h0 h1 h2) (by decide)
theorem q251 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q64 e h0 h1) (by decide)
theorem q252 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q251 e h0 h1 h2) (by decide)
theorem q253 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q67 e h0 h1) (by decide)
theorem q254 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q253 e h0 h1 h2) (by decide)
theorem q255 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q70 e h0 h1) (by decide)
theorem q256 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q255 e h0 h1 h2) (by decide)
theorem q257 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q73 e h0 h1) (by decide)
theorem q258 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q257 e h0 h1 h2) (by decide)
theorem q259 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op8d74bc6e4e13.G e lit10 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q250 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q252 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q254 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q256 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q258 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q260 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q78 e h0 h1) (by decide)
theorem q261 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q260 e h0 h1 h2) (by decide)
theorem q262 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q81 e h0 h1) (by decide)
theorem q263 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q262 e h0 h1 h2) (by decide)
theorem q264 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q84 e h0 h1) (by decide)
theorem q265 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q264 e h0 h1 h2) (by decide)
theorem q266 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q87 e h0 h1) (by decide)
theorem q267 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q266 e h0 h1 h2) (by decide)
theorem q268 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q90 e h0 h1) (by decide)
theorem q269 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q268 e h0 h1 h2) (by decide)
theorem q270 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op8d74bc6e4e13.G e lit10 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q261 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q263 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q265 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q267 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q269 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q271 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q95 e h0 h1) (by decide)
theorem q272 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q271 e h0 h1 h2) (by decide)
theorem q273 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q98 e h0 h1) (by decide)
theorem q274 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q273 e h0 h1 h2) (by decide)
theorem q275 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q101 e h0 h1) (by decide)
theorem q276 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q275 e h0 h1 h2) (by decide)
theorem q277 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q104 e h0 h1) (by decide)
theorem q278 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q277 e h0 h1 h2) (by decide)
theorem q279 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q30 e h2) (q107 e h0 h1) (by decide)
theorem q280 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 3) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q30 e h2) (q279 e h0 h1 h2) (by decide)
theorem q281 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) : Typed Op8d74bc6e4e13.G e lit10 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q272 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q274 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q276 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q278 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q280 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q282 (e : Env 4) (h0 : e 0 = 3) : Typed Op8d74bc6e4e13.G e lit11 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q237 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q248 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q259 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q270 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q281 (push 4 e) rfl h0).weaken _ (by decide)
theorem q283 (e : Env 4) (h0 : e 0 = 3) : Typed Op8d74bc6e4e13.G e lit12 4 := .app (q6 e h0) (q282 e h0) (by decide)
theorem q284 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q15 e h0 h1) (by decide)
theorem q285 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q284 e h0 h1 h2) (by decide)
theorem q286 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q21 e h0 h1) (by decide)
theorem q287 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q286 e h0 h1 h2) (by decide)
theorem q288 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q27 e h0 h1) (by decide)
theorem q289 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q288 e h0 h1 h2) (by decide)
theorem q290 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q33 e h0 h1) (by decide)
theorem q291 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q290 e h0 h1 h2) (by decide)
theorem q292 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q39 e h0 h1) (by decide)
theorem q293 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q292 e h0 h1 h2) (by decide)
theorem q294 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) : Typed Op8d74bc6e4e13.G e lit10 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q285 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q287 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q289 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q291 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q293 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q295 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit8 4 := .app (q36 e h2) (q44 e h0 h1) (by decide)
theorem q296 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 4) : Typed Op8d74bc6e4e13.G e lit9 4 := .app (q36 e h2) (q295 e h0 h1 h2) (by decide)
end Blc.Floor45.Probe9692683423246
