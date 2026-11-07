import Certificates
namespace Blc.HandlerLet.Proof4_Cs_x_2_2_03
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r1732 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 1))) (.var 1))
theorem reject1732 : ¬ Reader r1732 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1732

def r1735 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1735 : ¬ Reader r1735 := by
  exact replay_loop true [] 1 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1735

def r1736 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1736 : ¬ Reader r1736 := by
  exact replay_loop true [] 1 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1736

def r1737 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.var 1)) (.lam (.var 1)))
theorem reject1737 : ¬ Reader r1737 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1737

def r1738 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1))) (.var 1))
theorem reject1738 : ¬ Reader r1738 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1738

def r1741 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 1)) (.lam (.var 1)))
theorem reject1741 : ¬ Reader r1741 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1741

def r1742 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 1))) (.var 1))
theorem reject1742 : ¬ Reader r1742 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1742

def r1745 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 1)) (.lam (.var 1)))
theorem reject1745 : ¬ Reader r1745 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1745

def r1746 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 1))) (.var 1))
theorem reject1746 : ¬ Reader r1746 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1746

def r1747 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.lam (.var 0))) (.var 1))
theorem reject1747 : ¬ Reader r1747 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))) [(.lam (.var 1))] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1747

def r1748 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.var 1)) (.lam (.var 0)))
theorem reject1748 : ¬ Reader r1748 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))) [(.lam (.var 1))] [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1748

def r1749 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.lam (.var 0))) (.var 1))
theorem reject1749 : ¬ Reader r1749 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1749

def r1750 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.var 1)) (.lam (.var 0)))
theorem reject1750 : ¬ Reader r1750 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0)))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1750

def r1751 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))))) (.var 1)) (.var 0))
theorem reject1751 : ¬ Reader r1751 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1751

def r1752 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))))) (.var 0)) (.var 1))
theorem reject1752 : ¬ Reader r1752 := by
  exact replay_loop true [] 7 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) [] [(.lam (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1752

def r1753 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))))) (.var 1)) (.var 0))
theorem reject1753 : ¬ Reader r1753 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1753

def r1754 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))))) (.var 0)) (.var 1))
theorem reject1754 : ¬ Reader r1754 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1754

def r1755 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))))) (.var 1)) (.var 0))
theorem reject1755 : ¬ Reader r1755 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))))) [(.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1755

def r1756 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))))) (.var 0)) (.var 1))
theorem reject1756 : ¬ Reader r1756 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))))) [(.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1756

def r1759 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))))) (.var 1)) (.var 0))
theorem reject1759 : ¬ Reader r1759 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) [] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1759

def r1760 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))))) (.var 0)) (.var 1))
theorem reject1760 : ¬ Reader r1760 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) [] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1760

def r1763 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))))) (.var 1)) (.var 0))
theorem reject1763 : ¬ Reader r1763 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1763

def r1764 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))))) (.var 0)) (.var 1))
theorem reject1764 : ¬ Reader r1764 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))))) (.lam (.lam (.var 1)))) [] [(.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1764

def r1765 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1765 : ¬ Reader r1765 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1765

def r1766 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1766 : ¬ Reader r1766 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1766

def r1767 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1767 : ¬ Reader r1767 := by
  exact replay_loop true [] 3 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1767

def r1768 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1768 : ¬ Reader r1768 := by
  exact replay_loop true [] 3 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1768

def r1769 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1769 : ¬ Reader r1769 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1769

def r1770 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1770 : ¬ Reader r1770 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1770

def r1771 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject1771 : ¬ Reader r1771 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1771

def r1772 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject1772 : ¬ Reader r1772 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1772

def r1773 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1773 : ¬ Reader r1773 := by
  exact replay_loop true [] 1 5 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1773

def r1774 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1774 : ¬ Reader r1774 := by
  exact replay_loop true [] 1 5 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1774

def r1775 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject1775 : ¬ Reader r1775 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1775

def r1776 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject1776 : ¬ Reader r1776 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1776

def r1777 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1777 : ¬ Reader r1777 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1777

def r1778 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1778 : ¬ Reader r1778 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1778

def r1779 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1779 : ¬ Reader r1779 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1779

def r1780 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1780 : ¬ Reader r1780 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1780

def r1781 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject1781 : ¬ Reader r1781 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1781

def r1782 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject1782 : ¬ Reader r1782 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1782

def r1783 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1783 : ¬ Reader r1783 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1783

def r1784 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1784 : ¬ Reader r1784 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1784

def r1785 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1785 : ¬ Reader r1785 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1785

def r1786 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1786 : ¬ Reader r1786 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1786

def r1787 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject1787 : ¬ Reader r1787 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1787

def r1788 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject1788 : ¬ Reader r1788 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1788

def r1789 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1789 : ¬ Reader r1789 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1789

def r1790 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1790 : ¬ Reader r1790 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1790

def r1791 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject1791 : ¬ Reader r1791 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1791

def r1792 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject1792 : ¬ Reader r1792 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1792

def r1793 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1793 : ¬ Reader r1793 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1793

def r1794 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1794 : ¬ Reader r1794 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1794

def r1795 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1795 : ¬ Reader r1795 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1795

def r1796 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1796 : ¬ Reader r1796 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1796

def r1797 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject1797 : ¬ Reader r1797 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1797

def r1798 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject1798 : ¬ Reader r1798 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1798

def r1799 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.var 0))) (.var 1))
theorem reject1799 : ¬ Reader r1799 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) [(.var 0)] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1799

def r1800 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1)) (.lam (.var 0)))
theorem reject1800 : ¬ Reader r1800 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) [(.var 0)] [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1800

def r1801 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.var 0))) (.var 1))
theorem reject1801 : ¬ Reader r1801 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1801

def r1802 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 1)) (.lam (.var 0)))
theorem reject1802 : ¬ Reader r1802 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1802

def r1803 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.var 0))) (.var 1))
theorem reject1803 : ¬ Reader r1803 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1803

def r1804 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 1)) (.lam (.var 0)))
theorem reject1804 : ¬ Reader r1804 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1804

def r1805 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1))
theorem reject1805 : ¬ Reader r1805 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1805

def r1806 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0)))
theorem reject1806 : ¬ Reader r1806 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1806

def r1807 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1))
theorem reject1807 : ¬ Reader r1807 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 1))))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1807

def r1808 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0)))
theorem reject1808 : ¬ Reader r1808 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 1))))) [] [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1808

def r1809 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject1809 : ¬ Reader r1809 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1809

def r1810 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject1810 : ¬ Reader r1810 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1810

def r1811 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.var 1)) (.var 0))
theorem reject1811 : ¬ Reader r1811 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))) [(.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1811

def r1812 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.var 0)) (.var 1))
theorem reject1812 : ¬ Reader r1812 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))) [(.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1812

def r1813 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.var 1)) (.var 0))
theorem reject1813 : ¬ Reader r1813 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))] [(.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1813

def r1814 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.var 0)) (.var 1))
theorem reject1814 : ¬ Reader r1814 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))] [(.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1814

def r1817 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject1817 : ¬ Reader r1817 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1817

def r1818 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject1818 : ¬ Reader r1818 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1818

def r1825 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
theorem reject1825 : ¬ Reader r1825 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1825

def r1826 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.var 1)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
theorem reject1826 : ¬ Reader r1826 := by
  exact replay_absent true [] 8 1 (by decide) (by decide)
#print axioms reject1826

def r1827 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
theorem reject1827 : ¬ Reader r1827 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject1827

def r1828 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
theorem reject1828 : ¬ Reader r1828 := by
  exact replay_absent true [] 8 1 (by decide) (by decide)
#print axioms reject1828

def r1829 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1829 : ¬ Reader r1829 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1829

def r1830 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 2))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1830 : ¬ Reader r1830 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1830

def r1831 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1831 : ¬ Reader r1831 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1831

def r1832 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1832 : ¬ Reader r1832 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1832

def r1833 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1833 : ¬ Reader r1833 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1833

def r1834 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.var 1) (.var 2))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1834 : ¬ Reader r1834 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1834

def r1835 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1835 : ¬ Reader r1835 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1835

def r1836 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1836 : ¬ Reader r1836 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1836

def r1837 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject1837 : ¬ Reader r1837 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1837

def r1838 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject1838 : ¬ Reader r1838 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1838

def r1839 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1839 : ¬ Reader r1839 := by
  exact replay_loop true [] 1 5 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1839

def r1840 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1840 : ¬ Reader r1840 := by
  exact replay_loop true [] 1 5 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1840

def r1841 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject1841 : ¬ Reader r1841 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1841

def r1842 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject1842 : ¬ Reader r1842 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1842

def r1843 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject1843 : ¬ Reader r1843 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1843

def r1844 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject1844 : ¬ Reader r1844 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))] [(.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1844

def r1845 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1845 : ¬ Reader r1845 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1845

def r1846 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1846 : ¬ Reader r1846 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1846

def r1847 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1847 : ¬ Reader r1847 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1847

def r1848 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1848 : ¬ Reader r1848 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1848

def r1849 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject1849 : ¬ Reader r1849 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1849

def r1850 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject1850 : ¬ Reader r1850 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1850

def r1851 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1851 : ¬ Reader r1851 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1851

def r1852 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1852 : ¬ Reader r1852 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1852

def r1853 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1853 : ¬ Reader r1853 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1853

def r1854 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1854 : ¬ Reader r1854 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1854

def r1855 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject1855 : ¬ Reader r1855 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1855

def r1856 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject1856 : ¬ Reader r1856 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))))) [(.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1856

def r1857 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1857 : ¬ Reader r1857 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1857

def r1858 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1858 : ¬ Reader r1858 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1858

def r1859 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1859 : ¬ Reader r1859 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1859

def r1860 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1860 : ¬ Reader r1860 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1860

def r1861 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))
theorem reject1861 : ¬ Reader r1861 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.app (.var 0) (.lam (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1861

def r1862 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.var 1))
theorem reject1862 : ¬ Reader r1862 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.lam (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1862

def r1863 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))))) (.var 1)) (.var 0))
theorem reject1863 : ¬ Reader r1863 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))))))) [(.lam (.lam (.lam (.var 0))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1863

def r1864 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))))) (.var 0)) (.var 1))
theorem reject1864 : ¬ Reader r1864 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))))))) [(.lam (.lam (.lam (.var 0))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1864

def r1865 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) (.var 1)) (.var 0))
theorem reject1865 : ¬ Reader r1865 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1865

def r1866 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) (.var 0)) (.var 1))
theorem reject1866 : ¬ Reader r1866 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1866

def r1867 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1867 : ¬ Reader r1867 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1867

def r1868 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1868 : ¬ Reader r1868 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1868

def r1869 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1869 : ¬ Reader r1869 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1869

def r1870 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1870 : ¬ Reader r1870 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1870

def r1871 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1871 : ¬ Reader r1871 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1871

def r1872 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1872 : ¬ Reader r1872 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1872

def r1873 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1873 : ¬ Reader r1873 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1873

def r1874 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1874 : ¬ Reader r1874 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1874

def r1875 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1875 : ¬ Reader r1875 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1875

def r1876 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1876 : ¬ Reader r1876 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1876

def r1877 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.app (.var 1) (.lam (.lam (.var 0))))))
theorem reject1877 : ¬ Reader r1877 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.var 1) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1877

def r1878 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.lam (.lam (.lam (.var 1))))))
theorem reject1878 : ¬ Reader r1878 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.app (.var 0) (.lam (.lam (.lam (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1878

def r1879 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.lam (.lam (.var 0)))))) (.var 1))
theorem reject1879 : ¬ Reader r1879 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.app (.var 1) (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1879

def r1880 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.lam (.var 1)))))) (.var 1))
theorem reject1880 : ¬ Reader r1880 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.lam (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1880

def r1881 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject1881 : ¬ Reader r1881 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1881

def r1882 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject1882 : ¬ Reader r1882 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1882

def r1883 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject1883 : ¬ Reader r1883 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1883

def r1884 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject1884 : ¬ Reader r1884 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1884

def r1885 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject1885 : ¬ Reader r1885 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1885

def r1886 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject1886 : ¬ Reader r1886 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1886

def r1887 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject1887 : ¬ Reader r1887 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1887

def r1888 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject1888 : ¬ Reader r1888 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1888

def r1889 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject1889 : ¬ Reader r1889 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1889

def r1890 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject1890 : ¬ Reader r1890 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1890

def r1891 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.var 1)) (.lam (.var 1)))
theorem reject1891 : ¬ Reader r1891 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))))) [(.lam (.lam (.var 0)))] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1891

def r1892 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.var 1))) (.var 1))
theorem reject1892 : ¬ Reader r1892 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))))) [(.lam (.lam (.var 0)))] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1892

def r1893 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1893 : ¬ Reader r1893 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1893

def r1894 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1894 : ¬ Reader r1894 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1894

def r1895 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.var 1)) (.var 0))
theorem reject1895 : ¬ Reader r1895 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))))) [(.lam (.lam (.lam (.var 1))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1895

def r1896 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.var 0)) (.var 1))
theorem reject1896 : ¬ Reader r1896 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1)))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 1))))))))) [(.lam (.lam (.lam (.var 1))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1896

def r1897 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))))) (.var 1)) (.var 0))
theorem reject1897 : ¬ Reader r1897 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1897

def r1898 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))))) (.var 0)) (.var 1))
theorem reject1898 : ¬ Reader r1898 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1898

def r1899 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0)))))
theorem reject1899 : ¬ Reader r1899 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1899

def r1900 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1))
theorem reject1900 : ¬ Reader r1900 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.var 0) (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1900

def r1901 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.var 1)) (.var 0))
theorem reject1901 : ¬ Reader r1901 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))))) [(.lam (.lam (.var 0)))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1901

def r1902 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.var 0)) (.var 1))
theorem reject1902 : ¬ Reader r1902 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))))) [(.lam (.lam (.var 0)))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1902

def r1903 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 1)) (.var 0))
theorem reject1903 : ¬ Reader r1903 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1903

def r1904 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 0)) (.var 1))
theorem reject1904 : ¬ Reader r1904 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1904

def r1905 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 1)) (.var 0))
theorem reject1905 : ¬ Reader r1905 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1905

def r1906 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 0)) (.var 1))
theorem reject1906 : ¬ Reader r1906 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1906

def r1907 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1907 : ¬ Reader r1907 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1907

def r1908 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1908 : ¬ Reader r1908 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1908

def r1909 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1909 : ¬ Reader r1909 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1909

def r1910 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1910 : ¬ Reader r1910 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1910

def r1911 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1911 : ¬ Reader r1911 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1911

def r1912 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1912 : ¬ Reader r1912 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1912

def r1913 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1913 : ¬ Reader r1913 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1913

def r1914 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1914 : ¬ Reader r1914 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1914

def r1915 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject1915 : ¬ Reader r1915 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1915

def r1916 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject1916 : ¬ Reader r1916 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1916

def r1917 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.var 0)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1917 : ¬ Reader r1917 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1917

def r1918 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.var 0)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1918 : ¬ Reader r1918 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1918

def r1919 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.var 1)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1919 : ¬ Reader r1919 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 1))))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1919

def r1920 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.var 1)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1920 : ¬ Reader r1920 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 1))))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1920

def r1921 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1921 : ¬ Reader r1921 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1921

def r1922 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.lam (.var 1))))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1922 : ¬ Reader r1922 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1922

def r1923 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1923 : ¬ Reader r1923 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1923

def r1924 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1924 : ¬ Reader r1924 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1924

def r1925 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1925 : ¬ Reader r1925 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1925

def r1926 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1926 : ¬ Reader r1926 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1926

def r1927 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1927 : ¬ Reader r1927 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1927

def r1928 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1928 : ¬ Reader r1928 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1928

def r1929 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.var 1))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1929 : ¬ Reader r1929 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1929

def r1930 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.var 1))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1930 : ¬ Reader r1930 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1930

def r1931 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.var 1)))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject1931 : ¬ Reader r1931 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 1)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1931

def r1932 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.var 1)))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject1932 : ¬ Reader r1932 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 1)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1932
end Blc.HandlerLet.Proof4_Cs_x_2_2_03
