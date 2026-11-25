import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Op8ac318f5209b

set_option Elab.async false
namespace Blc.Floor45.Probe9692402103682
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def lit0 : Term := .var 0
def lit1 : Term := .lam lit0
def lit2 : Term := .app lit0 lit0
def lit3 : Term := .app lit1 lit2
def lit4 : Term := .lam lit1
def lit5 : Term := .app lit3 lit4
def lit6 : Term := .lam lit5
def lit7 : Term := .var 2
def lit8 : Term := .app lit7 lit2
def lit9 : Term := .var 1
def lit10 : Term := .app lit8 lit9
def lit11 : Term := .lam lit10
def lit12 : Term := .lam lit11
def lit13 : Term := .app lit0 lit12
def lit14 : Term := .app lit13 lit4
def lit15 : Term := .lam lit14
def lit16 : Term := .app lit9 lit9
def lit17 : Term := .app lit15 lit16
def lit18 : Term := .app lit17 lit2
def lit19 : Term := .lam lit18
def lit20 : Term := .lam lit19
def lit21 : Term := .app lit6 lit20
def lit22 : Term := .app lit21 lit4
def lit23 : Term := .app lit22 lit9
def lit24 : Term := .lam lit9
def lit25 : Term := .lam lit24
def lit26 : Term := .app lit0 lit25
def lit27 : Term := .app lit0 lit4
def lit28 : Term := .var 4
def lit29 : Term := .app lit26 lit28
def lit30 : Term := .lam lit29
def lit31 : Term := .app lit27 lit30
def lit32 : Term := .lam lit31
def lit33 : Term := .app lit26 lit32
def lit34 : Term := .lam lit33
def lit35 : Term := .app lit26 lit34
def lit36 : Term := .lam lit35
def lit37 : Term := .app lit23 lit36
theorem q0 (e : Env 3) (h0 : e 0 = 0) : Typed Op8ac318f5209b.G e lit0 0 := .var _ _ (by rw [h0]; decide)
theorem q1 (e : Env 3) (h0 : e 0 = 1) : Typed Op8ac318f5209b.G e lit0 1 := .var _ _ (by rw [h0]; decide)
theorem q2 (e : Env 3) (h0 : e 0 = 2) : Typed Op8ac318f5209b.G e lit0 2 := .var _ _ (by rw [h0]; decide)
theorem q3 (e : Env 3) (h0 : e 0 = 3) : Typed Op8ac318f5209b.G e lit0 3 := .var _ _ (by rw [h0]; decide)
theorem q4 (e : Env 3)  : Typed Op8ac318f5209b.G e lit1 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q0 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q1 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q2 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q3 (push 3 e) rfl).weaken _ (by decide)
theorem q5 (e : Env 3) (h0 : e 0 = 0) : Typed Op8ac318f5209b.G e lit2 0 := .app (q0 e h0) (q0 e h0) (by decide)
theorem q6 (e : Env 3) (h0 : e 0 = 0) : Typed Op8ac318f5209b.G e lit3 0 := .app (q4 e) (q5 e h0) (by decide)
theorem q7 (e : Env 3)  : Typed Op8ac318f5209b.G e lit4 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q4 (push 0 e)).weaken _ (by decide)
  · subst a; exact (q4 (push 1 e)).weaken _ (by decide)
  · subst a; exact (q4 (push 2 e)).weaken _ (by decide)
  · subst a; exact (q4 (push 3 e)).weaken _ (by decide)
theorem q8 (e : Env 3) (h0 : e 0 = 0) : Typed Op8ac318f5209b.G e lit5 0 := .app (q6 e h0) (q7 e) (by decide)
theorem q9 (e : Env 3) (h0 : e 0 = 1) : Typed Op8ac318f5209b.G e lit2 0 := .app (q1 e h0) (q1 e h0) (by decide)
theorem q10 (e : Env 3) (h0 : e 0 = 1) : Typed Op8ac318f5209b.G e lit3 0 := .app (q4 e) (q9 e h0) (by decide)
theorem q11 (e : Env 3) (h0 : e 0 = 1) : Typed Op8ac318f5209b.G e lit5 0 := .app (q10 e h0) (q7 e) (by decide)
theorem q12 (e : Env 3) (h0 : e 0 = 2) : Typed Op8ac318f5209b.G e lit2 3 := .app (q2 e h0) (q2 e h0) (by decide)
theorem q13 (e : Env 3) (h0 : e 0 = 2) : Typed Op8ac318f5209b.G e lit3 3 := .app (q4 e) (q12 e h0) (by decide)
theorem q14 (e : Env 3) (h0 : e 0 = 2) : Typed Op8ac318f5209b.G e lit5 3 := .app (q13 e h0) (q7 e) (by decide)
theorem q15 (e : Env 3) (h0 : e 0 = 3) : Typed Op8ac318f5209b.G e lit2 3 := .app (q3 e h0) (q3 e h0) (by decide)
theorem q16 (e : Env 3) (h0 : e 0 = 3) : Typed Op8ac318f5209b.G e lit3 3 := .app (q4 e) (q15 e h0) (by decide)
theorem q17 (e : Env 3) (h0 : e 0 = 3) : Typed Op8ac318f5209b.G e lit5 3 := .app (q16 e h0) (q7 e) (by decide)
theorem q18 (e : Env 3)  : Typed Op8ac318f5209b.G e lit6 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q8 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q11 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q14 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q17 (push 3 e) rfl).weaken _ (by decide)
theorem q19 (e : Env 3) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit7 0 := .var _ _ (by rw [h2]; decide)
theorem q20 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit8 0 := .app (q19 e h2) (q5 e h0) (by decide)
theorem q21 (e : Env 3) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit9 0 := .var _ _ (by rw [h1]; decide)
theorem q22 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit10 0 := .app (q20 e h0 h2) (q21 e h1) (by decide)
theorem q23 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit8 0 := .app (q19 e h2) (q9 e h0) (by decide)
theorem q24 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit10 0 := .app (q23 e h0 h2) (q21 e h1) (by decide)
theorem q25 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit8 0 := .app (q19 e h2) (q12 e h0) (by decide)
theorem q26 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit10 0 := .app (q25 e h0 h2) (q21 e h1) (by decide)
theorem q27 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit8 0 := .app (q19 e h2) (q15 e h0) (by decide)
theorem q28 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit10 0 := .app (q27 e h0 h2) (q21 e h1) (by decide)
theorem q29 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit11 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q22 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q24 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q26 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q28 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q30 (e : Env 3) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit9 1 := .var _ _ (by rw [h1]; decide)
theorem q31 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit10 0 := .app (q20 e h0 h2) (q30 e h1) (by decide)
theorem q32 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit10 0 := .app (q23 e h0 h2) (q30 e h1) (by decide)
theorem q33 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit10 0 := .app (q25 e h0 h2) (q30 e h1) (by decide)
theorem q34 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit10 0 := .app (q27 e h0 h2) (q30 e h1) (by decide)
theorem q35 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit11 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q31 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q32 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q33 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q34 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q36 (e : Env 3) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit9 2 := .var _ _ (by rw [h1]; decide)
theorem q37 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit10 0 := .app (q20 e h0 h2) (q36 e h1) (by decide)
theorem q38 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit10 0 := .app (q23 e h0 h2) (q36 e h1) (by decide)
theorem q39 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit10 0 := .app (q25 e h0 h2) (q36 e h1) (by decide)
theorem q40 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit10 0 := .app (q27 e h0 h2) (q36 e h1) (by decide)
theorem q41 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit11 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q37 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q38 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q39 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q40 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q42 (e : Env 3) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit9 3 := .var _ _ (by rw [h1]; decide)
theorem q43 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit10 0 := .app (q20 e h0 h2) (q42 e h1) (by decide)
theorem q44 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit10 0 := .app (q23 e h0 h2) (q42 e h1) (by decide)
theorem q45 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit10 0 := .app (q25 e h0 h2) (q42 e h1) (by decide)
theorem q46 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 0) : Typed Op8ac318f5209b.G e lit10 0 := .app (q27 e h0 h2) (q42 e h1) (by decide)
theorem q47 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit11 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q43 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q44 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q45 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q46 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q48 (e : Env 3) (h0 : e 0 = 0) : Typed Op8ac318f5209b.G e lit12 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q29 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q35 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q41 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q47 (push 3 e) rfl h0).weaken _ (by decide)
theorem q49 (e : Env 3) (h0 : e 0 = 0) : Typed Op8ac318f5209b.G e lit13 0 := .app (q0 e h0) (q48 e h0) (by decide)
theorem q50 (e : Env 3) (h0 : e 0 = 0) : Typed Op8ac318f5209b.G e lit14 0 := .app (q49 e h0) (q7 e) (by decide)
theorem q51 (e : Env 3) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit7 1 := .var _ _ (by rw [h2]; decide)
theorem q52 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit8 0 := .app (q51 e h2) (q5 e h0) (by decide)
theorem q53 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit10 0 := .app (q52 e h0 h2) (q21 e h1) (by decide)
theorem q54 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit8 0 := .app (q51 e h2) (q9 e h0) (by decide)
theorem q55 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit10 0 := .app (q54 e h0 h2) (q21 e h1) (by decide)
theorem q56 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit8 3 := .app (q51 e h2) (q12 e h0) (by decide)
theorem q57 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit10 3 := .app (q56 e h0 h2) (q21 e h1) (by decide)
theorem q58 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit8 3 := .app (q51 e h2) (q15 e h0) (by decide)
theorem q59 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit10 3 := .app (q58 e h0 h2) (q21 e h1) (by decide)
theorem q60 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit11 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q53 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q55 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q57 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q59 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q61 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit10 0 := .app (q52 e h0 h2) (q30 e h1) (by decide)
theorem q62 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit10 0 := .app (q54 e h0 h2) (q30 e h1) (by decide)
theorem q63 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit10 3 := .app (q56 e h0 h2) (q30 e h1) (by decide)
theorem q64 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit10 3 := .app (q58 e h0 h2) (q30 e h1) (by decide)
theorem q65 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit11 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q61 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q62 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q63 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q64 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q66 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit10 0 := .app (q52 e h0 h2) (q36 e h1) (by decide)
theorem q67 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit10 0 := .app (q54 e h0 h2) (q36 e h1) (by decide)
theorem q68 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit10 3 := .app (q56 e h0 h2) (q36 e h1) (by decide)
theorem q69 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit10 3 := .app (q58 e h0 h2) (q36 e h1) (by decide)
theorem q70 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit11 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q66 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q67 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q68 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q69 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q71 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit10 0 := .app (q52 e h0 h2) (q42 e h1) (by decide)
theorem q72 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit10 0 := .app (q54 e h0 h2) (q42 e h1) (by decide)
theorem q73 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit10 3 := .app (q56 e h0 h2) (q42 e h1) (by decide)
theorem q74 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 1) : Typed Op8ac318f5209b.G e lit10 3 := .app (q58 e h0 h2) (q42 e h1) (by decide)
theorem q75 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) : Typed Op8ac318f5209b.G e lit11 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q71 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q72 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q73 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q74 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q76 (e : Env 3) (h0 : e 0 = 1) : Typed Op8ac318f5209b.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q60 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q65 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q70 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q75 (push 3 e) rfl h0).weaken _ (by decide)
theorem q77 (e : Env 3) (h0 : e 0 = 1) : Typed Op8ac318f5209b.G e lit13 3 := .app (q1 e h0) (q76 e h0) (by decide)
theorem q78 (e : Env 3) (h0 : e 0 = 1) : Typed Op8ac318f5209b.G e lit14 3 := .app (q77 e h0) (q7 e) (by decide)
theorem q79 (e : Env 3) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit7 2 := .var _ _ (by rw [h2]; decide)
theorem q80 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit8 0 := .app (q79 e h2) (q5 e h0) (by decide)
theorem q81 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit10 0 := .app (q80 e h0 h2) (q21 e h1) (by decide)
theorem q82 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit8 0 := .app (q79 e h2) (q9 e h0) (by decide)
theorem q83 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit10 0 := .app (q82 e h0 h2) (q21 e h1) (by decide)
theorem q84 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit8 3 := .app (q79 e h2) (q12 e h0) (by decide)
theorem q85 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit10 3 := .app (q84 e h0 h2) (q21 e h1) (by decide)
theorem q86 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit8 3 := .app (q79 e h2) (q15 e h0) (by decide)
theorem q87 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit10 3 := .app (q86 e h0 h2) (q21 e h1) (by decide)
theorem q88 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit11 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q81 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q83 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q85 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q87 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q89 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit10 0 := .app (q80 e h0 h2) (q30 e h1) (by decide)
theorem q90 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit10 0 := .app (q82 e h0 h2) (q30 e h1) (by decide)
theorem q91 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit10 3 := .app (q84 e h0 h2) (q30 e h1) (by decide)
theorem q92 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit10 3 := .app (q86 e h0 h2) (q30 e h1) (by decide)
theorem q93 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit11 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q89 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q90 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q91 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q92 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q94 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit10 0 := .app (q80 e h0 h2) (q36 e h1) (by decide)
theorem q95 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit10 0 := .app (q82 e h0 h2) (q36 e h1) (by decide)
theorem q96 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit10 3 := .app (q84 e h0 h2) (q36 e h1) (by decide)
theorem q97 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit10 3 := .app (q86 e h0 h2) (q36 e h1) (by decide)
theorem q98 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit11 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q94 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q95 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q96 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q97 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q99 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit10 0 := .app (q80 e h0 h2) (q42 e h1) (by decide)
theorem q100 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit10 0 := .app (q82 e h0 h2) (q42 e h1) (by decide)
theorem q101 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit10 3 := .app (q84 e h0 h2) (q42 e h1) (by decide)
theorem q102 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 2) : Typed Op8ac318f5209b.G e lit10 3 := .app (q86 e h0 h2) (q42 e h1) (by decide)
theorem q103 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) : Typed Op8ac318f5209b.G e lit11 1 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q99 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q100 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q101 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q102 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q104 (e : Env 3) (h0 : e 0 = 2) : Typed Op8ac318f5209b.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q88 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q93 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q98 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q103 (push 3 e) rfl h0).weaken _ (by decide)
theorem q105 (e : Env 3) (h0 : e 0 = 2) : Typed Op8ac318f5209b.G e lit13 3 := .app (q2 e h0) (q104 e h0) (by decide)
theorem q106 (e : Env 3) (h0 : e 0 = 2) : Typed Op8ac318f5209b.G e lit14 3 := .app (q105 e h0) (q7 e) (by decide)
theorem q107 (e : Env 3) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit7 3 := .var _ _ (by rw [h2]; decide)
theorem q108 (e : Env 3) (h0 : e 0 = 0) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit8 3 := .app (q107 e h2) (q5 e h0) (by decide)
theorem q109 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit10 3 := .app (q108 e h0 h2) (q21 e h1) (by decide)
theorem q110 (e : Env 3) (h0 : e 0 = 1) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit8 3 := .app (q107 e h2) (q9 e h0) (by decide)
theorem q111 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit10 3 := .app (q110 e h0 h2) (q21 e h1) (by decide)
theorem q112 (e : Env 3) (h0 : e 0 = 2) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit8 3 := .app (q107 e h2) (q12 e h0) (by decide)
theorem q113 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit10 3 := .app (q112 e h0 h2) (q21 e h1) (by decide)
theorem q114 (e : Env 3) (h0 : e 0 = 3) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit8 3 := .app (q107 e h2) (q15 e h0) (by decide)
theorem q115 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit10 3 := .app (q114 e h0 h2) (q21 e h1) (by decide)
theorem q116 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit11 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q109 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q111 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q113 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q115 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q117 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit10 3 := .app (q108 e h0 h2) (q30 e h1) (by decide)
theorem q118 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit10 3 := .app (q110 e h0 h2) (q30 e h1) (by decide)
theorem q119 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit10 3 := .app (q112 e h0 h2) (q30 e h1) (by decide)
theorem q120 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 1) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit10 3 := .app (q114 e h0 h2) (q30 e h1) (by decide)
theorem q121 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit11 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q117 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q118 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q119 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q120 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q122 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit10 3 := .app (q108 e h0 h2) (q36 e h1) (by decide)
theorem q123 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit10 3 := .app (q110 e h0 h2) (q36 e h1) (by decide)
theorem q124 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit10 3 := .app (q112 e h0 h2) (q36 e h1) (by decide)
theorem q125 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 2) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit10 3 := .app (q114 e h0 h2) (q36 e h1) (by decide)
theorem q126 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit11 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q122 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q123 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q124 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q125 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q127 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit10 3 := .app (q108 e h0 h2) (q42 e h1) (by decide)
theorem q128 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit10 3 := .app (q110 e h0 h2) (q42 e h1) (by decide)
theorem q129 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit10 3 := .app (q112 e h0 h2) (q42 e h1) (by decide)
theorem q130 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) (h2 : e 2 = 3) : Typed Op8ac318f5209b.G e lit10 3 := .app (q114 e h0 h2) (q42 e h1) (by decide)
theorem q131 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 3) : Typed Op8ac318f5209b.G e lit11 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q127 (push 0 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q128 (push 1 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q129 (push 2 e) rfl h0 h1).weaken _ (by decide)
  · subst a; exact (q130 (push 3 e) rfl h0 h1).weaken _ (by decide)
theorem q132 (e : Env 3) (h0 : e 0 = 3) : Typed Op8ac318f5209b.G e lit12 3 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q116 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q121 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q126 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q131 (push 3 e) rfl h0).weaken _ (by decide)
theorem q133 (e : Env 3) (h0 : e 0 = 3) : Typed Op8ac318f5209b.G e lit13 3 := .app (q3 e h0) (q132 e h0) (by decide)
theorem q134 (e : Env 3) (h0 : e 0 = 3) : Typed Op8ac318f5209b.G e lit14 3 := .app (q133 e h0) (q7 e) (by decide)
theorem q135 (e : Env 3)  : Typed Op8ac318f5209b.G e lit15 2 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q50 (push 0 e) rfl).weaken _ (by decide)
  · subst a; exact (q78 (push 1 e) rfl).weaken _ (by decide)
  · subst a; exact (q106 (push 2 e) rfl).weaken _ (by decide)
  · subst a; exact (q134 (push 3 e) rfl).weaken _ (by decide)
theorem q136 (e : Env 3) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit16 0 := .app (q21 e h1) (q21 e h1) (by decide)
theorem q137 (e : Env 3) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit17 0 := .app (q135 e) (q136 e h1) (by decide)
theorem q138 (e : Env 3) (h0 : e 0 = 0) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit18 0 := .app (q137 e h1) (q5 e h0) (by decide)
theorem q139 (e : Env 3) (h0 : e 0 = 1) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit18 0 := .app (q137 e h1) (q9 e h0) (by decide)
theorem q140 (e : Env 3) (h0 : e 0 = 2) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit18 0 := .app (q137 e h1) (q12 e h0) (by decide)
theorem q141 (e : Env 3) (h0 : e 0 = 3) (h1 : e 1 = 0) : Typed Op8ac318f5209b.G e lit18 0 := .app (q137 e h1) (q15 e h0) (by decide)
theorem q142 (e : Env 3) (h0 : e 0 = 0) : Typed Op8ac318f5209b.G e lit19 0 := by
  apply Typed.lam (by decide)
  intro a
  have hcases : a=0 ∨ a=1 ∨ a=2 ∨ a=3 := (by decide : ∀ a : Fin 4, a=0 ∨ a=1 ∨ a=2 ∨ a=3) a
  rcases hcases with el | el | el | el
  · subst a; exact (q138 (push 0 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q139 (push 1 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q140 (push 2 e) rfl h0).weaken _ (by decide)
  · subst a; exact (q141 (push 3 e) rfl h0).weaken _ (by decide)
end Blc.Floor45.Probe9692402103682
