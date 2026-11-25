import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Op6cd54e290b69

set_option Elab.async false
namespace Blc.Floor45.Probe9692402110306
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def lit0 : Term := .var 0
def lit1 : Term := .app lit0 lit0
def lit2 : Term := .lam lit1
def lit3 : Term := .var 2
def lit4 : Term := .app lit3 lit0
def lit5 : Term := .var 1
def lit6 : Term := .app lit3 lit5
def lit7 : Term := .app lit4 lit6
def lit8 : Term := .lam lit7
def lit9 : Term := .lam lit8
def lit10 : Term := .app lit0 lit9
def lit11 : Term := .lam lit0
def lit12 : Term := .app lit10 lit11
def lit13 : Term := .lam lit12
def lit14 : Term := .app lit2 lit13
def lit15 : Term := .app lit14 lit5
def lit16 : Term := .lam lit5
def lit17 : Term := .lam lit16
def lit18 : Term := .app lit0 lit17
def lit19 : Term := .lam lit11
def lit20 : Term := .app lit0 lit19
def lit21 : Term := .var 4
def lit22 : Term := .app lit18 lit21
def lit23 : Term := .lam lit22
def lit24 : Term := .app lit20 lit23
def lit25 : Term := .lam lit24
def lit26 : Term := .app lit18 lit25
def lit27 : Term := .lam lit26
def lit28 : Term := .app lit18 lit27
def lit29 : Term := .lam lit28
def lit30 : Term := .app lit15 lit29
theorem q0 (e : Env 4) (h0 : e 0 = 0) : Typed Op6cd54e290b69.G e lit0 0 := .var _ _ (by rw [h0]; decide)
theorem q1 (e : Env 4) (h0 : e 0 = 0) : Typed Op6cd54e290b69.G e lit1 0 := .app (q0 e h0) (q0 e h0) (by decide)
theorem q2 (e : Env 4) (h0 : e 0 = 1) : Typed Op6cd54e290b69.G e lit0 1 := .var _ _ (by rw [h0]; decide)
theorem q3 (e : Env 4) (h0 : e 0 = 1) : Typed Op6cd54e290b69.G e lit1 0 := .app (q2 e h0) (q2 e h0) (by decide)
theorem q4 (e : Env 4) (h0 : e 0 = 2) : Typed Op6cd54e290b69.G e lit0 2 := .var _ _ (by rw [h0]; decide)
theorem q5 (e : Env 4) (h0 : e 0 = 2) : Typed Op6cd54e290b69.G e lit1 1 := .app (q4 e h0) (q4 e h0) (by decide)
theorem q6 (e : Env 4) (h0 : e 0 = 3) : Typed Op6cd54e290b69.G e lit0 3 := .var _ _ (by rw [h0]; decide)
theorem q7 (e : Env 4) (h0 : e 0 = 3) : Typed Op6cd54e290b69.G e lit1 3 := .app (q6 e h0) (q6 e h0) (by decide)
theorem q8 (e : Env 4) (h0 : e 0 = 4) : Typed Op6cd54e290b69.G e lit0 4 := .var _ _ (by rw [h0]; decide)
theorem q9 (e : Env 4) (h0 : e 0 = 4) : Typed Op6cd54e290b69.G e lit1 4 := .app (q8 e h0) (q8 e h0) (by decide)
theorem q10 (e : Env 4)  : Typed Op6cd54e290b69.G e lit2 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q1 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q3 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q5 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q7 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q9 (push 4 e) rfl).weaken _ (by decide)
theorem q11 (e : Env 4) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit3 0 := .var _ _ (by rw [h2]; decide)
theorem q12 (e : Env 4) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit4 0 := .app (q11 e h2) (q0 e h0) (by decide)
theorem q13 (e : Env 4) (h1 : e 1 = 0) : Typed Op6cd54e290b69.G e lit5 0 := .var _ _ (by rw [h1]; decide)
theorem q14 (e : Env 4) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit6 0 := .app (q11 e h2) (q13 e h1) (by decide)
theorem q15 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q12 e h0 h2) (q14 e h1 h2) (by decide)
theorem q16 (e : Env 4) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit4 0 := .app (q11 e h2) (q2 e h0) (by decide)
theorem q17 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q16 e h0 h2) (q14 e h1 h2) (by decide)
theorem q18 (e : Env 4) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit4 0 := .app (q11 e h2) (q4 e h0) (by decide)
theorem q19 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q18 e h0 h2) (q14 e h1 h2) (by decide)
theorem q20 (e : Env 4) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit4 0 := .app (q11 e h2) (q6 e h0) (by decide)
theorem q21 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q20 e h0 h2) (q14 e h1 h2) (by decide)
theorem q22 (e : Env 4) (h0 : e 0 = 4) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit4 0 := .app (q11 e h2) (q8 e h0) (by decide)
theorem q23 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q22 e h0 h2) (q14 e h1 h2) (by decide)
theorem q24 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op6cd54e290b69.G e lit8 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q15 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q17 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q19 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q21 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q23 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q25 (e : Env 4) (h1 : e 1 = 1) : Typed Op6cd54e290b69.G e lit5 1 := .var _ _ (by rw [h1]; decide)
theorem q26 (e : Env 4) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit6 0 := .app (q11 e h2) (q25 e h1) (by decide)
theorem q27 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q12 e h0 h2) (q26 e h1 h2) (by decide)
theorem q28 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q16 e h0 h2) (q26 e h1 h2) (by decide)
theorem q29 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q18 e h0 h2) (q26 e h1 h2) (by decide)
theorem q30 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q20 e h0 h2) (q26 e h1 h2) (by decide)
theorem q31 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q22 e h0 h2) (q26 e h1 h2) (by decide)
theorem q32 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op6cd54e290b69.G e lit8 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q27 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q28 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q29 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q30 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q31 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q33 (e : Env 4) (h1 : e 1 = 2) : Typed Op6cd54e290b69.G e lit5 2 := .var _ _ (by rw [h1]; decide)
theorem q34 (e : Env 4) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit6 0 := .app (q11 e h2) (q33 e h1) (by decide)
theorem q35 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q12 e h0 h2) (q34 e h1 h2) (by decide)
theorem q36 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q16 e h0 h2) (q34 e h1 h2) (by decide)
theorem q37 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q18 e h0 h2) (q34 e h1 h2) (by decide)
theorem q38 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q20 e h0 h2) (q34 e h1 h2) (by decide)
theorem q39 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q22 e h0 h2) (q34 e h1 h2) (by decide)
theorem q40 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op6cd54e290b69.G e lit8 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q35 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q36 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q37 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q38 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q39 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q41 (e : Env 4) (h1 : e 1 = 3) : Typed Op6cd54e290b69.G e lit5 3 := .var _ _ (by rw [h1]; decide)
theorem q42 (e : Env 4) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit6 0 := .app (q11 e h2) (q41 e h1) (by decide)
theorem q43 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q12 e h0 h2) (q42 e h1 h2) (by decide)
theorem q44 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q16 e h0 h2) (q42 e h1 h2) (by decide)
theorem q45 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q18 e h0 h2) (q42 e h1 h2) (by decide)
theorem q46 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q20 e h0 h2) (q42 e h1 h2) (by decide)
theorem q47 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q22 e h0 h2) (q42 e h1 h2) (by decide)
theorem q48 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op6cd54e290b69.G e lit8 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q43 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q44 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q45 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q46 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q47 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q49 (e : Env 4) (h1 : e 1 = 4) : Typed Op6cd54e290b69.G e lit5 4 := .var _ _ (by rw [h1]; decide)
theorem q50 (e : Env 4) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit6 0 := .app (q11 e h2) (q49 e h1) (by decide)
theorem q51 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q12 e h0 h2) (q50 e h1 h2) (by decide)
theorem q52 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q16 e h0 h2) (q50 e h1 h2) (by decide)
theorem q53 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q18 e h0 h2) (q50 e h1 h2) (by decide)
theorem q54 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q20 e h0 h2) (q50 e h1 h2) (by decide)
theorem q55 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Op6cd54e290b69.G e lit7 0 := .app (q22 e h0 h2) (q50 e h1 h2) (by decide)
theorem q56 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) : Typed Op6cd54e290b69.G e lit8 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q51 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q52 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q53 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q54 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q55 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q57 (e : Env 4) (h0 : e 0 = 0) : Typed Op6cd54e290b69.G e lit9 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q24 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q32 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q40 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q48 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q56 (push 4 e) rfl h0).weaken _ (by decide)
theorem q58 (e : Env 4) (h0 : e 0 = 0) : Typed Op6cd54e290b69.G e lit10 0 := .app (q0 e h0) (q57 e h0) (by decide)
theorem q59 (e : Env 4)  : Typed Op6cd54e290b69.G e lit11 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q0 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q2 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q4 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q6 (push 3 e) rfl).weaken _ (by decide)
  · subst a; exact (q8 (push 4 e) rfl).weaken _ (by decide)
theorem q60 (e : Env 4) (h0 : e 0 = 0) : Typed Op6cd54e290b69.G e lit12 0 := .app (q58 e h0) (q59 e) (by decide)
theorem q61 (e : Env 4) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit3 1 := .var _ _ (by rw [h2]; decide)
theorem q62 (e : Env 4) (h0 : e 0 = 0) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit4 0 := .app (q61 e h2) (q0 e h0) (by decide)
theorem q63 (e : Env 4) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit6 0 := .app (q61 e h2) (q13 e h1) (by decide)
theorem q64 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 0 := .app (q62 e h0 h2) (q63 e h1 h2) (by decide)
theorem q65 (e : Env 4) (h0 : e 0 = 1) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit4 0 := .app (q61 e h2) (q2 e h0) (by decide)
theorem q66 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 0 := .app (q65 e h0 h2) (q63 e h1 h2) (by decide)
theorem q67 (e : Env 4) (h0 : e 0 = 2) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit4 1 := .app (q61 e h2) (q4 e h0) (by decide)
theorem q68 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 0 := .app (q67 e h0 h2) (q63 e h1 h2) (by decide)
theorem q69 (e : Env 4) (h0 : e 0 = 3) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit4 1 := .app (q61 e h2) (q6 e h0) (by decide)
theorem q70 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 0 := .app (q69 e h0 h2) (q63 e h1 h2) (by decide)
theorem q71 (e : Env 4) (h0 : e 0 = 4) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit4 4 := .app (q61 e h2) (q8 e h0) (by decide)
theorem q72 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 4 := .app (q71 e h0 h2) (q63 e h1 h2) (by decide)
theorem q73 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op6cd54e290b69.G e lit8 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q64 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q66 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q68 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q70 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q72 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q74 (e : Env 4) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit6 0 := .app (q61 e h2) (q25 e h1) (by decide)
theorem q75 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 0 := .app (q62 e h0 h2) (q74 e h1 h2) (by decide)
theorem q76 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 0 := .app (q65 e h0 h2) (q74 e h1 h2) (by decide)
theorem q77 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 0 := .app (q67 e h0 h2) (q74 e h1 h2) (by decide)
theorem q78 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 0 := .app (q69 e h0 h2) (q74 e h1 h2) (by decide)
theorem q79 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 4 := .app (q71 e h0 h2) (q74 e h1 h2) (by decide)
theorem q80 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op6cd54e290b69.G e lit8 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q75 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q76 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q77 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q78 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q79 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q81 (e : Env 4) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit6 1 := .app (q61 e h2) (q33 e h1) (by decide)
theorem q82 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 0 := .app (q62 e h0 h2) (q81 e h1 h2) (by decide)
theorem q83 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 0 := .app (q65 e h0 h2) (q81 e h1 h2) (by decide)
theorem q84 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 0 := .app (q67 e h0 h2) (q81 e h1 h2) (by decide)
theorem q85 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 0 := .app (q69 e h0 h2) (q81 e h1 h2) (by decide)
theorem q86 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 4 := .app (q71 e h0 h2) (q81 e h1 h2) (by decide)
theorem q87 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op6cd54e290b69.G e lit8 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q82 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q83 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q84 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q85 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q86 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q88 (e : Env 4) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit6 1 := .app (q61 e h2) (q41 e h1) (by decide)
theorem q89 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 0 := .app (q62 e h0 h2) (q88 e h1 h2) (by decide)
theorem q90 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 0 := .app (q65 e h0 h2) (q88 e h1 h2) (by decide)
theorem q91 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 0 := .app (q67 e h0 h2) (q88 e h1 h2) (by decide)
theorem q92 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 0 := .app (q69 e h0 h2) (q88 e h1 h2) (by decide)
theorem q93 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 4 := .app (q71 e h0 h2) (q88 e h1 h2) (by decide)
theorem q94 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op6cd54e290b69.G e lit8 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q89 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q90 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q91 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q92 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q93 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q95 (e : Env 4) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit6 4 := .app (q61 e h2) (q49 e h1) (by decide)
theorem q96 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 0 := .app (q62 e h0 h2) (q95 e h1 h2) (by decide)
theorem q97 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 0 := .app (q65 e h0 h2) (q95 e h1 h2) (by decide)
theorem q98 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 4 := .app (q67 e h0 h2) (q95 e h1 h2) (by decide)
theorem q99 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 4 := .app (q69 e h0 h2) (q95 e h1 h2) (by decide)
theorem q100 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 1) : Typed Op6cd54e290b69.G e lit7 4 := .app (q71 e h0 h2) (q95 e h1 h2) (by decide)
theorem q101 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) : Typed Op6cd54e290b69.G e lit8 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q96 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q97 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q98 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q99 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q100 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q102 (e : Env 4) (h0 : e 0 = 1) : Typed Op6cd54e290b69.G e lit9 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q73 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q80 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q87 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q94 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q101 (push 4 e) rfl h0).weaken _ (by decide)
theorem q103 (e : Env 4) (h0 : e 0 = 1) : Typed Op6cd54e290b69.G e lit10 1 := .app (q2 e h0) (q102 e h0) (by decide)
theorem q104 (e : Env 4) (h0 : e 0 = 1) : Typed Op6cd54e290b69.G e lit12 1 := .app (q103 e h0) (q59 e) (by decide)
theorem q105 (e : Env 4) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit3 2 := .var _ _ (by rw [h2]; decide)
theorem q106 (e : Env 4) (h0 : e 0 = 0) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit4 1 := .app (q105 e h2) (q0 e h0) (by decide)
theorem q107 (e : Env 4) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit6 1 := .app (q105 e h2) (q13 e h1) (by decide)
theorem q108 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 0 := .app (q106 e h0 h2) (q107 e h1 h2) (by decide)
theorem q109 (e : Env 4) (h0 : e 0 = 1) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit4 1 := .app (q105 e h2) (q2 e h0) (by decide)
theorem q110 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 0 := .app (q109 e h0 h2) (q107 e h1 h2) (by decide)
theorem q111 (e : Env 4) (h0 : e 0 = 2) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit4 1 := .app (q105 e h2) (q4 e h0) (by decide)
theorem q112 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 0 := .app (q111 e h0 h2) (q107 e h1 h2) (by decide)
theorem q113 (e : Env 4) (h0 : e 0 = 3) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit4 3 := .app (q105 e h2) (q6 e h0) (by decide)
theorem q114 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 1 := .app (q113 e h0 h2) (q107 e h1 h2) (by decide)
theorem q115 (e : Env 4) (h0 : e 0 = 4) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit4 4 := .app (q105 e h2) (q8 e h0) (by decide)
theorem q116 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 4 := .app (q115 e h0 h2) (q107 e h1 h2) (by decide)
theorem q117 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op6cd54e290b69.G e lit8 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q108 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q110 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q112 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q114 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q116 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q118 (e : Env 4) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit6 1 := .app (q105 e h2) (q25 e h1) (by decide)
theorem q119 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 0 := .app (q106 e h0 h2) (q118 e h1 h2) (by decide)
theorem q120 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 0 := .app (q109 e h0 h2) (q118 e h1 h2) (by decide)
theorem q121 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 0 := .app (q111 e h0 h2) (q118 e h1 h2) (by decide)
theorem q122 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 1 := .app (q113 e h0 h2) (q118 e h1 h2) (by decide)
theorem q123 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 4 := .app (q115 e h0 h2) (q118 e h1 h2) (by decide)
theorem q124 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op6cd54e290b69.G e lit8 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q119 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q120 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q121 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q122 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q123 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q125 (e : Env 4) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit6 1 := .app (q105 e h2) (q33 e h1) (by decide)
theorem q126 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 0 := .app (q106 e h0 h2) (q125 e h1 h2) (by decide)
theorem q127 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 0 := .app (q109 e h0 h2) (q125 e h1 h2) (by decide)
theorem q128 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 0 := .app (q111 e h0 h2) (q125 e h1 h2) (by decide)
theorem q129 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 1 := .app (q113 e h0 h2) (q125 e h1 h2) (by decide)
theorem q130 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 4 := .app (q115 e h0 h2) (q125 e h1 h2) (by decide)
theorem q131 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op6cd54e290b69.G e lit8 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q126 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q127 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q128 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q129 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q130 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q132 (e : Env 4) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit6 3 := .app (q105 e h2) (q41 e h1) (by decide)
theorem q133 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 1 := .app (q106 e h0 h2) (q132 e h1 h2) (by decide)
theorem q134 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 1 := .app (q109 e h0 h2) (q132 e h1 h2) (by decide)
theorem q135 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 1 := .app (q111 e h0 h2) (q132 e h1 h2) (by decide)
theorem q136 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 3 := .app (q113 e h0 h2) (q132 e h1 h2) (by decide)
theorem q137 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 4 := .app (q115 e h0 h2) (q132 e h1 h2) (by decide)
theorem q138 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op6cd54e290b69.G e lit8 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q133 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q134 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q135 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q136 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q137 (push 4 e) rfl h0 h1).weaken _ (by decide)
theorem q139 (e : Env 4) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit6 4 := .app (q105 e h2) (q49 e h1) (by decide)
theorem q140 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 4 := .app (q106 e h0 h2) (q139 e h1 h2) (by decide)
theorem q141 (e : Env 4) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 4 := .app (q109 e h0 h2) (q139 e h1 h2) (by decide)
theorem q142 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 4 := .app (q111 e h0 h2) (q139 e h1 h2) (by decide)
theorem q143 (e : Env 4) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 4 := .app (q113 e h0 h2) (q139 e h1 h2) (by decide)
theorem q144 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 2) : Typed Op6cd54e290b69.G e lit7 4 := .app (q115 e h0 h2) (q139 e h1 h2) (by decide)
theorem q145 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 2) : Typed Op6cd54e290b69.G e lit8 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 := (by decide : ∀ a : Fin 5, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4) a
  rcases hcases with el | el | el | el | el
  · subst a; exact (q140 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q141 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q142 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q143 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q144 (push 4 e) rfl h0 h1).weaken _ (by decide)
end Blc.Floor45.Probe9692402110306
