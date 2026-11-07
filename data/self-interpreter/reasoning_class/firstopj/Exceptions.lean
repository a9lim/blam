import NonlinearCertificates
namespace Blc.FirstopJ.Exceptions
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
def r2 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) (.var 2)))) (.var 1)))
theorem reject2 : ¬ Reader r2 := by
  exact loop_reduct true 2 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) (.var 1))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject2
def r3 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)))) (.var 1)))
theorem reject3 : ¬ Reader r3 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 0)] (by decide) (by decide) (by decide)
#print axioms reject3
def r4 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) (.var 2))) (.var 1))))
theorem reject4 : ¬ Reader r4 := by
  exact loop_reduct true 2 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))) (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) (.var 1))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3)] (by decide) (by decide) (by decide)
#print axioms reject4
def r5 : Term := (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2))) (.var 1))))
theorem reject5 : ¬ Reader r5 := by
  exact loop_reduct true 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.var 0), (.lam (.lam (.var 1))), (.var 3)] (by decide) (by decide) (by decide)
#print axioms reject5
end Blc.FirstopJ.Exceptions
