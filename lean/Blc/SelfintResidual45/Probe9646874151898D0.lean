import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Op4b638b5bed78

set_option Elab.async false
namespace Blc.Floor45.Probe9646874151898
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def lit0 : Term := .var 0
def lit1 : Term := .app lit0 lit0
def lit2 : Term := .var 1
def lit3 : Term := .var 2
def lit4 : Term := .app lit3 lit2
def lit5 : Term := .app lit4 lit0
def lit6 : Term := .app lit2 lit5
def lit7 : Term := .lam lit6
def lit8 : Term := .lam lit7
def lit9 : Term := .app lit1 lit8
def lit10 : Term := .lam lit9
def lit11 : Term := .app lit10 lit0
def lit12 : Term := .app lit2 lit11
def lit13 : Term := .lam lit12
def lit14 : Term := .lam lit13
def lit15 : Term := .app lit10 lit14
def lit16 : Term := .app lit15 lit2
def lit17 : Term := .lam lit2
def lit18 : Term := .lam lit17
def lit19 : Term := .app lit0 lit18
def lit20 : Term := .lam lit0
def lit21 : Term := .lam lit20
def lit22 : Term := .app lit0 lit21
def lit23 : Term := .var 4
def lit24 : Term := .app lit19 lit23
def lit25 : Term := .lam lit24
def lit26 : Term := .app lit22 lit25
def lit27 : Term := .lam lit26
def lit28 : Term := .app lit19 lit27
def lit29 : Term := .lam lit28
def lit30 : Term := .app lit19 lit29
def lit31 : Term := .lam lit30
def lit32 : Term := .app lit16 lit31
theorem q0 (e : Env 3) (h0 : e 0 = 0) : Typed Op4b638b5bed78.G e lit0 0 := .var _ _ (by rw [h0]; decide)
theorem q1 (e : Env 3) (h0 : e 0 = 0) : Typed Op4b638b5bed78.G e lit1 0 := .app (q0 e h0) (q0 e h0) (by decide)
theorem q2 (e : Env 3) (h1 : e 1 = 0) : Typed Op4b638b5bed78.G e lit2 0 := .var _ _ (by rw [h1]; decide)
theorem q3 (e : Env 3) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit3 0 := .var _ _ (by rw [h2]; decide)
theorem q4 (e : Env 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 0 := .app (q3 e h2) (q2 e h1) (by decide)
theorem q5 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit5 0 := .app (q4 e h1 h2) (q0 e h0) (by decide)
theorem q6 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit6 0 := .app (q2 e h1) (q5 e h0 h1 h2) (by decide)
theorem q7 (e : Env 3) (h0 : e 0 = 1) : Typed Op4b638b5bed78.G e lit0 1 := .var _ _ (by rw [h0]; decide)
theorem q8 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit5 0 := .app (q4 e h1 h2) (q7 e h0) (by decide)
theorem q9 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit6 0 := .app (q2 e h1) (q8 e h0 h1 h2) (by decide)
theorem q10 (e : Env 3) (h0 : e 0 = 2) : Typed Op4b638b5bed78.G e lit0 2 := .var _ _ (by rw [h0]; decide)
theorem q11 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit5 0 := .app (q4 e h1 h2) (q10 e h0) (by decide)
theorem q12 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit6 0 := .app (q2 e h1) (q11 e h0 h1 h2) (by decide)
theorem q13 (e : Env 3) (h0 : e 0 = 3) : Typed Op4b638b5bed78.G e lit0 3 := .var _ _ (by rw [h0]; decide)
theorem q14 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit5 0 := .app (q4 e h1 h2) (q13 e h0) (by decide)
theorem q15 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit6 0 := .app (q2 e h1) (q14 e h0 h1 h2) (by decide)
theorem q16 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op4b638b5bed78.G e lit7 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q6 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q9 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q12 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q15 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q17 (e : Env 3) (h1 : e 1 = 1) : Typed Op4b638b5bed78.G e lit2 1 := .var _ _ (by rw [h1]; decide)
theorem q18 (e : Env 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 0 := .app (q3 e h2) (q17 e h1) (by decide)
theorem q19 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit5 0 := .app (q18 e h1 h2) (q0 e h0) (by decide)
theorem q20 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit6 0 := .app (q17 e h1) (q19 e h0 h1 h2) (by decide)
theorem q21 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit5 0 := .app (q18 e h1 h2) (q7 e h0) (by decide)
theorem q22 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit6 0 := .app (q17 e h1) (q21 e h0 h1 h2) (by decide)
theorem q23 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit5 0 := .app (q18 e h1 h2) (q10 e h0) (by decide)
theorem q24 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit6 0 := .app (q17 e h1) (q23 e h0 h1 h2) (by decide)
theorem q25 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit5 0 := .app (q18 e h1 h2) (q13 e h0) (by decide)
theorem q26 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit6 0 := .app (q17 e h1) (q25 e h0 h1 h2) (by decide)
theorem q27 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op4b638b5bed78.G e lit7 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q20 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q22 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q24 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q26 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q28 (e : Env 3) (h1 : e 1 = 2) : Typed Op4b638b5bed78.G e lit2 2 := .var _ _ (by rw [h1]; decide)
theorem q29 (e : Env 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 0 := .app (q3 e h2) (q28 e h1) (by decide)
theorem q30 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit5 0 := .app (q29 e h1 h2) (q0 e h0) (by decide)
theorem q31 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit6 0 := .app (q28 e h1) (q30 e h0 h1 h2) (by decide)
theorem q32 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit5 0 := .app (q29 e h1 h2) (q7 e h0) (by decide)
theorem q33 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit6 0 := .app (q28 e h1) (q32 e h0 h1 h2) (by decide)
theorem q34 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit5 0 := .app (q29 e h1 h2) (q10 e h0) (by decide)
theorem q35 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit6 0 := .app (q28 e h1) (q34 e h0 h1 h2) (by decide)
theorem q36 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit5 0 := .app (q29 e h1 h2) (q13 e h0) (by decide)
theorem q37 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit6 0 := .app (q28 e h1) (q36 e h0 h1 h2) (by decide)
theorem q38 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op4b638b5bed78.G e lit7 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q31 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q33 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q35 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q37 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q39 (e : Env 3) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit2 3 := .var _ _ (by rw [h1]; decide)
theorem q40 (e : Env 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit4 0 := .app (q3 e h2) (q39 e h1) (by decide)
theorem q41 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit5 0 := .app (q40 e h1 h2) (q0 e h0) (by decide)
theorem q42 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit6 3 := .app (q39 e h1) (q41 e h0 h1 h2) (by decide)
theorem q43 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit5 0 := .app (q40 e h1 h2) (q7 e h0) (by decide)
theorem q44 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit6 3 := .app (q39 e h1) (q43 e h0 h1 h2) (by decide)
theorem q45 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit5 0 := .app (q40 e h1 h2) (q10 e h0) (by decide)
theorem q46 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit6 3 := .app (q39 e h1) (q45 e h0 h1 h2) (by decide)
theorem q47 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit5 0 := .app (q40 e h1 h2) (q13 e h0) (by decide)
theorem q48 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4b638b5bed78.G e lit6 3 := .app (q39 e h1) (q47 e h0 h1 h2) (by decide)
theorem q49 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op4b638b5bed78.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q42 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q44 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q46 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q48 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q50 (e : Env 3) (h0 : e 0 = 0) : Typed Op4b638b5bed78.G e lit8 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q16 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q27 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q38 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q49 (push 3 e) rfl h0).weaken _ (by decide)
theorem q51 (e : Env 3) (h0 : e 0 = 0) : Typed Op4b638b5bed78.G e lit9 0 := .app (q1 e h0) (q50 e h0) (by decide)
theorem q52 (e : Env 3) (h0 : e 0 = 1) : Typed Op4b638b5bed78.G e lit1 0 := .app (q7 e h0) (q7 e h0) (by decide)
theorem q53 (e : Env 3) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit3 1 := .var _ _ (by rw [h2]; decide)
theorem q54 (e : Env 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 0 := .app (q53 e h2) (q2 e h1) (by decide)
theorem q55 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit5 0 := .app (q54 e h1 h2) (q0 e h0) (by decide)
theorem q56 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit6 0 := .app (q2 e h1) (q55 e h0 h1 h2) (by decide)
theorem q57 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit5 0 := .app (q54 e h1 h2) (q7 e h0) (by decide)
theorem q58 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit6 0 := .app (q2 e h1) (q57 e h0 h1 h2) (by decide)
theorem q59 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit5 0 := .app (q54 e h1 h2) (q10 e h0) (by decide)
theorem q60 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit6 0 := .app (q2 e h1) (q59 e h0 h1 h2) (by decide)
theorem q61 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit5 0 := .app (q54 e h1 h2) (q13 e h0) (by decide)
theorem q62 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit6 0 := .app (q2 e h1) (q61 e h0 h1 h2) (by decide)
theorem q63 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op4b638b5bed78.G e lit7 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q56 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q58 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q60 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q62 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q64 (e : Env 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 0 := .app (q53 e h2) (q17 e h1) (by decide)
theorem q65 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit5 0 := .app (q64 e h1 h2) (q0 e h0) (by decide)
theorem q66 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit6 0 := .app (q17 e h1) (q65 e h0 h1 h2) (by decide)
theorem q67 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit5 0 := .app (q64 e h1 h2) (q7 e h0) (by decide)
theorem q68 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit6 0 := .app (q17 e h1) (q67 e h0 h1 h2) (by decide)
theorem q69 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit5 0 := .app (q64 e h1 h2) (q10 e h0) (by decide)
theorem q70 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit6 0 := .app (q17 e h1) (q69 e h0 h1 h2) (by decide)
theorem q71 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit5 0 := .app (q64 e h1 h2) (q13 e h0) (by decide)
theorem q72 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit6 0 := .app (q17 e h1) (q71 e h0 h1 h2) (by decide)
theorem q73 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op4b638b5bed78.G e lit7 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q66 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q68 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q70 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q72 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q74 (e : Env 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 0 := .app (q53 e h2) (q28 e h1) (by decide)
theorem q75 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit5 0 := .app (q74 e h1 h2) (q0 e h0) (by decide)
theorem q76 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit6 0 := .app (q28 e h1) (q75 e h0 h1 h2) (by decide)
theorem q77 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit5 0 := .app (q74 e h1 h2) (q7 e h0) (by decide)
theorem q78 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit6 0 := .app (q28 e h1) (q77 e h0 h1 h2) (by decide)
theorem q79 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit5 0 := .app (q74 e h1 h2) (q10 e h0) (by decide)
theorem q80 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit6 0 := .app (q28 e h1) (q79 e h0 h1 h2) (by decide)
theorem q81 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit5 0 := .app (q74 e h1 h2) (q13 e h0) (by decide)
theorem q82 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit6 0 := .app (q28 e h1) (q81 e h0 h1 h2) (by decide)
theorem q83 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op4b638b5bed78.G e lit7 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q76 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q78 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q80 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q82 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q84 (e : Env 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit4 2 := .app (q53 e h2) (q39 e h1) (by decide)
theorem q85 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit5 0 := .app (q84 e h1 h2) (q0 e h0) (by decide)
theorem q86 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit6 3 := .app (q39 e h1) (q85 e h0 h1 h2) (by decide)
theorem q87 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit5 1 := .app (q84 e h1 h2) (q7 e h0) (by decide)
theorem q88 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit6 3 := .app (q39 e h1) (q87 e h0 h1 h2) (by decide)
theorem q89 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit5 2 := .app (q84 e h1 h2) (q10 e h0) (by decide)
theorem q90 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit6 3 := .app (q39 e h1) (q89 e h0 h1 h2) (by decide)
theorem q91 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit5 3 := .app (q84 e h1 h2) (q13 e h0) (by decide)
theorem q92 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4b638b5bed78.G e lit6 3 := .app (q39 e h1) (q91 e h0 h1 h2) (by decide)
theorem q93 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op4b638b5bed78.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q86 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q88 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q90 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q92 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q94 (e : Env 3) (h0 : e 0 = 1) : Typed Op4b638b5bed78.G e lit8 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q63 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q73 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q83 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q93 (push 3 e) rfl h0).weaken _ (by decide)
theorem q95 (e : Env 3) (h0 : e 0 = 1) : Typed Op4b638b5bed78.G e lit9 0 := .app (q52 e h0) (q94 e h0) (by decide)
theorem q96 (e : Env 3) (h0 : e 0 = 2) : Typed Op4b638b5bed78.G e lit1 2 := .app (q10 e h0) (q10 e h0) (by decide)
theorem q97 (e : Env 3) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit3 2 := .var _ _ (by rw [h2]; decide)
theorem q98 (e : Env 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 0 := .app (q97 e h2) (q2 e h1) (by decide)
theorem q99 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit5 0 := .app (q98 e h1 h2) (q0 e h0) (by decide)
theorem q100 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit6 0 := .app (q2 e h1) (q99 e h0 h1 h2) (by decide)
theorem q101 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit5 0 := .app (q98 e h1 h2) (q7 e h0) (by decide)
theorem q102 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit6 0 := .app (q2 e h1) (q101 e h0 h1 h2) (by decide)
theorem q103 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit5 0 := .app (q98 e h1 h2) (q10 e h0) (by decide)
theorem q104 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit6 0 := .app (q2 e h1) (q103 e h0 h1 h2) (by decide)
theorem q105 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit5 0 := .app (q98 e h1 h2) (q13 e h0) (by decide)
theorem q106 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit6 0 := .app (q2 e h1) (q105 e h0 h1 h2) (by decide)
theorem q107 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op4b638b5bed78.G e lit7 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q100 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q102 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q104 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q106 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q108 (e : Env 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 1 := .app (q97 e h2) (q17 e h1) (by decide)
theorem q109 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit5 0 := .app (q108 e h1 h2) (q0 e h0) (by decide)
theorem q110 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit6 0 := .app (q17 e h1) (q109 e h0 h1 h2) (by decide)
theorem q111 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit5 0 := .app (q108 e h1 h2) (q7 e h0) (by decide)
theorem q112 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit6 0 := .app (q17 e h1) (q111 e h0 h1 h2) (by decide)
theorem q113 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit5 0 := .app (q108 e h1 h2) (q10 e h0) (by decide)
theorem q114 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit6 0 := .app (q17 e h1) (q113 e h0 h1 h2) (by decide)
theorem q115 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit5 2 := .app (q108 e h1 h2) (q13 e h0) (by decide)
theorem q116 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit6 0 := .app (q17 e h1) (q115 e h0 h1 h2) (by decide)
theorem q117 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op4b638b5bed78.G e lit7 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q110 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q112 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q114 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q116 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q118 (e : Env 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 2 := .app (q97 e h2) (q28 e h1) (by decide)
theorem q119 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit5 0 := .app (q118 e h1 h2) (q0 e h0) (by decide)
theorem q120 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit6 0 := .app (q28 e h1) (q119 e h0 h1 h2) (by decide)
theorem q121 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit5 1 := .app (q118 e h1 h2) (q7 e h0) (by decide)
theorem q122 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit6 1 := .app (q28 e h1) (q121 e h0 h1 h2) (by decide)
theorem q123 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit5 2 := .app (q118 e h1 h2) (q10 e h0) (by decide)
theorem q124 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit6 2 := .app (q28 e h1) (q123 e h0 h1 h2) (by decide)
theorem q125 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit5 3 := .app (q118 e h1 h2) (q13 e h0) (by decide)
theorem q126 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit6 3 := .app (q28 e h1) (q125 e h0 h1 h2) (by decide)
theorem q127 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op4b638b5bed78.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q120 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q122 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q124 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q126 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q128 (e : Env 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit4 3 := .app (q97 e h2) (q39 e h1) (by decide)
theorem q129 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit5 3 := .app (q128 e h1 h2) (q0 e h0) (by decide)
theorem q130 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit6 3 := .app (q39 e h1) (q129 e h0 h1 h2) (by decide)
theorem q131 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit5 3 := .app (q128 e h1 h2) (q7 e h0) (by decide)
theorem q132 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit6 3 := .app (q39 e h1) (q131 e h0 h1 h2) (by decide)
theorem q133 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit5 3 := .app (q128 e h1 h2) (q10 e h0) (by decide)
theorem q134 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit6 3 := .app (q39 e h1) (q133 e h0 h1 h2) (by decide)
theorem q135 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit5 3 := .app (q128 e h1 h2) (q13 e h0) (by decide)
theorem q136 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4b638b5bed78.G e lit6 3 := .app (q39 e h1) (q135 e h0 h1 h2) (by decide)
theorem q137 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op4b638b5bed78.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q130 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q132 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q134 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q136 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q138 (e : Env 3) (h0 : e 0 = 2) : Typed Op4b638b5bed78.G e lit8 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q107 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q117 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q127 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q137 (push 3 e) rfl h0).weaken _ (by decide)
theorem q139 (e : Env 3) (h0 : e 0 = 2) : Typed Op4b638b5bed78.G e lit9 2 := .app (q96 e h0) (q138 e h0) (by decide)
theorem q140 (e : Env 3) (h0 : e 0 = 3) : Typed Op4b638b5bed78.G e lit1 3 := .app (q13 e h0) (q13 e h0) (by decide)
theorem q141 (e : Env 3) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit3 3 := .var _ _ (by rw [h2]; decide)
theorem q142 (e : Env 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 3 := .app (q141 e h2) (q2 e h1) (by decide)
theorem q143 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit5 3 := .app (q142 e h1 h2) (q0 e h0) (by decide)
theorem q144 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit6 0 := .app (q2 e h1) (q143 e h0 h1 h2) (by decide)
theorem q145 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit5 3 := .app (q142 e h1 h2) (q7 e h0) (by decide)
theorem q146 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit6 0 := .app (q2 e h1) (q145 e h0 h1 h2) (by decide)
theorem q147 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit5 3 := .app (q142 e h1 h2) (q10 e h0) (by decide)
theorem q148 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit6 0 := .app (q2 e h1) (q147 e h0 h1 h2) (by decide)
theorem q149 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit5 3 := .app (q142 e h1 h2) (q13 e h0) (by decide)
theorem q150 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit6 0 := .app (q2 e h1) (q149 e h0 h1 h2) (by decide)
theorem q151 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op4b638b5bed78.G e lit7 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q144 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q146 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q148 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q150 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q152 (e : Env 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit4 3 := .app (q141 e h2) (q17 e h1) (by decide)
theorem q153 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit5 3 := .app (q152 e h1 h2) (q0 e h0) (by decide)
theorem q154 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit6 2 := .app (q17 e h1) (q153 e h0 h1 h2) (by decide)
theorem q155 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit5 3 := .app (q152 e h1 h2) (q7 e h0) (by decide)
theorem q156 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit6 2 := .app (q17 e h1) (q155 e h0 h1 h2) (by decide)
theorem q157 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit5 3 := .app (q152 e h1 h2) (q10 e h0) (by decide)
theorem q158 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit6 2 := .app (q17 e h1) (q157 e h0 h1 h2) (by decide)
theorem q159 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit5 3 := .app (q152 e h1 h2) (q13 e h0) (by decide)
theorem q160 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4b638b5bed78.G e lit6 2 := .app (q17 e h1) (q159 e h0 h1 h2) (by decide)
end Blc.Floor45.Probe9646874151898
