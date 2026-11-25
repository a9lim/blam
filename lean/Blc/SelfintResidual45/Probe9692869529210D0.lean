import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Op4110659a734a

set_option Elab.async false
namespace Blc.Floor45.Probe9692869529210
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def lit0 : Term := .var 0
def lit1 : Term := .var 1
def lit2 : Term := .var 2
def lit3 : Term := .lam lit2
def lit4 : Term := .app lit1 lit3
def lit5 : Term := .app lit2 lit0
def lit6 : Term := .app lit4 lit5
def lit7 : Term := .lam lit6
def lit8 : Term := .lam lit7
def lit9 : Term := .app lit0 lit8
def lit10 : Term := .app lit0 lit9
def lit11 : Term := .lam lit10
def lit12 : Term := .app lit11 lit0
def lit13 : Term := .app lit4 lit12
def lit14 : Term := .lam lit13
def lit15 : Term := .lam lit14
def lit16 : Term := .app lit11 lit15
def lit17 : Term := .app lit11 lit16
def lit18 : Term := .app lit17 lit1
def lit19 : Term := .lam lit1
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
theorem q0 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit0 0 := .var _ _ (by rw [h0]; decide)
theorem q1 (e : Env 3) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit1 0 := .var _ _ (by rw [h1]; decide)
theorem q2 (e : Env 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit2 0 := .var _ _ (by rw [h2]; decide)
theorem q3 (e : Env 3) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit3 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q2 (push 0 e) h1).weaken _ (by decide)
  · subst a; exact (q2 (push 1 e) h1).weaken _ (by decide)
  · subst a; exact (q2 (push 2 e) h1).weaken _ (by decide)
  · subst a; exact (q2 (push 3 e) h1).weaken _ (by decide)
theorem q4 (e : Env 3) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit4 0 := .app (q1 e h1) (q3 e h1) (by decide)
theorem q5 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 0 := .app (q2 e h2) (q0 e h0) (by decide)
theorem q6 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 0 := .app (q4 e h1) (q5 e h0 h2) (by decide)
theorem q7 (e : Env 3) (h0 : e 0 = 1) : Typed Op4110659a734a.G e lit0 1 := .var _ _ (by rw [h0]; decide)
theorem q8 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 2 := .app (q2 e h2) (q7 e h0) (by decide)
theorem q9 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 2 := .app (q4 e h1) (q8 e h0 h2) (by decide)
theorem q10 (e : Env 3) (h0 : e 0 = 2) : Typed Op4110659a734a.G e lit0 2 := .var _ _ (by rw [h0]; decide)
theorem q11 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 2 := .app (q2 e h2) (q10 e h0) (by decide)
theorem q12 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 2 := .app (q4 e h1) (q11 e h0 h2) (by decide)
theorem q13 (e : Env 3) (h0 : e 0 = 3) : Typed Op4110659a734a.G e lit0 3 := .var _ _ (by rw [h0]; decide)
theorem q14 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit5 2 := .app (q2 e h2) (q13 e h0) (by decide)
theorem q15 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 2 := .app (q4 e h1) (q14 e h0 h2) (by decide)
theorem q16 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit7 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q6 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q9 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q12 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q15 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q17 (e : Env 3) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit1 1 := .var _ _ (by rw [h1]; decide)
theorem q18 (e : Env 3) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit2 1 := .var _ _ (by rw [h2]; decide)
theorem q19 (e : Env 3) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit3 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q18 (push 0 e) h1).weaken _ (by decide)
  · subst a; exact (q18 (push 1 e) h1).weaken _ (by decide)
  · subst a; exact (q18 (push 2 e) h1).weaken _ (by decide)
  · subst a; exact (q18 (push 3 e) h1).weaken _ (by decide)
theorem q20 (e : Env 3) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit4 3 := .app (q17 e h1) (q19 e h1) (by decide)
theorem q21 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q5 e h0 h2) (by decide)
theorem q22 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q8 e h0 h2) (by decide)
theorem q23 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q11 e h0 h2) (by decide)
theorem q24 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q14 e h0 h2) (by decide)
theorem q25 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q21 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q22 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q23 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q24 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q26 (e : Env 3) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit1 2 := .var _ _ (by rw [h1]; decide)
theorem q27 (e : Env 3) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit2 2 := .var _ _ (by rw [h2]; decide)
theorem q28 (e : Env 3) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit3 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q27 (push 0 e) h1).weaken _ (by decide)
  · subst a; exact (q27 (push 1 e) h1).weaken _ (by decide)
  · subst a; exact (q27 (push 2 e) h1).weaken _ (by decide)
  · subst a; exact (q27 (push 3 e) h1).weaken _ (by decide)
theorem q29 (e : Env 3) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit4 3 := .app (q26 e h1) (q28 e h1) (by decide)
theorem q30 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q29 e h1) (q5 e h0 h2) (by decide)
theorem q31 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q29 e h1) (q8 e h0 h2) (by decide)
theorem q32 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q29 e h1) (q11 e h0 h2) (by decide)
theorem q33 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q29 e h1) (q14 e h0 h2) (by decide)
theorem q34 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q30 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q31 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q32 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q33 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q35 (e : Env 3) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit1 3 := .var _ _ (by rw [h1]; decide)
theorem q36 (e : Env 3) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit2 3 := .var _ _ (by rw [h2]; decide)
theorem q37 (e : Env 3) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit3 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q36 (push 0 e) h1).weaken _ (by decide)
  · subst a; exact (q36 (push 1 e) h1).weaken _ (by decide)
  · subst a; exact (q36 (push 2 e) h1).weaken _ (by decide)
  · subst a; exact (q36 (push 3 e) h1).weaken _ (by decide)
theorem q38 (e : Env 3) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit4 3 := .app (q35 e h1) (q37 e h1) (by decide)
theorem q39 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q38 e h1) (q5 e h0 h2) (by decide)
theorem q40 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q38 e h1) (q8 e h0 h2) (by decide)
theorem q41 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q38 e h1) (q11 e h0 h2) (by decide)
theorem q42 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op4110659a734a.G e lit6 3 := .app (q38 e h1) (q14 e h0 h2) (by decide)
theorem q43 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q39 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q40 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q41 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q42 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q44 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit8 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q16 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q25 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q34 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q43 (push 3 e) rfl h0).weaken _ (by decide)
theorem q45 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit9 0 := .app (q0 e h0) (q44 e h0) (by decide)
theorem q46 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit10 0 := .app (q0 e h0) (q45 e h0) (by decide)
theorem q47 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 0 := .app (q18 e h2) (q0 e h0) (by decide)
theorem q48 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 0 := .app (q4 e h1) (q47 e h0 h2) (by decide)
theorem q49 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 3 := .app (q18 e h2) (q7 e h0) (by decide)
theorem q50 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 2 := .app (q4 e h1) (q49 e h0 h2) (by decide)
theorem q51 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 3 := .app (q18 e h2) (q10 e h0) (by decide)
theorem q52 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 2 := .app (q4 e h1) (q51 e h0 h2) (by decide)
theorem q53 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit5 3 := .app (q18 e h2) (q13 e h0) (by decide)
theorem q54 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 2 := .app (q4 e h1) (q53 e h0 h2) (by decide)
theorem q55 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit7 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q48 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q50 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q52 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q54 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q56 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q47 e h0 h2) (by decide)
theorem q57 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q49 e h0 h2) (by decide)
theorem q58 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q51 e h0 h2) (by decide)
theorem q59 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q53 e h0 h2) (by decide)
theorem q60 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q56 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q57 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q58 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q59 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q61 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q29 e h1) (q47 e h0 h2) (by decide)
theorem q62 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q29 e h1) (q49 e h0 h2) (by decide)
theorem q63 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q29 e h1) (q51 e h0 h2) (by decide)
theorem q64 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q29 e h1) (q53 e h0 h2) (by decide)
theorem q65 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q61 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q62 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q63 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q64 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q66 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q38 e h1) (q47 e h0 h2) (by decide)
theorem q67 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q38 e h1) (q49 e h0 h2) (by decide)
theorem q68 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q38 e h1) (q51 e h0 h2) (by decide)
theorem q69 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op4110659a734a.G e lit6 3 := .app (q38 e h1) (q53 e h0 h2) (by decide)
theorem q70 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q66 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q67 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q68 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q69 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q71 (e : Env 3) (h0 : e 0 = 1) : Typed Op4110659a734a.G e lit8 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q55 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q60 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q65 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q70 (push 3 e) rfl h0).weaken _ (by decide)
theorem q72 (e : Env 3) (h0 : e 0 = 1) : Typed Op4110659a734a.G e lit9 0 := .app (q7 e h0) (q71 e h0) (by decide)
theorem q73 (e : Env 3) (h0 : e 0 = 1) : Typed Op4110659a734a.G e lit10 0 := .app (q7 e h0) (q72 e h0) (by decide)
theorem q74 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q27 e h2) (q0 e h0) (by decide)
theorem q75 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 2 := .app (q4 e h1) (q74 e h0 h2) (by decide)
theorem q76 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q27 e h2) (q7 e h0) (by decide)
theorem q77 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 2 := .app (q4 e h1) (q76 e h0 h2) (by decide)
theorem q78 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q27 e h2) (q10 e h0) (by decide)
theorem q79 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 2 := .app (q4 e h1) (q78 e h0 h2) (by decide)
theorem q80 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit5 3 := .app (q27 e h2) (q13 e h0) (by decide)
theorem q81 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 2 := .app (q4 e h1) (q80 e h0 h2) (by decide)
theorem q82 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q75 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q77 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q79 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q81 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q83 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q74 e h0 h2) (by decide)
theorem q84 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q76 e h0 h2) (by decide)
theorem q85 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q78 e h0 h2) (by decide)
theorem q86 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q80 e h0 h2) (by decide)
theorem q87 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q83 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q84 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q85 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q86 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q88 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q29 e h1) (q74 e h0 h2) (by decide)
theorem q89 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q29 e h1) (q76 e h0 h2) (by decide)
theorem q90 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q29 e h1) (q78 e h0 h2) (by decide)
theorem q91 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q29 e h1) (q80 e h0 h2) (by decide)
theorem q92 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q88 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q89 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q90 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q91 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q93 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q38 e h1) (q74 e h0 h2) (by decide)
theorem q94 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q38 e h1) (q76 e h0 h2) (by decide)
theorem q95 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q38 e h1) (q78 e h0 h2) (by decide)
theorem q96 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op4110659a734a.G e lit6 3 := .app (q38 e h1) (q80 e h0 h2) (by decide)
theorem q97 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q93 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q94 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q95 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q96 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q98 (e : Env 3) (h0 : e 0 = 2) : Typed Op4110659a734a.G e lit8 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q82 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q87 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q92 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q97 (push 3 e) rfl h0).weaken _ (by decide)
theorem q99 (e : Env 3) (h0 : e 0 = 2) : Typed Op4110659a734a.G e lit9 3 := .app (q10 e h0) (q98 e h0) (by decide)
theorem q100 (e : Env 3) (h0 : e 0 = 2) : Typed Op4110659a734a.G e lit10 3 := .app (q10 e h0) (q99 e h0) (by decide)
theorem q101 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q36 e h2) (q0 e h0) (by decide)
theorem q102 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 2 := .app (q4 e h1) (q101 e h0 h2) (by decide)
theorem q103 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q36 e h2) (q7 e h0) (by decide)
theorem q104 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 2 := .app (q4 e h1) (q103 e h0 h2) (by decide)
theorem q105 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q36 e h2) (q10 e h0) (by decide)
theorem q106 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 2 := .app (q4 e h1) (q105 e h0 h2) (by decide)
theorem q107 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit5 3 := .app (q36 e h2) (q13 e h0) (by decide)
theorem q108 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 2 := .app (q4 e h1) (q107 e h0 h2) (by decide)
theorem q109 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q102 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q104 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q106 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q108 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q110 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q101 e h0 h2) (by decide)
theorem q111 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q103 e h0 h2) (by decide)
theorem q112 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q105 e h0 h2) (by decide)
theorem q113 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q20 e h1) (q107 e h0 h2) (by decide)
theorem q114 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q110 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q111 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q112 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q113 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q115 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q29 e h1) (q101 e h0 h2) (by decide)
theorem q116 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q29 e h1) (q103 e h0 h2) (by decide)
theorem q117 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q29 e h1) (q105 e h0 h2) (by decide)
theorem q118 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q29 e h1) (q107 e h0 h2) (by decide)
theorem q119 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q115 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q116 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q117 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q118 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q120 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q38 e h1) (q101 e h0 h2) (by decide)
theorem q121 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q38 e h1) (q103 e h0 h2) (by decide)
theorem q122 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q38 e h1) (q105 e h0 h2) (by decide)
theorem q123 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op4110659a734a.G e lit6 3 := .app (q38 e h1) (q107 e h0 h2) (by decide)
theorem q124 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op4110659a734a.G e lit7 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q120 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q121 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q122 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q123 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q125 (e : Env 3) (h0 : e 0 = 3) : Typed Op4110659a734a.G e lit8 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q109 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q114 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q119 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q124 (push 3 e) rfl h0).weaken _ (by decide)
theorem q126 (e : Env 3) (h0 : e 0 = 3) : Typed Op4110659a734a.G e lit9 3 := .app (q13 e h0) (q125 e h0) (by decide)
theorem q127 (e : Env 3) (h0 : e 0 = 3) : Typed Op4110659a734a.G e lit10 3 := .app (q13 e h0) (q126 e h0) (by decide)
theorem q128 (e : Env 3)  : Typed Op4110659a734a.G e lit11 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q46 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q73 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q100 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q127 (push 3 e) rfl).weaken _ (by decide)
theorem q129 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit12 0 := .app (q128 e) (q0 e h0) (by decide)
theorem q130 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit13 0 := .app (q4 e h1) (q129 e h0) (by decide)
theorem q131 (e : Env 3) (h0 : e 0 = 1) : Typed Op4110659a734a.G e lit12 3 := .app (q128 e) (q7 e h0) (by decide)
theorem q132 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit13 2 := .app (q4 e h1) (q131 e h0) (by decide)
theorem q133 (e : Env 3) (h0 : e 0 = 2) : Typed Op4110659a734a.G e lit12 3 := .app (q128 e) (q10 e h0) (by decide)
theorem q134 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit13 2 := .app (q4 e h1) (q133 e h0) (by decide)
theorem q135 (e : Env 3) (h0 : e 0 = 3) : Typed Op4110659a734a.G e lit12 3 := .app (q128 e) (q13 e h0) (by decide)
theorem q136 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op4110659a734a.G e lit13 2 := .app (q4 e h1) (q135 e h0) (by decide)
theorem q137 (e : Env 3) (h0 : e 0 = 0) : Typed Op4110659a734a.G e lit14 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q130 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q132 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q134 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q136 (push 3 e) rfl h0).weaken _ (by decide)
theorem q138 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit13 3 := .app (q20 e h1) (q129 e h0) (by decide)
theorem q139 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit13 3 := .app (q20 e h1) (q131 e h0) (by decide)
theorem q140 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op4110659a734a.G e lit13 3 := .app (q20 e h1) (q133 e h0) (by decide)
end Blc.Floor45.Probe9692869529210
