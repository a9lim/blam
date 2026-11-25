import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Op8ac318f5209b

set_option Elab.async false
namespace Blc.Floor45.Probe2394987525358
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def lit0 : Term := .var 1
def lit1 : Term := .lam lit0
def lit2 : Term := .lam lit1
def lit3 : Term := .var 0
def lit4 : Term := .app lit3 lit2
def lit5 : Term := .lam lit3
def lit6 : Term := .lam lit5
def lit7 : Term := .app lit3 lit6
def lit8 : Term := .var 4
def lit9 : Term := .app lit4 lit8
def lit10 : Term := .lam lit9
def lit11 : Term := .app lit7 lit10
def lit12 : Term := .lam lit11
def lit13 : Term := .app lit4 lit12
def lit14 : Term := .lam lit13
def lit15 : Term := .app lit4 lit14
def lit16 : Term := .lam lit15
def lit17 : Term := .app lit0 lit3
def lit18 : Term := .var 2
def lit19 : Term := .app lit0 lit18
def lit20 : Term := .app lit17 lit19
def lit21 : Term := .lam lit20
def lit22 : Term := .app lit3 lit21
def lit23 : Term := .lam lit22
def lit24 : Term := .app lit0 lit8
def lit25 : Term := .app lit17 lit24
def lit26 : Term := .lam lit25
def lit27 : Term := .app lit3 lit26
def lit28 : Term := .lam lit27
def lit29 : Term := .app lit23 lit28
def lit30 : Term := .lam lit29
def lit31 : Term := .app lit16 lit30
def lit32 : Term := .app lit2 lit31
def lit33 : Term := .var 3
def lit34 : Term := .app lit4 lit33
def lit35 : Term := .lam lit34
def lit36 : Term := .app lit7 lit35
def lit37 : Term := .lam lit36
def lit38 : Term := .app lit4 lit37
def lit39 : Term := .lam lit38
def lit40 : Term := .app lit32 lit39
theorem q0 (e : Env 3) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit0 0 := .var _ _ (by rw [h1]; decide)
theorem q1 (e : Env 3) (h0 : e 0 = 0) : Typed Op8ac318f5209b.G e lit1 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q0 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q0 (push 3 e) h0).weaken _ (by decide)
theorem q2 (e : Env 3) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit0 1 := .var _ _ (by rw [h1]; decide)
theorem q3 (e : Env 3) (h0 : e 0 = 1) : Typed Op8ac318f5209b.G e lit1 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q2 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q2 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q2 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q2 (push 3 e) h0).weaken _ (by decide)
theorem q4 (e : Env 3) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit0 2 := .var _ _ (by rw [h1]; decide)
theorem q5 (e : Env 3) (h0 : e 0 = 2) : Typed Op8ac318f5209b.G e lit1 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q4 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q4 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q4 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q4 (push 3 e) h0).weaken _ (by decide)
theorem q6 (e : Env 3) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit0 3 := .var _ _ (by rw [h1]; decide)
theorem q7 (e : Env 3) (h0 : e 0 = 3) : Typed Op8ac318f5209b.G e lit1 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q6 (push 0 e) h0).weaken _ (by decide)
  · subst a; exact (q6 (push 1 e) h0).weaken _ (by decide)
  · subst a; exact (q6 (push 2 e) h0).weaken _ (by decide)
  · subst a; exact (q6 (push 3 e) h0).weaken _ (by decide)
theorem q8 (e : Env 3)  : Typed Op8ac318f5209b.G e lit2 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q1 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q3 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q5 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q7 (push 3 e) rfl).weaken _ (by decide)
theorem q9 (e : Env 3) (h0 : e 0 = 0) : Typed Op8ac318f5209b.G e lit3 0 := .var _ _ (by rw [h0]; decide)
theorem q10 (e : Env 3) (h0 : e 0 = 0) : Typed Op8ac318f5209b.G e lit4 0 := .app (q9 e h0) (q8 e) (by decide)
theorem q11 (e : Env 3) (h0 : e 0 = 1) : Typed Op8ac318f5209b.G e lit3 1 := .var _ _ (by rw [h0]; decide)
theorem q12 (e : Env 3) (h0 : e 0 = 2) : Typed Op8ac318f5209b.G e lit3 2 := .var _ _ (by rw [h0]; decide)
theorem q13 (e : Env 3) (h0 : e 0 = 3) : Typed Op8ac318f5209b.G e lit3 3 := .var _ _ (by rw [h0]; decide)
theorem q14 (e : Env 3)  : Typed Op8ac318f5209b.G e lit5 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q9 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q11 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q12 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q13 (push 3 e) rfl).weaken _ (by decide)
theorem q15 (e : Env 3)  : Typed Op8ac318f5209b.G e lit6 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q14 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q14 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q14 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q14 (push 3 e)).weaken _ (by decide)
theorem q16 (e : Env 3) (h0 : e 0 = 0) : Typed Op8ac318f5209b.G e lit7 0 := .app (q9 e h0) (q15 e) (by decide)
theorem q17 (e : Env 3) (h4 : e 4 = 0) : Typed Op8ac318f5209b.G e lit8 0 := .var _ _ (by rw [h4]; decide)
theorem q18 (e : Env 3) (h0 : e 0 = 0) (h4 : e 4 = 0) : Typed Op8ac318f5209b.G e lit9 0 := .app (q10 e h0) (q17 e h4) (by decide)
theorem q19 (e : Env 3) (h0 : e 0 = 1) : Typed Op8ac318f5209b.G e lit4 3 := .app (q11 e h0) (q8 e) (by decide)
theorem q20 (e : Env 3) (h0 : e 0 = 1) (h4 : e 4 = 0) : Typed Op8ac318f5209b.G e lit9 3 := .app (q19 e h0) (q17 e h4) (by decide)
theorem q21 (e : Env 3) (h0 : e 0 = 2) : Typed Op8ac318f5209b.G e lit4 3 := .app (q12 e h0) (q8 e) (by decide)
theorem q22 (e : Env 3) (h0 : e 0 = 2) (h4 : e 4 = 0) : Typed Op8ac318f5209b.G e lit9 3 := .app (q21 e h0) (q17 e h4) (by decide)
theorem q23 (e : Env 3) (h0 : e 0 = 3) : Typed Op8ac318f5209b.G e lit4 3 := .app (q13 e h0) (q8 e) (by decide)
theorem q24 (e : Env 3) (h0 : e 0 = 3) (h4 : e 4 = 0) : Typed Op8ac318f5209b.G e lit9 3 := .app (q23 e h0) (q17 e h4) (by decide)
theorem q25 (e : Env 3) (h3 : e 3 = 0) : Typed Op8ac318f5209b.G e lit10 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q18 (push 0 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q20 (push 1 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q22 (push 2 e) rfl h3).weaken _ (by decide)
  · subst a; exact (q24 (push 3 e) rfl h3).weaken _ (by decide)
theorem q26 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 0) : Typed Op8ac318f5209b.G e lit11 0 := .app (q16 e h0) (q25 e h3) (by decide)
theorem q27 (e : Env 3) (h0 : e 0 = 1) : Typed Op8ac318f5209b.G e lit7 3 := .app (q11 e h0) (q15 e) (by decide)
theorem q28 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 0) : Typed Op8ac318f5209b.G e lit11 3 := .app (q27 e h0) (q25 e h3) (by decide)
theorem q29 (e : Env 3) (h0 : e 0 = 2) : Typed Op8ac318f5209b.G e lit7 3 := .app (q12 e h0) (q15 e) (by decide)
theorem q30 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 0) : Typed Op8ac318f5209b.G e lit11 3 := .app (q29 e h0) (q25 e h3) (by decide)
theorem q31 (e : Env 3) (h0 : e 0 = 3) : Typed Op8ac318f5209b.G e lit7 3 := .app (q13 e h0) (q15 e) (by decide)
theorem q32 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 0) : Typed Op8ac318f5209b.G e lit11 3 := .app (q31 e h0) (q25 e h3) (by decide)
theorem q33 (e : Env 3) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit12 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q26 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q28 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q30 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q32 (push 3 e) rfl h2).weaken _ (by decide)
theorem q34 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit13 0 := .app (q10 e h0) (q33 e h2) (by decide)
theorem q35 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit13 3 := .app (q19 e h0) (q33 e h2) (by decide)
theorem q36 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit13 3 := .app (q21 e h0) (q33 e h2) (by decide)
theorem q37 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit13 3 := .app (q23 e h0) (q33 e h2) (by decide)
theorem q38 (e : Env 3) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit14 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q34 (push 0 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q35 (push 1 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q36 (push 2 e) rfl h1).weaken _ (by decide)
  · subst a; exact (q37 (push 3 e) rfl h1).weaken _ (by decide)
theorem q39 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit15 0 := .app (q10 e h0) (q38 e h1) (by decide)
theorem q40 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit15 3 := .app (q19 e h0) (q38 e h1) (by decide)
theorem q41 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit15 3 := .app (q21 e h0) (q38 e h1) (by decide)
theorem q42 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit15 3 := .app (q23 e h0) (q38 e h1) (by decide)
theorem q43 (e : Env 3) (h0 : e 0 = 0) : Typed Op8ac318f5209b.G e lit16 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q39 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q40 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q41 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q42 (push 3 e) rfl h0).weaken _ (by decide)
theorem q44 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit17 0 := .app (q0 e h1) (q9 e h0) (by decide)
theorem q45 (e : Env 3) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit18 0 := .var _ _ (by rw [h2]; decide)
theorem q46 (e : Env 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit19 0 := .app (q0 e h1) (q45 e h2) (by decide)
theorem q47 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit20 0 := .app (q44 e h0 h1) (q46 e h1 h2) (by decide)
theorem q48 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit17 0 := .app (q0 e h1) (q11 e h0) (by decide)
theorem q49 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit20 0 := .app (q48 e h0 h1) (q46 e h1 h2) (by decide)
theorem q50 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit17 0 := .app (q0 e h1) (q12 e h0) (by decide)
theorem q51 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit20 0 := .app (q50 e h0 h1) (q46 e h1 h2) (by decide)
theorem q52 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit17 0 := .app (q0 e h1) (q13 e h0) (by decide)
theorem q53 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit20 0 := .app (q52 e h0 h1) (q46 e h1 h2) (by decide)
theorem q54 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit21 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q47 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q49 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q51 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q53 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q55 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit22 0 := .app (q9 e h0) (q54 e h0 h1) (by decide)
theorem q56 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit17 0 := .app (q2 e h1) (q9 e h0) (by decide)
theorem q57 (e : Env 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit19 0 := .app (q2 e h1) (q45 e h2) (by decide)
theorem q58 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit20 0 := .app (q56 e h0 h1) (q57 e h1 h2) (by decide)
theorem q59 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit17 0 := .app (q2 e h1) (q11 e h0) (by decide)
theorem q60 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit20 0 := .app (q59 e h0 h1) (q57 e h1 h2) (by decide)
theorem q61 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit17 3 := .app (q2 e h1) (q12 e h0) (by decide)
theorem q62 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit20 3 := .app (q61 e h0 h1) (q57 e h1 h2) (by decide)
theorem q63 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit17 3 := .app (q2 e h1) (q13 e h0) (by decide)
theorem q64 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit20 3 := .app (q63 e h0 h1) (q57 e h1 h2) (by decide)
theorem q65 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit21 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q58 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q60 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q62 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q64 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q66 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit22 0 := .app (q11 e h0) (q65 e h0 h1) (by decide)
theorem q67 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit17 0 := .app (q4 e h1) (q9 e h0) (by decide)
theorem q68 (e : Env 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit19 0 := .app (q4 e h1) (q45 e h2) (by decide)
theorem q69 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit20 0 := .app (q67 e h0 h1) (q68 e h1 h2) (by decide)
theorem q70 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit17 3 := .app (q4 e h1) (q11 e h0) (by decide)
theorem q71 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit20 3 := .app (q70 e h0 h1) (q68 e h1 h2) (by decide)
theorem q72 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit17 3 := .app (q4 e h1) (q12 e h0) (by decide)
theorem q73 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit20 3 := .app (q72 e h0 h1) (q68 e h1 h2) (by decide)
theorem q74 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit17 3 := .app (q4 e h1) (q13 e h0) (by decide)
theorem q75 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit20 3 := .app (q74 e h0 h1) (q68 e h1 h2) (by decide)
theorem q76 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit21 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q69 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q71 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q73 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q75 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q77 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit22 3 := .app (q12 e h0) (q76 e h0 h1) (by decide)
theorem q78 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit17 3 := .app (q6 e h1) (q9 e h0) (by decide)
theorem q79 (e : Env 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit19 3 := .app (q6 e h1) (q45 e h2) (by decide)
theorem q80 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit20 3 := .app (q78 e h0 h1) (q79 e h1 h2) (by decide)
theorem q81 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit17 3 := .app (q6 e h1) (q11 e h0) (by decide)
theorem q82 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit20 3 := .app (q81 e h0 h1) (q79 e h1 h2) (by decide)
theorem q83 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit17 3 := .app (q6 e h1) (q12 e h0) (by decide)
theorem q84 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit20 3 := .app (q83 e h0 h1) (q79 e h1 h2) (by decide)
theorem q85 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit17 3 := .app (q6 e h1) (q13 e h0) (by decide)
theorem q86 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit20 3 := .app (q85 e h0 h1) (q79 e h1 h2) (by decide)
theorem q87 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit21 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q80 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q82 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q84 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q86 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q88 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit22 3 := .app (q13 e h0) (q87 e h0 h1) (by decide)
theorem q89 (e : Env 3) (h0 : e 0 = 0) : Typed Op8ac318f5209b.G e lit23 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q55 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q66 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q77 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q88 (push 3 e) rfl h0).weaken _ (by decide)
theorem q90 (e : Env 3) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit8 1 := .var _ _ (by rw [h4]; decide)
theorem q91 (e : Env 3) (h1 : e 1 = 0) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit24 0 := .app (q0 e h1) (q90 e h4) (by decide)
theorem q92 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit25 0 := .app (q44 e h0 h1) (q91 e h1 h4) (by decide)
theorem q93 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit25 0 := .app (q48 e h0 h1) (q91 e h1 h4) (by decide)
theorem q94 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit25 0 := .app (q50 e h0 h1) (q91 e h1 h4) (by decide)
theorem q95 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit25 0 := .app (q52 e h0 h1) (q91 e h1 h4) (by decide)
theorem q96 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 1) : Typed Op8ac318f5209b.G e lit26 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q92 (push 0 e) rfl h0 h3).weaken _ (by decide)
  · subst a; exact (q93 (push 1 e) rfl h0 h3).weaken _ (by decide)
  · subst a; exact (q94 (push 2 e) rfl h0 h3).weaken _ (by decide)
  · subst a; exact (q95 (push 3 e) rfl h0 h3).weaken _ (by decide)
theorem q97 (e : Env 3) (h0 : e 0 = 0) (h3 : e 3 = 1) : Typed Op8ac318f5209b.G e lit27 0 := .app (q9 e h0) (q96 e h0 h3) (by decide)
theorem q98 (e : Env 3) (h1 : e 1 = 1) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit24 0 := .app (q2 e h1) (q90 e h4) (by decide)
theorem q99 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit25 0 := .app (q56 e h0 h1) (q98 e h1 h4) (by decide)
theorem q100 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit25 0 := .app (q59 e h0 h1) (q98 e h1 h4) (by decide)
theorem q101 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit25 3 := .app (q61 e h0 h1) (q98 e h1 h4) (by decide)
theorem q102 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit25 3 := .app (q63 e h0 h1) (q98 e h1 h4) (by decide)
theorem q103 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 1) : Typed Op8ac318f5209b.G e lit26 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q99 (push 0 e) rfl h0 h3).weaken _ (by decide)
  · subst a; exact (q100 (push 1 e) rfl h0 h3).weaken _ (by decide)
  · subst a; exact (q101 (push 2 e) rfl h0 h3).weaken _ (by decide)
  · subst a; exact (q102 (push 3 e) rfl h0 h3).weaken _ (by decide)
theorem q104 (e : Env 3) (h0 : e 0 = 1) (h3 : e 3 = 1) : Typed Op8ac318f5209b.G e lit27 0 := .app (q11 e h0) (q103 e h0 h3) (by decide)
theorem q105 (e : Env 3) (h1 : e 1 = 2) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit24 3 := .app (q4 e h1) (q90 e h4) (by decide)
theorem q106 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit25 0 := .app (q67 e h0 h1) (q105 e h1 h4) (by decide)
theorem q107 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit25 3 := .app (q70 e h0 h1) (q105 e h1 h4) (by decide)
theorem q108 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit25 3 := .app (q72 e h0 h1) (q105 e h1 h4) (by decide)
theorem q109 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit25 3 := .app (q74 e h0 h1) (q105 e h1 h4) (by decide)
theorem q110 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 1) : Typed Op8ac318f5209b.G e lit26 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q106 (push 0 e) rfl h0 h3).weaken _ (by decide)
  · subst a; exact (q107 (push 1 e) rfl h0 h3).weaken _ (by decide)
  · subst a; exact (q108 (push 2 e) rfl h0 h3).weaken _ (by decide)
  · subst a; exact (q109 (push 3 e) rfl h0 h3).weaken _ (by decide)
theorem q111 (e : Env 3) (h0 : e 0 = 2) (h3 : e 3 = 1) : Typed Op8ac318f5209b.G e lit27 3 := .app (q12 e h0) (q110 e h0 h3) (by decide)
theorem q112 (e : Env 3) (h1 : e 1 = 3) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit24 3 := .app (q6 e h1) (q90 e h4) (by decide)
theorem q113 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit25 3 := .app (q78 e h0 h1) (q112 e h1 h4) (by decide)
theorem q114 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit25 3 := .app (q81 e h0 h1) (q112 e h1 h4) (by decide)
theorem q115 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit25 3 := .app (q83 e h0 h1) (q112 e h1 h4) (by decide)
theorem q116 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h4 : e 4 = 1) : Typed Op8ac318f5209b.G e lit25 3 := .app (q85 e h0 h1) (q112 e h1 h4) (by decide)
theorem q117 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 1) : Typed Op8ac318f5209b.G e lit26 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q113 (push 0 e) rfl h0 h3).weaken _ (by decide)
  · subst a; exact (q114 (push 1 e) rfl h0 h3).weaken _ (by decide)
  · subst a; exact (q115 (push 2 e) rfl h0 h3).weaken _ (by decide)
  · subst a; exact (q116 (push 3 e) rfl h0 h3).weaken _ (by decide)
theorem q118 (e : Env 3) (h0 : e 0 = 3) (h3 : e 3 = 1) : Typed Op8ac318f5209b.G e lit27 3 := .app (q13 e h0) (q117 e h0 h3) (by decide)
theorem q119 (e : Env 3) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit28 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q97 (push 0 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q104 (push 1 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q111 (push 2 e) rfl h2).weaken _ (by decide)
  · subst a; exact (q118 (push 3 e) rfl h2).weaken _ (by decide)
theorem q120 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit29 0 := .app (q89 e h0) (q119 e h2) (by decide)
theorem q121 (e : Env 3) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit18 1 := .var _ _ (by rw [h2]; decide)
theorem q122 (e : Env 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit19 0 := .app (q0 e h1) (q121 e h2) (by decide)
theorem q123 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit20 0 := .app (q44 e h0 h1) (q122 e h1 h2) (by decide)
theorem q124 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit20 0 := .app (q48 e h0 h1) (q122 e h1 h2) (by decide)
theorem q125 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit20 0 := .app (q50 e h0 h1) (q122 e h1 h2) (by decide)
theorem q126 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit20 0 := .app (q52 e h0 h1) (q122 e h1 h2) (by decide)
theorem q127 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit21 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q123 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q124 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q125 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q126 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q128 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit22 0 := .app (q9 e h0) (q127 e h0 h1) (by decide)
theorem q129 (e : Env 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit19 0 := .app (q2 e h1) (q121 e h2) (by decide)
theorem q130 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit20 0 := .app (q56 e h0 h1) (q129 e h1 h2) (by decide)
theorem q131 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit20 0 := .app (q59 e h0 h1) (q129 e h1 h2) (by decide)
theorem q132 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit20 3 := .app (q61 e h0 h1) (q129 e h1 h2) (by decide)
theorem q133 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit20 3 := .app (q63 e h0 h1) (q129 e h1 h2) (by decide)
theorem q134 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit21 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q130 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q131 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q132 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q133 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q135 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit22 0 := .app (q11 e h0) (q134 e h0 h1) (by decide)
theorem q136 (e : Env 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit19 3 := .app (q4 e h1) (q121 e h2) (by decide)
theorem q137 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit20 0 := .app (q67 e h0 h1) (q136 e h1 h2) (by decide)
theorem q138 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit20 3 := .app (q70 e h0 h1) (q136 e h1 h2) (by decide)
theorem q139 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit20 3 := .app (q72 e h0 h1) (q136 e h1 h2) (by decide)
theorem q140 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit20 3 := .app (q74 e h0 h1) (q136 e h1 h2) (by decide)
theorem q141 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit21 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q137 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q138 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q139 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q140 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q142 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit22 3 := .app (q12 e h0) (q141 e h0 h1) (by decide)
theorem q143 (e : Env 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit19 3 := .app (q6 e h1) (q121 e h2) (by decide)
theorem q144 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit20 3 := .app (q78 e h0 h1) (q143 e h1 h2) (by decide)
theorem q145 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit20 3 := .app (q81 e h0 h1) (q143 e h1 h2) (by decide)
end Blc.Floor45.Probe2394987525358
