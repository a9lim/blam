import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Op767ae883a0ae

set_option Elab.async false
namespace Blc.Floor45.Probe9692869695990
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def lit0 : Term := .var 0
def lit1 : Term := .app lit0 lit0
def lit2 : Term := .lam lit1
def lit3 : Term := .var 1
def lit4 : Term := .var 3
def lit5 : Term := .app lit4 lit3
def lit6 : Term := .app lit0 lit5
def lit7 : Term := .lam lit6
def lit8 : Term := .app lit3 lit7
def lit9 : Term := .lam lit8
def lit10 : Term := .lam lit9
def lit11 : Term := .app lit0 lit10
def lit12 : Term := .app lit0 lit11
def lit13 : Term := .lam lit12
def lit14 : Term := .app lit2 lit13
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
theorem q0 (e : Env 4) (h0 : e 0 = 0) : Typed Op767ae883a0ae.G e lit0 0 := .var _ _ (by rw [h0]; decide)
theorem q1 (e : Env 4) (h0 : e 0 = 0) : Typed Op767ae883a0ae.G e lit1 0 := .app (q0 e h0) (q0 e h0) (by decide)
theorem q2 (e : Env 4) (h0 : e 0 = 1) : Typed Op767ae883a0ae.G e lit0 1 := .var _ _ (by rw [h0]; decide)
theorem q3 (e : Env 4) (h0 : e 0 = 1) : Typed Op767ae883a0ae.G e lit1 0 := .app (q2 e h0) (q2 e h0) (by decide)
theorem q4 (e : Env 4) (h0 : e 0 = 2) : Typed Op767ae883a0ae.G e lit0 2 := .var _ _ (by rw [h0]; decide)
theorem q5 (e : Env 4) (h0 : e 0 = 2) : Typed Op767ae883a0ae.G e lit1 2 := .app (q4 e h0) (q4 e h0) (by decide)
theorem q6 (e : Env 4) (h0 : e 0 = 3) : Typed Op767ae883a0ae.G e lit0 3 := .var _ _ (by rw [h0]; decide)
theorem q7 (e : Env 4) (h0 : e 0 = 3) : Typed Op767ae883a0ae.G e lit1 4 := .app (q6 e h0) (q6 e h0) (by decide)
theorem q8 (e : Env 4) (h0 : e 0 = 4) : Typed Op767ae883a0ae.G e lit0 4 := .var _ _ (by rw [h0]; decide)
theorem q9 (e : Env 4) (h0 : e 0 = 4) : Typed Op767ae883a0ae.G e lit1 4 := .app (q8 e h0) (q8 e h0) (by decide)
theorem q10 (e : Env 4)  : Typed Op767ae883a0ae.G e lit2 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q1 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q3 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q5 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q7 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q9 (push 4 e) rfl).weaken _ (by decide)
theorem q11 (e : Env 4) (h1 : e 1 = 0) : Typed Op767ae883a0ae.G e lit3 0 := .var _ _ (by rw [h1]; decide)
theorem q12 (e : Env 4) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit4 0 := .var _ _ (by rw [h3]; decide)
theorem q13 (e : Env 4) (h1 : e 1 = 0) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit5 0 := .app (q12 e h3) (q11 e h1) (by decide)
theorem q14 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q13 e h1 h3) (by decide)
theorem q15 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q2 e h0) (q13 e h1 h3) (by decide)
theorem q16 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q4 e h0) (q13 e h1 h3) (by decide)
theorem q17 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q6 e h0) (q13 e h1 h3) (by decide)
theorem q18 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q13 e h1 h3) (by decide)
theorem q19 (e : Env 4) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q14 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q15 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q16 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q17 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q18 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q20 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q19 e h0 h2) (by decide)
theorem q21 (e : Env 4) (h1 : e 1 = 1) : Typed Op767ae883a0ae.G e lit3 1 := .var _ _ (by rw [h1]; decide)
theorem q22 (e : Env 4) (h1 : e 1 = 1) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit5 0 := .app (q12 e h3) (q21 e h1) (by decide)
theorem q23 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q22 e h1 h3) (by decide)
theorem q24 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q2 e h0) (q22 e h1 h3) (by decide)
theorem q25 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q4 e h0) (q22 e h1 h3) (by decide)
theorem q26 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q6 e h0) (q22 e h1 h3) (by decide)
theorem q27 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q22 e h1 h3) (by decide)
theorem q28 (e : Env 4) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q23 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q24 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q25 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q26 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q27 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q29 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q28 e h0 h2) (by decide)
theorem q30 (e : Env 4) (h1 : e 1 = 2) : Typed Op767ae883a0ae.G e lit3 2 := .var _ _ (by rw [h1]; decide)
theorem q31 (e : Env 4) (h1 : e 1 = 2) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit5 0 := .app (q12 e h3) (q30 e h1) (by decide)
theorem q32 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q31 e h1 h3) (by decide)
theorem q33 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q2 e h0) (q31 e h1 h3) (by decide)
theorem q34 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q4 e h0) (q31 e h1 h3) (by decide)
theorem q35 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q6 e h0) (q31 e h1 h3) (by decide)
theorem q36 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q31 e h1 h3) (by decide)
theorem q37 (e : Env 4) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q32 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q33 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q34 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q35 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q36 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q38 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q37 e h0 h2) (by decide)
theorem q39 (e : Env 4) (h1 : e 1 = 3) : Typed Op767ae883a0ae.G e lit3 3 := .var _ _ (by rw [h1]; decide)
theorem q40 (e : Env 4) (h1 : e 1 = 3) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit5 0 := .app (q12 e h3) (q39 e h1) (by decide)
theorem q41 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q40 e h1 h3) (by decide)
theorem q42 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q2 e h0) (q40 e h1 h3) (by decide)
theorem q43 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q4 e h0) (q40 e h1 h3) (by decide)
theorem q44 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q6 e h0) (q40 e h1 h3) (by decide)
theorem q45 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q40 e h1 h3) (by decide)
theorem q46 (e : Env 4) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q41 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q42 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q43 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q44 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q45 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q47 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q46 e h0 h2) (by decide)
theorem q48 (e : Env 4) (h1 : e 1 = 4) : Typed Op767ae883a0ae.G e lit3 4 := .var _ _ (by rw [h1]; decide)
theorem q49 (e : Env 4) (h1 : e 1 = 4) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit5 0 := .app (q12 e h3) (q48 e h1) (by decide)
theorem q50 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q49 e h1 h3) (by decide)
theorem q51 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q2 e h0) (q49 e h1 h3) (by decide)
theorem q52 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q4 e h0) (q49 e h1 h3) (by decide)
theorem q53 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 0 := .app (q6 e h0) (q49 e h1 h3) (by decide)
theorem q54 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h3 : e 3 = 0) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q49 e h1 h3) (by decide)
theorem q55 (e : Env 4) (h0 : e 0 = 4) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q50 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q51 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q52 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q53 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q54 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q56 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q55 e h0 h2) (by decide)
theorem q57 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op767ae883a0ae.G e lit9 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q20 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q29 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q38 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q47 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q56 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q58 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q19 e h0 h2) (by decide)
theorem q59 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q28 e h0 h2) (by decide)
theorem q60 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q37 e h0 h2) (by decide)
theorem q61 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q46 e h0 h2) (by decide)
theorem q62 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q55 e h0 h2) (by decide)
theorem q63 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op767ae883a0ae.G e lit9 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q58 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q59 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q60 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q61 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q62 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q64 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 0 := .app (q30 e h1) (q19 e h0 h2) (by decide)
theorem q65 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 0 := .app (q30 e h1) (q28 e h0 h2) (by decide)
theorem q66 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 0 := .app (q30 e h1) (q37 e h0 h2) (by decide)
theorem q67 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 0 := .app (q30 e h1) (q46 e h0 h2) (by decide)
theorem q68 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 0 := .app (q30 e h1) (q55 e h0 h2) (by decide)
theorem q69 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op767ae883a0ae.G e lit9 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q64 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q65 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q66 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q67 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q68 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q70 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q19 e h0 h2) (by decide)
theorem q71 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q28 e h0 h2) (by decide)
theorem q72 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q37 e h0 h2) (by decide)
theorem q73 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q46 e h0 h2) (by decide)
theorem q74 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q55 e h0 h2) (by decide)
theorem q75 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op767ae883a0ae.G e lit9 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q70 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q71 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q72 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q73 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q74 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q76 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q19 e h0 h2) (by decide)
theorem q77 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q28 e h0 h2) (by decide)
theorem q78 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q37 e h0 h2) (by decide)
theorem q79 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q46 e h0 h2) (by decide)
theorem q80 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op767ae883a0ae.G e lit8 4 := .app (q48 e h1) (q55 e h0 h2) (by decide)
theorem q81 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) : Typed Op767ae883a0ae.G e lit9 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q76 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q77 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q78 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q79 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q80 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q82 (e : Env 4) (h0 : e 0 = 0) : Typed Op767ae883a0ae.G e lit10 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q57 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q63 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q69 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q75 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q81 (push 4 e) rfl h0).weaken _ (by decide)
theorem q83 (e : Env 4) (h0 : e 0 = 0) : Typed Op767ae883a0ae.G e lit11 0 := .app (q0 e h0) (q82 e h0) (by decide)
theorem q84 (e : Env 4) (h0 : e 0 = 0) : Typed Op767ae883a0ae.G e lit12 0 := .app (q0 e h0) (q83 e h0) (by decide)
theorem q85 (e : Env 4) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit4 1 := .var _ _ (by rw [h3]; decide)
theorem q86 (e : Env 4) (h1 : e 1 = 0) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit5 0 := .app (q85 e h3) (q11 e h1) (by decide)
theorem q87 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q86 e h1 h3) (by decide)
theorem q88 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 0 := .app (q2 e h0) (q86 e h1 h3) (by decide)
theorem q89 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 0 := .app (q4 e h0) (q86 e h1 h3) (by decide)
theorem q90 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 0 := .app (q6 e h0) (q86 e h1 h3) (by decide)
theorem q91 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q86 e h1 h3) (by decide)
theorem q92 (e : Env 4) (h0 : e 0 = 0) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q87 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q88 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q89 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q90 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q91 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q93 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q92 e h0 h2) (by decide)
theorem q94 (e : Env 4) (h1 : e 1 = 1) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit5 0 := .app (q85 e h3) (q21 e h1) (by decide)
theorem q95 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q94 e h1 h3) (by decide)
theorem q96 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 0 := .app (q2 e h0) (q94 e h1 h3) (by decide)
theorem q97 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 0 := .app (q4 e h0) (q94 e h1 h3) (by decide)
theorem q98 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 0 := .app (q6 e h0) (q94 e h1 h3) (by decide)
theorem q99 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q94 e h1 h3) (by decide)
theorem q100 (e : Env 4) (h0 : e 0 = 1) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q95 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q96 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q97 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q98 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q99 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q101 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q100 e h0 h2) (by decide)
theorem q102 (e : Env 4) (h1 : e 1 = 2) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit5 0 := .app (q85 e h3) (q30 e h1) (by decide)
theorem q103 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q102 e h1 h3) (by decide)
theorem q104 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 0 := .app (q2 e h0) (q102 e h1 h3) (by decide)
theorem q105 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 0 := .app (q4 e h0) (q102 e h1 h3) (by decide)
theorem q106 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 0 := .app (q6 e h0) (q102 e h1 h3) (by decide)
theorem q107 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q102 e h1 h3) (by decide)
theorem q108 (e : Env 4) (h0 : e 0 = 2) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q103 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q104 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q105 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q106 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q107 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q109 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q108 e h0 h2) (by decide)
theorem q110 (e : Env 4) (h1 : e 1 = 3) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit5 0 := .app (q85 e h3) (q39 e h1) (by decide)
theorem q111 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q110 e h1 h3) (by decide)
theorem q112 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 0 := .app (q2 e h0) (q110 e h1 h3) (by decide)
theorem q113 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 0 := .app (q4 e h0) (q110 e h1 h3) (by decide)
theorem q114 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 0 := .app (q6 e h0) (q110 e h1 h3) (by decide)
theorem q115 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q110 e h1 h3) (by decide)
theorem q116 (e : Env 4) (h0 : e 0 = 3) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q111 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q112 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q113 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q114 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q115 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q117 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q116 e h0 h2) (by decide)
theorem q118 (e : Env 4) (h1 : e 1 = 4) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit5 4 := .app (q85 e h3) (q48 e h1) (by decide)
theorem q119 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 0 := .app (q0 e h0) (q118 e h1 h3) (by decide)
theorem q120 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 4 := .app (q2 e h0) (q118 e h1 h3) (by decide)
theorem q121 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 4 := .app (q4 e h0) (q118 e h1 h3) (by decide)
theorem q122 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 4 := .app (q6 e h0) (q118 e h1 h3) (by decide)
theorem q123 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h3 : e 3 = 1) : Typed Op767ae883a0ae.G e lit6 4 := .app (q8 e h0) (q118 e h1 h3) (by decide)
theorem q124 (e : Env 4) (h0 : e 0 = 4) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q119 (push 0 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q120 (push 1 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q121 (push 2 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q122 (push 3 e) rfl h0 h2).weaken _ (by decide)
  · subst a; exact (q123 (push 4 e) rfl h0 h2).weaken _ (by decide)
theorem q125 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 0 := .app (q11 e h1) (q124 e h0 h2) (by decide)
theorem q126 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op767ae883a0ae.G e lit9 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q93 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q101 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q109 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q117 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q125 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q127 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q92 e h0 h2) (by decide)
theorem q128 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q100 e h0 h2) (by decide)
theorem q129 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q108 e h0 h2) (by decide)
theorem q130 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q116 e h0 h2) (by decide)
theorem q131 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 0 := .app (q21 e h1) (q124 e h0 h2) (by decide)
theorem q132 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op767ae883a0ae.G e lit9 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q127 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q128 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q129 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q130 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q131 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q133 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 0 := .app (q30 e h1) (q92 e h0 h2) (by decide)
theorem q134 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 0 := .app (q30 e h1) (q100 e h0 h2) (by decide)
theorem q135 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 0 := .app (q30 e h1) (q108 e h0 h2) (by decide)
theorem q136 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 0 := .app (q30 e h1) (q116 e h0 h2) (by decide)
theorem q137 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 4 := .app (q30 e h1) (q124 e h0 h2) (by decide)
theorem q138 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op767ae883a0ae.G e lit9 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q133 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q134 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q135 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q136 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q137 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q139 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q92 e h0 h2) (by decide)
theorem q140 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op767ae883a0ae.G e lit8 4 := .app (q39 e h1) (q100 e h0 h2) (by decide)
end Blc.Floor45.Probe9692869695990
