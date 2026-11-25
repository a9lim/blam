import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Op4110659a734a

set_option Elab.async false
namespace Blc.Floor45.Probe9692869713550
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def lit0 : Term := .var 0
def lit1 : Term := .var 1
def lit2 : Term := .var 2
def lit3 : Term := .app lit2 lit0
def lit4 : Term := .lam lit2
def lit5 : Term := .app lit3 lit4
def lit6 : Term := .app lit1 lit5
def lit7 : Term := .lam lit6
def lit8 : Term := .lam lit7
def lit9 : Term := .app lit0 lit8
def lit10 : Term := .app lit0 lit9
def lit11 : Term := .lam lit10
def lit12 : Term := .app lit11 lit0
def lit13 : Term := .app lit12 lit4
def lit14 : Term := .app lit1 lit13
def lit15 : Term := .lam lit14
def lit16 : Term := .lam lit15
def lit17 : Term := .app lit11 lit16
def lit18 : Term := .app lit11 lit17
def lit19 : Term := .app lit18 lit1
def lit20 : Term := .lam lit1
def lit21 : Term := .lam lit20
def lit22 : Term := .app lit0 lit21
def lit23 : Term := .lam lit0
def lit24 : Term := .lam lit23
def lit25 : Term := .app lit0 lit24
def lit26 : Term := .var 4
def lit27 : Term := .app lit22 lit26
def lit28 : Term := .lam lit27
def lit29 : Term := .app lit25 lit28
def lit30 : Term := .lam lit29
def lit31 : Term := .app lit22 lit30
def lit32 : Term := .lam lit31
def lit33 : Term := .app lit22 lit32
def lit34 : Term := .lam lit33
def lit35 : Term := .app lit19 lit34
theorem q0 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit0 0 := .var _ _ (by rw [h0]; decide)
theorem q1 (e : Env 3) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit1 0 := .var _ _ (by rw [h1]; decide)
theorem q2 (e : Env 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit2 0 := .var _ _ (by rw [h2]; decide)
theorem q3 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit3 0 := .app (q2 e h2) (q0 e h0) (by decide)
theorem q4 (e : Env 3) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit4 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q2 (push 0 e) h1).weaken _ (by decide)
  · subst a; exact (q2 (push 1 e) h1).weaken _ (by decide)
  · subst a; exact (q2 (push 2 e) h1).weaken _ (by decide)
  · subst a; exact (q2 (push 3 e) h1).weaken _ (by decide)
theorem q5 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 0 := .app (q3 e h0 h2) (q4 e h1) (by decide)
theorem q6 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 0 := .app (q1 e h1) (q5 e h0 h1 h2) (by decide)
theorem q7 (e : Env 3) (h0 : e 0 = 1) : Typed Op4110659a734a.G e lit0 1 := .var _ _ (by rw [h0]; decide)
theorem q8 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit3 2 := .app (q2 e h2) (q7 e h0) (by decide)
theorem q9 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 3 := .app (q8 e h0 h2) (q4 e h1) (by decide)
theorem q10 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 2 := .app (q1 e h1) (q9 e h0 h1 h2) (by decide)
theorem q11 (e : Env 3) (h0 : e 0 = 2) : Typed Op4110659a734a.G e lit0 2 := .var _ _ (by rw [h0]; decide)
theorem q12 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit3 2 := .app (q2 e h2) (q11 e h0) (by decide)
theorem q13 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 3 := .app (q12 e h0 h2) (q4 e h1) (by decide)
theorem q14 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 2 := .app (q1 e h1) (q13 e h0 h1 h2) (by decide)
theorem q15 (e : Env 3) (h0 : e 0 = 3) : Typed Op4110659a734a.G e lit0 3 := .var _ _ (by rw [h0]; decide)
theorem q16 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit3 2 := .app (q2 e h2) (q15 e h0) (by decide)
theorem q17 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 3 := .app (q16 e h0 h2) (q4 e h1) (by decide)
theorem q18 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 2 := .app (q1 e h1) (q17 e h0 h1 h2) (by decide)
theorem q19 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit7 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q6 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q10 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q14 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q18 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q20 (e : Env 3) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit1 1 := .var _ _ (by rw [h1]; decide)
theorem q21 (e : Env 3) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit2 1 := .var _ _ (by rw [h2]; decide)
theorem q22 (e : Env 3) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit4 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q21 (push 0 e) h1).weaken _ (by decide)
  · subst a; exact (q21 (push 1 e) h1).weaken _ (by decide)
  · subst a; exact (q21 (push 2 e) h1).weaken _ (by decide)
  · subst a; exact (q21 (push 3 e) h1).weaken _ (by decide)
theorem q23 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 2 := .app (q3 e h0 h2) (q22 e h1) (by decide)
theorem q24 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q23 e h0 h1 h2) (by decide)
theorem q25 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 3 := .app (q8 e h0 h2) (q22 e h1) (by decide)
theorem q26 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q25 e h0 h1 h2) (by decide)
theorem q27 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 3 := .app (q12 e h0 h2) (q22 e h1) (by decide)
theorem q28 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q27 e h0 h1 h2) (by decide)
theorem q29 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 3 := .app (q16 e h0 h2) (q22 e h1) (by decide)
theorem q30 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q29 e h0 h1 h2) (by decide)
theorem q31 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q24 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q26 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q28 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q30 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q32 (e : Env 3) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit1 2 := .var _ _ (by rw [h1]; decide)
theorem q33 (e : Env 3) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit2 2 := .var _ _ (by rw [h2]; decide)
theorem q34 (e : Env 3) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit4 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q33 (push 0 e) h1).weaken _ (by decide)
  · subst a; exact (q33 (push 1 e) h1).weaken _ (by decide)
  · subst a; exact (q33 (push 2 e) h1).weaken _ (by decide)
  · subst a; exact (q33 (push 3 e) h1).weaken _ (by decide)
theorem q35 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 2 := .app (q3 e h0 h2) (q34 e h1) (by decide)
theorem q36 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q32 e h1) (q35 e h0 h1 h2) (by decide)
theorem q37 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 3 := .app (q8 e h0 h2) (q34 e h1) (by decide)
theorem q38 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q32 e h1) (q37 e h0 h1 h2) (by decide)
theorem q39 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 3 := .app (q12 e h0 h2) (q34 e h1) (by decide)
theorem q40 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q32 e h1) (q39 e h0 h1 h2) (by decide)
theorem q41 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 3 := .app (q16 e h0 h2) (q34 e h1) (by decide)
theorem q42 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q32 e h1) (q41 e h0 h1 h2) (by decide)
theorem q43 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q36 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q38 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q40 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q42 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q44 (e : Env 3) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit1 3 := .var _ _ (by rw [h1]; decide)
theorem q45 (e : Env 3) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit2 3 := .var _ _ (by rw [h2]; decide)
theorem q46 (e : Env 3) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit4 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q45 (push 0 e) h1).weaken _ (by decide)
  · subst a; exact (q45 (push 1 e) h1).weaken _ (by decide)
  · subst a; exact (q45 (push 2 e) h1).weaken _ (by decide)
  · subst a; exact (q45 (push 3 e) h1).weaken _ (by decide)
theorem q47 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 2 := .app (q3 e h0 h2) (q46 e h1) (by decide)
theorem q48 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q44 e h1) (q47 e h0 h1 h2) (by decide)
theorem q49 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 3 := .app (q8 e h0 h2) (q46 e h1) (by decide)
theorem q50 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q44 e h1) (q49 e h0 h1 h2) (by decide)
theorem q51 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 3 := .app (q12 e h0 h2) (q46 e h1) (by decide)
theorem q52 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q44 e h1) (q51 e h0 h1 h2) (by decide)
theorem q53 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 3 := .app (q16 e h0 h2) (q46 e h1) (by decide)
theorem q54 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q44 e h1) (q53 e h0 h1 h2) (by decide)
theorem q55 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q48 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q50 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q52 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q54 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q56 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit8 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q19 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q31 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q43 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q55 (push 3 e) rfl h0).weaken _ (by decide)
theorem q57 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit9 0 := .app (q0 e h0) (q56 e h0) (by decide)
theorem q58 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit10 0 := .app (q0 e h0) (q57 e h0) (by decide)
theorem q59 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit3 0 := .app (q21 e h2) (q0 e h0) (by decide)
theorem q60 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 0 := .app (q59 e h0 h2) (q4 e h1) (by decide)
theorem q61 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 0 := .app (q1 e h1) (q60 e h0 h1 h2) (by decide)
theorem q62 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit3 3 := .app (q21 e h2) (q7 e h0) (by decide)
theorem q63 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 3 := .app (q62 e h0 h2) (q4 e h1) (by decide)
theorem q64 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 2 := .app (q1 e h1) (q63 e h0 h1 h2) (by decide)
theorem q65 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit3 3 := .app (q21 e h2) (q11 e h0) (by decide)
theorem q66 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 3 := .app (q65 e h0 h2) (q4 e h1) (by decide)
theorem q67 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 2 := .app (q1 e h1) (q66 e h0 h1 h2) (by decide)
theorem q68 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit3 3 := .app (q21 e h2) (q15 e h0) (by decide)
theorem q69 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 3 := .app (q68 e h0 h2) (q4 e h1) (by decide)
theorem q70 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 2 := .app (q1 e h1) (q69 e h0 h1 h2) (by decide)
theorem q71 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit7 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q61 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q64 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q67 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q70 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q72 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 2 := .app (q59 e h0 h2) (q22 e h1) (by decide)
theorem q73 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q72 e h0 h1 h2) (by decide)
theorem q74 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 3 := .app (q62 e h0 h2) (q22 e h1) (by decide)
theorem q75 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q74 e h0 h1 h2) (by decide)
theorem q76 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 3 := .app (q65 e h0 h2) (q22 e h1) (by decide)
theorem q77 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q76 e h0 h1 h2) (by decide)
theorem q78 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 3 := .app (q68 e h0 h2) (q22 e h1) (by decide)
theorem q79 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q78 e h0 h1 h2) (by decide)
theorem q80 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q73 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q75 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q77 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q79 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q81 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 2 := .app (q59 e h0 h2) (q34 e h1) (by decide)
theorem q82 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q32 e h1) (q81 e h0 h1 h2) (by decide)
theorem q83 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 3 := .app (q62 e h0 h2) (q34 e h1) (by decide)
theorem q84 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q32 e h1) (q83 e h0 h1 h2) (by decide)
theorem q85 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 3 := .app (q65 e h0 h2) (q34 e h1) (by decide)
theorem q86 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q32 e h1) (q85 e h0 h1 h2) (by decide)
theorem q87 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 3 := .app (q68 e h0 h2) (q34 e h1) (by decide)
theorem q88 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q32 e h1) (q87 e h0 h1 h2) (by decide)
theorem q89 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q82 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q84 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q86 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q88 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q90 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 2 := .app (q59 e h0 h2) (q46 e h1) (by decide)
theorem q91 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q44 e h1) (q90 e h0 h1 h2) (by decide)
theorem q92 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 3 := .app (q62 e h0 h2) (q46 e h1) (by decide)
theorem q93 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q44 e h1) (q92 e h0 h1 h2) (by decide)
theorem q94 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 3 := .app (q65 e h0 h2) (q46 e h1) (by decide)
theorem q95 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q44 e h1) (q94 e h0 h1 h2) (by decide)
theorem q96 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 3 := .app (q68 e h0 h2) (q46 e h1) (by decide)
theorem q97 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q44 e h1) (q96 e h0 h1 h2) (by decide)
theorem q98 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q91 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q93 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q95 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q97 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q99 (e : Env 3) (h0 : e 0 = 1) : Typed Op4110659a734a.G e lit8 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q71 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q80 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q89 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q98 (push 3 e) rfl h0).weaken _ (by decide)
theorem q100 (e : Env 3) (h0 : e 0 = 1) : Typed Op4110659a734a.G e lit9 0 := .app (q7 e h0) (q99 e h0) (by decide)
theorem q101 (e : Env 3) (h0 : e 0 = 1) : Typed Op4110659a734a.G e lit10 0 := .app (q7 e h0) (q100 e h0) (by decide)
theorem q102 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit3 3 := .app (q33 e h2) (q0 e h0) (by decide)
theorem q103 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q102 e h0 h2) (q4 e h1) (by decide)
theorem q104 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 2 := .app (q1 e h1) (q103 e h0 h1 h2) (by decide)
theorem q105 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit3 3 := .app (q33 e h2) (q7 e h0) (by decide)
theorem q106 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q105 e h0 h2) (q4 e h1) (by decide)
theorem q107 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 2 := .app (q1 e h1) (q106 e h0 h1 h2) (by decide)
theorem q108 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit3 3 := .app (q33 e h2) (q11 e h0) (by decide)
theorem q109 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q108 e h0 h2) (q4 e h1) (by decide)
theorem q110 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 2 := .app (q1 e h1) (q109 e h0 h1 h2) (by decide)
theorem q111 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit3 3 := .app (q33 e h2) (q15 e h0) (by decide)
theorem q112 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q111 e h0 h2) (q4 e h1) (by decide)
theorem q113 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 2 := .app (q1 e h1) (q112 e h0 h1 h2) (by decide)
theorem q114 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q104 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q107 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q110 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q113 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q115 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q102 e h0 h2) (q22 e h1) (by decide)
theorem q116 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q115 e h0 h1 h2) (by decide)
theorem q117 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q105 e h0 h2) (q22 e h1) (by decide)
theorem q118 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q117 e h0 h1 h2) (by decide)
theorem q119 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q108 e h0 h2) (q22 e h1) (by decide)
theorem q120 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q119 e h0 h1 h2) (by decide)
theorem q121 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q111 e h0 h2) (q22 e h1) (by decide)
theorem q122 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q121 e h0 h1 h2) (by decide)
theorem q123 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q116 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q118 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q120 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q122 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q124 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q102 e h0 h2) (q34 e h1) (by decide)
theorem q125 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q32 e h1) (q124 e h0 h1 h2) (by decide)
theorem q126 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q105 e h0 h2) (q34 e h1) (by decide)
theorem q127 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q32 e h1) (q126 e h0 h1 h2) (by decide)
theorem q128 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q108 e h0 h2) (q34 e h1) (by decide)
theorem q129 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q32 e h1) (q128 e h0 h1 h2) (by decide)
theorem q130 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q111 e h0 h2) (q34 e h1) (by decide)
theorem q131 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q32 e h1) (q130 e h0 h1 h2) (by decide)
theorem q132 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q125 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q127 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q129 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q131 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q133 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q102 e h0 h2) (q46 e h1) (by decide)
theorem q134 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q44 e h1) (q133 e h0 h1 h2) (by decide)
theorem q135 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q105 e h0 h2) (q46 e h1) (by decide)
theorem q136 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q44 e h1) (q135 e h0 h1 h2) (by decide)
theorem q137 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q108 e h0 h2) (q46 e h1) (by decide)
theorem q138 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q44 e h1) (q137 e h0 h1 h2) (by decide)
theorem q139 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q111 e h0 h2) (q46 e h1) (by decide)
theorem q140 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q44 e h1) (q139 e h0 h1 h2) (by decide)
theorem q141 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q134 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q136 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q138 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q140 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q142 (e : Env 3) (h0 : e 0 = 2) : Typed Op4110659a734a.G e lit8 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q114 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q123 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q132 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q141 (push 3 e) rfl h0).weaken _ (by decide)
theorem q143 (e : Env 3) (h0 : e 0 = 2) : Typed Op4110659a734a.G e lit9 3 := .app (q11 e h0) (q142 e h0) (by decide)
theorem q144 (e : Env 3) (h0 : e 0 = 2) : Typed Op4110659a734a.G e lit10 3 := .app (q11 e h0) (q143 e h0) (by decide)
theorem q145 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit3 3 := .app (q45 e h2) (q0 e h0) (by decide)
theorem q146 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q145 e h0 h2) (q4 e h1) (by decide)
theorem q147 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 2 := .app (q1 e h1) (q146 e h0 h1 h2) (by decide)
theorem q148 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit3 3 := .app (q45 e h2) (q7 e h0) (by decide)
theorem q149 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q148 e h0 h2) (q4 e h1) (by decide)
theorem q150 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 2 := .app (q1 e h1) (q149 e h0 h1 h2) (by decide)
theorem q151 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit3 3 := .app (q45 e h2) (q11 e h0) (by decide)
theorem q152 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q151 e h0 h2) (q4 e h1) (by decide)
theorem q153 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 2 := .app (q1 e h1) (q152 e h0 h1 h2) (by decide)
end Blc.Floor45.Probe9692869713550
