import NonlinearCertificates
namespace Blc.FirstopJ.ExceptionsShared0
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost FirstopNonlinear
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
def r0 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 2)))))
theorem reject0 : ¬ Reader r0 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)), (.lam (.lam (.var 1))), (.var 3)] (by decide) (by decide) (by decide)
#print axioms reject0
def r1 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.var 1)))))
theorem reject1 : ¬ Reader r1 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)), (.lam (.lam (.var 1))), (.var 3)] (by decide) (by decide) (by decide)
#print axioms reject1
end Blc.FirstopJ.ExceptionsShared0
