import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Op637762846354

set_option Elab.async false
namespace Blc.Floor45.Probe9690032596622
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def lit0 : Term := .var 2
def lit1 : Term := .var 0
def lit2 : Term := .var 1
def lit3 : Term := .app lit1 lit2
def lit4 : Term := .app lit0 lit3
def lit5 : Term := .app lit1 lit1
def lit6 : Term := .app lit4 lit5
def lit7 : Term := .lam lit6
def lit8 : Term := .lam lit0
def lit9 : Term := .app lit7 lit8
def lit10 : Term := .lam lit9
def lit11 : Term := .lam lit10
def lit12 : Term := .app lit11 lit11
def lit13 : Term := .lam lit11
def lit14 : Term := .app lit13 lit13
def lit15 : Term := .app lit12 lit14
def lit16 : Term := .lam lit2
def lit17 : Term := .lam lit16
def lit18 : Term := .app lit1 lit17
def lit19 : Term := .lam lit1
def lit20 : Term := .lam lit19
def lit21 : Term := .app lit1 lit20
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
theorem q0 (e : Env 3) (h2 : e 2 = 0) : Typed Op637762846354.G e lit0 0 := .var _ _ (by rw [h2]; decide)
theorem q1 (e : Env 3) (h0 : e 0 = 0) : Typed Op637762846354.G e lit1 0 := .var _ _ (by rw [h0]; decide)
theorem q2 (e : Env 3) (h1 : e 1 = 0) : Typed Op637762846354.G e lit2 0 := .var _ _ (by rw [h1]; decide)
theorem q3 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op637762846354.G e lit3 0 := .app (q1 e h0) (q2 e h1) (by decide)
theorem q4 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op637762846354.G e lit4 0 := .app (q0 e h2) (q3 e h0 h1) (by decide)
theorem q5 (e : Env 3) (h0 : e 0 = 0) : Typed Op637762846354.G e lit5 0 := .app (q1 e h0) (q1 e h0) (by decide)
theorem q6 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op637762846354.G e lit6 0 := .app (q4 e h0 h1 h2) (q5 e h0) (by decide)
theorem q7 (e : Env 3) (h0 : e 0 = 1) : Typed Op637762846354.G e lit1 1 := .var _ _ (by rw [h0]; decide)
theorem q8 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op637762846354.G e lit3 0 := .app (q7 e h0) (q2 e h1) (by decide)
theorem q9 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op637762846354.G e lit4 0 := .app (q0 e h2) (q8 e h0 h1) (by decide)
theorem q10 (e : Env 3) (h0 : e 0 = 1) : Typed Op637762846354.G e lit5 1 := .app (q7 e h0) (q7 e h0) (by decide)
theorem q11 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op637762846354.G e lit6 0 := .app (q9 e h0 h1 h2) (q10 e h0) (by decide)
theorem q12 (e : Env 3) (h0 : e 0 = 2) : Typed Op637762846354.G e lit1 2 := .var _ _ (by rw [h0]; decide)
theorem q13 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op637762846354.G e lit3 2 := .app (q12 e h0) (q2 e h1) (by decide)
theorem q14 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op637762846354.G e lit4 2 := .app (q0 e h2) (q13 e h0 h1) (by decide)
theorem q15 (e : Env 3) (h0 : e 0 = 2) : Typed Op637762846354.G e lit5 2 := .app (q12 e h0) (q12 e h0) (by decide)
theorem q16 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op637762846354.G e lit6 2 := .app (q14 e h0 h1 h2) (q15 e h0) (by decide)
theorem q17 (e : Env 3) (h0 : e 0 = 3) : Typed Op637762846354.G e lit1 3 := .var _ _ (by rw [h0]; decide)
theorem q18 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op637762846354.G e lit3 3 := .app (q17 e h0) (q2 e h1) (by decide)
theorem q19 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op637762846354.G e lit4 2 := .app (q0 e h2) (q18 e h0 h1) (by decide)
theorem q20 (e : Env 3) (h0 : e 0 = 3) : Typed Op637762846354.G e lit5 3 := .app (q17 e h0) (q17 e h0) (by decide)
theorem q21 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op637762846354.G e lit6 3 := .app (q19 e h0 h1 h2) (q20 e h0) (by decide)
theorem q22 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op637762846354.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q6 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q11 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q16 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q21 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q23 (e : Env 3) (h1 : e 1 = 0) : Typed Op637762846354.G e lit8 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q0 (push 0 e) h1).weaken _ (by decide)
  · subst a; exact (q0 (push 1 e) h1).weaken _ (by decide)
  · subst a; exact (q0 (push 2 e) h1).weaken _ (by decide)
  · subst a; exact (q0 (push 3 e) h1).weaken _ (by decide)
theorem q24 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op637762846354.G e lit9 0 := .app (q22 e h0 h1) (q23 e h1) (by decide)
theorem q25 (e : Env 3) (h1 : e 1 = 1) : Typed Op637762846354.G e lit2 1 := .var _ _ (by rw [h1]; decide)
theorem q26 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op637762846354.G e lit3 0 := .app (q1 e h0) (q25 e h1) (by decide)
theorem q27 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op637762846354.G e lit4 0 := .app (q0 e h2) (q26 e h0 h1) (by decide)
theorem q28 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op637762846354.G e lit6 0 := .app (q27 e h0 h1 h2) (q5 e h0) (by decide)
theorem q29 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op637762846354.G e lit3 1 := .app (q7 e h0) (q25 e h1) (by decide)
theorem q30 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op637762846354.G e lit4 0 := .app (q0 e h2) (q29 e h0 h1) (by decide)
theorem q31 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op637762846354.G e lit6 0 := .app (q30 e h0 h1 h2) (q10 e h0) (by decide)
theorem q32 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op637762846354.G e lit3 2 := .app (q12 e h0) (q25 e h1) (by decide)
theorem q33 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op637762846354.G e lit4 2 := .app (q0 e h2) (q32 e h0 h1) (by decide)
theorem q34 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op637762846354.G e lit6 2 := .app (q33 e h0 h1 h2) (q15 e h0) (by decide)
theorem q35 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op637762846354.G e lit3 3 := .app (q17 e h0) (q25 e h1) (by decide)
theorem q36 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op637762846354.G e lit4 2 := .app (q0 e h2) (q35 e h0 h1) (by decide)
theorem q37 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op637762846354.G e lit6 3 := .app (q36 e h0 h1 h2) (q20 e h0) (by decide)
theorem q38 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op637762846354.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q28 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q31 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q34 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q37 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q39 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op637762846354.G e lit9 0 := .app (q38 e h0 h1) (q23 e h1) (by decide)
theorem q40 (e : Env 3) (h1 : e 1 = 2) : Typed Op637762846354.G e lit2 2 := .var _ _ (by rw [h1]; decide)
theorem q41 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op637762846354.G e lit3 2 := .app (q1 e h0) (q40 e h1) (by decide)
theorem q42 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op637762846354.G e lit4 2 := .app (q0 e h2) (q41 e h0 h1) (by decide)
theorem q43 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op637762846354.G e lit6 2 := .app (q42 e h0 h1 h2) (q5 e h0) (by decide)
theorem q44 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op637762846354.G e lit3 2 := .app (q7 e h0) (q40 e h1) (by decide)
theorem q45 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op637762846354.G e lit4 2 := .app (q0 e h2) (q44 e h0 h1) (by decide)
theorem q46 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op637762846354.G e lit6 2 := .app (q45 e h0 h1 h2) (q10 e h0) (by decide)
theorem q47 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op637762846354.G e lit3 2 := .app (q12 e h0) (q40 e h1) (by decide)
theorem q48 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op637762846354.G e lit4 2 := .app (q0 e h2) (q47 e h0 h1) (by decide)
theorem q49 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op637762846354.G e lit6 2 := .app (q48 e h0 h1 h2) (q15 e h0) (by decide)
theorem q50 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op637762846354.G e lit3 3 := .app (q17 e h0) (q40 e h1) (by decide)
theorem q51 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op637762846354.G e lit4 2 := .app (q0 e h2) (q50 e h0 h1) (by decide)
theorem q52 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op637762846354.G e lit6 3 := .app (q51 e h0 h1 h2) (q20 e h0) (by decide)
theorem q53 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op637762846354.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q43 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q46 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q49 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q52 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q54 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op637762846354.G e lit9 2 := .app (q53 e h0 h1) (q23 e h1) (by decide)
theorem q55 (e : Env 3) (h1 : e 1 = 3) : Typed Op637762846354.G e lit2 3 := .var _ _ (by rw [h1]; decide)
theorem q56 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op637762846354.G e lit3 2 := .app (q1 e h0) (q55 e h1) (by decide)
theorem q57 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op637762846354.G e lit4 2 := .app (q0 e h2) (q56 e h0 h1) (by decide)
theorem q58 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op637762846354.G e lit6 2 := .app (q57 e h0 h1 h2) (q5 e h0) (by decide)
theorem q59 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op637762846354.G e lit3 3 := .app (q7 e h0) (q55 e h1) (by decide)
theorem q60 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op637762846354.G e lit4 2 := .app (q0 e h2) (q59 e h0 h1) (by decide)
theorem q61 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op637762846354.G e lit6 2 := .app (q60 e h0 h1 h2) (q10 e h0) (by decide)
theorem q62 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op637762846354.G e lit3 3 := .app (q12 e h0) (q55 e h1) (by decide)
theorem q63 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op637762846354.G e lit4 2 := .app (q0 e h2) (q62 e h0 h1) (by decide)
theorem q64 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op637762846354.G e lit6 2 := .app (q63 e h0 h1 h2) (q15 e h0) (by decide)
theorem q65 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op637762846354.G e lit3 3 := .app (q17 e h0) (q55 e h1) (by decide)
theorem q66 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op637762846354.G e lit4 2 := .app (q0 e h2) (q65 e h0 h1) (by decide)
theorem q67 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op637762846354.G e lit6 3 := .app (q66 e h0 h1 h2) (q20 e h0) (by decide)
theorem q68 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op637762846354.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q58 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q61 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q64 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q67 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q69 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op637762846354.G e lit9 2 := .app (q68 e h0 h1) (q23 e h1) (by decide)
theorem q70 (e : Env 3) (h0 : e 0 = 0) : Typed Op637762846354.G e lit10 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q24 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q39 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q54 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q69 (push 3 e) rfl h0).weaken _ (by decide)
theorem q71 (e : Env 3) (h2 : e 2 = 1) : Typed Op637762846354.G e lit0 1 := .var _ _ (by rw [h2]; decide)
theorem q72 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op637762846354.G e lit4 0 := .app (q71 e h2) (q3 e h0 h1) (by decide)
theorem q73 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op637762846354.G e lit6 0 := .app (q72 e h0 h1 h2) (q5 e h0) (by decide)
theorem q74 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op637762846354.G e lit4 0 := .app (q71 e h2) (q8 e h0 h1) (by decide)
theorem q75 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op637762846354.G e lit6 0 := .app (q74 e h0 h1 h2) (q10 e h0) (by decide)
theorem q76 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op637762846354.G e lit4 2 := .app (q71 e h2) (q13 e h0 h1) (by decide)
theorem q77 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op637762846354.G e lit6 2 := .app (q76 e h0 h1 h2) (q15 e h0) (by decide)
theorem q78 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op637762846354.G e lit4 3 := .app (q71 e h2) (q18 e h0 h1) (by decide)
theorem q79 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op637762846354.G e lit6 3 := .app (q78 e h0 h1 h2) (q20 e h0) (by decide)
theorem q80 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op637762846354.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q73 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q75 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q77 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q79 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q81 (e : Env 3) (h1 : e 1 = 1) : Typed Op637762846354.G e lit8 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q71 (push 0 e) h1).weaken _ (by decide)
  · subst a; exact (q71 (push 1 e) h1).weaken _ (by decide)
  · subst a; exact (q71 (push 2 e) h1).weaken _ (by decide)
  · subst a; exact (q71 (push 3 e) h1).weaken _ (by decide)
theorem q82 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op637762846354.G e lit9 2 := .app (q80 e h0 h1) (q81 e h1) (by decide)
theorem q83 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op637762846354.G e lit4 0 := .app (q71 e h2) (q26 e h0 h1) (by decide)
theorem q84 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op637762846354.G e lit6 0 := .app (q83 e h0 h1 h2) (q5 e h0) (by decide)
theorem q85 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op637762846354.G e lit4 1 := .app (q71 e h2) (q29 e h0 h1) (by decide)
theorem q86 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op637762846354.G e lit6 1 := .app (q85 e h0 h1 h2) (q10 e h0) (by decide)
theorem q87 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op637762846354.G e lit4 2 := .app (q71 e h2) (q32 e h0 h1) (by decide)
theorem q88 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op637762846354.G e lit6 2 := .app (q87 e h0 h1 h2) (q15 e h0) (by decide)
theorem q89 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op637762846354.G e lit4 3 := .app (q71 e h2) (q35 e h0 h1) (by decide)
theorem q90 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op637762846354.G e lit6 3 := .app (q89 e h0 h1 h2) (q20 e h0) (by decide)
theorem q91 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op637762846354.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q84 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q86 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q88 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q90 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q92 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op637762846354.G e lit9 2 := .app (q91 e h0 h1) (q81 e h1) (by decide)
theorem q93 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op637762846354.G e lit4 2 := .app (q71 e h2) (q41 e h0 h1) (by decide)
theorem q94 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op637762846354.G e lit6 2 := .app (q93 e h0 h1 h2) (q5 e h0) (by decide)
theorem q95 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op637762846354.G e lit4 2 := .app (q71 e h2) (q44 e h0 h1) (by decide)
theorem q96 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op637762846354.G e lit6 2 := .app (q95 e h0 h1 h2) (q10 e h0) (by decide)
theorem q97 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op637762846354.G e lit4 2 := .app (q71 e h2) (q47 e h0 h1) (by decide)
theorem q98 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op637762846354.G e lit6 2 := .app (q97 e h0 h1 h2) (q15 e h0) (by decide)
theorem q99 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op637762846354.G e lit4 3 := .app (q71 e h2) (q50 e h0 h1) (by decide)
theorem q100 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op637762846354.G e lit6 3 := .app (q99 e h0 h1 h2) (q20 e h0) (by decide)
theorem q101 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op637762846354.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q94 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q96 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q98 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q100 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q102 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op637762846354.G e lit9 2 := .app (q101 e h0 h1) (q81 e h1) (by decide)
theorem q103 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op637762846354.G e lit4 2 := .app (q71 e h2) (q56 e h0 h1) (by decide)
theorem q104 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op637762846354.G e lit6 2 := .app (q103 e h0 h1 h2) (q5 e h0) (by decide)
theorem q105 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op637762846354.G e lit4 3 := .app (q71 e h2) (q59 e h0 h1) (by decide)
theorem q106 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op637762846354.G e lit6 3 := .app (q105 e h0 h1 h2) (q10 e h0) (by decide)
theorem q107 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op637762846354.G e lit4 3 := .app (q71 e h2) (q62 e h0 h1) (by decide)
theorem q108 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op637762846354.G e lit6 3 := .app (q107 e h0 h1 h2) (q15 e h0) (by decide)
theorem q109 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op637762846354.G e lit4 3 := .app (q71 e h2) (q65 e h0 h1) (by decide)
theorem q110 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op637762846354.G e lit6 3 := .app (q109 e h0 h1 h2) (q20 e h0) (by decide)
theorem q111 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op637762846354.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q104 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q106 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q108 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q110 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q112 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op637762846354.G e lit9 3 := .app (q111 e h0 h1) (q81 e h1) (by decide)
theorem q113 (e : Env 3) (h0 : e 0 = 1) : Typed Op637762846354.G e lit10 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q82 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q92 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q102 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q112 (push 3 e) rfl h0).weaken _ (by decide)
theorem q114 (e : Env 3) (h2 : e 2 = 2) : Typed Op637762846354.G e lit0 2 := .var _ _ (by rw [h2]; decide)
theorem q115 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op637762846354.G e lit4 2 := .app (q114 e h2) (q3 e h0 h1) (by decide)
theorem q116 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op637762846354.G e lit6 2 := .app (q115 e h0 h1 h2) (q5 e h0) (by decide)
theorem q117 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op637762846354.G e lit4 2 := .app (q114 e h2) (q8 e h0 h1) (by decide)
theorem q118 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op637762846354.G e lit6 2 := .app (q117 e h0 h1 h2) (q10 e h0) (by decide)
theorem q119 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op637762846354.G e lit4 2 := .app (q114 e h2) (q13 e h0 h1) (by decide)
theorem q120 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op637762846354.G e lit6 2 := .app (q119 e h0 h1 h2) (q15 e h0) (by decide)
theorem q121 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op637762846354.G e lit4 3 := .app (q114 e h2) (q18 e h0 h1) (by decide)
theorem q122 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op637762846354.G e lit6 3 := .app (q121 e h0 h1 h2) (q20 e h0) (by decide)
theorem q123 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op637762846354.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q116 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q118 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q120 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q122 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q124 (e : Env 3) (h1 : e 1 = 2) : Typed Op637762846354.G e lit8 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q114 (push 0 e) h1).weaken _ (by decide)
  · subst a; exact (q114 (push 1 e) h1).weaken _ (by decide)
  · subst a; exact (q114 (push 2 e) h1).weaken _ (by decide)
  · subst a; exact (q114 (push 3 e) h1).weaken _ (by decide)
theorem q125 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op637762846354.G e lit9 2 := .app (q123 e h0 h1) (q124 e h1) (by decide)
theorem q126 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op637762846354.G e lit4 2 := .app (q114 e h2) (q26 e h0 h1) (by decide)
theorem q127 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op637762846354.G e lit6 2 := .app (q126 e h0 h1 h2) (q5 e h0) (by decide)
theorem q128 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op637762846354.G e lit4 2 := .app (q114 e h2) (q29 e h0 h1) (by decide)
theorem q129 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op637762846354.G e lit6 2 := .app (q128 e h0 h1 h2) (q10 e h0) (by decide)
theorem q130 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op637762846354.G e lit4 2 := .app (q114 e h2) (q32 e h0 h1) (by decide)
theorem q131 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op637762846354.G e lit6 2 := .app (q130 e h0 h1 h2) (q15 e h0) (by decide)
theorem q132 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op637762846354.G e lit4 3 := .app (q114 e h2) (q35 e h0 h1) (by decide)
theorem q133 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op637762846354.G e lit6 3 := .app (q132 e h0 h1 h2) (q20 e h0) (by decide)
theorem q134 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op637762846354.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q127 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q129 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q131 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q133 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q135 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op637762846354.G e lit9 2 := .app (q134 e h0 h1) (q124 e h1) (by decide)
theorem q136 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op637762846354.G e lit4 2 := .app (q114 e h2) (q41 e h0 h1) (by decide)
theorem q137 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op637762846354.G e lit6 2 := .app (q136 e h0 h1 h2) (q5 e h0) (by decide)
theorem q138 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op637762846354.G e lit4 2 := .app (q114 e h2) (q44 e h0 h1) (by decide)
theorem q139 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op637762846354.G e lit6 2 := .app (q138 e h0 h1 h2) (q10 e h0) (by decide)
theorem q140 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op637762846354.G e lit4 2 := .app (q114 e h2) (q47 e h0 h1) (by decide)
theorem q141 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op637762846354.G e lit6 2 := .app (q140 e h0 h1 h2) (q15 e h0) (by decide)
theorem q142 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op637762846354.G e lit4 3 := .app (q114 e h2) (q50 e h0 h1) (by decide)
theorem q143 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op637762846354.G e lit6 3 := .app (q142 e h0 h1 h2) (q20 e h0) (by decide)
theorem q144 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op637762846354.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q137 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q139 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q141 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q143 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q145 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op637762846354.G e lit9 2 := .app (q144 e h0 h1) (q124 e h1) (by decide)
theorem q146 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op637762846354.G e lit4 2 := .app (q114 e h2) (q56 e h0 h1) (by decide)
theorem q147 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op637762846354.G e lit6 2 := .app (q146 e h0 h1 h2) (q5 e h0) (by decide)
theorem q148 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op637762846354.G e lit4 3 := .app (q114 e h2) (q59 e h0 h1) (by decide)
theorem q149 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op637762846354.G e lit6 3 := .app (q148 e h0 h1 h2) (q10 e h0) (by decide)
theorem q150 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op637762846354.G e lit4 3 := .app (q114 e h2) (q62 e h0 h1) (by decide)
theorem q151 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op637762846354.G e lit6 3 := .app (q150 e h0 h1 h2) (q15 e h0) (by decide)
theorem q152 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op637762846354.G e lit4 3 := .app (q114 e h2) (q65 e h0 h1) (by decide)
theorem q153 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op637762846354.G e lit6 3 := .app (q152 e h0 h1 h2) (q20 e h0) (by decide)
theorem q154 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op637762846354.G e lit7 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q147 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q149 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q151 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q153 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q155 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op637762846354.G e lit9 3 := .app (q154 e h0 h1) (q124 e h1) (by decide)
theorem q156 (e : Env 3) (h0 : e 0 = 2) : Typed Op637762846354.G e lit10 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q125 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q135 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q145 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q155 (push 3 e) rfl h0).weaken _ (by decide)
theorem q157 (e : Env 3) (h2 : e 2 = 3) : Typed Op637762846354.G e lit0 3 := .var _ _ (by rw [h2]; decide)
end Blc.Floor45.Probe9690032596622
