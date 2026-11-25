import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Op1ca1a77265e6

set_option Elab.async false
namespace Blc.Floor45.Probe9624769225114
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def lit0 : Term := .var 0
def lit1 : Term := .app lit0 lit0
def lit2 : Term := .app lit0 lit1
def lit3 : Term := .lam lit2
def lit4 : Term := .var 2
def lit5 : Term := .var 3
def lit6 : Term := .var 5
def lit7 : Term := .app lit5 lit6
def lit8 : Term := .app lit4 lit7
def lit9 : Term := .var 1
def lit10 : Term := .app lit0 lit9
def lit11 : Term := .app lit8 lit10
def lit12 : Term := .lam lit11
def lit13 : Term := .app lit3 lit12
def lit14 : Term := .lam lit13
def lit15 : Term := .lam lit14
def lit16 : Term := .app lit3 lit15
def lit17 : Term := .lam lit16
def lit18 : Term := .app lit3 lit17
def lit19 : Term := .lam lit9
def lit20 : Term := .lam lit19
def lit21 : Term := .app lit0 lit20
def lit22 : Term := .lam lit0
def lit23 : Term := .lam lit22
def lit24 : Term := .app lit0 lit23
def lit25 : Term := .var 4
def lit26 : Term := .app lit21 lit25
def lit27 : Term := .lam lit26
def lit28 : Term := .app lit24 lit27
def lit29 : Term := .lam lit28
def lit30 : Term := .app lit21 lit29
def lit31 : Term := .lam lit30
def lit32 : Term := .app lit21 lit31
def lit33 : Term := .lam lit32
def lit34 : Term := .app lit18 lit33
theorem q0 (e : Env 3) (h0 : e 0 = 0) : Typed Op1ca1a77265e6.G e lit0 0 := .var _ _ (by rw [h0]; decide)
theorem q1 (e : Env 3) (h0 : e 0 = 0) : Typed Op1ca1a77265e6.G e lit1 0 := .app (q0 e h0) (q0 e h0) (by decide)
theorem q2 (e : Env 3) (h0 : e 0 = 0) : Typed Op1ca1a77265e6.G e lit2 0 := .app (q0 e h0) (q1 e h0) (by decide)
theorem q3 (e : Env 3) (h0 : e 0 = 1) : Typed Op1ca1a77265e6.G e lit0 1 := .var _ _ (by rw [h0]; decide)
theorem q4 (e : Env 3) (h0 : e 0 = 1) : Typed Op1ca1a77265e6.G e lit1 0 := .app (q3 e h0) (q3 e h0) (by decide)
theorem q5 (e : Env 3) (h0 : e 0 = 1) : Typed Op1ca1a77265e6.G e lit2 0 := .app (q3 e h0) (q4 e h0) (by decide)
theorem q6 (e : Env 3) (h0 : e 0 = 2) : Typed Op1ca1a77265e6.G e lit0 2 := .var _ _ (by rw [h0]; decide)
theorem q7 (e : Env 3) (h0 : e 0 = 2) : Typed Op1ca1a77265e6.G e lit1 1 := .app (q6 e h0) (q6 e h0) (by decide)
theorem q8 (e : Env 3) (h0 : e 0 = 2) : Typed Op1ca1a77265e6.G e lit2 1 := .app (q6 e h0) (q7 e h0) (by decide)
theorem q9 (e : Env 3) (h0 : e 0 = 3) : Typed Op1ca1a77265e6.G e lit0 3 := .var _ _ (by rw [h0]; decide)
theorem q10 (e : Env 3) (h0 : e 0 = 3) : Typed Op1ca1a77265e6.G e lit1 3 := .app (q9 e h0) (q9 e h0) (by decide)
theorem q11 (e : Env 3) (h0 : e 0 = 3) : Typed Op1ca1a77265e6.G e lit2 3 := .app (q9 e h0) (q10 e h0) (by decide)
theorem q12 (e : Env 3)  : Typed Op1ca1a77265e6.G e lit3 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q2 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q5 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q8 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q11 (push 3 e) rfl).weaken _ (by decide)
theorem q13 (e : Env 3) (h2 : e 2 = 0) : Typed Op1ca1a77265e6.G e lit4 0 := .var _ _ (by rw [h2]; decide)
theorem q14 (e : Env 3) (h3 : e 3 = 0) : Typed Op1ca1a77265e6.G e lit5 0 := .var _ _ (by rw [h3]; decide)
theorem q15 (e : Env 3) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit6 1 := .var _ _ (by rw [h5]; decide)
theorem q16 (e : Env 3) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit7 0 := .app (q14 e h3) (q15 e h5) (by decide)
theorem q17 (e : Env 3) (h2 : e 2 = 0) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit8 0 := .app (q13 e h2) (q16 e h3 h5) (by decide)
theorem q18 (e : Env 3) (h1 : e 1 = 0) : Typed Op1ca1a77265e6.G e lit9 0 := .var _ _ (by rw [h1]; decide)
theorem q19 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op1ca1a77265e6.G e lit10 0 := .app (q0 e h0) (q18 e h1) (by decide)
theorem q20 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q17 e h2 h3 h5) (q19 e h0 h1) (by decide)
theorem q21 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op1ca1a77265e6.G e lit10 0 := .app (q3 e h0) (q18 e h1) (by decide)
theorem q22 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q17 e h2 h3 h5) (q21 e h0 h1) (by decide)
theorem q23 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op1ca1a77265e6.G e lit10 1 := .app (q6 e h0) (q18 e h1) (by decide)
theorem q24 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q17 e h2 h3 h5) (q23 e h0 h1) (by decide)
theorem q25 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op1ca1a77265e6.G e lit10 3 := .app (q9 e h0) (q18 e h1) (by decide)
theorem q26 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q17 e h2 h3 h5) (q25 e h0 h1) (by decide)
theorem q27 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q20 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q22 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q24 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q26 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q28 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q27 e h0 h1 h2 h4) (by decide)
theorem q29 (e : Env 3) (h1 : e 1 = 1) : Typed Op1ca1a77265e6.G e lit9 1 := .var _ _ (by rw [h1]; decide)
theorem q30 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op1ca1a77265e6.G e lit10 0 := .app (q0 e h0) (q29 e h1) (by decide)
theorem q31 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q17 e h2 h3 h5) (q30 e h0 h1) (by decide)
theorem q32 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op1ca1a77265e6.G e lit10 0 := .app (q3 e h0) (q29 e h1) (by decide)
theorem q33 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q17 e h2 h3 h5) (q32 e h0 h1) (by decide)
theorem q34 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op1ca1a77265e6.G e lit10 1 := .app (q6 e h0) (q29 e h1) (by decide)
theorem q35 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q17 e h2 h3 h5) (q34 e h0 h1) (by decide)
theorem q36 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op1ca1a77265e6.G e lit10 3 := .app (q9 e h0) (q29 e h1) (by decide)
theorem q37 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q17 e h2 h3 h5) (q36 e h0 h1) (by decide)
theorem q38 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q31 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q33 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q35 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q37 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q39 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q38 e h0 h1 h2 h4) (by decide)
theorem q40 (e : Env 3) (h1 : e 1 = 2) : Typed Op1ca1a77265e6.G e lit9 2 := .var _ _ (by rw [h1]; decide)
theorem q41 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op1ca1a77265e6.G e lit10 0 := .app (q0 e h0) (q40 e h1) (by decide)
theorem q42 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q17 e h2 h3 h5) (q41 e h0 h1) (by decide)
theorem q43 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op1ca1a77265e6.G e lit10 1 := .app (q3 e h0) (q40 e h1) (by decide)
theorem q44 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q17 e h2 h3 h5) (q43 e h0 h1) (by decide)
theorem q45 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op1ca1a77265e6.G e lit10 1 := .app (q6 e h0) (q40 e h1) (by decide)
theorem q46 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q17 e h2 h3 h5) (q45 e h0 h1) (by decide)
theorem q47 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op1ca1a77265e6.G e lit10 3 := .app (q9 e h0) (q40 e h1) (by decide)
theorem q48 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q17 e h2 h3 h5) (q47 e h0 h1) (by decide)
theorem q49 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q42 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q44 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q46 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q48 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q50 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q49 e h0 h1 h2 h4) (by decide)
theorem q51 (e : Env 3) (h1 : e 1 = 3) : Typed Op1ca1a77265e6.G e lit9 3 := .var _ _ (by rw [h1]; decide)
theorem q52 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op1ca1a77265e6.G e lit10 0 := .app (q0 e h0) (q51 e h1) (by decide)
theorem q53 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q17 e h2 h3 h5) (q52 e h0 h1) (by decide)
theorem q54 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op1ca1a77265e6.G e lit10 3 := .app (q3 e h0) (q51 e h1) (by decide)
theorem q55 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q17 e h2 h3 h5) (q54 e h0 h1) (by decide)
theorem q56 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op1ca1a77265e6.G e lit10 3 := .app (q6 e h0) (q51 e h1) (by decide)
theorem q57 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q17 e h2 h3 h5) (q56 e h0 h1) (by decide)
theorem q58 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op1ca1a77265e6.G e lit10 3 := .app (q9 e h0) (q51 e h1) (by decide)
theorem q59 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q17 e h2 h3 h5) (q58 e h0 h1) (by decide)
theorem q60 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q53 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q55 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q57 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q59 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q61 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q60 e h0 h1 h2 h4) (by decide)
theorem q62 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h3 : e 3 = 1) : Typed Op1ca1a77265e6.G e lit14 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q28 (push 0 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q39 (push 1 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q50 (push 2 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q61 (push 3 e) rfl h0 h1 h3).weaken _ (by decide)
theorem q63 (e : Env 3) (h2 : e 2 = 1) : Typed Op1ca1a77265e6.G e lit4 1 := .var _ _ (by rw [h2]; decide)
theorem q64 (e : Env 3) (h2 : e 2 = 1) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit8 0 := .app (q63 e h2) (q16 e h3 h5) (by decide)
theorem q65 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q64 e h2 h3 h5) (q19 e h0 h1) (by decide)
theorem q66 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q64 e h2 h3 h5) (q21 e h0 h1) (by decide)
theorem q67 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q64 e h2 h3 h5) (q23 e h0 h1) (by decide)
theorem q68 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q64 e h2 h3 h5) (q25 e h0 h1) (by decide)
theorem q69 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q65 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q66 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q67 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q68 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q70 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q69 e h0 h1 h2 h4) (by decide)
theorem q71 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q64 e h2 h3 h5) (q30 e h0 h1) (by decide)
theorem q72 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q64 e h2 h3 h5) (q32 e h0 h1) (by decide)
theorem q73 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q64 e h2 h3 h5) (q34 e h0 h1) (by decide)
theorem q74 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q64 e h2 h3 h5) (q36 e h0 h1) (by decide)
theorem q75 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q71 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q72 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q73 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q74 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q76 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q75 e h0 h1 h2 h4) (by decide)
theorem q77 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q64 e h2 h3 h5) (q41 e h0 h1) (by decide)
theorem q78 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q64 e h2 h3 h5) (q43 e h0 h1) (by decide)
theorem q79 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q64 e h2 h3 h5) (q45 e h0 h1) (by decide)
theorem q80 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q64 e h2 h3 h5) (q47 e h0 h1) (by decide)
theorem q81 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q77 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q78 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q79 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q80 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q82 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q81 e h0 h1 h2 h4) (by decide)
theorem q83 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q64 e h2 h3 h5) (q52 e h0 h1) (by decide)
theorem q84 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q64 e h2 h3 h5) (q54 e h0 h1) (by decide)
theorem q85 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q64 e h2 h3 h5) (q56 e h0 h1) (by decide)
theorem q86 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q64 e h2 h3 h5) (q58 e h0 h1) (by decide)
theorem q87 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q83 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q84 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q85 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q86 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q88 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q87 e h0 h1 h2 h4) (by decide)
theorem q89 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h3 : e 3 = 1) : Typed Op1ca1a77265e6.G e lit14 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q70 (push 0 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q76 (push 1 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q82 (push 2 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q88 (push 3 e) rfl h0 h1 h3).weaken _ (by decide)
theorem q90 (e : Env 3) (h2 : e 2 = 2) : Typed Op1ca1a77265e6.G e lit4 2 := .var _ _ (by rw [h2]; decide)
theorem q91 (e : Env 3) (h2 : e 2 = 2) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit8 1 := .app (q90 e h2) (q16 e h3 h5) (by decide)
theorem q92 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q91 e h2 h3 h5) (q19 e h0 h1) (by decide)
theorem q93 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q91 e h2 h3 h5) (q21 e h0 h1) (by decide)
theorem q94 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q91 e h2 h3 h5) (q23 e h0 h1) (by decide)
theorem q95 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q91 e h2 h3 h5) (q25 e h0 h1) (by decide)
theorem q96 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q92 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q93 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q94 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q95 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q97 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q96 e h0 h1 h2 h4) (by decide)
theorem q98 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q91 e h2 h3 h5) (q30 e h0 h1) (by decide)
theorem q99 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q91 e h2 h3 h5) (q32 e h0 h1) (by decide)
theorem q100 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q91 e h2 h3 h5) (q34 e h0 h1) (by decide)
theorem q101 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q91 e h2 h3 h5) (q36 e h0 h1) (by decide)
theorem q102 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q98 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q99 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q100 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q101 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q103 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q102 e h0 h1 h2 h4) (by decide)
theorem q104 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q91 e h2 h3 h5) (q41 e h0 h1) (by decide)
theorem q105 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q91 e h2 h3 h5) (q43 e h0 h1) (by decide)
theorem q106 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q91 e h2 h3 h5) (q45 e h0 h1) (by decide)
theorem q107 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q91 e h2 h3 h5) (q47 e h0 h1) (by decide)
theorem q108 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q104 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q105 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q106 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q107 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q109 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 0 := .app (q12 e) (q108 e h0 h1 h2 h4) (by decide)
theorem q110 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 0 := .app (q91 e h2 h3 h5) (q52 e h0 h1) (by decide)
theorem q111 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q91 e h2 h3 h5) (q54 e h0 h1) (by decide)
theorem q112 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q91 e h2 h3 h5) (q56 e h0 h1) (by decide)
theorem q113 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q91 e h2 h3 h5) (q58 e h0 h1) (by decide)
theorem q114 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q110 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q111 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q112 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q113 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q115 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q114 e h0 h1 h2 h4) (by decide)
theorem q116 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h3 : e 3 = 1) : Typed Op1ca1a77265e6.G e lit14 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q97 (push 0 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q103 (push 1 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q109 (push 2 e) rfl h0 h1 h3).weaken _ (by decide)
  · subst a; exact (q115 (push 3 e) rfl h0 h1 h3).weaken _ (by decide)
theorem q117 (e : Env 3) (h2 : e 2 = 3) : Typed Op1ca1a77265e6.G e lit4 3 := .var _ _ (by rw [h2]; decide)
theorem q118 (e : Env 3) (h2 : e 2 = 3) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit8 3 := .app (q117 e h2) (q16 e h3 h5) (by decide)
theorem q119 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q118 e h2 h3 h5) (q19 e h0 h1) (by decide)
theorem q120 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q118 e h2 h3 h5) (q21 e h0 h1) (by decide)
theorem q121 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q118 e h2 h3 h5) (q23 e h0 h1) (by decide)
theorem q122 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q118 e h2 h3 h5) (q25 e h0 h1) (by decide)
theorem q123 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q119 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q120 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q121 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q122 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q124 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q123 e h0 h1 h2 h4) (by decide)
theorem q125 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q118 e h2 h3 h5) (q30 e h0 h1) (by decide)
theorem q126 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q118 e h2 h3 h5) (q32 e h0 h1) (by decide)
theorem q127 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q118 e h2 h3 h5) (q34 e h0 h1) (by decide)
theorem q128 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q118 e h2 h3 h5) (q36 e h0 h1) (by decide)
theorem q129 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q125 (push 0 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q126 (push 1 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q127 (push 2 e) rfl h0 h1 h2 h4).weaken _ (by decide)
  · subst a; exact (q128 (push 3 e) rfl h0 h1 h2 h4).weaken _ (by decide)
theorem q130 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) (h4 : e 4 = 1) : Typed Op1ca1a77265e6.G e lit13 3 := .app (q12 e) (q129 e h0 h1 h2 h4) (by decide)
theorem q131 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q118 e h2 h3 h5) (q41 e h0 h1) (by decide)
theorem q132 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q118 e h2 h3 h5) (q43 e h0 h1) (by decide)
theorem q133 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q118 e h2 h3 h5) (q45 e h0 h1) (by decide)
theorem q134 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) (h3 : e 3 = 0) (h5 : e 5 = 1) : Typed Op1ca1a77265e6.G e lit11 3 := .app (q118 e h2 h3 h5) (q47 e h0 h1) (by decide)
end Blc.Floor45.Probe9624769225114
