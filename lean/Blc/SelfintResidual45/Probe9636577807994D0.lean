import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Op4b638b5bed78

set_option Elab.async false
namespace Blc.Floor45.Probe9636577807994
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def lit0 : Term := .var 0
def lit1 : Term := .var 1
def lit2 : Term := .var 2
def lit3 : Term := .app lit2 lit0
def lit4 : Term := .app lit1 lit3
def lit5 : Term := .lam lit4
def lit6 : Term := .lam lit5
def lit7 : Term := .app lit0 lit6
def lit8 : Term := .app lit0 lit7
def lit9 : Term := .lam lit8
def lit10 : Term := .app lit9 lit9
def lit11 : Term := .app lit10 lit1
def lit12 : Term := .lam lit1
def lit13 : Term := .lam lit12
def lit14 : Term := .app lit0 lit13
def lit15 : Term := .lam lit0
def lit16 : Term := .lam lit15
def lit17 : Term := .app lit0 lit16
def lit18 : Term := .var 4
def lit19 : Term := .app lit14 lit18
def lit20 : Term := .lam lit19
def lit21 : Term := .app lit17 lit20
def lit22 : Term := .lam lit21
def lit23 : Term := .app lit14 lit22
def lit24 : Term := .lam lit23
def lit25 : Term := .app lit14 lit24
def lit26 : Term := .lam lit25
def lit27 : Term := .app lit11 lit26
theorem q0 (e : Env 3) (h0 : e 0 = 0) : Typed Op4b638b5bed78.G e lit0 0 := .var _ _ (by rw [h0]; decide)
theorem q1 (e : Env 3) (h1 : e 1 = 0) : Typed Op4b638b5bed78.G e lit1 0 := .var _ _ (by rw [h1]; decide)
theorem q2 (e : Env 3) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit2 0 := .var _ _ (by rw [h2]; decide)
theorem q3 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit3 0 := .app (q2 e h2) (q0 e h0) (by decide)
theorem q4 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 0 := .app (q1 e h1) (q3 e h0 h2) (by decide)
theorem q5 (e : Env 3) (h0 : e 0 = 1) : Typed Op4b638b5bed78.G e lit0 1 := .var _ _ (by rw [h0]; decide)
theorem q6 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit3 0 := .app (q2 e h2) (q5 e h0) (by decide)
theorem q7 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 0 := .app (q1 e h1) (q6 e h0 h2) (by decide)
theorem q8 (e : Env 3) (h0 : e 0 = 2) : Typed Op4b638b5bed78.G e lit0 2 := .var _ _ (by rw [h0]; decide)
theorem q9 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit3 0 := .app (q2 e h2) (q8 e h0) (by decide)
theorem q10 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 0 := .app (q1 e h1) (q9 e h0 h2) (by decide)
theorem q11 (e : Env 3) (h0 : e 0 = 3) : Typed Op4b638b5bed78.G e lit0 3 := .var _ _ (by rw [h0]; decide)
theorem q12 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit3 0 := .app (q2 e h2) (q11 e h0) (by decide)
theorem q13 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 0 := .app (q1 e h1) (q12 e h0 h2) (by decide)
theorem q14 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op4b638b5bed78.G e lit5 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q4 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q7 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q10 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q13 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q15 (e : Env 3) (h1 : e 1 = 1) : Typed Op4b638b5bed78.G e lit1 1 := .var _ _ (by rw [h1]; decide)
theorem q16 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 0 := .app (q15 e h1) (q3 e h0 h2) (by decide)
theorem q17 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 0 := .app (q15 e h1) (q6 e h0 h2) (by decide)
theorem q18 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 0 := .app (q15 e h1) (q9 e h0 h2) (by decide)
theorem q19 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 0 := .app (q15 e h1) (q12 e h0 h2) (by decide)
theorem q20 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op4b638b5bed78.G e lit5 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q16 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q17 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q18 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q19 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q21 (e : Env 3) (h1 : e 1 = 2) : Typed Op4b638b5bed78.G e lit1 2 := .var _ _ (by rw [h1]; decide)
theorem q22 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 0 := .app (q21 e h1) (q3 e h0 h2) (by decide)
theorem q23 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 0 := .app (q21 e h1) (q6 e h0 h2) (by decide)
theorem q24 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 0 := .app (q21 e h1) (q9 e h0 h2) (by decide)
theorem q25 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 0 := .app (q21 e h1) (q12 e h0 h2) (by decide)
theorem q26 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op4b638b5bed78.G e lit5 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q22 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q23 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q24 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q25 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q27 (e : Env 3) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit1 3 := .var _ _ (by rw [h1]; decide)
theorem q28 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 3 := .app (q27 e h1) (q3 e h0 h2) (by decide)
theorem q29 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 3 := .app (q27 e h1) (q6 e h0 h2) (by decide)
theorem q30 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 3 := .app (q27 e h1) (q9 e h0 h2) (by decide)
theorem q31 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 3 := .app (q27 e h1) (q12 e h0 h2) (by decide)
theorem q32 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op4b638b5bed78.G e lit5 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q28 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q29 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q30 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q31 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q33 (e : Env 3) (h0 : e 0 = 0) : Typed Op4b638b5bed78.G e lit6 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q14 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q20 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q26 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q32 (push 3 e) rfl h0).weaken _ (by decide)
theorem q34 (e : Env 3) (h0 : e 0 = 0) : Typed Op4b638b5bed78.G e lit7 0 := .app (q0 e h0) (q33 e h0) (by decide)
theorem q35 (e : Env 3) (h0 : e 0 = 0) : Typed Op4b638b5bed78.G e lit8 0 := .app (q0 e h0) (q34 e h0) (by decide)
theorem q36 (e : Env 3) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit2 1 := .var _ _ (by rw [h2]; decide)
theorem q37 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit3 0 := .app (q36 e h2) (q0 e h0) (by decide)
theorem q38 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 0 := .app (q1 e h1) (q37 e h0 h2) (by decide)
theorem q39 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit3 0 := .app (q36 e h2) (q5 e h0) (by decide)
theorem q40 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 0 := .app (q1 e h1) (q39 e h0 h2) (by decide)
theorem q41 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit3 0 := .app (q36 e h2) (q8 e h0) (by decide)
theorem q42 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 0 := .app (q1 e h1) (q41 e h0 h2) (by decide)
theorem q43 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit3 2 := .app (q36 e h2) (q11 e h0) (by decide)
theorem q44 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 0 := .app (q1 e h1) (q43 e h0 h2) (by decide)
theorem q45 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op4b638b5bed78.G e lit5 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q38 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q40 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q42 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q44 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q46 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 0 := .app (q15 e h1) (q37 e h0 h2) (by decide)
theorem q47 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 0 := .app (q15 e h1) (q39 e h0 h2) (by decide)
theorem q48 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 0 := .app (q15 e h1) (q41 e h0 h2) (by decide)
theorem q49 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 0 := .app (q15 e h1) (q43 e h0 h2) (by decide)
theorem q50 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op4b638b5bed78.G e lit5 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q46 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q47 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q48 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q49 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q51 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 0 := .app (q21 e h1) (q37 e h0 h2) (by decide)
theorem q52 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 0 := .app (q21 e h1) (q39 e h0 h2) (by decide)
theorem q53 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 0 := .app (q21 e h1) (q41 e h0 h2) (by decide)
theorem q54 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 2 := .app (q21 e h1) (q43 e h0 h2) (by decide)
theorem q55 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op4b638b5bed78.G e lit5 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q51 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q52 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q53 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q54 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q56 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 3 := .app (q27 e h1) (q37 e h0 h2) (by decide)
theorem q57 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 3 := .app (q27 e h1) (q39 e h0 h2) (by decide)
theorem q58 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 3 := .app (q27 e h1) (q41 e h0 h2) (by decide)
theorem q59 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 3 := .app (q27 e h1) (q43 e h0 h2) (by decide)
theorem q60 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op4b638b5bed78.G e lit5 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q56 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q57 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q58 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q59 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q61 (e : Env 3) (h0 : e 0 = 1) : Typed Op4b638b5bed78.G e lit6 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q45 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q50 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q55 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q60 (push 3 e) rfl h0).weaken _ (by decide)
theorem q62 (e : Env 3) (h0 : e 0 = 1) : Typed Op4b638b5bed78.G e lit7 0 := .app (q5 e h0) (q61 e h0) (by decide)
theorem q63 (e : Env 3) (h0 : e 0 = 1) : Typed Op4b638b5bed78.G e lit8 0 := .app (q5 e h0) (q62 e h0) (by decide)
theorem q64 (e : Env 3) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit2 2 := .var _ _ (by rw [h2]; decide)
theorem q65 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit3 0 := .app (q64 e h2) (q0 e h0) (by decide)
theorem q66 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 0 := .app (q1 e h1) (q65 e h0 h2) (by decide)
theorem q67 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit3 1 := .app (q64 e h2) (q5 e h0) (by decide)
theorem q68 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 0 := .app (q1 e h1) (q67 e h0 h2) (by decide)
theorem q69 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit3 2 := .app (q64 e h2) (q8 e h0) (by decide)
theorem q70 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 0 := .app (q1 e h1) (q69 e h0 h2) (by decide)
theorem q71 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit3 3 := .app (q64 e h2) (q11 e h0) (by decide)
theorem q72 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 0 := .app (q1 e h1) (q71 e h0 h2) (by decide)
theorem q73 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op4b638b5bed78.G e lit5 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q66 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q68 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q70 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q72 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q74 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 0 := .app (q15 e h1) (q65 e h0 h2) (by decide)
theorem q75 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 0 := .app (q15 e h1) (q67 e h0 h2) (by decide)
theorem q76 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 0 := .app (q15 e h1) (q69 e h0 h2) (by decide)
theorem q77 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 2 := .app (q15 e h1) (q71 e h0 h2) (by decide)
theorem q78 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op4b638b5bed78.G e lit5 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q74 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q75 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q76 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q77 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q79 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 0 := .app (q21 e h1) (q65 e h0 h2) (by decide)
theorem q80 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 1 := .app (q21 e h1) (q67 e h0 h2) (by decide)
theorem q81 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 2 := .app (q21 e h1) (q69 e h0 h2) (by decide)
theorem q82 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 3 := .app (q21 e h1) (q71 e h0 h2) (by decide)
theorem q83 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op4b638b5bed78.G e lit5 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q79 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q80 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q81 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q82 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q84 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 3 := .app (q27 e h1) (q65 e h0 h2) (by decide)
theorem q85 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 3 := .app (q27 e h1) (q67 e h0 h2) (by decide)
theorem q86 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 3 := .app (q27 e h1) (q69 e h0 h2) (by decide)
theorem q87 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 3 := .app (q27 e h1) (q71 e h0 h2) (by decide)
theorem q88 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op4b638b5bed78.G e lit5 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q84 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q85 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q86 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q87 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q89 (e : Env 3) (h0 : e 0 = 2) : Typed Op4b638b5bed78.G e lit6 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q73 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q78 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q83 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q88 (push 3 e) rfl h0).weaken _ (by decide)
theorem q90 (e : Env 3) (h0 : e 0 = 2) : Typed Op4b638b5bed78.G e lit7 2 := .app (q8 e h0) (q89 e h0) (by decide)
theorem q91 (e : Env 3) (h0 : e 0 = 2) : Typed Op4b638b5bed78.G e lit8 2 := .app (q8 e h0) (q90 e h0) (by decide)
theorem q92 (e : Env 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit2 3 := .var _ _ (by rw [h2]; decide)
theorem q93 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit3 3 := .app (q92 e h2) (q0 e h0) (by decide)
theorem q94 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 0 := .app (q1 e h1) (q93 e h0 h2) (by decide)
theorem q95 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit3 3 := .app (q92 e h2) (q5 e h0) (by decide)
theorem q96 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 0 := .app (q1 e h1) (q95 e h0 h2) (by decide)
theorem q97 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit3 3 := .app (q92 e h2) (q8 e h0) (by decide)
theorem q98 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 0 := .app (q1 e h1) (q97 e h0 h2) (by decide)
theorem q99 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit3 3 := .app (q92 e h2) (q11 e h0) (by decide)
theorem q100 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 0 := .app (q1 e h1) (q99 e h0 h2) (by decide)
theorem q101 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit5 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q94 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q96 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q98 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q100 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q102 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 2 := .app (q15 e h1) (q93 e h0 h2) (by decide)
theorem q103 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 2 := .app (q15 e h1) (q95 e h0 h2) (by decide)
theorem q104 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 2 := .app (q15 e h1) (q97 e h0 h2) (by decide)
theorem q105 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 2 := .app (q15 e h1) (q99 e h0 h2) (by decide)
theorem q106 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit5 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q102 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q103 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q104 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q105 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q107 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 3 := .app (q21 e h1) (q93 e h0 h2) (by decide)
theorem q108 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 3 := .app (q21 e h1) (q95 e h0 h2) (by decide)
theorem q109 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 3 := .app (q21 e h1) (q97 e h0 h2) (by decide)
theorem q110 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 3 := .app (q21 e h1) (q99 e h0 h2) (by decide)
theorem q111 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit5 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q107 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q108 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q109 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q110 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q112 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 3 := .app (q27 e h1) (q93 e h0 h2) (by decide)
theorem q113 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 3 := .app (q27 e h1) (q95 e h0 h2) (by decide)
theorem q114 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 3 := .app (q27 e h1) (q97 e h0 h2) (by decide)
theorem q115 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 3 := .app (q27 e h1) (q99 e h0 h2) (by decide)
theorem q116 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit5 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q112 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q113 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q114 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q115 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q117 (e : Env 3) (h0 : e 0 = 3) : Typed Op4b638b5bed78.G e lit6 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q101 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q106 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q111 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q116 (push 3 e) rfl h0).weaken _ (by decide)
theorem q118 (e : Env 3) (h0 : e 0 = 3) : Typed Op4b638b5bed78.G e lit7 3 := .app (q11 e h0) (q117 e h0) (by decide)
theorem q119 (e : Env 3) (h0 : e 0 = 3) : Typed Op4b638b5bed78.G e lit8 3 := .app (q11 e h0) (q118 e h0) (by decide)
theorem q120 (e : Env 3)  : Typed Op4b638b5bed78.G e lit9 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q35 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q63 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q91 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q119 (push 3 e) rfl).weaken _ (by decide)
theorem q121 (e : Env 3)  : Typed Op4b638b5bed78.G e lit10 2 := .app (q120 e) (q120 e) (by decide)
theorem q122 (e : Env 3) (h1 : e 1 = 1) : Typed Op4b638b5bed78.G e lit11 1 := .app (q121 e) (q15 e h1) (by decide)
theorem q123 (e : Env 3) (h0 : e 0 = 0) : Typed Op4b638b5bed78.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q1 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q1 (push 3 e) h0).weaken _ (by decide)
theorem q124 (e : Env 3) (h0 : e 0 = 1) : Typed Op4b638b5bed78.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q15 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q15 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q15 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q15 (push 3 e) h0).weaken _ (by decide)
theorem q125 (e : Env 3) (h0 : e 0 = 2) : Typed Op4b638b5bed78.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q21 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q21 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q21 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q21 (push 3 e) h0).weaken _ (by decide)
theorem q126 (e : Env 3) (h0 : e 0 = 3) : Typed Op4b638b5bed78.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q27 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q27 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q27 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q27 (push 3 e) h0).weaken _ (by decide)
theorem q127 (e : Env 3)  : Typed Op4b638b5bed78.G e lit13 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q123 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q124 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q125 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q126 (push 3 e) rfl).weaken _ (by decide)
theorem q128 (e : Env 3) (h0 : e 0 = 0) : Typed Op4b638b5bed78.G e lit14 0 := .app (q0 e h0) (q127 e) (by decide)
theorem q129 (e : Env 3)  : Typed Op4b638b5bed78.G e lit15 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q0 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q5 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q8 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q11 (push 3 e) rfl).weaken _ (by decide)
theorem q130 (e : Env 3)  : Typed Op4b638b5bed78.G e lit16 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q129 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q129 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q129 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q129 (push 3 e)).weaken _ (by decide)
theorem q131 (e : Env 3) (h0 : e 0 = 0) : Typed Op4b638b5bed78.G e lit17 0 := .app (q0 e h0) (q130 e) (by decide)
theorem q132 (e : Env 3) (h4 : e 4 = 3) : Typed Op4b638b5bed78.G e lit18 3 := .var _ _ (by rw [h4]; decide)
theorem q133 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 3) : Typed Op4b638b5bed78.G e lit19 0 := .app (q128 e h0) (q132 e h4) (by decide)
theorem q134 (e : Env 3) (h0 : e 0 = 1) : Typed Op4b638b5bed78.G e lit14 2 := .app (q5 e h0) (q127 e) (by decide)
theorem q135 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 3) : Typed Op4b638b5bed78.G e lit19 3 := .app (q134 e h0) (q132 e h4) (by decide)
theorem q136 (e : Env 3) (h0 : e 0 = 2) : Typed Op4b638b5bed78.G e lit14 3 := .app (q8 e h0) (q127 e) (by decide)
theorem q137 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 3) : Typed Op4b638b5bed78.G e lit19 3 := .app (q136 e h0) (q132 e h4) (by decide)
end Blc.Floor45.Probe9636577807994
