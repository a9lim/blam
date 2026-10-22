import Blc.SelfintSourceFront
namespace Blc.Firstop
open Term SelfintClass SelfintClassNext
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

theorem refute_zero (R T : Term) (n : Nat)
    (h : normalSteps n (.app R Z) = some T)
    (hn : NFt T) (he : T ≠ zeroOut) : ¬ Reader R := by
  intro hr
  exact he (normalForm_unique (normalSteps_sound h) hr.zero_red
    (nft_normal hn) zeroOut_normal)

theorem refute_unary (R T : Term) (n : Nat)
    (h : normalSteps n (.app R S) = some T)
    (hn : NFt T) (he : T ≠ varOut) : ¬ Reader R := by
  intro hr
  exact he (normalForm_unique (normalSteps_sound h) hr.one_red
    (nft_normal hn) varOut_normal)

#print axioms refute_zero
#print axioms refute_unary
end Blc.Firstop
