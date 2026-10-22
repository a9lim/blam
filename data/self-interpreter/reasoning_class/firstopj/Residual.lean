import NonlinearFamilies
namespace Blc.FirstopJ.Residual
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost FirstopNonlinear WeakHeadClock
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
def r703 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 2))))
theorem reject703 : ¬ Reader r703 := by
  exact nocount_reduct true 3 (.app (towerC 0) (towerC 0)) [(.var 1), (.lam (.lam (.var 1))), (.var 3)] (by decide) (fun n => towerC_nocount n 0 0)
#print axioms reject703
def r793 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 3)))))) (.var 2))))
theorem reject793 : ¬ Reader r793 := by
  exact nocount_reduct true 3 (.app (.app carryRight carryRight) (.var 1)) [(.lam (.lam (.var 1))), (.var 3)] (by decide) (fun n => carryRight_nocount n _)
#print axioms reject793
def r794 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 3) (.var 0)))))) (.var 2))))
theorem reject794 : ¬ Reader r794 := by
  exact nocount_reduct true 3 (.app (.app carryLeft carryLeft) (.var 1)) [(.lam (.lam (.var 1))), (.var 3)] (by decide) (fun n => carryLeft_nocount n _)
#print axioms reject794
end Blc.FirstopJ.Residual
