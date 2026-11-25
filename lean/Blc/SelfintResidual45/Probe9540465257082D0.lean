import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Op42b062149732

set_option Elab.async false
namespace Blc.Floor45.Probe9540465257082
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def lit0 : Term := .var 1
def lit1 : Term := .var 0
def lit2 : Term := .app lit0 lit1
def lit3 : Term := .app lit2 lit1
def lit4 : Term := .app lit3 lit2
def lit5 : Term := .lam lit4
def lit6 : Term := .var 2
def lit7 : Term := .app lit6 lit1
def lit8 : Term := .app lit3 lit7
def lit9 : Term := .lam lit8
def lit10 : Term := .lam lit9
def lit11 : Term := .app lit5 lit10
def lit12 : Term := .lam lit11
def lit13 : Term := .lam lit10
def lit14 : Term := .app lit13 lit1
def lit15 : Term := .app lit3 lit14
def lit16 : Term := .lam lit15
def lit17 : Term := .lam lit16
def lit18 : Term := .app lit12 lit17
def lit19 : Term := .app lit18 lit0
def lit20 : Term := .lam lit0
def lit21 : Term := .lam lit20
def lit22 : Term := .app lit1 lit21
def lit23 : Term := .lam lit1
def lit24 : Term := .lam lit23
def lit25 : Term := .app lit1 lit24
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
theorem q0 (e : Env 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit0 0 := .var _ _ (by rw [h1]; decide)
theorem q1 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit1 0 := .var _ _ (by rw [h0]; decide)
theorem q2 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit2 0 := .app (q0 e h1) (q1 e h0) (by decide)
theorem q3 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit3 0 := .app (q2 e h0 h1) (q1 e h0) (by decide)
theorem q4 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit4 0 := .app (q3 e h0 h1) (q2 e h0 h1) (by decide)
theorem q5 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit1 1 := .var _ _ (by rw [h0]; decide)
theorem q6 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit2 0 := .app (q0 e h1) (q5 e h0) (by decide)
theorem q7 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit3 0 := .app (q6 e h0 h1) (q5 e h0) (by decide)
theorem q8 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit4 0 := .app (q7 e h0 h1) (q6 e h0 h1) (by decide)
theorem q9 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit1 2 := .var _ _ (by rw [h0]; decide)
theorem q10 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit2 0 := .app (q0 e h1) (q9 e h0) (by decide)
theorem q11 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit3 0 := .app (q10 e h0 h1) (q9 e h0) (by decide)
theorem q12 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit4 0 := .app (q11 e h0 h1) (q10 e h0 h1) (by decide)
theorem q13 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit1 3 := .var _ _ (by rw [h0]; decide)
theorem q14 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit2 0 := .app (q0 e h1) (q13 e h0) (by decide)
theorem q15 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit3 0 := .app (q14 e h0 h1) (q13 e h0) (by decide)
theorem q16 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit4 0 := .app (q15 e h0 h1) (q14 e h0 h1) (by decide)
theorem q17 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit5 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q4 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q8 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q12 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q16 (push 3 e) rfl h0).weaken _ (by decide)
theorem q18 (e : Env 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit6 0 := .var _ _ (by rw [h2]; decide)
theorem q19 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit7 0 := .app (q18 e h2) (q1 e h0) (by decide)
theorem q20 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit8 0 := .app (q3 e h0 h1) (q19 e h0 h2) (by decide)
theorem q21 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit7 0 := .app (q18 e h2) (q5 e h0) (by decide)
theorem q22 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit8 0 := .app (q7 e h0 h1) (q21 e h0 h2) (by decide)
theorem q23 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit7 0 := .app (q18 e h2) (q9 e h0) (by decide)
theorem q24 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit8 0 := .app (q11 e h0 h1) (q23 e h0 h2) (by decide)
theorem q25 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit7 0 := .app (q18 e h2) (q13 e h0) (by decide)
theorem q26 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit8 0 := .app (q15 e h0 h1) (q25 e h0 h2) (by decide)
theorem q27 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit9 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q20 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q22 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q24 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q26 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q28 (e : Env 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit0 1 := .var _ _ (by rw [h1]; decide)
theorem q29 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit2 0 := .app (q28 e h1) (q1 e h0) (by decide)
theorem q30 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit3 0 := .app (q29 e h0 h1) (q1 e h0) (by decide)
theorem q31 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit8 0 := .app (q30 e h0 h1) (q19 e h0 h2) (by decide)
theorem q32 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit2 0 := .app (q28 e h1) (q5 e h0) (by decide)
theorem q33 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit3 0 := .app (q32 e h0 h1) (q5 e h0) (by decide)
theorem q34 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit8 0 := .app (q33 e h0 h1) (q21 e h0 h2) (by decide)
theorem q35 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit2 0 := .app (q28 e h1) (q9 e h0) (by decide)
theorem q36 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit3 0 := .app (q35 e h0 h1) (q9 e h0) (by decide)
theorem q37 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit8 0 := .app (q36 e h0 h1) (q23 e h0 h2) (by decide)
theorem q38 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit2 3 := .app (q28 e h1) (q13 e h0) (by decide)
theorem q39 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit3 3 := .app (q38 e h0 h1) (q13 e h0) (by decide)
theorem q40 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit8 3 := .app (q39 e h0 h1) (q25 e h0 h2) (by decide)
theorem q41 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit9 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q31 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q34 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q37 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q40 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q42 (e : Env 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit0 2 := .var _ _ (by rw [h1]; decide)
theorem q43 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit2 1 := .app (q42 e h1) (q1 e h0) (by decide)
theorem q44 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit3 0 := .app (q43 e h0 h1) (q1 e h0) (by decide)
theorem q45 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit8 0 := .app (q44 e h0 h1) (q19 e h0 h2) (by decide)
theorem q46 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit2 1 := .app (q42 e h1) (q5 e h0) (by decide)
theorem q47 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit3 0 := .app (q46 e h0 h1) (q5 e h0) (by decide)
theorem q48 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit8 0 := .app (q47 e h0 h1) (q21 e h0 h2) (by decide)
theorem q49 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit2 1 := .app (q42 e h1) (q9 e h0) (by decide)
theorem q50 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit3 0 := .app (q49 e h0 h1) (q9 e h0) (by decide)
theorem q51 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit8 0 := .app (q50 e h0 h1) (q23 e h0 h2) (by decide)
theorem q52 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit2 3 := .app (q42 e h1) (q13 e h0) (by decide)
theorem q53 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit3 3 := .app (q52 e h0 h1) (q13 e h0) (by decide)
theorem q54 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit8 3 := .app (q53 e h0 h1) (q25 e h0 h2) (by decide)
theorem q55 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit9 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q45 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q48 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q51 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q54 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q56 (e : Env 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit0 3 := .var _ _ (by rw [h1]; decide)
theorem q57 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit2 3 := .app (q56 e h1) (q1 e h0) (by decide)
theorem q58 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit3 3 := .app (q57 e h0 h1) (q1 e h0) (by decide)
theorem q59 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit8 3 := .app (q58 e h0 h1) (q19 e h0 h2) (by decide)
theorem q60 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit2 3 := .app (q56 e h1) (q5 e h0) (by decide)
theorem q61 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit3 3 := .app (q60 e h0 h1) (q5 e h0) (by decide)
theorem q62 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit8 3 := .app (q61 e h0 h1) (q21 e h0 h2) (by decide)
theorem q63 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit2 3 := .app (q56 e h1) (q9 e h0) (by decide)
theorem q64 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit3 3 := .app (q63 e h0 h1) (q9 e h0) (by decide)
theorem q65 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit8 3 := .app (q64 e h0 h1) (q23 e h0 h2) (by decide)
theorem q66 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit2 3 := .app (q56 e h1) (q13 e h0) (by decide)
theorem q67 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit3 3 := .app (q66 e h0 h1) (q13 e h0) (by decide)
theorem q68 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit8 3 := .app (q67 e h0 h1) (q25 e h0 h2) (by decide)
theorem q69 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit9 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q59 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q62 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q65 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q68 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q70 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit10 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q27 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q41 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q55 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q69 (push 3 e) rfl h0).weaken _ (by decide)
theorem q71 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit11 0 := .app (q17 e h0) (q70 e h0) (by decide)
theorem q72 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit4 0 := .app (q30 e h0 h1) (q29 e h0 h1) (by decide)
theorem q73 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit4 0 := .app (q33 e h0 h1) (q32 e h0 h1) (by decide)
theorem q74 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit4 0 := .app (q36 e h0 h1) (q35 e h0 h1) (by decide)
theorem q75 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit4 3 := .app (q39 e h0 h1) (q38 e h0 h1) (by decide)
theorem q76 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit5 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q72 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q73 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q74 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q75 (push 3 e) rfl h0).weaken _ (by decide)
theorem q77 (e : Env 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit6 1 := .var _ _ (by rw [h2]; decide)
theorem q78 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit7 0 := .app (q77 e h2) (q1 e h0) (by decide)
theorem q79 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit8 0 := .app (q3 e h0 h1) (q78 e h0 h2) (by decide)
theorem q80 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit7 0 := .app (q77 e h2) (q5 e h0) (by decide)
theorem q81 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit8 0 := .app (q7 e h0 h1) (q80 e h0 h2) (by decide)
theorem q82 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit7 0 := .app (q77 e h2) (q9 e h0) (by decide)
theorem q83 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit8 0 := .app (q11 e h0 h1) (q82 e h0 h2) (by decide)
theorem q84 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit7 3 := .app (q77 e h2) (q13 e h0) (by decide)
theorem q85 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit8 0 := .app (q15 e h0 h1) (q84 e h0 h2) (by decide)
theorem q86 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit9 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q79 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q81 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q83 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q85 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q87 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit8 0 := .app (q30 e h0 h1) (q78 e h0 h2) (by decide)
theorem q88 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit8 0 := .app (q33 e h0 h1) (q80 e h0 h2) (by decide)
theorem q89 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit8 0 := .app (q36 e h0 h1) (q82 e h0 h2) (by decide)
theorem q90 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit8 3 := .app (q39 e h0 h1) (q84 e h0 h2) (by decide)
theorem q91 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit9 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q87 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q88 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q89 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q90 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q92 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit8 0 := .app (q44 e h0 h1) (q78 e h0 h2) (by decide)
theorem q93 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit8 0 := .app (q47 e h0 h1) (q80 e h0 h2) (by decide)
theorem q94 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit8 0 := .app (q50 e h0 h1) (q82 e h0 h2) (by decide)
theorem q95 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit8 3 := .app (q53 e h0 h1) (q84 e h0 h2) (by decide)
theorem q96 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit9 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q92 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q93 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q94 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q95 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q97 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit8 3 := .app (q58 e h0 h1) (q78 e h0 h2) (by decide)
theorem q98 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit8 3 := .app (q61 e h0 h1) (q80 e h0 h2) (by decide)
theorem q99 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit8 3 := .app (q64 e h0 h1) (q82 e h0 h2) (by decide)
theorem q100 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit8 3 := .app (q67 e h0 h1) (q84 e h0 h2) (by decide)
theorem q101 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit9 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q97 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q98 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q99 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q100 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q102 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit10 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q86 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q91 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q96 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q101 (push 3 e) rfl h0).weaken _ (by decide)
theorem q103 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit11 0 := .app (q76 e h0) (q102 e h0) (by decide)
theorem q104 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit4 0 := .app (q44 e h0 h1) (q43 e h0 h1) (by decide)
theorem q105 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit4 0 := .app (q47 e h0 h1) (q46 e h0 h1) (by decide)
theorem q106 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit4 0 := .app (q50 e h0 h1) (q49 e h0 h1) (by decide)
theorem q107 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit4 3 := .app (q53 e h0 h1) (q52 e h0 h1) (by decide)
theorem q108 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit5 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q104 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q105 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q106 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q107 (push 3 e) rfl h0).weaken _ (by decide)
theorem q109 (e : Env 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit6 2 := .var _ _ (by rw [h2]; decide)
theorem q110 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit7 1 := .app (q109 e h2) (q1 e h0) (by decide)
theorem q111 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit8 0 := .app (q3 e h0 h1) (q110 e h0 h2) (by decide)
theorem q112 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit7 1 := .app (q109 e h2) (q5 e h0) (by decide)
theorem q113 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit8 0 := .app (q7 e h0 h1) (q112 e h0 h2) (by decide)
theorem q114 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit7 1 := .app (q109 e h2) (q9 e h0) (by decide)
theorem q115 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit8 0 := .app (q11 e h0 h1) (q114 e h0 h2) (by decide)
theorem q116 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit7 3 := .app (q109 e h2) (q13 e h0) (by decide)
theorem q117 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit8 0 := .app (q15 e h0 h1) (q116 e h0 h2) (by decide)
theorem q118 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit9 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q111 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q113 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q115 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q117 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q119 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit8 0 := .app (q30 e h0 h1) (q110 e h0 h2) (by decide)
theorem q120 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit8 0 := .app (q33 e h0 h1) (q112 e h0 h2) (by decide)
theorem q121 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit8 0 := .app (q36 e h0 h1) (q114 e h0 h2) (by decide)
theorem q122 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit8 3 := .app (q39 e h0 h1) (q116 e h0 h2) (by decide)
theorem q123 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit9 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q119 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q120 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q121 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q122 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q124 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit8 0 := .app (q44 e h0 h1) (q110 e h0 h2) (by decide)
theorem q125 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit8 0 := .app (q47 e h0 h1) (q112 e h0 h2) (by decide)
theorem q126 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit8 0 := .app (q50 e h0 h1) (q114 e h0 h2) (by decide)
theorem q127 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit8 3 := .app (q53 e h0 h1) (q116 e h0 h2) (by decide)
theorem q128 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit9 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q124 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q125 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q126 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q127 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q129 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit8 3 := .app (q58 e h0 h1) (q110 e h0 h2) (by decide)
theorem q130 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit8 3 := .app (q61 e h0 h1) (q112 e h0 h2) (by decide)
theorem q131 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit8 3 := .app (q64 e h0 h1) (q114 e h0 h2) (by decide)
theorem q132 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit8 3 := .app (q67 e h0 h1) (q116 e h0 h2) (by decide)
theorem q133 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit9 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q129 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q130 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q131 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q132 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q134 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit10 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q118 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q123 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q128 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q133 (push 3 e) rfl h0).weaken _ (by decide)
theorem q135 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit11 0 := .app (q108 e h0) (q134 e h0) (by decide)
theorem q136 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit4 3 := .app (q58 e h0 h1) (q57 e h0 h1) (by decide)
theorem q137 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit4 3 := .app (q61 e h0 h1) (q60 e h0 h1) (by decide)
theorem q138 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit4 3 := .app (q64 e h0 h1) (q63 e h0 h1) (by decide)
theorem q139 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit4 3 := .app (q67 e h0 h1) (q66 e h0 h1) (by decide)
theorem q140 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit5 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q136 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q137 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q138 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q139 (push 3 e) rfl h0).weaken _ (by decide)
theorem q141 (e : Env 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit6 3 := .var _ _ (by rw [h2]; decide)
theorem q142 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit7 3 := .app (q141 e h2) (q1 e h0) (by decide)
theorem q143 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit8 0 := .app (q3 e h0 h1) (q142 e h0 h2) (by decide)
theorem q144 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit7 3 := .app (q141 e h2) (q5 e h0) (by decide)
theorem q145 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit8 0 := .app (q7 e h0 h1) (q144 e h0 h2) (by decide)
theorem q146 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit7 3 := .app (q141 e h2) (q9 e h0) (by decide)
theorem q147 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit8 0 := .app (q11 e h0 h1) (q146 e h0 h2) (by decide)
theorem q148 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit7 3 := .app (q141 e h2) (q13 e h0) (by decide)
theorem q149 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit8 0 := .app (q15 e h0 h1) (q148 e h0 h2) (by decide)
theorem q150 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit9 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q143 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q145 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q147 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q149 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q151 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit8 0 := .app (q30 e h0 h1) (q142 e h0 h2) (by decide)
theorem q152 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit8 0 := .app (q33 e h0 h1) (q144 e h0 h2) (by decide)
theorem q153 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit8 0 := .app (q36 e h0 h1) (q146 e h0 h2) (by decide)
theorem q154 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit8 3 := .app (q39 e h0 h1) (q148 e h0 h2) (by decide)
end Blc.Floor45.Probe9540465257082
