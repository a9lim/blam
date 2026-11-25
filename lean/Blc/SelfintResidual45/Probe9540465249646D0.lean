import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Op64d01e7a837a

set_option Elab.async false
namespace Blc.Floor45.Probe9540465249646
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def lit0 : Term := .var 0
def lit1 : Term := .app lit0 lit0
def lit2 : Term := .app lit0 lit1
def lit3 : Term := .var 1
def lit4 : Term := .app lit2 lit3
def lit5 : Term := .var 2
def lit6 : Term := .app lit4 lit5
def lit7 : Term := .lam lit6
def lit8 : Term := .lam lit7
def lit9 : Term := .lam lit8
def lit10 : Term := .app lit2 lit9
def lit11 : Term := .app lit9 lit9
def lit12 : Term := .app lit10 lit11
def lit13 : Term := .lam lit12
def lit14 : Term := .app lit13 lit9
def lit15 : Term := .app lit14 lit3
def lit16 : Term := .lam lit3
def lit17 : Term := .lam lit16
def lit18 : Term := .app lit0 lit17
def lit19 : Term := .lam lit0
def lit20 : Term := .lam lit19
def lit21 : Term := .app lit0 lit20
def lit22 : Term := .var 4
def lit23 : Term := .app lit18 lit22
def lit24 : Term := .lam lit23
def lit25 : Term := .app lit21 lit24
def lit26 : Term := .lam lit25
def lit27 : Term := .app lit18 lit26
def lit28 : Term := .lam lit27
def lit29 : Term := .app lit18 lit28
def lit30 : Term := .lam lit29
def lit31 : Term := .app lit15 lit30
theorem q0 (e : Env 4) (h0 : e 0 = 0) : Typed Op64d01e7a837a.G e lit0 0 := .var _ _ (by rw [h0]; decide)
theorem q1 (e : Env 4) (h0 : e 0 = 0) : Typed Op64d01e7a837a.G e lit1 0 := .app (q0 e h0) (q0 e h0) (by decide)
theorem q2 (e : Env 4) (h0 : e 0 = 0) : Typed Op64d01e7a837a.G e lit2 0 := .app (q0 e h0) (q1 e h0) (by decide)
theorem q3 (e : Env 4) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit3 0 := .var _ _ (by rw [h1]; decide)
theorem q4 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit4 0 := .app (q2 e h0) (q3 e h1) (by decide)
theorem q5 (e : Env 4) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit5 0 := .var _ _ (by rw [h2]; decide)
theorem q6 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 0 := .app (q4 e h0 h1) (q5 e h2) (by decide)
theorem q7 (e : Env 4) (h0 : e 0 = 1) : Typed Op64d01e7a837a.G e lit0 1 := .var _ _ (by rw [h0]; decide)
theorem q8 (e : Env 4) (h0 : e 0 = 1) : Typed Op64d01e7a837a.G e lit1 1 := .app (q7 e h0) (q7 e h0) (by decide)
theorem q9 (e : Env 4) (h0 : e 0 = 1) : Typed Op64d01e7a837a.G e lit2 1 := .app (q7 e h0) (q8 e h0) (by decide)
theorem q10 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit4 0 := .app (q9 e h0) (q3 e h1) (by decide)
theorem q11 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 0 := .app (q10 e h0 h1) (q5 e h2) (by decide)
theorem q12 (e : Env 4) (h0 : e 0 = 2) : Typed Op64d01e7a837a.G e lit0 2 := .var _ _ (by rw [h0]; decide)
theorem q13 (e : Env 4) (h0 : e 0 = 2) : Typed Op64d01e7a837a.G e lit1 1 := .app (q12 e h0) (q12 e h0) (by decide)
theorem q14 (e : Env 4) (h0 : e 0 = 2) : Typed Op64d01e7a837a.G e lit2 1 := .app (q12 e h0) (q13 e h0) (by decide)
theorem q15 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit4 0 := .app (q14 e h0) (q3 e h1) (by decide)
theorem q16 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 0 := .app (q15 e h0 h1) (q5 e h2) (by decide)
theorem q17 (e : Env 4) (h0 : e 0 = 3) : Typed Op64d01e7a837a.G e lit0 3 := .var _ _ (by rw [h0]; decide)
theorem q18 (e : Env 4) (h0 : e 0 = 3) : Typed Op64d01e7a837a.G e lit1 2 := .app (q17 e h0) (q17 e h0) (by decide)
theorem q19 (e : Env 4) (h0 : e 0 = 3) : Typed Op64d01e7a837a.G e lit2 2 := .app (q17 e h0) (q18 e h0) (by decide)
theorem q20 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit4 1 := .app (q19 e h0) (q3 e h1) (by decide)
theorem q21 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 0 := .app (q20 e h0 h1) (q5 e h2) (by decide)
theorem q22 (e : Env 4) (h0 : e 0 = 4) : Typed Op64d01e7a837a.G e lit0 4 := .var _ _ (by rw [h0]; decide)
theorem q23 (e : Env 4) (h0 : e 0 = 4) : Typed Op64d01e7a837a.G e lit1 4 := .app (q22 e h0) (q22 e h0) (by decide)
theorem q24 (e : Env 4) (h0 : e 0 = 4) : Typed Op64d01e7a837a.G e lit2 4 := .app (q22 e h0) (q23 e h0) (by decide)
theorem q25 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit4 4 := .app (q24 e h0) (q3 e h1) (by decide)
theorem q26 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 4 := .app (q25 e h0 h1) (q5 e h2) (by decide)
theorem q27 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q6 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q11 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q16 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q21 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q26 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q28 (e : Env 4) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit3 1 := .var _ _ (by rw [h1]; decide)
theorem q29 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit4 0 := .app (q2 e h0) (q28 e h1) (by decide)
theorem q30 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 0 := .app (q29 e h0 h1) (q5 e h2) (by decide)
theorem q31 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit4 1 := .app (q9 e h0) (q28 e h1) (by decide)
theorem q32 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 0 := .app (q31 e h0 h1) (q5 e h2) (by decide)
theorem q33 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit4 1 := .app (q14 e h0) (q28 e h1) (by decide)
theorem q34 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 0 := .app (q33 e h0 h1) (q5 e h2) (by decide)
theorem q35 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit4 1 := .app (q19 e h0) (q28 e h1) (by decide)
theorem q36 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 0 := .app (q35 e h0 h1) (q5 e h2) (by decide)
theorem q37 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit4 4 := .app (q24 e h0) (q28 e h1) (by decide)
theorem q38 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 4 := .app (q37 e h0 h1) (q5 e h2) (by decide)
theorem q39 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q30 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q32 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q34 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q36 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q38 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q40 (e : Env 4) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit3 2 := .var _ _ (by rw [h1]; decide)
theorem q41 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit4 0 := .app (q2 e h0) (q40 e h1) (by decide)
theorem q42 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 0 := .app (q41 e h0 h1) (q5 e h2) (by decide)
theorem q43 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit4 1 := .app (q9 e h0) (q40 e h1) (by decide)
theorem q44 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 0 := .app (q43 e h0 h1) (q5 e h2) (by decide)
theorem q45 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit4 1 := .app (q14 e h0) (q40 e h1) (by decide)
theorem q46 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 0 := .app (q45 e h0 h1) (q5 e h2) (by decide)
theorem q47 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit4 1 := .app (q19 e h0) (q40 e h1) (by decide)
theorem q48 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 0 := .app (q47 e h0 h1) (q5 e h2) (by decide)
theorem q49 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit4 4 := .app (q24 e h0) (q40 e h1) (by decide)
theorem q50 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 4 := .app (q49 e h0 h1) (q5 e h2) (by decide)
theorem q51 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q42 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q44 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q46 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q48 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q50 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q52 (e : Env 4) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit3 3 := .var _ _ (by rw [h1]; decide)
theorem q53 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit4 0 := .app (q2 e h0) (q52 e h1) (by decide)
theorem q54 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 0 := .app (q53 e h0 h1) (q5 e h2) (by decide)
theorem q55 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit4 1 := .app (q9 e h0) (q52 e h1) (by decide)
theorem q56 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 0 := .app (q55 e h0 h1) (q5 e h2) (by decide)
theorem q57 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit4 1 := .app (q14 e h0) (q52 e h1) (by decide)
theorem q58 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 0 := .app (q57 e h0 h1) (q5 e h2) (by decide)
theorem q59 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit4 2 := .app (q19 e h0) (q52 e h1) (by decide)
theorem q60 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 1 := .app (q59 e h0 h1) (q5 e h2) (by decide)
theorem q61 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit4 4 := .app (q24 e h0) (q52 e h1) (by decide)
theorem q62 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 4 := .app (q61 e h0 h1) (q5 e h2) (by decide)
theorem q63 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q54 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q56 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q58 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q60 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q62 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q64 (e : Env 4) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit3 4 := .var _ _ (by rw [h1]; decide)
theorem q65 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit4 2 := .app (q2 e h0) (q64 e h1) (by decide)
theorem q66 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 1 := .app (q65 e h0 h1) (q5 e h2) (by decide)
theorem q67 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q9 e h0) (q64 e h1) (by decide)
theorem q68 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 4 := .app (q67 e h0 h1) (q5 e h2) (by decide)
theorem q69 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q14 e h0) (q64 e h1) (by decide)
theorem q70 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 4 := .app (q69 e h0 h1) (q5 e h2) (by decide)
theorem q71 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q19 e h0) (q64 e h1) (by decide)
theorem q72 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 4 := .app (q71 e h0 h1) (q5 e h2) (by decide)
theorem q73 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) : Typed Op64d01e7a837a.G e lit4 4 := .app (q24 e h0) (q64 e h1) (by decide)
theorem q74 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op64d01e7a837a.G e lit6 4 := .app (q73 e h0 h1) (q5 e h2) (by decide)
theorem q75 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q66 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q68 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q70 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q72 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q74 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q76 (e : Env 4) (h0 : e 0 = 0) : Typed Op64d01e7a837a.G e lit8 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q27 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q39 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q51 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q63 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q75 (push 4 e) rfl h0).weaken _ (by decide)
theorem q77 (e : Env 4) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit5 1 := .var _ _ (by rw [h2]; decide)
theorem q78 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 0 := .app (q4 e h0 h1) (q77 e h2) (by decide)
theorem q79 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 0 := .app (q10 e h0 h1) (q77 e h2) (by decide)
theorem q80 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 0 := .app (q15 e h0 h1) (q77 e h2) (by decide)
theorem q81 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 1 := .app (q20 e h0 h1) (q77 e h2) (by decide)
theorem q82 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 4 := .app (q25 e h0 h1) (q77 e h2) (by decide)
theorem q83 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q78 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q79 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q80 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q81 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q82 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q84 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 0 := .app (q29 e h0 h1) (q77 e h2) (by decide)
theorem q85 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 1 := .app (q31 e h0 h1) (q77 e h2) (by decide)
theorem q86 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 1 := .app (q33 e h0 h1) (q77 e h2) (by decide)
theorem q87 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 1 := .app (q35 e h0 h1) (q77 e h2) (by decide)
theorem q88 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 4 := .app (q37 e h0 h1) (q77 e h2) (by decide)
theorem q89 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q84 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q85 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q86 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q87 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q88 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q90 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 0 := .app (q41 e h0 h1) (q77 e h2) (by decide)
theorem q91 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 1 := .app (q43 e h0 h1) (q77 e h2) (by decide)
theorem q92 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 1 := .app (q45 e h0 h1) (q77 e h2) (by decide)
theorem q93 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 1 := .app (q47 e h0 h1) (q77 e h2) (by decide)
theorem q94 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 4 := .app (q49 e h0 h1) (q77 e h2) (by decide)
theorem q95 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q90 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q91 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q92 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q93 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q94 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q96 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 0 := .app (q53 e h0 h1) (q77 e h2) (by decide)
theorem q97 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 1 := .app (q55 e h0 h1) (q77 e h2) (by decide)
theorem q98 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 1 := .app (q57 e h0 h1) (q77 e h2) (by decide)
theorem q99 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 1 := .app (q59 e h0 h1) (q77 e h2) (by decide)
theorem q100 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 4 := .app (q61 e h0 h1) (q77 e h2) (by decide)
theorem q101 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q96 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q97 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q98 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q99 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q100 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q102 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 1 := .app (q65 e h0 h1) (q77 e h2) (by decide)
theorem q103 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 4 := .app (q67 e h0 h1) (q77 e h2) (by decide)
theorem q104 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 4 := .app (q69 e h0 h1) (q77 e h2) (by decide)
theorem q105 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 4 := .app (q71 e h0 h1) (q77 e h2) (by decide)
theorem q106 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op64d01e7a837a.G e lit6 4 := .app (q73 e h0 h1) (q77 e h2) (by decide)
theorem q107 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q102 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q103 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q104 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q105 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q106 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q108 (e : Env 4) (h0 : e 0 = 1) : Typed Op64d01e7a837a.G e lit8 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q83 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q89 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q95 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q101 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q107 (push 4 e) rfl h0).weaken _ (by decide)
theorem q109 (e : Env 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit5 2 := .var _ _ (by rw [h2]; decide)
theorem q110 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 0 := .app (q4 e h0 h1) (q109 e h2) (by decide)
theorem q111 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 0 := .app (q10 e h0 h1) (q109 e h2) (by decide)
theorem q112 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 0 := .app (q15 e h0 h1) (q109 e h2) (by decide)
theorem q113 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q20 e h0 h1) (q109 e h2) (by decide)
theorem q114 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q25 e h0 h1) (q109 e h2) (by decide)
theorem q115 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q110 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q111 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q112 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q113 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q114 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q116 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 0 := .app (q29 e h0 h1) (q109 e h2) (by decide)
theorem q117 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q31 e h0 h1) (q109 e h2) (by decide)
theorem q118 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q33 e h0 h1) (q109 e h2) (by decide)
theorem q119 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q35 e h0 h1) (q109 e h2) (by decide)
theorem q120 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q37 e h0 h1) (q109 e h2) (by decide)
theorem q121 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q116 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q117 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q118 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q119 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q120 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q122 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 0 := .app (q41 e h0 h1) (q109 e h2) (by decide)
theorem q123 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q43 e h0 h1) (q109 e h2) (by decide)
theorem q124 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q45 e h0 h1) (q109 e h2) (by decide)
theorem q125 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q47 e h0 h1) (q109 e h2) (by decide)
theorem q126 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q49 e h0 h1) (q109 e h2) (by decide)
theorem q127 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q122 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q123 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q124 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q125 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q126 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q128 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 0 := .app (q53 e h0 h1) (q109 e h2) (by decide)
theorem q129 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q55 e h0 h1) (q109 e h2) (by decide)
theorem q130 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q57 e h0 h1) (q109 e h2) (by decide)
theorem q131 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q59 e h0 h1) (q109 e h2) (by decide)
theorem q132 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q61 e h0 h1) (q109 e h2) (by decide)
theorem q133 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q128 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q129 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q130 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q131 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q132 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q134 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 1 := .app (q65 e h0 h1) (q109 e h2) (by decide)
theorem q135 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q67 e h0 h1) (q109 e h2) (by decide)
theorem q136 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q69 e h0 h1) (q109 e h2) (by decide)
theorem q137 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q71 e h0 h1) (q109 e h2) (by decide)
theorem q138 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op64d01e7a837a.G e lit6 4 := .app (q73 e h0 h1) (q109 e h2) (by decide)
theorem q139 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) : Typed Op64d01e7a837a.G e lit7 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q134 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q135 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q136 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q137 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q138 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q140 (e : Env 4) (h0 : e 0 = 2) : Typed Op64d01e7a837a.G e lit8 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q115 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q121 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q127 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q133 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q139 (push 4 e) rfl h0).weaken _ (by decide)
theorem q141 (e : Env 4) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit5 3 := .var _ _ (by rw [h2]; decide)
theorem q142 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 0 := .app (q4 e h0 h1) (q141 e h2) (by decide)
theorem q143 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 0 := .app (q10 e h0 h1) (q141 e h2) (by decide)
theorem q144 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 0 := .app (q15 e h0 h1) (q141 e h2) (by decide)
theorem q145 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 1 := .app (q20 e h0 h1) (q141 e h2) (by decide)
theorem q146 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op64d01e7a837a.G e lit6 4 := .app (q25 e h0 h1) (q141 e h2) (by decide)
theorem q147 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op64d01e7a837a.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q142 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q143 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q144 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q145 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q146 (push 4 e) rfl h0 h1).weaken _ (by decide)
end Blc.Floor45.Probe9540465249646
