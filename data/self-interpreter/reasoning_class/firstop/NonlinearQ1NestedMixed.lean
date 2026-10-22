import NonlinearCertificates
namespace Blc.FirstopNonlinear.Q1NestedMixed
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r1552 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))) (.var 2)))
theorem reject1552 : ¬ Reader r1552 := by
  exact mixed_reduct true [[], [1], [1, 1, 1, 1]] [[2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject1552

def r1554 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1))) (.var 2)))
theorem reject1554 : ¬ Reader r1554 := by
  exact mixed_reduct true [[], [1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject1554

def r1560 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.var 2)))) (.var 2)))
theorem reject1560 : ¬ Reader r1560 := by
  exact mixed_reduct true [[], [1], [1, 1, 1, 1]] [[2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject1560

def r1561 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 2)))) (.var 2)))
theorem reject1561 : ¬ Reader r1561 := by
  exact mixed_reduct true [[], [1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject1561

def r2286 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1))) (.var 2)))
theorem reject2286 : ¬ Reader r2286 := by
  exact mixed_reduct true [[], [1, 2], [1], [1, 1, 1]] [[2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject2286

def r2288 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1))) (.var 2)))
theorem reject2288 : ¬ Reader r2288 := by
  exact mixed_reduct true [[], [1, 2], [1], [1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject2288

def r1651 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))) (.var 2)))
theorem reject1651 : ¬ Reader r1651 := by
  exact mixed_reduct true [[], [1], [1, 1, 1, 1]] [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject1651

end Blc.FirstopNonlinear.Q1NestedMixed
