import Handoff
namespace Blc.Simplify
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintWidenHoist SelfintSourceCost SelfintLocalCost SelfintControl
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
def wrappedWitness : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.lam (.var 6))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1)))))))) (.var 1))
theorem wrapped_reduce : Betas wrappedWitness reader162 :=
  headSteps_beta_star (by decide : headSteps 5 wrappedWitness = some reader162)
theorem wrapped_full : SelfintWiden.FullReader wrappedWitness :=
  SelfintWiden.FullReader.of_betas (by decide) wrapped_reduce SelfintWiden.reader162_fullReader
theorem wrapped_price : weight 0 wrappedWitness=70 ∧ occ 1 wrappedWitness=1 := by decide
#print axioms wrapped_full

def specializedWitness : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.lam (.var 5))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1)))))) (.var 1))
theorem specialized_reduce : Betas specializedWitness reader162 :=
  headSteps_beta_star (by decide : headSteps 3 specializedWitness = some reader162)
theorem specialized_full : SelfintWiden.FullReader specializedWitness :=
  SelfintWiden.FullReader.of_betas (by decide) specialized_reduce SelfintWiden.reader162_fullReader
theorem specialized_price : weight 0 specializedWitness=63 ∧ occ 1 specializedWitness=1 := by decide
#print axioms specialized_full

def case157 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem case157_not_minimum : ¬ MinimumReader case157 :=
  no_minimum_idempotent_diagonal (Squash.appR (.var 0) (Squash.appL (.lam (.app (.var 1) (.app (.var 0) (.var 2)))) (Squash.here 0))) idem idem_idempotent [(.var 1)]
#print axioms case157_not_minimum

def case163 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem case163_not_minimum : ¬ MinimumReader case163 :=
  no_minimum_idempotent_diagonal (Squash.appL (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (Squash.here 0)) idem idem_idempotent [(.var 1)]
#print axioms case163_not_minimum

def case164 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem case164_not_minimum : ¬ MinimumReader case164 :=
  no_minimum_idempotent_diagonal (Squash.appR (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (Squash.here 0)) idem idem_idempotent [(.var 1)]
#print axioms case164_not_minimum

def case165 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem case165_not_minimum : ¬ MinimumReader case165 :=
  no_minimum_idempotent_diagonal (Squash.appL (.lam (.app (.var 1) (.app (.var 0) (.var 2)))) (Squash.appR (.var 0) (Squash.here 0))) idem idem_idempotent [(.var 1)]
#print axioms case165_not_minimum

def case166 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem case166_not_minimum : ¬ MinimumReader case166 :=
  no_minimum_idempotent_diagonal (Squash.appL (.lam (.app (.var 1) (.app (.var 0) (.var 2)))) (Squash.appL (.var 0) (Squash.here 0))) idem idem_idempotent [(.var 1)]
#print axioms case166_not_minimum

def case170 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem case170_not_minimum : ¬ MinimumReader case170 :=
  no_minimum_idempotent_diagonal (Squash.appL (.var 0) (Squash.appL (.lam (.app (.var 1) (.app (.var 0) (.var 2)))) (Squash.here 0))) idem idem_idempotent [(.var 1)]
#print axioms case170_not_minimum

def case180 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem case180_not_minimum : ¬ MinimumReader case180 :=
  no_minimum_idempotent_diagonal (Squash.appR (.var 0) (Squash.appR (.var 0) (Squash.lam (Squash.appL (.app (.var 0) (.var 2)) (Squash.here 1))))) idem idem_idempotent [(.var 1)]
#print axioms case180_not_minimum

def case182 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem case182_not_minimum : ¬ MinimumReader case182 :=
  no_minimum_idempotent_diagonal (Squash.appL (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))) (Squash.here 0)) idem idem_idempotent [(.var 1)]
#print axioms case182_not_minimum

def case183 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem case183_not_minimum : ¬ MinimumReader case183 :=
  no_minimum_idempotent_diagonal (Squash.appL (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))) (Squash.here 0)) idem idem_idempotent [(.var 1)]
#print axioms case183_not_minimum

def case184 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem case184_not_minimum : ¬ MinimumReader case184 :=
  no_minimum_idempotent_diagonal (Squash.appL (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))) (Squash.here 0)) idem idem_idempotent [(.var 1)]
#print axioms case184_not_minimum

def case185 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem case185_not_minimum : ¬ MinimumReader case185 :=
  no_minimum_idempotent_diagonal (Squash.appL (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))) (Squash.here 0)) idem idem_idempotent [(.var 1)]
#print axioms case185_not_minimum

def case186 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem case186_not_minimum : ¬ MinimumReader case186 :=
  no_minimum_idempotent_diagonal (Squash.appL (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))) (Squash.here 0)) idem idem_idempotent [(.var 1)]
#print axioms case186_not_minimum

def case187 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem case187_not_minimum : ¬ MinimumReader case187 :=
  no_minimum_idempotent_diagonal (Squash.appL (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))) (Squash.here 0)) idem idem_idempotent [(.var 1)]
#print axioms case187_not_minimum

def case188 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem case188_not_minimum : ¬ MinimumReader case188 :=
  no_minimum_idempotent_diagonal (Squash.appL (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))) (Squash.here 0)) idem idem_idempotent [(.var 1)]
#print axioms case188_not_minimum

def case194 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem case194_not_minimum : ¬ MinimumReader case194 :=
  no_minimum_idempotent_diagonal (Squash.appL (.var 0) (Squash.appR (.var 0) (Squash.lam (Squash.appL (.app (.var 0) (.var 2)) (Squash.here 1))))) idem idem_idempotent [(.var 1)]
#print axioms case194_not_minimum

def case384 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
theorem case384_not_minimum : ¬ MinimumReader case384 :=
  no_minimum_idempotent_diagonal (Squash.appL (.lam (.app (.var 1) (.app (.var 1) (.var 0)))) (Squash.here 0)) idem idem_idempotent [(.var 1),(.var 0)]
#print axioms case384_not_minimum

def case385 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
theorem case385_not_minimum : ¬ MinimumReader case385 :=
  no_minimum_idempotent_diagonal (Squash.appL (.lam (.app (.var 1) (.app (.var 1) (.var 0)))) (Squash.here 0)) idem idem_idempotent [(.var 0),(.var 1)]
#print axioms case385_not_minimum

def case386 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
theorem case386_not_minimum : ¬ MinimumReader case386 :=
  no_minimum_idempotent_diagonal (Squash.appL (.lam (.app (.var 1) (.app (.var 0) (.var 1)))) (Squash.here 0)) idem idem_idempotent [(.var 1),(.var 0)]
#print axioms case386_not_minimum

def case387 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
theorem case387_not_minimum : ¬ MinimumReader case387 :=
  no_minimum_idempotent_diagonal (Squash.appL (.lam (.app (.var 1) (.app (.var 0) (.var 1)))) (Squash.here 0)) idem idem_idempotent [(.var 0),(.var 1)]
#print axioms case387_not_minimum

def case396 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
theorem case396_not_minimum : ¬ MinimumReader case396 :=
  no_minimum_idempotent_diagonal (Squash.appR (.var 0) (Squash.lam (Squash.appR (.var 1) (Squash.appL (.var 0) (Squash.here 1))))) idem idem_idempotent [(.var 1),(.var 0)]
#print axioms case396_not_minimum

def case397 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
theorem case397_not_minimum : ¬ MinimumReader case397 :=
  no_minimum_idempotent_diagonal (Squash.appR (.var 0) (Squash.lam (Squash.appR (.var 1) (Squash.appL (.var 0) (Squash.here 1))))) idem idem_idempotent [(.var 0),(.var 1)]
#print axioms case397_not_minimum

def case398 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
theorem case398_not_minimum : ¬ MinimumReader case398 :=
  no_minimum_idempotent_diagonal (Squash.appR (.var 0) (Squash.lam (Squash.appR (.var 1) (Squash.appR (.var 0) (Squash.here 1))))) idem idem_idempotent [(.var 1),(.var 0)]
#print axioms case398_not_minimum

def case399 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
theorem case399_not_minimum : ¬ MinimumReader case399 :=
  no_minimum_idempotent_diagonal (Squash.appR (.var 0) (Squash.lam (Squash.appR (.var 1) (Squash.appR (.var 0) (Squash.here 1))))) idem idem_idempotent [(.var 0),(.var 1)]
#print axioms case399_not_minimum

def case400 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
theorem case400_not_minimum : ¬ MinimumReader case400 :=
  no_minimum_idempotent_diagonal (Squash.appR (.var 0) (Squash.lam (Squash.appL (.app (.var 1) (.var 0)) (Squash.here 1)))) idem idem_idempotent [(.var 1),(.var 0)]
#print axioms case400_not_minimum

def case401 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
theorem case401_not_minimum : ¬ MinimumReader case401 :=
  no_minimum_idempotent_diagonal (Squash.appR (.var 0) (Squash.lam (Squash.appL (.app (.var 1) (.var 0)) (Squash.here 1)))) idem idem_idempotent [(.var 0),(.var 1)]
#print axioms case401_not_minimum

def case402 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
theorem case402_not_minimum : ¬ MinimumReader case402 :=
  no_minimum_idempotent_diagonal (Squash.appR (.var 0) (Squash.lam (Squash.appL (.app (.var 0) (.var 1)) (Squash.here 1)))) idem idem_idempotent [(.var 1),(.var 0)]
#print axioms case402_not_minimum

def case403 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
theorem case403_not_minimum : ¬ MinimumReader case403 :=
  no_minimum_idempotent_diagonal (Squash.appR (.var 0) (Squash.lam (Squash.appL (.app (.var 0) (.var 1)) (Squash.here 1)))) idem idem_idempotent [(.var 0),(.var 1)]
#print axioms case403_not_minimum

end Blc.Simplify
