import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Op42b062149732

set_option Elab.async false
namespace Blc.Floor45.Probe9540465259350
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def lit0 : Term := .var 1
def lit1 : Term := .app lit0 lit0
def lit2 : Term := .var 0
def lit3 : Term := .app lit2 lit2
def lit4 : Term := .app lit1 lit3
def lit5 : Term := .app lit4 lit2
def lit6 : Term := .app lit5 lit0
def lit7 : Term := .lam lit6
def lit8 : Term := .app lit7 lit3
def lit9 : Term := .var 2
def lit10 : Term := .app lit9 lit3
def lit11 : Term := .app lit10 lit2
def lit12 : Term := .app lit11 lit0
def lit13 : Term := .lam lit12
def lit14 : Term := .lam lit13
def lit15 : Term := .lam lit14
def lit16 : Term := .app lit8 lit15
def lit17 : Term := .lam lit16
def lit18 : Term := .app lit9 lit9
def lit19 : Term := .app lit18 lit3
def lit20 : Term := .app lit19 lit2
def lit21 : Term := .app lit20 lit0
def lit22 : Term := .lam lit21
def lit23 : Term := .lam lit22
def lit24 : Term := .app lit23 lit2
def lit25 : Term := .app lit24 lit0
def lit26 : Term := .lam lit25
def lit27 : Term := .lam lit26
def lit28 : Term := .app lit17 lit27
def lit29 : Term := .app lit28 lit15
def lit30 : Term := .app lit29 lit0
def lit31 : Term := .lam lit0
def lit32 : Term := .lam lit31
def lit33 : Term := .app lit2 lit32
def lit34 : Term := .lam lit2
def lit35 : Term := .lam lit34
def lit36 : Term := .app lit2 lit35
def lit37 : Term := .var 4
def lit38 : Term := .app lit33 lit37
def lit39 : Term := .lam lit38
def lit40 : Term := .app lit36 lit39
def lit41 : Term := .lam lit40
def lit42 : Term := .app lit33 lit41
def lit43 : Term := .lam lit42
def lit44 : Term := .app lit33 lit43
def lit45 : Term := .lam lit44
def lit46 : Term := .app lit30 lit45
theorem q0 (e : Env 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit0 0 := .var _ _ (by rw [h1]; decide)
theorem q1 (e : Env 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit1 0 := .app (q0 e h1) (q0 e h1) (by decide)
theorem q2 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit2 0 := .var _ _ (by rw [h0]; decide)
theorem q3 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit3 0 := .app (q2 e h0) (q2 e h0) (by decide)
theorem q4 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit4 0 := .app (q1 e h1) (q3 e h0) (by decide)
theorem q5 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit5 0 := .app (q4 e h0 h1) (q2 e h0) (by decide)
theorem q6 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit6 0 := .app (q5 e h0 h1) (q0 e h1) (by decide)
theorem q7 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit2 1 := .var _ _ (by rw [h0]; decide)
theorem q8 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit3 0 := .app (q7 e h0) (q7 e h0) (by decide)
theorem q9 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit4 0 := .app (q1 e h1) (q8 e h0) (by decide)
theorem q10 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit5 0 := .app (q9 e h0 h1) (q7 e h0) (by decide)
theorem q11 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit6 0 := .app (q10 e h0 h1) (q0 e h1) (by decide)
theorem q12 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit2 2 := .var _ _ (by rw [h0]; decide)
theorem q13 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit3 1 := .app (q12 e h0) (q12 e h0) (by decide)
theorem q14 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit4 0 := .app (q1 e h1) (q13 e h0) (by decide)
theorem q15 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit5 0 := .app (q14 e h0 h1) (q12 e h0) (by decide)
theorem q16 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit6 0 := .app (q15 e h0 h1) (q0 e h1) (by decide)
theorem q17 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit2 3 := .var _ _ (by rw [h0]; decide)
theorem q18 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit3 3 := .app (q17 e h0) (q17 e h0) (by decide)
theorem q19 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit4 0 := .app (q1 e h1) (q18 e h0) (by decide)
theorem q20 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit5 0 := .app (q19 e h0 h1) (q17 e h0) (by decide)
theorem q21 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit6 0 := .app (q20 e h0 h1) (q0 e h1) (by decide)
theorem q22 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit7 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q6 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q11 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q16 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q21 (push 3 e) rfl h0).weaken _ (by decide)
theorem q23 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit8 0 := .app (q22 e h0) (q3 e h0) (by decide)
theorem q24 (e : Env 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit9 0 := .var _ _ (by rw [h2]; decide)
theorem q25 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit10 0 := .app (q24 e h2) (q3 e h0) (by decide)
theorem q26 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit11 0 := .app (q25 e h0 h2) (q2 e h0) (by decide)
theorem q27 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q26 e h0 h2) (q0 e h1) (by decide)
theorem q28 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit10 0 := .app (q24 e h2) (q8 e h0) (by decide)
theorem q29 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit11 0 := .app (q28 e h0 h2) (q7 e h0) (by decide)
theorem q30 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q29 e h0 h2) (q0 e h1) (by decide)
theorem q31 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit10 0 := .app (q24 e h2) (q13 e h0) (by decide)
theorem q32 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit11 0 := .app (q31 e h0 h2) (q12 e h0) (by decide)
theorem q33 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q32 e h0 h2) (q0 e h1) (by decide)
theorem q34 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit10 0 := .app (q24 e h2) (q18 e h0) (by decide)
theorem q35 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit11 0 := .app (q34 e h0 h2) (q17 e h0) (by decide)
theorem q36 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q35 e h0 h2) (q0 e h1) (by decide)
theorem q37 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit13 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q27 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q30 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q33 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q36 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q38 (e : Env 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit0 1 := .var _ _ (by rw [h1]; decide)
theorem q39 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q26 e h0 h2) (q38 e h1) (by decide)
theorem q40 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q29 e h0 h2) (q38 e h1) (by decide)
theorem q41 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q32 e h0 h2) (q38 e h1) (by decide)
theorem q42 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q35 e h0 h2) (q38 e h1) (by decide)
theorem q43 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit13 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q39 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q40 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q41 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q42 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q44 (e : Env 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit0 2 := .var _ _ (by rw [h1]; decide)
theorem q45 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q26 e h0 h2) (q44 e h1) (by decide)
theorem q46 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q29 e h0 h2) (q44 e h1) (by decide)
theorem q47 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q32 e h0 h2) (q44 e h1) (by decide)
theorem q48 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q35 e h0 h2) (q44 e h1) (by decide)
theorem q49 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit13 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q45 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q46 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q47 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q48 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q50 (e : Env 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit0 3 := .var _ _ (by rw [h1]; decide)
theorem q51 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q26 e h0 h2) (q50 e h1) (by decide)
theorem q52 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q29 e h0 h2) (q50 e h1) (by decide)
theorem q53 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q32 e h0 h2) (q50 e h1) (by decide)
theorem q54 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op42b062149732.G e lit12 0 := .app (q35 e h0 h2) (q50 e h1) (by decide)
theorem q55 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op42b062149732.G e lit13 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q51 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q52 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q53 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q54 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q56 (e : Env 3) (h0 : e 0 = 0) : Typed Op42b062149732.G e lit14 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q37 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q43 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q49 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q55 (push 3 e) rfl h0).weaken _ (by decide)
theorem q57 (e : Env 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit9 1 := .var _ _ (by rw [h2]; decide)
theorem q58 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit10 0 := .app (q57 e h2) (q3 e h0) (by decide)
theorem q59 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit11 0 := .app (q58 e h0 h2) (q2 e h0) (by decide)
theorem q60 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q59 e h0 h2) (q0 e h1) (by decide)
theorem q61 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit10 0 := .app (q57 e h2) (q8 e h0) (by decide)
theorem q62 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit11 0 := .app (q61 e h0 h2) (q7 e h0) (by decide)
theorem q63 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q62 e h0 h2) (q0 e h1) (by decide)
theorem q64 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit10 0 := .app (q57 e h2) (q13 e h0) (by decide)
theorem q65 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit11 0 := .app (q64 e h0 h2) (q12 e h0) (by decide)
theorem q66 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q65 e h0 h2) (q0 e h1) (by decide)
theorem q67 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit10 3 := .app (q57 e h2) (q18 e h0) (by decide)
theorem q68 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit11 3 := .app (q67 e h0 h2) (q17 e h0) (by decide)
theorem q69 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 3 := .app (q68 e h0 h2) (q0 e h1) (by decide)
theorem q70 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit13 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q60 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q63 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q66 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q69 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q71 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q59 e h0 h2) (q38 e h1) (by decide)
theorem q72 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q62 e h0 h2) (q38 e h1) (by decide)
theorem q73 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q65 e h0 h2) (q38 e h1) (by decide)
theorem q74 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 3 := .app (q68 e h0 h2) (q38 e h1) (by decide)
theorem q75 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit13 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q71 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q72 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q73 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q74 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q76 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q59 e h0 h2) (q44 e h1) (by decide)
theorem q77 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q62 e h0 h2) (q44 e h1) (by decide)
theorem q78 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q65 e h0 h2) (q44 e h1) (by decide)
theorem q79 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 3 := .app (q68 e h0 h2) (q44 e h1) (by decide)
theorem q80 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit13 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q76 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q77 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q78 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q79 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q81 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q59 e h0 h2) (q50 e h1) (by decide)
theorem q82 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q62 e h0 h2) (q50 e h1) (by decide)
theorem q83 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 0 := .app (q65 e h0 h2) (q50 e h1) (by decide)
theorem q84 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op42b062149732.G e lit12 3 := .app (q68 e h0 h2) (q50 e h1) (by decide)
theorem q85 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op42b062149732.G e lit13 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q81 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q82 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q83 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q84 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q86 (e : Env 3) (h0 : e 0 = 1) : Typed Op42b062149732.G e lit14 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q70 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q75 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q80 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q85 (push 3 e) rfl h0).weaken _ (by decide)
theorem q87 (e : Env 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit9 2 := .var _ _ (by rw [h2]; decide)
theorem q88 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit10 1 := .app (q87 e h2) (q3 e h0) (by decide)
theorem q89 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit11 0 := .app (q88 e h0 h2) (q2 e h0) (by decide)
theorem q90 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q89 e h0 h2) (q0 e h1) (by decide)
theorem q91 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit10 1 := .app (q87 e h2) (q8 e h0) (by decide)
theorem q92 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit11 0 := .app (q91 e h0 h2) (q7 e h0) (by decide)
theorem q93 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q92 e h0 h2) (q0 e h1) (by decide)
theorem q94 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit10 1 := .app (q87 e h2) (q13 e h0) (by decide)
theorem q95 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit11 0 := .app (q94 e h0 h2) (q12 e h0) (by decide)
theorem q96 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q95 e h0 h2) (q0 e h1) (by decide)
theorem q97 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit10 3 := .app (q87 e h2) (q18 e h0) (by decide)
theorem q98 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit11 3 := .app (q97 e h0 h2) (q17 e h0) (by decide)
theorem q99 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 3 := .app (q98 e h0 h2) (q0 e h1) (by decide)
theorem q100 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit13 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q90 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q93 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q96 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q99 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q101 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q89 e h0 h2) (q38 e h1) (by decide)
theorem q102 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q92 e h0 h2) (q38 e h1) (by decide)
theorem q103 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q95 e h0 h2) (q38 e h1) (by decide)
theorem q104 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 3 := .app (q98 e h0 h2) (q38 e h1) (by decide)
theorem q105 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit13 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q101 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q102 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q103 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q104 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q106 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q89 e h0 h2) (q44 e h1) (by decide)
theorem q107 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q92 e h0 h2) (q44 e h1) (by decide)
theorem q108 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q95 e h0 h2) (q44 e h1) (by decide)
theorem q109 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 3 := .app (q98 e h0 h2) (q44 e h1) (by decide)
theorem q110 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit13 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q106 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q107 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q108 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q109 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q111 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q89 e h0 h2) (q50 e h1) (by decide)
theorem q112 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q92 e h0 h2) (q50 e h1) (by decide)
theorem q113 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 0 := .app (q95 e h0 h2) (q50 e h1) (by decide)
theorem q114 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op42b062149732.G e lit12 3 := .app (q98 e h0 h2) (q50 e h1) (by decide)
theorem q115 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op42b062149732.G e lit13 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q111 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q112 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q113 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q114 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q116 (e : Env 3) (h0 : e 0 = 2) : Typed Op42b062149732.G e lit14 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q100 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q105 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q110 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q115 (push 3 e) rfl h0).weaken _ (by decide)
theorem q117 (e : Env 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit9 3 := .var _ _ (by rw [h2]; decide)
theorem q118 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit10 3 := .app (q117 e h2) (q3 e h0) (by decide)
theorem q119 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit11 3 := .app (q118 e h0 h2) (q2 e h0) (by decide)
theorem q120 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q119 e h0 h2) (q0 e h1) (by decide)
theorem q121 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit10 3 := .app (q117 e h2) (q8 e h0) (by decide)
theorem q122 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit11 3 := .app (q121 e h0 h2) (q7 e h0) (by decide)
theorem q123 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q122 e h0 h2) (q0 e h1) (by decide)
theorem q124 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit10 3 := .app (q117 e h2) (q13 e h0) (by decide)
theorem q125 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit11 3 := .app (q124 e h0 h2) (q12 e h0) (by decide)
theorem q126 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q125 e h0 h2) (q0 e h1) (by decide)
theorem q127 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit10 3 := .app (q117 e h2) (q18 e h0) (by decide)
theorem q128 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit11 3 := .app (q127 e h0 h2) (q17 e h0) (by decide)
theorem q129 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q128 e h0 h2) (q0 e h1) (by decide)
theorem q130 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit13 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q120 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q123 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q126 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q129 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q131 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q119 e h0 h2) (q38 e h1) (by decide)
theorem q132 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q122 e h0 h2) (q38 e h1) (by decide)
theorem q133 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q125 e h0 h2) (q38 e h1) (by decide)
theorem q134 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q128 e h0 h2) (q38 e h1) (by decide)
theorem q135 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit13 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q131 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q132 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q133 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q134 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q136 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q119 e h0 h2) (q44 e h1) (by decide)
theorem q137 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q122 e h0 h2) (q44 e h1) (by decide)
theorem q138 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q125 e h0 h2) (q44 e h1) (by decide)
theorem q139 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q128 e h0 h2) (q44 e h1) (by decide)
theorem q140 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit13 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q136 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q137 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q138 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q139 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q141 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q119 e h0 h2) (q50 e h1) (by decide)
theorem q142 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q122 e h0 h2) (q50 e h1) (by decide)
theorem q143 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q125 e h0 h2) (q50 e h1) (by decide)
theorem q144 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op42b062149732.G e lit12 3 := .app (q128 e h0 h2) (q50 e h1) (by decide)
theorem q145 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op42b062149732.G e lit13 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q141 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q142 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q143 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q144 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q146 (e : Env 3) (h0 : e 0 = 3) : Typed Op42b062149732.G e lit14 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q130 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q135 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q140 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q145 (push 3 e) rfl h0).weaken _ (by decide)
theorem q147 (e : Env 3)  : Typed Op42b062149732.G e lit15 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q56 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q86 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q116 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q146 (push 3 e) rfl).weaken _ (by decide)
end Blc.Floor45.Probe9540465259350
