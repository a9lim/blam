import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Op8e7c855a107a

set_option Elab.async false
namespace Blc.Floor45.Probe9558988019310
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def lit0 : Term := .var 1
def lit1 : Term := .var 0
def lit2 : Term := .app lit0 lit1
def lit3 : Term := .app lit2 lit0
def lit4 : Term := .var 3
def lit5 : Term := .var 2
def lit6 : Term := .app lit1 lit5
def lit7 : Term := .app lit3 lit6
def lit8 : Term := .lam lit7
def lit9 : Term := .lam lit8
def lit10 : Term := .lam lit9
def lit11 : Term := .lam lit10
def lit12 : Term := .app lit4 lit11
def lit13 : Term := .app lit1 lit12
def lit14 : Term := .app lit3 lit13
def lit15 : Term := .lam lit14
def lit16 : Term := .lam lit15
def lit17 : Term := .app lit16 lit10
def lit18 : Term := .app lit0 lit11
def lit19 : Term := .app lit18 lit0
def lit20 : Term := .app lit17 lit19
def lit21 : Term := .lam lit0
def lit22 : Term := .lam lit21
def lit23 : Term := .app lit1 lit22
def lit24 : Term := .lam lit1
def lit25 : Term := .lam lit24
def lit26 : Term := .app lit1 lit25
def lit27 : Term := .var 4
def lit28 : Term := .app lit23 lit27
def lit29 : Term := .lam lit28
def lit30 : Term := .app lit26 lit29
def lit31 : Term := .lam lit30
def lit32 : Term := .app lit23 lit31
def lit33 : Term := .lam lit32
def lit34 : Term := .app lit23 lit33
def lit35 : Term := .lam lit34
def lit36 : Term := .app lit20 lit35
theorem q0 (e : Env 3) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit0 0 := .var _ _ (by rw [h1]; decide)
theorem q1 (e : Env 3) (h0 : e 0 = 0) : Typed Op8e7c855a107a.G e lit1 0 := .var _ _ (by rw [h0]; decide)
theorem q2 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit2 0 := .app (q0 e h1) (q1 e h0) (by decide)
theorem q3 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit3 0 := .app (q2 e h0 h1) (q0 e h1) (by decide)
theorem q4 (e : Env 3) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit4 0 := .var _ _ (by rw [h3]; decide)
theorem q5 (e : Env 3) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit5 0 := .var _ _ (by rw [h2]; decide)
theorem q6 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit6 0 := .app (q1 e h0) (q5 e h2) (by decide)
theorem q7 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit7 0 := .app (q3 e h0 h1) (q6 e h0 h2) (by decide)
theorem q8 (e : Env 3) (h0 : e 0 = 1) : Typed Op8e7c855a107a.G e lit1 1 := .var _ _ (by rw [h0]; decide)
theorem q9 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit2 0 := .app (q0 e h1) (q8 e h0) (by decide)
theorem q10 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit3 0 := .app (q9 e h0 h1) (q0 e h1) (by decide)
theorem q11 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit6 0 := .app (q8 e h0) (q5 e h2) (by decide)
theorem q12 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit7 0 := .app (q10 e h0 h1) (q11 e h0 h2) (by decide)
theorem q13 (e : Env 3) (h0 : e 0 = 2) : Typed Op8e7c855a107a.G e lit1 2 := .var _ _ (by rw [h0]; decide)
theorem q14 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit2 0 := .app (q0 e h1) (q13 e h0) (by decide)
theorem q15 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit3 0 := .app (q14 e h0 h1) (q0 e h1) (by decide)
theorem q16 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit6 1 := .app (q13 e h0) (q5 e h2) (by decide)
theorem q17 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit7 0 := .app (q15 e h0 h1) (q16 e h0 h2) (by decide)
theorem q18 (e : Env 3) (h0 : e 0 = 3) : Typed Op8e7c855a107a.G e lit1 3 := .var _ _ (by rw [h0]; decide)
theorem q19 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit2 1 := .app (q0 e h1) (q18 e h0) (by decide)
theorem q20 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit3 0 := .app (q19 e h0 h1) (q0 e h1) (by decide)
theorem q21 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit6 3 := .app (q18 e h0) (q5 e h2) (by decide)
theorem q22 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit7 1 := .app (q20 e h0 h1) (q21 e h0 h2) (by decide)
theorem q23 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit8 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q7 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q12 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q17 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q22 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q24 (e : Env 3) (h1 : e 1 = 1) : Typed Op8e7c855a107a.G e lit0 1 := .var _ _ (by rw [h1]; decide)
theorem q25 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op8e7c855a107a.G e lit2 0 := .app (q24 e h1) (q1 e h0) (by decide)
theorem q26 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op8e7c855a107a.G e lit3 0 := .app (q25 e h0 h1) (q24 e h1) (by decide)
theorem q27 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit7 0 := .app (q26 e h0 h1) (q6 e h0 h2) (by decide)
theorem q28 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op8e7c855a107a.G e lit2 1 := .app (q24 e h1) (q8 e h0) (by decide)
theorem q29 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op8e7c855a107a.G e lit3 1 := .app (q28 e h0 h1) (q24 e h1) (by decide)
theorem q30 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit7 0 := .app (q29 e h0 h1) (q11 e h0 h2) (by decide)
theorem q31 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op8e7c855a107a.G e lit2 1 := .app (q24 e h1) (q13 e h0) (by decide)
theorem q32 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op8e7c855a107a.G e lit3 1 := .app (q31 e h0 h1) (q24 e h1) (by decide)
theorem q33 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit7 1 := .app (q32 e h0 h1) (q16 e h0 h2) (by decide)
theorem q34 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op8e7c855a107a.G e lit2 3 := .app (q24 e h1) (q18 e h0) (by decide)
theorem q35 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op8e7c855a107a.G e lit3 3 := .app (q34 e h0 h1) (q24 e h1) (by decide)
theorem q36 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit7 3 := .app (q35 e h0 h1) (q21 e h0 h2) (by decide)
theorem q37 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit8 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q27 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q30 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q33 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q36 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q38 (e : Env 3) (h1 : e 1 = 2) : Typed Op8e7c855a107a.G e lit0 2 := .var _ _ (by rw [h1]; decide)
theorem q39 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op8e7c855a107a.G e lit2 1 := .app (q38 e h1) (q1 e h0) (by decide)
theorem q40 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op8e7c855a107a.G e lit3 1 := .app (q39 e h0 h1) (q38 e h1) (by decide)
theorem q41 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit7 0 := .app (q40 e h0 h1) (q6 e h0 h2) (by decide)
theorem q42 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op8e7c855a107a.G e lit2 1 := .app (q38 e h1) (q8 e h0) (by decide)
theorem q43 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op8e7c855a107a.G e lit3 1 := .app (q42 e h0 h1) (q38 e h1) (by decide)
theorem q44 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit7 0 := .app (q43 e h0 h1) (q11 e h0 h2) (by decide)
theorem q45 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op8e7c855a107a.G e lit2 1 := .app (q38 e h1) (q13 e h0) (by decide)
theorem q46 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op8e7c855a107a.G e lit3 1 := .app (q45 e h0 h1) (q38 e h1) (by decide)
theorem q47 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit7 1 := .app (q46 e h0 h1) (q16 e h0 h2) (by decide)
theorem q48 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op8e7c855a107a.G e lit2 3 := .app (q38 e h1) (q18 e h0) (by decide)
theorem q49 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op8e7c855a107a.G e lit3 3 := .app (q48 e h0 h1) (q38 e h1) (by decide)
theorem q50 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit7 3 := .app (q49 e h0 h1) (q21 e h0 h2) (by decide)
theorem q51 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit8 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q41 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q44 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q47 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q50 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q52 (e : Env 3) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit0 3 := .var _ _ (by rw [h1]; decide)
theorem q53 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit2 3 := .app (q52 e h1) (q1 e h0) (by decide)
theorem q54 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit3 3 := .app (q53 e h0 h1) (q52 e h1) (by decide)
theorem q55 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit7 3 := .app (q54 e h0 h1) (q6 e h0 h2) (by decide)
theorem q56 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit2 3 := .app (q52 e h1) (q8 e h0) (by decide)
theorem q57 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit3 3 := .app (q56 e h0 h1) (q52 e h1) (by decide)
theorem q58 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit7 3 := .app (q57 e h0 h1) (q11 e h0 h2) (by decide)
theorem q59 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit2 3 := .app (q52 e h1) (q13 e h0) (by decide)
theorem q60 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit3 3 := .app (q59 e h0 h1) (q52 e h1) (by decide)
theorem q61 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit7 3 := .app (q60 e h0 h1) (q16 e h0 h2) (by decide)
theorem q62 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit2 3 := .app (q52 e h1) (q18 e h0) (by decide)
theorem q63 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit3 3 := .app (q62 e h0 h1) (q52 e h1) (by decide)
theorem q64 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op8e7c855a107a.G e lit7 3 := .app (q63 e h0 h1) (q21 e h0 h2) (by decide)
theorem q65 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op8e7c855a107a.G e lit8 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q55 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q58 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q61 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q64 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q66 (e : Env 3) (h0 : e 0 = 0) : Typed Op8e7c855a107a.G e lit9 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q23 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q37 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q51 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q65 (push 3 e) rfl h0).weaken _ (by decide)
theorem q67 (e : Env 3) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit5 1 := .var _ _ (by rw [h2]; decide)
theorem q68 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit6 0 := .app (q1 e h0) (q67 e h2) (by decide)
theorem q69 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit7 0 := .app (q3 e h0 h1) (q68 e h0 h2) (by decide)
theorem q70 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit6 1 := .app (q8 e h0) (q67 e h2) (by decide)
theorem q71 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit7 0 := .app (q10 e h0 h1) (q70 e h0 h2) (by decide)
theorem q72 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit6 1 := .app (q13 e h0) (q67 e h2) (by decide)
theorem q73 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit7 0 := .app (q15 e h0 h1) (q72 e h0 h2) (by decide)
theorem q74 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit6 3 := .app (q18 e h0) (q67 e h2) (by decide)
theorem q75 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit7 1 := .app (q20 e h0 h1) (q74 e h0 h2) (by decide)
theorem q76 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op8e7c855a107a.G e lit8 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q69 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q71 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q73 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q75 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q77 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit7 0 := .app (q26 e h0 h1) (q68 e h0 h2) (by decide)
theorem q78 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit7 1 := .app (q29 e h0 h1) (q70 e h0 h2) (by decide)
theorem q79 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit7 1 := .app (q32 e h0 h1) (q72 e h0 h2) (by decide)
theorem q80 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit7 3 := .app (q35 e h0 h1) (q74 e h0 h2) (by decide)
theorem q81 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op8e7c855a107a.G e lit8 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q77 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q78 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q79 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q80 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q82 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit7 0 := .app (q40 e h0 h1) (q68 e h0 h2) (by decide)
theorem q83 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit7 1 := .app (q43 e h0 h1) (q70 e h0 h2) (by decide)
theorem q84 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit7 1 := .app (q46 e h0 h1) (q72 e h0 h2) (by decide)
theorem q85 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit7 3 := .app (q49 e h0 h1) (q74 e h0 h2) (by decide)
theorem q86 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op8e7c855a107a.G e lit8 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q82 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q83 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q84 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q85 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q87 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit7 3 := .app (q54 e h0 h1) (q68 e h0 h2) (by decide)
theorem q88 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit7 3 := .app (q57 e h0 h1) (q70 e h0 h2) (by decide)
theorem q89 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit7 3 := .app (q60 e h0 h1) (q72 e h0 h2) (by decide)
theorem q90 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8e7c855a107a.G e lit7 3 := .app (q63 e h0 h1) (q74 e h0 h2) (by decide)
theorem q91 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op8e7c855a107a.G e lit8 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q87 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q88 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q89 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q90 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q92 (e : Env 3) (h0 : e 0 = 1) : Typed Op8e7c855a107a.G e lit9 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q76 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q81 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q86 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q91 (push 3 e) rfl h0).weaken _ (by decide)
theorem q93 (e : Env 3) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit5 2 := .var _ _ (by rw [h2]; decide)
theorem q94 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit6 0 := .app (q1 e h0) (q93 e h2) (by decide)
theorem q95 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit7 0 := .app (q3 e h0 h1) (q94 e h0 h2) (by decide)
theorem q96 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit6 1 := .app (q8 e h0) (q93 e h2) (by decide)
theorem q97 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit7 0 := .app (q10 e h0 h1) (q96 e h0 h2) (by decide)
theorem q98 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit6 1 := .app (q13 e h0) (q93 e h2) (by decide)
theorem q99 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit7 0 := .app (q15 e h0 h1) (q98 e h0 h2) (by decide)
theorem q100 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit6 3 := .app (q18 e h0) (q93 e h2) (by decide)
theorem q101 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit7 1 := .app (q20 e h0 h1) (q100 e h0 h2) (by decide)
theorem q102 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op8e7c855a107a.G e lit8 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q95 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q97 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q99 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q101 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q103 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit7 0 := .app (q26 e h0 h1) (q94 e h0 h2) (by decide)
theorem q104 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit7 1 := .app (q29 e h0 h1) (q96 e h0 h2) (by decide)
theorem q105 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit7 1 := .app (q32 e h0 h1) (q98 e h0 h2) (by decide)
theorem q106 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit7 3 := .app (q35 e h0 h1) (q100 e h0 h2) (by decide)
theorem q107 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op8e7c855a107a.G e lit8 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q103 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q104 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q105 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q106 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q108 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit7 0 := .app (q40 e h0 h1) (q94 e h0 h2) (by decide)
theorem q109 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit7 1 := .app (q43 e h0 h1) (q96 e h0 h2) (by decide)
theorem q110 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit7 1 := .app (q46 e h0 h1) (q98 e h0 h2) (by decide)
theorem q111 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit7 3 := .app (q49 e h0 h1) (q100 e h0 h2) (by decide)
theorem q112 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op8e7c855a107a.G e lit8 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q108 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q109 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q110 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q111 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q113 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit7 3 := .app (q54 e h0 h1) (q94 e h0 h2) (by decide)
theorem q114 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit7 3 := .app (q57 e h0 h1) (q96 e h0 h2) (by decide)
theorem q115 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit7 3 := .app (q60 e h0 h1) (q98 e h0 h2) (by decide)
theorem q116 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8e7c855a107a.G e lit7 3 := .app (q63 e h0 h1) (q100 e h0 h2) (by decide)
theorem q117 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op8e7c855a107a.G e lit8 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q113 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q114 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q115 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q116 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q118 (e : Env 3) (h0 : e 0 = 2) : Typed Op8e7c855a107a.G e lit9 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q102 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q107 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q112 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q117 (push 3 e) rfl h0).weaken _ (by decide)
theorem q119 (e : Env 3) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit5 3 := .var _ _ (by rw [h2]; decide)
theorem q120 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit6 1 := .app (q1 e h0) (q119 e h2) (by decide)
theorem q121 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit7 0 := .app (q3 e h0 h1) (q120 e h0 h2) (by decide)
theorem q122 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit6 3 := .app (q8 e h0) (q119 e h2) (by decide)
theorem q123 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit7 1 := .app (q10 e h0 h1) (q122 e h0 h2) (by decide)
theorem q124 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit6 3 := .app (q13 e h0) (q119 e h2) (by decide)
theorem q125 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit7 1 := .app (q15 e h0 h1) (q124 e h0 h2) (by decide)
theorem q126 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit6 3 := .app (q18 e h0) (q119 e h2) (by decide)
theorem q127 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit7 1 := .app (q20 e h0 h1) (q126 e h0 h2) (by decide)
theorem q128 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit8 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q121 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q123 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q125 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q127 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q129 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit7 0 := .app (q26 e h0 h1) (q120 e h0 h2) (by decide)
theorem q130 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit7 3 := .app (q29 e h0 h1) (q122 e h0 h2) (by decide)
theorem q131 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit7 3 := .app (q32 e h0 h1) (q124 e h0 h2) (by decide)
theorem q132 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit7 3 := .app (q35 e h0 h1) (q126 e h0 h2) (by decide)
theorem q133 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit8 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q129 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q130 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q131 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q132 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q134 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit7 1 := .app (q40 e h0 h1) (q120 e h0 h2) (by decide)
theorem q135 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit7 3 := .app (q43 e h0 h1) (q122 e h0 h2) (by decide)
theorem q136 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit7 3 := .app (q46 e h0 h1) (q124 e h0 h2) (by decide)
theorem q137 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit7 3 := .app (q49 e h0 h1) (q126 e h0 h2) (by decide)
theorem q138 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit8 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q134 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q135 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q136 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q137 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q139 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit7 3 := .app (q54 e h0 h1) (q120 e h0 h2) (by decide)
theorem q140 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit7 3 := .app (q57 e h0 h1) (q122 e h0 h2) (by decide)
theorem q141 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit7 3 := .app (q60 e h0 h1) (q124 e h0 h2) (by decide)
theorem q142 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8e7c855a107a.G e lit7 3 := .app (q63 e h0 h1) (q126 e h0 h2) (by decide)
theorem q143 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op8e7c855a107a.G e lit8 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q139 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q140 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q141 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q142 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q144 (e : Env 3) (h0 : e 0 = 3) : Typed Op8e7c855a107a.G e lit9 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q128 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q133 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q138 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q143 (push 3 e) rfl h0).weaken _ (by decide)
theorem q145 (e : Env 3)  : Typed Op8e7c855a107a.G e lit10 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q66 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q92 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q118 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q144 (push 3 e) rfl).weaken _ (by decide)
theorem q146 (e : Env 3)  : Typed Op8e7c855a107a.G e lit11 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q145 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q145 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q145 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q145 (push 3 e)).weaken _ (by decide)
theorem q147 (e : Env 3) (h3 : e 3 = 0) : Typed Op8e7c855a107a.G e lit12 1 := .app (q4 e h3) (q146 e) (by decide)
end Blc.Floor45.Probe9558988019310
