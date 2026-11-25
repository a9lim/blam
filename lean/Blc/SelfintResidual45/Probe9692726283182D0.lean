import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Ope9b1a410bea0

set_option Elab.async false
namespace Blc.Floor45.Probe9692726283182
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def lit0 : Term := .var 0
def lit1 : Term := .var 1
def lit2 : Term := .app lit1 lit0
def lit3 : Term := .var 2
def lit4 : Term := .app lit2 lit3
def lit5 : Term := .app lit1 lit4
def lit6 : Term := .lam lit5
def lit7 : Term := .lam lit6
def lit8 : Term := .app lit1 lit7
def lit9 : Term := .lam lit8
def lit10 : Term := .app lit0 lit9
def lit11 : Term := .lam lit10
def lit12 : Term := .app lit11 lit7
def lit13 : Term := .lam lit12
def lit14 : Term := .app lit13 lit7
def lit15 : Term := .lam lit14
def lit16 : Term := .app lit2 lit15
def lit17 : Term := .app lit1 lit16
def lit18 : Term := .lam lit17
def lit19 : Term := .lam lit18
def lit20 : Term := .app lit11 lit19
def lit21 : Term := .app lit20 lit1
def lit22 : Term := .lam lit1
def lit23 : Term := .lam lit22
def lit24 : Term := .app lit0 lit23
def lit25 : Term := .lam lit0
def lit26 : Term := .lam lit25
def lit27 : Term := .app lit0 lit26
def lit28 : Term := .var 4
def lit29 : Term := .app lit24 lit28
def lit30 : Term := .lam lit29
def lit31 : Term := .app lit27 lit30
def lit32 : Term := .lam lit31
def lit33 : Term := .app lit24 lit32
def lit34 : Term := .lam lit33
def lit35 : Term := .app lit24 lit34
def lit36 : Term := .lam lit35
def lit37 : Term := .app lit21 lit36
theorem q0 (e : Env 5) (h0 : e 0 = 0) : Typed Ope9b1a410bea0.G e lit0 0 := .var _ _ (by rw [h0]; decide)
theorem q1 (e : Env 5) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit1 0 := .var _ _ (by rw [h1]; decide)
theorem q2 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit2 0 := .app (q1 e h1) (q0 e h0) (by decide)
theorem q3 (e : Env 5) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit3 0 := .var _ _ (by rw [h2]; decide)
theorem q4 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 0 := .app (q2 e h0 h1) (q3 e h2) (by decide)
theorem q5 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 0 := .app (q1 e h1) (q4 e h0 h1 h2) (by decide)
theorem q6 (e : Env 5) (h0 : e 0 = 1) : Typed Ope9b1a410bea0.G e lit0 1 := .var _ _ (by rw [h0]; decide)
theorem q7 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit2 1 := .app (q1 e h1) (q6 e h0) (by decide)
theorem q8 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q7 e h0 h1) (q3 e h2) (by decide)
theorem q9 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q8 e h0 h1 h2) (by decide)
theorem q10 (e : Env 5) (h0 : e 0 = 2) : Typed Ope9b1a410bea0.G e lit0 2 := .var _ _ (by rw [h0]; decide)
theorem q11 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit2 1 := .app (q1 e h1) (q10 e h0) (by decide)
theorem q12 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q11 e h0 h1) (q3 e h2) (by decide)
theorem q13 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q12 e h0 h1 h2) (by decide)
theorem q14 (e : Env 5) (h0 : e 0 = 3) : Typed Ope9b1a410bea0.G e lit0 3 := .var _ _ (by rw [h0]; decide)
theorem q15 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit2 1 := .app (q1 e h1) (q14 e h0) (by decide)
theorem q16 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q15 e h0 h1) (q3 e h2) (by decide)
theorem q17 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q16 e h0 h1 h2) (by decide)
theorem q18 (e : Env 5) (h0 : e 0 = 4) : Typed Ope9b1a410bea0.G e lit0 4 := .var _ _ (by rw [h0]; decide)
theorem q19 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit2 1 := .app (q1 e h1) (q18 e h0) (by decide)
theorem q20 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q19 e h0 h1) (q3 e h2) (by decide)
theorem q21 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q20 e h0 h1 h2) (by decide)
theorem q22 (e : Env 5) (h0 : e 0 = 5) : Typed Ope9b1a410bea0.G e lit0 5 := .var _ _ (by rw [h0]; decide)
theorem q23 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit2 2 := .app (q1 e h1) (q22 e h0) (by decide)
theorem q24 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q23 e h0 h1) (q3 e h2) (by decide)
theorem q25 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q24 e h0 h1 h2) (by decide)
theorem q26 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit6 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q5 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q9 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q13 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q17 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q21 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q25 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q27 (e : Env 5) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit1 1 := .var _ _ (by rw [h1]; decide)
theorem q28 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit2 1 := .app (q27 e h1) (q0 e h0) (by decide)
theorem q29 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q28 e h0 h1) (q3 e h2) (by decide)
theorem q30 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q27 e h1) (q29 e h0 h1 h2) (by decide)
theorem q31 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit2 1 := .app (q27 e h1) (q6 e h0) (by decide)
theorem q32 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q31 e h0 h1) (q3 e h2) (by decide)
theorem q33 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q27 e h1) (q32 e h0 h1 h2) (by decide)
theorem q34 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit2 4 := .app (q27 e h1) (q10 e h0) (by decide)
theorem q35 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q34 e h0 h1) (q3 e h2) (by decide)
theorem q36 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q35 e h0 h1 h2) (by decide)
theorem q37 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit2 4 := .app (q27 e h1) (q14 e h0) (by decide)
theorem q38 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q37 e h0 h1) (q3 e h2) (by decide)
theorem q39 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q38 e h0 h1 h2) (by decide)
theorem q40 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit2 4 := .app (q27 e h1) (q18 e h0) (by decide)
theorem q41 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q40 e h0 h1) (q3 e h2) (by decide)
theorem q42 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q41 e h0 h1 h2) (by decide)
theorem q43 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit2 4 := .app (q27 e h1) (q22 e h0) (by decide)
theorem q44 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q43 e h0 h1) (q3 e h2) (by decide)
theorem q45 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q44 e h0 h1 h2) (by decide)
theorem q46 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit6 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q30 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q33 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q36 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q39 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q42 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q45 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q47 (e : Env 5) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit1 2 := .var _ _ (by rw [h1]; decide)
theorem q48 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit2 1 := .app (q47 e h1) (q0 e h0) (by decide)
theorem q49 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q48 e h0 h1) (q3 e h2) (by decide)
theorem q50 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q47 e h1) (q49 e h0 h1 h2) (by decide)
theorem q51 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit2 1 := .app (q47 e h1) (q6 e h0) (by decide)
theorem q52 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q51 e h0 h1) (q3 e h2) (by decide)
theorem q53 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q47 e h1) (q52 e h0 h1 h2) (by decide)
theorem q54 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit2 4 := .app (q47 e h1) (q10 e h0) (by decide)
theorem q55 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q54 e h0 h1) (q3 e h2) (by decide)
theorem q56 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q55 e h0 h1 h2) (by decide)
theorem q57 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit2 4 := .app (q47 e h1) (q14 e h0) (by decide)
theorem q58 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q57 e h0 h1) (q3 e h2) (by decide)
theorem q59 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q58 e h0 h1 h2) (by decide)
theorem q60 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit2 5 := .app (q47 e h1) (q18 e h0) (by decide)
theorem q61 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q60 e h0 h1) (q3 e h2) (by decide)
theorem q62 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q61 e h0 h1 h2) (by decide)
theorem q63 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 2) : Typed Ope9b1a410bea0.G e lit2 5 := .app (q47 e h1) (q22 e h0) (by decide)
theorem q64 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q63 e h0 h1) (q3 e h2) (by decide)
theorem q65 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q64 e h0 h1 h2) (by decide)
theorem q66 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q50 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q53 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q56 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q59 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q62 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q65 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q67 (e : Env 5) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit1 3 := .var _ _ (by rw [h1]; decide)
theorem q68 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit2 4 := .app (q67 e h1) (q0 e h0) (by decide)
theorem q69 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q68 e h0 h1) (q3 e h2) (by decide)
theorem q70 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q69 e h0 h1 h2) (by decide)
theorem q71 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit2 4 := .app (q67 e h1) (q6 e h0) (by decide)
theorem q72 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q71 e h0 h1) (q3 e h2) (by decide)
theorem q73 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q72 e h0 h1 h2) (by decide)
theorem q74 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit2 4 := .app (q67 e h1) (q10 e h0) (by decide)
theorem q75 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q74 e h0 h1) (q3 e h2) (by decide)
theorem q76 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q75 e h0 h1 h2) (by decide)
theorem q77 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit2 4 := .app (q67 e h1) (q14 e h0) (by decide)
theorem q78 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q77 e h0 h1) (q3 e h2) (by decide)
theorem q79 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q78 e h0 h1 h2) (by decide)
theorem q80 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit2 5 := .app (q67 e h1) (q18 e h0) (by decide)
theorem q81 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q80 e h0 h1) (q3 e h2) (by decide)
theorem q82 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q81 e h0 h1 h2) (by decide)
theorem q83 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 3) : Typed Ope9b1a410bea0.G e lit2 5 := .app (q67 e h1) (q22 e h0) (by decide)
theorem q84 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q83 e h0 h1) (q3 e h2) (by decide)
theorem q85 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q67 e h1) (q84 e h0 h1 h2) (by decide)
theorem q86 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q70 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q73 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q76 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q79 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q82 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q85 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q87 (e : Env 5) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit1 4 := .var _ _ (by rw [h1]; decide)
theorem q88 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit2 5 := .app (q87 e h1) (q0 e h0) (by decide)
theorem q89 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q88 e h0 h1) (q3 e h2) (by decide)
theorem q90 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q89 e h0 h1 h2) (by decide)
theorem q91 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit2 5 := .app (q87 e h1) (q6 e h0) (by decide)
theorem q92 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q91 e h0 h1) (q3 e h2) (by decide)
theorem q93 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q92 e h0 h1 h2) (by decide)
theorem q94 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit2 5 := .app (q87 e h1) (q10 e h0) (by decide)
theorem q95 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q94 e h0 h1) (q3 e h2) (by decide)
theorem q96 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q95 e h0 h1 h2) (by decide)
theorem q97 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit2 5 := .app (q87 e h1) (q14 e h0) (by decide)
theorem q98 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q97 e h0 h1) (q3 e h2) (by decide)
theorem q99 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q98 e h0 h1 h2) (by decide)
theorem q100 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit2 5 := .app (q87 e h1) (q18 e h0) (by decide)
theorem q101 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q100 e h0 h1) (q3 e h2) (by decide)
theorem q102 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q101 e h0 h1 h2) (by decide)
theorem q103 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 4) : Typed Ope9b1a410bea0.G e lit2 5 := .app (q87 e h1) (q22 e h0) (by decide)
theorem q104 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q103 e h0 h1) (q3 e h2) (by decide)
theorem q105 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 4) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q87 e h1) (q104 e h0 h1 h2) (by decide)
theorem q106 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q90 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q93 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q96 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q99 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q102 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q105 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q107 (e : Env 5) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit1 5 := .var _ _ (by rw [h1]; decide)
theorem q108 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit2 5 := .app (q107 e h1) (q0 e h0) (by decide)
theorem q109 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 5) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q108 e h0 h1) (q3 e h2) (by decide)
theorem q110 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 5) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q109 e h0 h1 h2) (by decide)
theorem q111 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit2 5 := .app (q107 e h1) (q6 e h0) (by decide)
theorem q112 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 5) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q111 e h0 h1) (q3 e h2) (by decide)
theorem q113 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 5) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q112 e h0 h1 h2) (by decide)
theorem q114 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit2 5 := .app (q107 e h1) (q10 e h0) (by decide)
theorem q115 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 5) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q114 e h0 h1) (q3 e h2) (by decide)
theorem q116 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 5) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q115 e h0 h1 h2) (by decide)
theorem q117 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit2 5 := .app (q107 e h1) (q14 e h0) (by decide)
theorem q118 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 5) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q117 e h0 h1) (q3 e h2) (by decide)
theorem q119 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 5) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q118 e h0 h1 h2) (by decide)
theorem q120 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit2 5 := .app (q107 e h1) (q18 e h0) (by decide)
theorem q121 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 5) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q120 e h0 h1) (q3 e h2) (by decide)
theorem q122 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 5) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q121 e h0 h1 h2) (by decide)
theorem q123 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 5) : Typed Ope9b1a410bea0.G e lit2 5 := .app (q107 e h1) (q22 e h0) (by decide)
theorem q124 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 5) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q123 e h0 h1) (q3 e h2) (by decide)
theorem q125 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 5) (h2 : e 2 = 0) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q107 e h1) (q124 e h0 h1 h2) (by decide)
theorem q126 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q110 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q113 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q116 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q119 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q122 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q125 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q127 (e : Env 5) (h0 : e 0 = 0) : Typed Ope9b1a410bea0.G e lit7 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q26 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q46 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q66 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q86 (push 3 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q106 (push 4 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q126 (push 5 e) rfl h0).weaken _ (by decide)
theorem q128 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Ope9b1a410bea0.G e lit8 1 := .app (q1 e h1) (q127 e h0) (by decide)
theorem q129 (e : Env 5) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit3 1 := .var _ _ (by rw [h2]; decide)
theorem q130 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q2 e h0 h1) (q129 e h2) (by decide)
theorem q131 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q130 e h0 h1 h2) (by decide)
theorem q132 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q7 e h0 h1) (q129 e h2) (by decide)
theorem q133 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q132 e h0 h1 h2) (by decide)
theorem q134 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q11 e h0 h1) (q129 e h2) (by decide)
theorem q135 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q134 e h0 h1 h2) (by decide)
theorem q136 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q15 e h0 h1) (q129 e h2) (by decide)
theorem q137 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q136 e h0 h1 h2) (by decide)
theorem q138 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q19 e h0 h1) (q129 e h2) (by decide)
theorem q139 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q138 e h0 h1 h2) (by decide)
theorem q140 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q23 e h0 h1) (q129 e h2) (by decide)
theorem q141 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q1 e h1) (q140 e h0 h1 h2) (by decide)
theorem q142 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit6 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q131 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q133 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q135 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q137 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q139 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q141 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q143 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q28 e h0 h1) (q129 e h2) (by decide)
theorem q144 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q27 e h1) (q143 e h0 h1 h2) (by decide)
theorem q145 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q31 e h0 h1) (q129 e h2) (by decide)
theorem q146 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q27 e h1) (q145 e h0 h1 h2) (by decide)
theorem q147 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q34 e h0 h1) (q129 e h2) (by decide)
theorem q148 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q147 e h0 h1 h2) (by decide)
theorem q149 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q37 e h0 h1) (q129 e h2) (by decide)
theorem q150 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q149 e h0 h1 h2) (by decide)
theorem q151 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q40 e h0 h1) (q129 e h2) (by decide)
theorem q152 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q151 e h0 h1 h2) (by decide)
theorem q153 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q43 e h0 h1) (q129 e h2) (by decide)
theorem q154 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 4 := .app (q27 e h1) (q153 e h0 h1 h2) (by decide)
theorem q155 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit6 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q144 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q146 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q148 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q150 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q152 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q154 (push 5 e) rfl h0 h1).weaken _ (by decide)
theorem q156 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q48 e h0 h1) (q129 e h2) (by decide)
theorem q157 (e : Env 5) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q47 e h1) (q156 e h0 h1 h2) (by decide)
theorem q158 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 1 := .app (q51 e h0 h1) (q129 e h2) (by decide)
theorem q159 (e : Env 5) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 1 := .app (q47 e h1) (q158 e h0 h1 h2) (by decide)
theorem q160 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q54 e h0 h1) (q129 e h2) (by decide)
theorem q161 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q160 e h0 h1 h2) (by decide)
theorem q162 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q57 e h0 h1) (q129 e h2) (by decide)
theorem q163 (e : Env 5) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q162 e h0 h1 h2) (by decide)
theorem q164 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q60 e h0 h1) (q129 e h2) (by decide)
theorem q165 (e : Env 5) (h0 : e 0 = 4) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q164 e h0 h1 h2) (by decide)
theorem q166 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit4 5 := .app (q63 e h0 h1) (q129 e h2) (by decide)
theorem q167 (e : Env 5) (h0 : e 0 = 5) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Ope9b1a410bea0.G e lit5 5 := .app (q47 e h1) (q166 e h0 h1 h2) (by decide)
theorem q168 (e : Env 5) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Ope9b1a410bea0.G e lit6 4 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5 := (by decide : ∀ a : Fin 6, a=0 ∨ a=1 ∨ a=2 ∨ a=3 ∨ a=4 ∨ a=5) a
  rcases hcases with el | el | el | el | el | el
  · subst a; exact (q157 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q159 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q161 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q163 (push 3 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q165 (push 4 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q167 (push 5 e) rfl h0 h1).weaken _ (by decide)
end Blc.Floor45.Probe9692726283182
