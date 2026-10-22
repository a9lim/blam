import General
namespace Blc.Simplify
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintWidenHoist SelfintSourceCost SelfintLocalCost SelfintControl
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
def source408 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 0))
def replacement408 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
def ancestor408 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem join408 : BetaJoin source408 replacement408 := by
  have h1 := paths_sound (by decide : pathSteps [[0, 0]] ancestor408 = some source408)
  have h2 := paths_sound (by decide : pathSteps [[0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 1], [0, 0, 0, 0, 1]] ancestor408 = some replacement408)
  exact join_trans (join_symm (join_of_betas h1)) (join_of_betas h2)
theorem excluded408 : ¬ MinimumReader source408 :=
  no_minimum_join join408 (by decide) (by decide) (by decide)
#print axioms excluded408

def source409 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 1))
def replacement409 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
def ancestor409 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem join409 : BetaJoin source409 replacement409 := by
  have h1 := paths_sound (by decide : pathSteps [[0, 0]] ancestor409 = some source409)
  have h2 := paths_sound (by decide : pathSteps [[0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 1], [0, 0, 0, 0, 1]] ancestor409 = some replacement409)
  exact join_trans (join_symm (join_of_betas h1)) (join_of_betas h2)
theorem excluded409 : ¬ MinimumReader source409 :=
  no_minimum_join join409 (by decide) (by decide) (by decide)
#print axioms excluded409

def source410 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 1)) (.var 0))
def replacement410 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
def ancestor410 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem join410 : BetaJoin source410 replacement410 := by
  have h1 := paths_sound (by decide : pathSteps [[0, 0]] ancestor410 = some source410)
  have h2 := paths_sound (by decide : pathSteps [[0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 1], [0, 0, 0, 0, 1]] ancestor410 = some replacement410)
  exact join_trans (join_symm (join_of_betas h1)) (join_of_betas h2)
theorem excluded410 : ¬ MinimumReader source410 :=
  no_minimum_join join410 (by decide) (by decide) (by decide)
#print axioms excluded410

def source411 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 0)) (.var 1))
def replacement411 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
def ancestor411 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem join411 : BetaJoin source411 replacement411 := by
  have h1 := paths_sound (by decide : pathSteps [[0, 0]] ancestor411 = some source411)
  have h2 := paths_sound (by decide : pathSteps [[0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 1], [0, 0, 0, 0, 1]] ancestor411 = some replacement411)
  exact join_trans (join_symm (join_of_betas h1)) (join_of_betas h2)
theorem excluded411 : ¬ MinimumReader source411 :=
  no_minimum_join join411 (by decide) (by decide) (by decide)
#print axioms excluded411

end Blc.Simplify
