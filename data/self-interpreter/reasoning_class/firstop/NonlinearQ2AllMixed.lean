import NonlinearCertificates
namespace Blc.FirstopNonlinear.Q2AllMixed
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r1582 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 2)) (.var 1)))
theorem reject1582 : ¬ Reader r1582 := by
  exact mixed_reduct true [[], [1, 1], [1, 1, 1, 1]] [[2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1), (.var 0)] (by decide) (by decide)
#print axioms reject1582

def r1583 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1)) (.var 2)))
theorem reject1583 : ¬ Reader r1583 := by
  exact mixed_reduct true [[], [1, 1], [1, 1, 1, 1]] [[2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.var 1)] (by decide) (by decide)
#print axioms reject1583

def r1584 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 2)) (.var 1)))
theorem reject1584 : ¬ Reader r1584 := by
  exact mixed_reduct true [[], [1, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1), (.var 0)] (by decide) (by decide)
#print axioms reject1584

def r1585 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.var 2)))
theorem reject1585 : ¬ Reader r1585 := by
  exact mixed_reduct true [[], [1, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.var 1)] (by decide) (by decide)
#print axioms reject1585

def r1592 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 2)) (.lam (.var 2))))
theorem reject1592 : ¬ Reader r1592 := by
  exact mixed_reduct true [[], [1, 1], [1, 1, 1, 1]] [[2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1), (.lam (.var 1))] (by decide) (by decide)
#print axioms reject1592

def r1593 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.lam (.var 2))) (.var 2)))
theorem reject1593 : ¬ Reader r1593 := by
  exact mixed_reduct true [[], [1, 1], [1, 1, 1, 1]] [[2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.var 1)), (.var 1)] (by decide) (by decide)
#print axioms reject1593

def r1594 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 2)) (.lam (.var 2))))
theorem reject1594 : ¬ Reader r1594 := by
  exact mixed_reduct true [[], [1, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1), (.lam (.var 1))] (by decide) (by decide)
#print axioms reject1594

def r1595 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.var 2))) (.var 2)))
theorem reject1595 : ¬ Reader r1595 := by
  exact mixed_reduct true [[], [1, 1], [1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.lam (.var 1)), (.var 1)] (by decide) (by decide)
#print axioms reject1595

def r1686 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 2)) (.var 1)))
theorem reject1686 : ¬ Reader r1686 := by
  exact mixed_reduct true [[], [1, 1], [1, 1, 1, 1]] [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1), (.var 0)] (by decide) (by decide)
#print axioms reject1686

def r1687 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.var 1)) (.var 2)))
theorem reject1687 : ¬ Reader r1687 := by
  exact mixed_reduct true [[], [1, 1], [1, 1, 1, 1]] [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0), (.var 1)] (by decide) (by decide)
#print axioms reject1687

end Blc.FirstopNonlinear.Q2AllMixed
