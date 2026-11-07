import Certificates
namespace Blc.HandlerLet.Proof4_Cs_x_1_2_03
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r1610 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) (.var 1))
theorem reject1610 : ¬ Reader r1610 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1610

def r1611 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.var 1))
theorem reject1611 : ¬ Reader r1611 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1611

def r1612 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 0))))))) (.var 1))
theorem reject1612 : ¬ Reader r1612 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.lam (.var 0))))))))) [(.app (.var 0) (.lam (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1612

def r1613 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 2))))) (.var 1))
theorem reject1613 : ¬ Reader r1613 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 2)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 3))))))) [(.lam (.var 0)), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1613

def r1614 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 0)))))) (.var 1))
theorem reject1614 : ¬ Reader r1614 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.lam (.var 0)))))))) [(.var 0), (.lam (.var 0))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1614

def r1615 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0))))) (.var 1))
theorem reject1615 : ¬ Reader r1615 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0))))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.lam (.var 0)))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1615

def r1616 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2))))) (.var 1))
theorem reject1616 : ¬ Reader r1616 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1616

def r1617 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0)))))) (.var 1))
theorem reject1617 : ¬ Reader r1617 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1617

def r1618 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0))))) (.var 1))
theorem reject1618 : ¬ Reader r1618 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1618

def r1619 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 0))))) (.var 1))
theorem reject1619 : ¬ Reader r1619 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 3)) (.var 0)))))) [] [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1619

def r1620 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject1620 : ¬ Reader r1620 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.lam (.var 0))) (.var 0)))))) [] [(.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1620

def r1621 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1621 : ¬ Reader r1621 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1621

def r1622 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1622 : ¬ Reader r1622 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1622

def r1623 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1623 : ¬ Reader r1623 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1623

def r1624 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 1)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1624 : ¬ Reader r1624 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1624

def r1625 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1625 : ¬ Reader r1625 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1625

def r1626 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 1)) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1626 : ¬ Reader r1626 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1626

def r1627 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1627 : ¬ Reader r1627 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1627

def r1628 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1628 : ¬ Reader r1628 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1628

def r1629 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1629 : ¬ Reader r1629 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1629

def r1630 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 2)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1630 : ¬ Reader r1630 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1630

def r1631 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1631 : ¬ Reader r1631 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1631

def r1632 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1632 : ¬ Reader r1632 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1632

def r1633 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1633 : ¬ Reader r1633 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject1633

def r1634 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject1634 : ¬ Reader r1634 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 1) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1634

def r1635 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject1635 : ¬ Reader r1635 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 2))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1635

def r1636 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject1636 : ¬ Reader r1636 := by
  exact replay_loop true [] 3 6 (.app (.app (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 2))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1636

def r1637 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject1637 : ¬ Reader r1637 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1))))) [] [(.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1637

def r1638 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1638 : ¬ Reader r1638 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1638

def r1639 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject1639 : ¬ Reader r1639 := by
  exact replay_loop true [] 5 4 (.app (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 2)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1639

def r1640 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1640 : ¬ Reader r1640 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1640

def r1641 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1641 : ¬ Reader r1641 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1641

def r1642 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1642 : ¬ Reader r1642 := by
  exact replay_absent true [] 8 1 (by decide) (by decide)
#print axioms reject1642

def r1643 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1643 : ¬ Reader r1643 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1643

def r1644 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 2)))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.var 1))
theorem reject1644 : ¬ Reader r1644 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.lam (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 2)))))) [] [(.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1644

def r1645 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 2))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1645 : ¬ Reader r1645 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1645

def r1646 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1646 : ¬ Reader r1646 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1646

def r1647 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.var 1))
theorem reject1647 : ¬ Reader r1647 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1647

def r1648 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1))
theorem reject1648 : ¬ Reader r1648 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))))) [(.lam (.var 0))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1648

def r1649 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.var 1))
theorem reject1649 : ¬ Reader r1649 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))))) [(.lam (.var 0))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1649

def r1650 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject1650 : ¬ Reader r1650 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1650

def r1651 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject1651 : ¬ Reader r1651 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1651

def r1652 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 2)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.var 1))
theorem reject1652 : ¬ Reader r1652 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1652

def r1653 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1))
theorem reject1653 : ¬ Reader r1653 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))) (.lam (.var 0)))))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1653

def r1654 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1))
theorem reject1654 : ¬ Reader r1654 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1654

def r1655 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 1))
theorem reject1655 : ¬ Reader r1655 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1655

def r1656 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1))
theorem reject1656 : ¬ Reader r1656 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.var 1)))))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1656

def r1657 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1))
theorem reject1657 : ¬ Reader r1657 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.var 0)))) [(.var 0)] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1657

def r1658 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1))
theorem reject1658 : ¬ Reader r1658 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.var 0)))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1658

def r1659 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1))
theorem reject1659 : ¬ Reader r1659 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) [(.var 0)] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1659

def r1660 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1))
theorem reject1660 : ¬ Reader r1660 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1660

def r1661 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 1))
theorem reject1661 : ¬ Reader r1661 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1661

def r1662 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 1))
theorem reject1662 : ¬ Reader r1662 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1662

def r1663 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 1))
theorem reject1663 : ¬ Reader r1663 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1663

def r1664 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 1))
theorem reject1664 : ¬ Reader r1664 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1664

def r1665 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 1))
theorem reject1665 : ¬ Reader r1665 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1665

def r1666 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 1))
theorem reject1666 : ¬ Reader r1666 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))) (.lam (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1666

def r1667 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.var 1))
theorem reject1667 : ¬ Reader r1667 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.var 1))))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1667

def r1668 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 1))
theorem reject1668 : ¬ Reader r1668 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1668

def r1669 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 1))
theorem reject1669 : ¬ Reader r1669 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1669

def r1670 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 2)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1670 : ¬ Reader r1670 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1670

def r1671 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.var 2)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1671 : ¬ Reader r1671 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1671

def r1672 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1672 : ¬ Reader r1672 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1672

def r1673 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1673 : ¬ Reader r1673 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1673

def r1674 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1674 : ¬ Reader r1674 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.var 0))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1674

def r1675 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1675 : ¬ Reader r1675 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 1))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1675

def r1676 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1676 : ¬ Reader r1676 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1676

def r1677 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1677 : ¬ Reader r1677 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1677

def r1678 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 1)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1678 : ¬ Reader r1678 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1678

def r1679 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.var 2)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1679 : ¬ Reader r1679 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 1))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1679

def r1680 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.lam (.var 1))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1680 : ¬ Reader r1680 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1680

def r1681 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 2))) (.lam (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1681 : ¬ Reader r1681 := by
  exact replay_loop true [] 1 6 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1681

def r1682 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 3)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1682 : ¬ Reader r1682 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 2))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1682

def r1683 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 1)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1683 : ¬ Reader r1683 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 1))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1683

def r1684 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 3)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1684 : ¬ Reader r1684 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 2))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1684

def r1685 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 3))))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1685 : ¬ Reader r1685 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 2))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1685

def r1686 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 1))))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1686 : ¬ Reader r1686 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1686

def r1687 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 3))))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1687 : ¬ Reader r1687 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1687

def r1688 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.lam (.app (.var 0) (.var 2)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1688 : ¬ Reader r1688 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1688

def r1689 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.lam (.var 2)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1689 : ¬ Reader r1689 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1689

def r1690 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.var 2) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1690 : ¬ Reader r1690 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1690

def r1691 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1691 : ¬ Reader r1691 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) [] [(.lam (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1691

def r1692 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1)))) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1692 : ¬ Reader r1692 := by
  exact replay_loop true [] 6 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1692

def r1693 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1693 : ¬ Reader r1693 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1693

def r1694 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.app (.var 1) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1694 : ¬ Reader r1694 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1694

def r1695 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1695 : ¬ Reader r1695 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1))))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1695

def r1696 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 2)))) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1696 : ¬ Reader r1696 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) [] [(.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1696

def r1697 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 2)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1697 : ¬ Reader r1697 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1697

def r1698 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.var 1))))) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1698 : ¬ Reader r1698 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0)))))))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1698

def r1699 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.var 2))))) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1699 : ¬ Reader r1699 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 1))))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1699

def r1700 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 3))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1700 : ¬ Reader r1700 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 2)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1700

def r1701 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 1))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1701 : ¬ Reader r1701 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 1)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1701

def r1702 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 3))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1702 : ¬ Reader r1702 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 2)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1702

def r1703 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 3)))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1703 : ¬ Reader r1703 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 2)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1703

def r1704 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 1)))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1704 : ¬ Reader r1704 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 1)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1704

def r1705 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 3)))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1705 : ¬ Reader r1705 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 2)))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1705

def r1706 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) (.var 1))
theorem reject1706 : ¬ Reader r1706 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) [] [(.lam (.lam (.lam (.var 0)))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1706

def r1707 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))))) (.var 1))
theorem reject1707 : ¬ Reader r1707 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))))))) [(.lam (.lam (.lam (.var 0))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1707

def r1708 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))))) (.var 1))
theorem reject1708 : ¬ Reader r1708 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))))) (.var 0)))) [(.lam (.lam (.lam (.var 0))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1708

def r1709 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) (.var 1))
theorem reject1709 : ¬ Reader r1709 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1709

def r1710 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) (.var 1))
theorem reject1710 : ¬ Reader r1710 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1710

def r1711 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) (.var 1))
theorem reject1711 : ¬ Reader r1711 := by
  exact replay_loop true [] 9 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1711

def r1712 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))))) (.var 1))
theorem reject1712 : ¬ Reader r1712 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))))) (.var 0))) [(.lam (.lam (.lam (.var 0))))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1712

def r1713 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) (.var 1))
theorem reject1713 : ¬ Reader r1713 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0))))) [] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1713

def r1714 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1714 : ¬ Reader r1714 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0)))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1714

def r1715 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1715 : ¬ Reader r1715 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1715

def r1716 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 0))))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1716 : ¬ Reader r1716 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1716

def r1717 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1717 : ¬ Reader r1717 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1717

def r1718 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.var 0)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1718 : ¬ Reader r1718 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.var 0))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1718

def r1719 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.var 0)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1719 : ¬ Reader r1719 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 0))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1719

def r1720 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1720 : ¬ Reader r1720 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1720

def r1721 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1721 : ¬ Reader r1721 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1721

def r1722 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1722 : ¬ Reader r1722 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1722

def r1723 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1723 : ¬ Reader r1723 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0)))))) [] [(.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1723

def r1724 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1724 : ¬ Reader r1724 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1724

def r1725 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1725 : ¬ Reader r1725 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1725

def r1726 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1726 : ¬ Reader r1726 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1726

def r1727 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1727 : ¬ Reader r1727 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)))) [] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1727

def r1728 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1728 : ¬ Reader r1728 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1728

def r1729 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 0)))))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1729 : ¬ Reader r1729 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1729

def r1730 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0)) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1730 : ¬ Reader r1730 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1730

def r1731 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1731 : ¬ Reader r1731 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1731

def r1732 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 0))))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1732 : ¬ Reader r1732 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1732

def r1733 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.lam (.lam (.var 0))))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1733 : ¬ Reader r1733 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.lam (.lam (.lam (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1733

def r1734 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))
theorem reject1734 : ¬ Reader r1734 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 0)))))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1734
end Blc.HandlerLet.Proof4_Cs_x_1_2_03
