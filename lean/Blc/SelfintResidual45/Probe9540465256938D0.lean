import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Op42b062149732

set_option Elab.async false
namespace Blc.Floor45.Probe9540465256938
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def lit0 : Term := .var 1
def lit1 : Term := .var 0
def lit2 : Term := .app lit0 lit1
def lit3 : Term := .app lit2 lit2
def lit4 : Term := .app lit3 lit1
def lit5 : Term := .lam lit4
def lit6 : Term := .app lit1 lit1
def lit7 : Term := .app lit5 lit6
def lit8 : Term := .app lit7 lit1
def lit9 : Term := .lam lit8
def lit10 : Term := .var 2
def lit11 : Term := .app lit10 lit1
def lit12 : Term := .app lit2 lit11
def lit13 : Term := .app lit12 lit1
def lit14 : Term := .lam lit13
def lit15 : Term := .lam lit14
def lit16 : Term := .app lit2 lit15
def lit17 : Term := .app lit16 lit1
def lit18 : Term := .lam lit17
def lit19 : Term := .lam lit18
def lit20 : Term := .app lit9 lit19
def lit21 : Term := .lam lit15
def lit22 : Term := .app lit20 lit21
def lit23 : Term := .app lit22 lit0
def lit24 : Term := .lam lit0
def lit25 : Term := .lam lit24
def lit26 : Term := .app lit1 lit25
def lit27 : Term := .lam lit1
def lit28 : Term := .lam lit27
def lit29 : Term := .app lit1 lit28
def lit30 : Term := .var 4
def lit31 : Term := .app lit26 lit30
def lit32 : Term := .lam lit31
def lit33 : Term := .app lit29 lit32
def lit34 : Term := .lam lit33
def lit35 : Term := .app lit26 lit34
def lit36 : Term := .lam lit35
def lit37 : Term := .app lit26 lit36
def lit38 : Term := .lam lit37
def lit39 : Term := .app lit23 lit38
theorem q0 (e : Env 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit0 0 := .var _ _ (by rw [h1]; decide)
theorem q1 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit1 0 := .var _ _ (by rw [h0]; decide)
theorem q2 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit2 0 := .app (q0 e h1) (q1 e h0) (by decide)
theorem q3 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit3 0 := .app (q2 e h0 h1) (q2 e h0 h1) (by decide)
theorem q4 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit4 0 := .app (q3 e h0 h1) (q1 e h0) (by decide)
theorem q5 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit1 1 := .var _ _ (by rw [h0]; decide)
theorem q6 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit2 0 := .app (q0 e h1) (q5 e h0) (by decide)
theorem q7 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit3 0 := .app (q6 e h0 h1) (q6 e h0 h1) (by decide)
theorem q8 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit4 0 := .app (q7 e h0 h1) (q5 e h0) (by decide)
theorem q9 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit1 2 := .var _ _ (by rw [h0]; decide)
theorem q10 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit2 0 := .app (q0 e h1) (q9 e h0) (by decide)
theorem q11 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit3 0 := .app (q10 e h0 h1) (q10 e h0 h1) (by decide)
theorem q12 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit4 0 := .app (q11 e h0 h1) (q9 e h0) (by decide)
theorem q13 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit1 3 := .var _ _ (by rw [h0]; decide)
theorem q14 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit2 0 := .app (q0 e h1) (q13 e h0) (by decide)
theorem q15 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit3 0 := .app (q14 e h0 h1) (q14 e h0 h1) (by decide)
theorem q16 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit4 0 := .app (q15 e h0 h1) (q13 e h0) (by decide)
theorem q17 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit5 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q4 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q8 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q12 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q16 (push 3 e) rfl h0).weaken _ (by decide)
theorem q18 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit6 0 := .app (q1 e h0) (q1 e h0) (by decide)
theorem q19 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit7 0 := .app (q17 e h0) (q18 e h0) (by decide)
theorem q20 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit8 0 := .app (q19 e h0) (q1 e h0) (by decide)
theorem q21 (e : Env 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit0 1 := .var _ _ (by rw [h1]; decide)
theorem q22 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit2 0 := .app (q21 e h1) (q1 e h0) (by decide)
theorem q23 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit3 0 := .app (q22 e h0 h1) (q22 e h0 h1) (by decide)
theorem q24 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit4 0 := .app (q23 e h0 h1) (q1 e h0) (by decide)
theorem q25 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit2 0 := .app (q21 e h1) (q5 e h0) (by decide)
theorem q26 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit3 0 := .app (q25 e h0 h1) (q25 e h0 h1) (by decide)
theorem q27 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit4 0 := .app (q26 e h0 h1) (q5 e h0) (by decide)
theorem q28 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit2 0 := .app (q21 e h1) (q9 e h0) (by decide)
theorem q29 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit3 0 := .app (q28 e h0 h1) (q28 e h0 h1) (by decide)
theorem q30 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit4 0 := .app (q29 e h0 h1) (q9 e h0) (by decide)
theorem q31 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit2 3 := .app (q21 e h1) (q13 e h0) (by decide)
theorem q32 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit3 3 := .app (q31 e h0 h1) (q31 e h0 h1) (by decide)
theorem q33 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit4 3 := .app (q32 e h0 h1) (q13 e h0) (by decide)
theorem q34 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit5 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q24 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q27 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q30 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q33 (push 3 e) rfl h0).weaken _ (by decide)
theorem q35 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit6 0 := .app (q5 e h0) (q5 e h0) (by decide)
theorem q36 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit7 0 := .app (q34 e h0) (q35 e h0) (by decide)
theorem q37 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit8 0 := .app (q36 e h0) (q5 e h0) (by decide)
theorem q38 (e : Env 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit0 2 := .var _ _ (by rw [h1]; decide)
theorem q39 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit2 1 := .app (q38 e h1) (q1 e h0) (by decide)
theorem q40 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit3 0 := .app (q39 e h0 h1) (q39 e h0 h1) (by decide)
theorem q41 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit4 0 := .app (q40 e h0 h1) (q1 e h0) (by decide)
theorem q42 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit2 1 := .app (q38 e h1) (q5 e h0) (by decide)
theorem q43 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit3 0 := .app (q42 e h0 h1) (q42 e h0 h1) (by decide)
theorem q44 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit4 0 := .app (q43 e h0 h1) (q5 e h0) (by decide)
theorem q45 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit2 1 := .app (q38 e h1) (q9 e h0) (by decide)
theorem q46 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit3 0 := .app (q45 e h0 h1) (q45 e h0 h1) (by decide)
theorem q47 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit4 0 := .app (q46 e h0 h1) (q9 e h0) (by decide)
theorem q48 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit2 3 := .app (q38 e h1) (q13 e h0) (by decide)
theorem q49 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit3 3 := .app (q48 e h0 h1) (q48 e h0 h1) (by decide)
theorem q50 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit4 3 := .app (q49 e h0 h1) (q13 e h0) (by decide)
theorem q51 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit5 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q41 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q44 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q47 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q50 (push 3 e) rfl h0).weaken _ (by decide)
theorem q52 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit6 1 := .app (q9 e h0) (q9 e h0) (by decide)
theorem q53 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit7 0 := .app (q51 e h0) (q52 e h0) (by decide)
theorem q54 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit8 0 := .app (q53 e h0) (q9 e h0) (by decide)
theorem q55 (e : Env 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit0 3 := .var _ _ (by rw [h1]; decide)
theorem q56 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit2 3 := .app (q55 e h1) (q1 e h0) (by decide)
theorem q57 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit3 3 := .app (q56 e h0 h1) (q56 e h0 h1) (by decide)
theorem q58 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit4 3 := .app (q57 e h0 h1) (q1 e h0) (by decide)
theorem q59 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit2 3 := .app (q55 e h1) (q5 e h0) (by decide)
theorem q60 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit3 3 := .app (q59 e h0 h1) (q59 e h0 h1) (by decide)
theorem q61 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit4 3 := .app (q60 e h0 h1) (q5 e h0) (by decide)
theorem q62 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit2 3 := .app (q55 e h1) (q9 e h0) (by decide)
theorem q63 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit3 3 := .app (q62 e h0 h1) (q62 e h0 h1) (by decide)
theorem q64 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit4 3 := .app (q63 e h0 h1) (q9 e h0) (by decide)
theorem q65 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit2 3 := .app (q55 e h1) (q13 e h0) (by decide)
theorem q66 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit3 3 := .app (q65 e h0 h1) (q65 e h0 h1) (by decide)
theorem q67 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit4 3 := .app (q66 e h0 h1) (q13 e h0) (by decide)
theorem q68 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit5 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q58 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q61 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q64 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q67 (push 3 e) rfl h0).weaken _ (by decide)
theorem q69 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit6 3 := .app (q13 e h0) (q13 e h0) (by decide)
theorem q70 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit7 3 := .app (q68 e h0) (q69 e h0) (by decide)
theorem q71 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit8 3 := .app (q70 e h0) (q13 e h0) (by decide)
theorem q72 (e : Env 3)  : Typed Op42b062149732.G e lit9 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q20 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q37 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q54 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q71 (push 3 e) rfl).weaken _ (by decide)
theorem q73 (e : Env 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit10 0 := .var _ _ (by rw [h2]; decide)
theorem q74 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit11 0 := .app (q73 e h2) (q1 e h0) (by decide)
theorem q75 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q2 e h0 h1) (q74 e h0 h2) (by decide)
theorem q76 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit13 0 := .app (q75 e h0 h1 h2) (q1 e h0) (by decide)
theorem q77 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit11 0 := .app (q73 e h2) (q5 e h0) (by decide)
theorem q78 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q6 e h0 h1) (q77 e h0 h2) (by decide)
theorem q79 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit13 0 := .app (q78 e h0 h1 h2) (q5 e h0) (by decide)
theorem q80 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit11 0 := .app (q73 e h2) (q9 e h0) (by decide)
theorem q81 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q10 e h0 h1) (q80 e h0 h2) (by decide)
theorem q82 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit13 0 := .app (q81 e h0 h1 h2) (q9 e h0) (by decide)
theorem q83 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit11 0 := .app (q73 e h2) (q13 e h0) (by decide)
theorem q84 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q14 e h0 h1) (q83 e h0 h2) (by decide)
theorem q85 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit13 0 := .app (q84 e h0 h1 h2) (q13 e h0) (by decide)
theorem q86 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit14 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q76 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q79 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q82 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q85 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q87 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q22 e h0 h1) (q74 e h0 h2) (by decide)
theorem q88 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit13 0 := .app (q87 e h0 h1 h2) (q1 e h0) (by decide)
theorem q89 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q25 e h0 h1) (q77 e h0 h2) (by decide)
theorem q90 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit13 0 := .app (q89 e h0 h1 h2) (q5 e h0) (by decide)
theorem q91 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q28 e h0 h1) (q80 e h0 h2) (by decide)
theorem q92 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit13 0 := .app (q91 e h0 h1 h2) (q9 e h0) (by decide)
theorem q93 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 3 := .app (q31 e h0 h1) (q83 e h0 h2) (by decide)
theorem q94 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit13 3 := .app (q93 e h0 h1 h2) (q13 e h0) (by decide)
theorem q95 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit14 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q88 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q90 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q92 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q94 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q96 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q39 e h0 h1) (q74 e h0 h2) (by decide)
theorem q97 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit13 0 := .app (q96 e h0 h1 h2) (q1 e h0) (by decide)
theorem q98 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q42 e h0 h1) (q77 e h0 h2) (by decide)
theorem q99 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit13 0 := .app (q98 e h0 h1 h2) (q5 e h0) (by decide)
theorem q100 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q45 e h0 h1) (q80 e h0 h2) (by decide)
theorem q101 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit13 0 := .app (q100 e h0 h1 h2) (q9 e h0) (by decide)
theorem q102 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 3 := .app (q48 e h0 h1) (q83 e h0 h2) (by decide)
theorem q103 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit13 3 := .app (q102 e h0 h1 h2) (q13 e h0) (by decide)
theorem q104 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit14 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q97 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q99 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q101 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q103 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q105 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 3 := .app (q56 e h0 h1) (q74 e h0 h2) (by decide)
theorem q106 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit13 3 := .app (q105 e h0 h1 h2) (q1 e h0) (by decide)
theorem q107 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 3 := .app (q59 e h0 h1) (q77 e h0 h2) (by decide)
theorem q108 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit13 3 := .app (q107 e h0 h1 h2) (q5 e h0) (by decide)
theorem q109 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 3 := .app (q62 e h0 h1) (q80 e h0 h2) (by decide)
theorem q110 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit13 3 := .app (q109 e h0 h1 h2) (q9 e h0) (by decide)
theorem q111 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 3 := .app (q65 e h0 h1) (q83 e h0 h2) (by decide)
theorem q112 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit13 3 := .app (q111 e h0 h1 h2) (q13 e h0) (by decide)
theorem q113 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit14 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q106 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q108 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q110 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q112 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q114 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit15 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q86 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q95 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q104 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q113 (push 3 e) rfl h0).weaken _ (by decide)
theorem q115 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit16 0 := .app (q2 e h0 h1) (q114 e h0) (by decide)
theorem q116 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit17 0 := .app (q115 e h0 h1) (q1 e h0) (by decide)
theorem q117 (e : Env 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit10 1 := .var _ _ (by rw [h2]; decide)
theorem q118 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit11 0 := .app (q117 e h2) (q1 e h0) (by decide)
theorem q119 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q2 e h0 h1) (q118 e h0 h2) (by decide)
theorem q120 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit13 0 := .app (q119 e h0 h1 h2) (q1 e h0) (by decide)
theorem q121 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit11 0 := .app (q117 e h2) (q5 e h0) (by decide)
theorem q122 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q6 e h0 h1) (q121 e h0 h2) (by decide)
theorem q123 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit13 0 := .app (q122 e h0 h1 h2) (q5 e h0) (by decide)
theorem q124 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit11 0 := .app (q117 e h2) (q9 e h0) (by decide)
theorem q125 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q10 e h0 h1) (q124 e h0 h2) (by decide)
theorem q126 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit13 0 := .app (q125 e h0 h1 h2) (q9 e h0) (by decide)
theorem q127 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit11 3 := .app (q117 e h2) (q13 e h0) (by decide)
theorem q128 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q14 e h0 h1) (q127 e h0 h2) (by decide)
theorem q129 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit13 0 := .app (q128 e h0 h1 h2) (q13 e h0) (by decide)
theorem q130 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit14 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q120 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q123 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q126 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q129 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q131 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q22 e h0 h1) (q118 e h0 h2) (by decide)
theorem q132 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit13 0 := .app (q131 e h0 h1 h2) (q1 e h0) (by decide)
theorem q133 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q25 e h0 h1) (q121 e h0 h2) (by decide)
theorem q134 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit13 0 := .app (q133 e h0 h1 h2) (q5 e h0) (by decide)
theorem q135 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q28 e h0 h1) (q124 e h0 h2) (by decide)
theorem q136 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit13 0 := .app (q135 e h0 h1 h2) (q9 e h0) (by decide)
theorem q137 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 3 := .app (q31 e h0 h1) (q127 e h0 h2) (by decide)
theorem q138 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit13 3 := .app (q137 e h0 h1 h2) (q13 e h0) (by decide)
theorem q139 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit14 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q132 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q134 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q136 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q138 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q140 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q39 e h0 h1) (q118 e h0 h2) (by decide)
theorem q141 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit13 0 := .app (q140 e h0 h1 h2) (q1 e h0) (by decide)
theorem q142 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q42 e h0 h1) (q121 e h0 h2) (by decide)
theorem q143 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit13 0 := .app (q142 e h0 h1 h2) (q5 e h0) (by decide)
theorem q144 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q45 e h0 h1) (q124 e h0 h2) (by decide)
theorem q145 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit13 0 := .app (q144 e h0 h1 h2) (q9 e h0) (by decide)
theorem q146 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 3 := .app (q48 e h0 h1) (q127 e h0 h2) (by decide)
theorem q147 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit13 3 := .app (q146 e h0 h1 h2) (q13 e h0) (by decide)
theorem q148 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit14 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q141 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q143 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q145 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q147 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q149 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 3 := .app (q56 e h0 h1) (q118 e h0 h2) (by decide)
theorem q150 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit13 3 := .app (q149 e h0 h1 h2) (q1 e h0) (by decide)
theorem q151 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 3 := .app (q59 e h0 h1) (q121 e h0 h2) (by decide)
theorem q152 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit13 3 := .app (q151 e h0 h1 h2) (q5 e h0) (by decide)
theorem q153 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 3 := .app (q62 e h0 h1) (q124 e h0 h2) (by decide)
theorem q154 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit13 3 := .app (q153 e h0 h1 h2) (q9 e h0) (by decide)
theorem q155 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 3 := .app (q65 e h0 h1) (q127 e h0 h2) (by decide)
theorem q156 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit13 3 := .app (q155 e h0 h1 h2) (q13 e h0) (by decide)
theorem q157 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit14 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q150 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q152 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q154 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q156 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q158 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit15 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q130 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q139 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q148 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q157 (push 3 e) rfl h0).weaken _ (by decide)
theorem q159 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit16 0 := .app (q6 e h0 h1) (q158 e h0) (by decide)
theorem q160 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit17 0 := .app (q159 e h0 h1) (q5 e h0) (by decide)
theorem q161 (e : Env 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit10 2 := .var _ _ (by rw [h2]; decide)
theorem q162 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit11 1 := .app (q161 e h2) (q1 e h0) (by decide)
theorem q163 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q2 e h0 h1) (q162 e h0 h2) (by decide)
theorem q164 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit13 0 := .app (q163 e h0 h1 h2) (q1 e h0) (by decide)
theorem q165 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit11 1 := .app (q161 e h2) (q5 e h0) (by decide)
theorem q166 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q6 e h0 h1) (q165 e h0 h2) (by decide)
theorem q167 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit13 0 := .app (q166 e h0 h1 h2) (q5 e h0) (by decide)
end Blc.Floor45.Probe9540465256938
