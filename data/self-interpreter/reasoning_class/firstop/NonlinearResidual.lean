import NonlinearFamilies
namespace Blc.FirstopNonlinear.Residual
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost WeakHeadClock
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r1776 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))) (.var 2)))
theorem reject1776 : ¬ Reader r1776 :=
  nocount_reduct true 3 (.app (towerC 0) (towerC 0)) [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (fun n => towerC_nocount n 0 0)
#print axioms reject1776

def r1885 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 3))))))) (.var 2)))
theorem reject1885 : ¬ Reader r1885 :=
  nocount_reduct true 3 (.app (.app carryRight carryRight) (.lam (.lam (.var 1)))) [(.var 3), (.var 1)] (by decide) (fun n => carryRight_nocount n _)
#print axioms reject1885

def r1886 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 3) (.var 0))))))) (.var 2)))
theorem reject1886 : ¬ Reader r1886 :=
  nocount_reduct true 3 (.app (.app carryLeft carryLeft) (.lam (.lam (.var 1)))) [(.var 3), (.var 1)] (by decide) (fun n => carryLeft_nocount n _)
#print axioms reject1886
end Blc.FirstopNonlinear.Residual
