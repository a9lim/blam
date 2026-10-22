import LinearCertificates
namespace Blc.Firstop.JBare2
open Term SelfintClass
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
def r1600 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject1600 : ¬ Reader r1600 :=
  refute_zero r1600 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1600
def r1601 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject1601 : ¬ Reader r1601 :=
  refute_zero r1601 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1601
def r1602 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject1602 : ¬ Reader r1602 :=
  refute_zero r1602 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1602
def r1603 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject1603 : ¬ Reader r1603 :=
  refute_zero r1603 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1603
def r1604 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))
theorem reject1604 : ¬ Reader r1604 :=
  refute_zero r1604 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1604
def r1605 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))))
theorem reject1605 : ¬ Reader r1605 :=
  refute_zero r1605 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1605
def r1606 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))))
theorem reject1606 : ¬ Reader r1606 :=
  refute_zero r1606 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1606
def r1607 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))))
theorem reject1607 : ¬ Reader r1607 :=
  refute_zero r1607 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1607
def r1608 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject1608 : ¬ Reader r1608 :=
  refute_zero r1608 (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1608
def r1609 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject1609 : ¬ Reader r1609 :=
  refute_zero r1609 (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1609
def r1610 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 2)))))
theorem reject1610 : ¬ Reader r1610 :=
  refute_zero r1610 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1610
def r1611 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.lam (.var 2)))) (.app (.var 1) (.var 1))))
theorem reject1611 : ¬ Reader r1611 :=
  refute_zero r1611 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1611
def r1612 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 2))))
theorem reject1612 : ¬ Reader r1612 :=
  refute_zero r1612 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject1612
def r1613 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 2))))
theorem reject1613 : ¬ Reader r1613 :=
  refute_zero r1613 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject1613
def r1614 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.var 1)))
theorem reject1614 : ¬ Reader r1614 :=
  refute_zero r1614 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1614
def r1615 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.var 1)))
theorem reject1615 : ¬ Reader r1615 :=
  refute_zero r1615 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1615
def r1616 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.var 1)))
theorem reject1616 : ¬ Reader r1616 :=
  refute_zero r1616 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1616
def r1617 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 0)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1617 : ¬ Reader r1617 :=
  refute_zero r1617 (.app (.app (.app (.var 1) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1617
def r1618 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 0)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1618 : ¬ Reader r1618 :=
  refute_zero r1618 (.app (.app (.app (.var 1) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1618
def r1619 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 0)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject1619 : ¬ Reader r1619 :=
  refute_zero r1619 (.app (.app (.app (.var 1) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1619
def r1620 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 0)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject1620 : ¬ Reader r1620 :=
  refute_zero r1620 (.app (.app (.app (.var 1) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1620
def r1621 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 0)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))
theorem reject1621 : ¬ Reader r1621 :=
  refute_zero r1621 (.app (.app (.app (.var 1) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1621
def r1622 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1622 : ¬ Reader r1622 :=
  refute_zero r1622 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject1622
def r1623 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1623 : ¬ Reader r1623 :=
  refute_zero r1623 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject1623
def r1624 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject1624 : ¬ Reader r1624 :=
  refute_zero r1624 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject1624
def r1625 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject1625 : ¬ Reader r1625 :=
  refute_zero r1625 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject1625
def r1626 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))
theorem reject1626 : ¬ Reader r1626 :=
  refute_zero r1626 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject1626
def r1627 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.lam (.app (.var 2) (.var 2))))))
theorem reject1627 : ¬ Reader r1627 :=
  refute_zero r1627 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1627
def r1628 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1))))))
theorem reject1628 : ¬ Reader r1628 :=
  refute_zero r1628 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject1628
def r1629 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1)))))
theorem reject1629 : ¬ Reader r1629 :=
  refute_zero r1629 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject1629
def r1630 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1))))))
theorem reject1630 : ¬ Reader r1630 :=
  refute_zero r1630 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))) 5 (by decide) (by decide) (by decide)
#print axioms reject1630
def r1631 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0))))))
theorem reject1631 : ¬ Reader r1631 :=
  refute_zero r1631 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1631
def r1632 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1)))))
theorem reject1632 : ¬ Reader r1632 :=
  refute_zero r1632 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1632
def r1633 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))
theorem reject1633 : ¬ Reader r1633 :=
  refute_zero r1633 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1633
def r1634 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))
theorem reject1634 : ¬ Reader r1634 :=
  refute_zero r1634 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1634
def r1635 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))
theorem reject1635 : ¬ Reader r1635 :=
  refute_zero r1635 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject1635
def r1636 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))
theorem reject1636 : ¬ Reader r1636 :=
  refute_zero r1636 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1636
def r1637 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))
theorem reject1637 : ¬ Reader r1637 :=
  refute_zero r1637 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject1637
def r1638 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1))))
theorem reject1638 : ¬ Reader r1638 :=
  refute_zero r1638 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1638
def r1639 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))
theorem reject1639 : ¬ Reader r1639 :=
  refute_zero r1639 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1639
def r1640 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))
theorem reject1640 : ¬ Reader r1640 :=
  refute_zero r1640 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1640
def r1641 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0))))
theorem reject1641 : ¬ Reader r1641 :=
  refute_zero r1641 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1641
def r1642 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0))))
theorem reject1642 : ¬ Reader r1642 :=
  refute_zero r1642 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1642
def r1643 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 0) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject1643 : ¬ Reader r1643 :=
  refute_zero r1643 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.app (.var 0) (.app (.var 0) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject1643
def r1644 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 0) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject1644 : ¬ Reader r1644 :=
  refute_zero r1644 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.app (.app (.var 0) (.var 0)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject1644
def r1645 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 0))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject1645 : ¬ Reader r1645 :=
  refute_zero r1645 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1645
def r1646 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject1646 : ¬ Reader r1646 :=
  refute_zero r1646 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1646
def r1647 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.lam (.app (.var 2) (.var 2)))))
theorem reject1647 : ¬ Reader r1647 :=
  refute_zero r1647 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1647
def r1648 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 1)))))
theorem reject1648 : ¬ Reader r1648 :=
  refute_zero r1648 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject1648
def r1649 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 1))))
theorem reject1649 : ¬ Reader r1649 :=
  refute_zero r1649 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject1649
def r1650 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 0) (.var 1)))))
theorem reject1650 : ¬ Reader r1650 :=
  refute_zero r1650 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject1650
def r1651 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 0)))))
theorem reject1651 : ¬ Reader r1651 :=
  refute_zero r1651 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1651
def r1652 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 1))))
theorem reject1652 : ¬ Reader r1652 :=
  refute_zero r1652 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1652
def r1653 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0))))
theorem reject1653 : ¬ Reader r1653 :=
  refute_zero r1653 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1653
def r1654 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.app (.var 2) (.var 2)))) (.app (.var 1) (.var 1))))
theorem reject1654 : ¬ Reader r1654 :=
  refute_zero r1654 (.app (.app (.app (.var 1) (.var 3)) (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1654
def r1655 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 0) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject1655 : ¬ Reader r1655 :=
  refute_zero r1655 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject1655
def r1656 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject1656 : ¬ Reader r1656 :=
  refute_zero r1656 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject1656
def r1657 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 0) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject1657 : ¬ Reader r1657 :=
  refute_zero r1657 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject1657
def r1658 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 1))))
theorem reject1658 : ¬ Reader r1658 :=
  refute_zero r1658 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1658
def r1659 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 0)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject1659 : ¬ Reader r1659 :=
  refute_zero r1659 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1659
def r1660 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 0))) (.app (.var 1) (.var 1))))
theorem reject1660 : ¬ Reader r1660 :=
  refute_zero r1660 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1660
def r1661 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 1))))
theorem reject1661 : ¬ Reader r1661 :=
  refute_zero r1661 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject1661
def r1662 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 0))))
theorem reject1662 : ¬ Reader r1662 :=
  refute_zero r1662 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1662
def r1663 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.app (.var 0) (.var 1))))
theorem reject1663 : ¬ Reader r1663 :=
  refute_zero r1663 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject1663
def r1664 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.app (.var 1) (.var 0))))
theorem reject1664 : ¬ Reader r1664 :=
  refute_zero r1664 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1664
def r1665 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject1665 : ¬ Reader r1665 :=
  refute_zero r1665 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1665
def r1666 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 1)))
theorem reject1666 : ¬ Reader r1666 :=
  refute_zero r1666 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1666
def r1667 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject1667 : ¬ Reader r1667 :=
  refute_zero r1667 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0)))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1667
def r1668 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))) (.var 1)))
theorem reject1668 : ¬ Reader r1668 :=
  refute_zero r1668 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1668
def r1669 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))) (.var 1)))
theorem reject1669 : ¬ Reader r1669 :=
  refute_zero r1669 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1669
def r1670 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.lam (.app (.var 2) (.var 2))))) (.var 1)))
theorem reject1670 : ¬ Reader r1670 :=
  refute_zero r1670 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1670
def r1671 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject1671 : ¬ Reader r1671 :=
  refute_zero r1671 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1671
def r1672 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 1)))
theorem reject1672 : ¬ Reader r1672 :=
  refute_zero r1672 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1672
def r1673 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 1)))
theorem reject1673 : ¬ Reader r1673 :=
  refute_zero r1673 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1673
def r1674 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 1)))
theorem reject1674 : ¬ Reader r1674 :=
  refute_zero r1674 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1674
def r1675 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 1)))
theorem reject1675 : ¬ Reader r1675 :=
  refute_zero r1675 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1675
def r1676 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 1)))
theorem reject1676 : ¬ Reader r1676 :=
  refute_zero r1676 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1676
def r1677 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject1677 : ¬ Reader r1677 :=
  refute_zero r1677 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1677
def r1678 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))) (.var 1)))
theorem reject1678 : ¬ Reader r1678 :=
  refute_zero r1678 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1678
def r1679 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))) (.var 1)))
theorem reject1679 : ¬ Reader r1679 :=
  refute_zero r1679 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1679
def r1680 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))) (.var 1)))
theorem reject1680 : ¬ Reader r1680 :=
  refute_zero r1680 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1680
def r1681 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1))) (.var 1)))
theorem reject1681 : ¬ Reader r1681 :=
  refute_zero r1681 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1681
def r1682 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))) (.var 1)))
theorem reject1682 : ¬ Reader r1682 :=
  refute_zero r1682 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1682
def r1683 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))) (.var 1)))
theorem reject1683 : ¬ Reader r1683 :=
  refute_zero r1683 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1683
def r1684 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0))) (.var 1)))
theorem reject1684 : ¬ Reader r1684 :=
  refute_zero r1684 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1684
def r1685 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0))) (.var 1)))
theorem reject1685 : ¬ Reader r1685 :=
  refute_zero r1685 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1685
def r1686 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 0)))
theorem reject1686 : ¬ Reader r1686 :=
  refute_zero r1686 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1686
def r1687 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 0)))
theorem reject1687 : ¬ Reader r1687 :=
  refute_zero r1687 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1687
def r1688 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.var 0)))
theorem reject1688 : ¬ Reader r1688 :=
  refute_zero r1688 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1688
def r1689 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.var 0)))
theorem reject1689 : ¬ Reader r1689 :=
  refute_zero r1689 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1689
def r1690 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.var 0)))
theorem reject1690 : ¬ Reader r1690 :=
  refute_zero r1690 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1690
def r1691 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.lam (.app (.var 2) (.app (.var 2) (.var 2))))))
theorem reject1691 : ¬ Reader r1691 :=
  refute_zero r1691 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1691
def r1692 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.lam (.app (.app (.var 2) (.var 2)) (.var 2)))))
theorem reject1692 : ¬ Reader r1692 :=
  refute_zero r1692 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1692
def r1693 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.app (.var 2) (.app (.var 2) (.var 2))))) (.var 1)))
theorem reject1693 : ¬ Reader r1693 :=
  refute_zero r1693 (.app (.app (.app (.var 1) (.var 3)) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1693
def r1694 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.app (.app (.var 2) (.var 2)) (.var 2)))) (.var 1)))
theorem reject1694 : ¬ Reader r1694 :=
  refute_zero r1694 (.app (.app (.app (.var 1) (.var 3)) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1694
def r1695 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1695 : ¬ Reader r1695 :=
  refute_zero r1695 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1695
def r1696 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1696 : ¬ Reader r1696 :=
  refute_zero r1696 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1696
def r1697 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject1697 : ¬ Reader r1697 :=
  refute_zero r1697 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1697
def r1698 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject1698 : ¬ Reader r1698 :=
  refute_zero r1698 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1698
def r1699 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))
theorem reject1699 : ¬ Reader r1699 :=
  refute_zero r1699 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1699
def r1700 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject1700 : ¬ Reader r1700 :=
  refute_zero r1700 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1700
def r1701 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject1701 : ¬ Reader r1701 :=
  refute_zero r1701 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1701
def r1702 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject1702 : ¬ Reader r1702 :=
  refute_zero r1702 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1702
def r1703 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject1703 : ¬ Reader r1703 :=
  refute_zero r1703 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1703
def r1704 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject1704 : ¬ Reader r1704 :=
  refute_zero r1704 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1704
def r1705 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 1)))
theorem reject1705 : ¬ Reader r1705 :=
  refute_zero r1705 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1705
def r1706 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject1706 : ¬ Reader r1706 :=
  refute_zero r1706 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1706
def r1707 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.var 1)))
theorem reject1707 : ¬ Reader r1707 :=
  refute_zero r1707 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1707
def r1708 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.var 1)))
theorem reject1708 : ¬ Reader r1708 :=
  refute_zero r1708 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1708
def r1709 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3)))))))
theorem reject1709 : ¬ Reader r1709 :=
  refute_zero r1709 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1709
def r1710 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3))))))
theorem reject1710 : ¬ Reader r1710 :=
  refute_zero r1710 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1710
def r1711 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2)))))
theorem reject1711 : ¬ Reader r1711 :=
  refute_zero r1711 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1711
def r1712 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1))))
theorem reject1712 : ¬ Reader r1712 :=
  refute_zero r1712 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1712
def r1713 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))
theorem reject1713 : ¬ Reader r1713 :=
  refute_zero r1713 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1713
def r1714 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))
theorem reject1714 : ¬ Reader r1714 :=
  refute_zero r1714 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1714
def r1715 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))))
theorem reject1715 : ¬ Reader r1715 :=
  refute_zero r1715 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1715
def r1716 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0))))))
theorem reject1716 : ¬ Reader r1716 :=
  refute_zero r1716 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1716
def r1717 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1)))))
theorem reject1717 : ¬ Reader r1717 :=
  refute_zero r1717 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1717
def r1718 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0)))))
theorem reject1718 : ¬ Reader r1718 :=
  refute_zero r1718 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1718
def r1719 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0)))))
theorem reject1719 : ¬ Reader r1719 :=
  refute_zero r1719 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1719
def r1720 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1))))
theorem reject1720 : ¬ Reader r1720 :=
  refute_zero r1720 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1720
def r1721 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1))))
theorem reject1721 : ¬ Reader r1721 :=
  refute_zero r1721 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1721
def r1722 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.var 1)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1))))
theorem reject1722 : ¬ Reader r1722 :=
  refute_zero r1722 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1722
def r1723 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject1723 : ¬ Reader r1723 :=
  refute_zero r1723 (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1723
def r1724 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 0))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject1724 : ¬ Reader r1724 :=
  refute_zero r1724 (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1724
def r1725 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject1725 : ¬ Reader r1725 :=
  refute_zero r1725 (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1725
def r1726 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject1726 : ¬ Reader r1726 :=
  refute_zero r1726 (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1726
def r1727 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))
theorem reject1727 : ¬ Reader r1727 :=
  refute_zero r1727 (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1727
def r1728 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 2))) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))))
theorem reject1728 : ¬ Reader r1728 :=
  refute_zero r1728 (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1728
def r1729 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 2))) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))))
theorem reject1729 : ¬ Reader r1729 :=
  refute_zero r1729 (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1729
def r1730 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.var 2))) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))))
theorem reject1730 : ¬ Reader r1730 :=
  refute_zero r1730 (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1730
def r1731 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.lam (.var 3))))))
theorem reject1731 : ¬ Reader r1731 :=
  refute_zero r1731 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1731
def r1732 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))
theorem reject1732 : ¬ Reader r1732 :=
  refute_zero r1732 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1732
def r1733 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))
theorem reject1733 : ¬ Reader r1733 :=
  refute_zero r1733 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1733
def r1734 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))
theorem reject1734 : ¬ Reader r1734 :=
  refute_zero r1734 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1734
def r1735 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.lam (.var 3)))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject1735 : ¬ Reader r1735 :=
  refute_zero r1735 (.app (.app (.app (.var 1) (.var 3)) (.lam (.lam (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1735
def r1736 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.lam (.lam (.var 3)))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject1736 : ¬ Reader r1736 :=
  refute_zero r1736 (.app (.app (.app (.var 1) (.var 3)) (.lam (.lam (.var 2)))) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1736
def r1737 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject1737 : ¬ Reader r1737 :=
  refute_zero r1737 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1737
def r1738 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.lam (.var 0)))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject1738 : ¬ Reader r1738 :=
  refute_zero r1738 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1738
def r1739 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.lam (.var 2)))) (.app (.var 1) (.lam (.var 2)))))
theorem reject1739 : ¬ Reader r1739 :=
  refute_zero r1739 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1739
def r1740 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 3)))))
theorem reject1740 : ¬ Reader r1740 :=
  refute_zero r1740 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1740
def r1741 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.app (.var 1) (.lam (.var 0)))))
theorem reject1741 : ¬ Reader r1741 :=
  refute_zero r1741 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1741
def r1742 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 3)))))
theorem reject1742 : ¬ Reader r1742 :=
  refute_zero r1742 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1742
def r1743 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.app (.var 1) (.lam (.var 0)))))
theorem reject1743 : ¬ Reader r1743 :=
  refute_zero r1743 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1743
def r1744 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.lam (.lam (.var 3))))) (.app (.var 1) (.var 1))))
theorem reject1744 : ¬ Reader r1744 :=
  refute_zero r1744 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.lam (.var 2))))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1744
def r1745 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.app (.var 1) (.var 1))))
theorem reject1745 : ¬ Reader r1745 :=
  refute_zero r1745 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1745
def r1746 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.app (.var 1) (.var 1))))
theorem reject1746 : ¬ Reader r1746 :=
  refute_zero r1746 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1746
def r1747 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject1747 : ¬ Reader r1747 :=
  refute_zero r1747 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1747
def r1748 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.lam (.var 2))))
theorem reject1748 : ¬ Reader r1748 :=
  refute_zero r1748 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject1748
def r1749 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.lam (.var 2))))
theorem reject1749 : ¬ Reader r1749 :=
  refute_zero r1749 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject1749
def r1750 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.lam (.var 2))))
theorem reject1750 : ¬ Reader r1750 :=
  refute_zero r1750 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject1750
def r1751 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.var 0))))
theorem reject1751 : ¬ Reader r1751 :=
  refute_zero r1751 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1751
def r1752 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.var 0))))
theorem reject1752 : ¬ Reader r1752 :=
  refute_zero r1752 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1752
def r1753 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.var 0))))
theorem reject1753 : ¬ Reader r1753 :=
  refute_zero r1753 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1753
def r1754 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.var 0))))
theorem reject1754 : ¬ Reader r1754 :=
  refute_zero r1754 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1754
def r1755 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.lam (.var 0))))
theorem reject1755 : ¬ Reader r1755 :=
  refute_zero r1755 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1755
def r1756 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 1)))
theorem reject1756 : ¬ Reader r1756 :=
  refute_zero r1756 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2)))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1756
def r1757 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3))))) (.var 1)))
theorem reject1757 : ¬ Reader r1757 :=
  refute_zero r1757 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1757
def r1758 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2)))) (.var 1)))
theorem reject1758 : ¬ Reader r1758 :=
  refute_zero r1758 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1758
def r1759 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1))) (.var 1)))
theorem reject1759 : ¬ Reader r1759 :=
  refute_zero r1759 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1759
def r1760 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 1)))
theorem reject1760 : ¬ Reader r1760 :=
  refute_zero r1760 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1760
def r1761 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 1)))
theorem reject1761 : ¬ Reader r1761 :=
  refute_zero r1761 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1761
def r1762 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 1)))
theorem reject1762 : ¬ Reader r1762 :=
  refute_zero r1762 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1762
def r1763 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0))))) (.var 1)))
theorem reject1763 : ¬ Reader r1763 :=
  refute_zero r1763 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1763
def r1764 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject1764 : ¬ Reader r1764 :=
  refute_zero r1764 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1764
def r1765 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0)))) (.var 1)))
theorem reject1765 : ¬ Reader r1765 :=
  refute_zero r1765 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1765
def r1766 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0)))) (.var 1)))
theorem reject1766 : ¬ Reader r1766 :=
  refute_zero r1766 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1766
def r1767 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1))) (.var 1)))
theorem reject1767 : ¬ Reader r1767 :=
  refute_zero r1767 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1767
def r1768 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1))) (.var 1)))
theorem reject1768 : ¬ Reader r1768 :=
  refute_zero r1768 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1768
def r1769 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.var 1))) (.var 2))) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1))) (.var 1)))
theorem reject1769 : ¬ Reader r1769 :=
  refute_zero r1769 (.app (.app (.app (.var 1) (.var 3)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1769
def r1770 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject1770 : ¬ Reader r1770 :=
  refute_zero r1770 (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject1770
def r1771 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject1771 : ¬ Reader r1771 :=
  refute_zero r1771 (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject1771
def r1772 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject1772 : ¬ Reader r1772 :=
  refute_zero r1772 (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject1772
def r1773 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject1773 : ¬ Reader r1773 :=
  refute_zero r1773 (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1773
def r1774 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))
theorem reject1774 : ¬ Reader r1774 :=
  refute_zero r1774 (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1774
def r1775 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))))
theorem reject1775 : ¬ Reader r1775 :=
  refute_zero r1775 (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) 5 (by decide) (by decide) (by decide)
#print axioms reject1775
def r1776 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))))
theorem reject1776 : ¬ Reader r1776 :=
  refute_zero r1776 (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) 5 (by decide) (by decide) (by decide)
#print axioms reject1776
def r1777 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))))
theorem reject1777 : ¬ Reader r1777 :=
  refute_zero r1777 (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject1777
def r1778 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.lam (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject1778 : ¬ Reader r1778 :=
  refute_zero r1778 (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject1778
def r1779 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.lam (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject1779 : ¬ Reader r1779 :=
  refute_zero r1779 (.app (.app (.var 1) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject1779
def r1780 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 2)))))
theorem reject1780 : ¬ Reader r1780 :=
  refute_zero r1780 (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))) 5 (by decide) (by decide) (by decide)
#print axioms reject1780
def r1781 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.var 1) (.lam (.var 2)))) (.app (.var 1) (.var 1))))
theorem reject1781 : ¬ Reader r1781 :=
  refute_zero r1781 (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject1781
def r1782 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 2))))
theorem reject1782 : ¬ Reader r1782 :=
  refute_zero r1782 (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1))) 5 (by decide) (by decide) (by decide)
#print axioms reject1782
def r1783 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 2))))
theorem reject1783 : ¬ Reader r1783 :=
  refute_zero r1783 (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 1))) 5 (by decide) (by decide) (by decide)
#print axioms reject1783
def r1784 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.var 1)))
theorem reject1784 : ¬ Reader r1784 :=
  refute_zero r1784 (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1784
def r1785 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.var 1)))
theorem reject1785 : ¬ Reader r1785 :=
  refute_zero r1785 (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1785
def r1786 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.var 2)))) (.var 2))) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.var 1)))
theorem reject1786 : ¬ Reader r1786 :=
  refute_zero r1786 (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1786
def r1787 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject1787 : ¬ Reader r1787 :=
  refute_zero r1787 (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) 6 (by decide) (by decide) (by decide)
#print axioms reject1787
def r1788 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject1788 : ¬ Reader r1788 :=
  refute_zero r1788 (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject1788
def r1789 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject1789 : ¬ Reader r1789 :=
  refute_zero r1789 (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject1789
def r1790 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject1790 : ¬ Reader r1790 :=
  refute_zero r1790 (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject1790
def r1791 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))
theorem reject1791 : ¬ Reader r1791 :=
  refute_zero r1791 (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject1791
def r1792 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject1792 : ¬ Reader r1792 :=
  refute_zero r1792 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1792
def r1793 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject1793 : ¬ Reader r1793 :=
  refute_zero r1793 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1793
def r1794 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject1794 : ¬ Reader r1794 :=
  refute_zero r1794 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1794
def r1795 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject1795 : ¬ Reader r1795 :=
  refute_zero r1795 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1795
def r1796 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))
theorem reject1796 : ¬ Reader r1796 :=
  refute_zero r1796 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1796
def r1797 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1797 : ¬ Reader r1797 :=
  refute_zero r1797 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1797
def r1798 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1798 : ¬ Reader r1798 :=
  refute_zero r1798 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1798
def r1799 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.lam (.var 2)))))
theorem reject1799 : ¬ Reader r1799 :=
  refute_zero r1799 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1799
def r1800 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.lam (.var 2))) (.app (.var 1) (.var 1))))
theorem reject1800 : ¬ Reader r1800 :=
  refute_zero r1800 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.var 1))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1800
def r1801 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.lam (.var 2))))
theorem reject1801 : ¬ Reader r1801 :=
  refute_zero r1801 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject1801
def r1802 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.lam (.var 2)))) (.var 1)))
theorem reject1802 : ¬ Reader r1802 :=
  refute_zero r1802 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.lam (.var 1)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1802
def r1803 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject1803 : ¬ Reader r1803 :=
  refute_zero r1803 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1803
def r1804 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject1804 : ¬ Reader r1804 :=
  refute_zero r1804 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1804
def r1805 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.lam (.app (.var 2) (.var 2)))))
theorem reject1805 : ¬ Reader r1805 :=
  refute_zero r1805 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.lam (.app (.var 1) (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1805
def r1806 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 1)))))
theorem reject1806 : ¬ Reader r1806 :=
  refute_zero r1806 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject1806
def r1807 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 1))))
theorem reject1807 : ¬ Reader r1807 :=
  refute_zero r1807 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject1807
def r1808 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 1)))))
theorem reject1808 : ¬ Reader r1808 :=
  refute_zero r1808 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject1808
def r1809 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 0)))))
theorem reject1809 : ¬ Reader r1809 :=
  refute_zero r1809 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1809
def r1810 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 1))))
theorem reject1810 : ¬ Reader r1810 :=
  refute_zero r1810 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1810
def r1811 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 0))))
theorem reject1811 : ¬ Reader r1811 :=
  refute_zero r1811 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1811
def r1812 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject1812 : ¬ Reader r1812 :=
  refute_zero r1812 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject1812
def r1813 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 1))))
theorem reject1813 : ¬ Reader r1813 :=
  refute_zero r1813 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1813
def r1814 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 1))))
theorem reject1814 : ¬ Reader r1814 :=
  refute_zero r1814 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject1814
def r1815 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 0))))
theorem reject1815 : ¬ Reader r1815 :=
  refute_zero r1815 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1815
def r1816 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.lam (.app (.var 2) (.var 2)))) (.var 1)))
theorem reject1816 : ¬ Reader r1816 :=
  refute_zero r1816 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.app (.var 1) (.var 1)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1816
def r1817 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject1817 : ¬ Reader r1817 :=
  refute_zero r1817 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1817
def r1818 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 1)))
theorem reject1818 : ¬ Reader r1818 :=
  refute_zero r1818 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1818
def r1819 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 1)))
theorem reject1819 : ¬ Reader r1819 :=
  refute_zero r1819 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1819
def r1820 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 1)))
theorem reject1820 : ¬ Reader r1820 :=
  refute_zero r1820 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1820
def r1821 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 1)))
theorem reject1821 : ¬ Reader r1821 :=
  refute_zero r1821 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1821
def r1822 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 1)))
theorem reject1822 : ¬ Reader r1822 :=
  refute_zero r1822 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1822
def r1823 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)))
theorem reject1823 : ¬ Reader r1823 :=
  refute_zero r1823 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1823
def r1824 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)))
theorem reject1824 : ¬ Reader r1824 :=
  refute_zero r1824 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1824
def r1825 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject1825 : ¬ Reader r1825 :=
  refute_zero r1825 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1825
def r1826 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject1826 : ¬ Reader r1826 :=
  refute_zero r1826 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1826
def r1827 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject1827 : ¬ Reader r1827 :=
  refute_zero r1827 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1827
def r1828 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject1828 : ¬ Reader r1828 :=
  refute_zero r1828 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1828
def r1829 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))
theorem reject1829 : ¬ Reader r1829 :=
  refute_zero r1829 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1829
def r1830 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.lam (.lam (.var 3))))))
theorem reject1830 : ¬ Reader r1830 :=
  refute_zero r1830 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 2))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1830
def r1831 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))
theorem reject1831 : ¬ Reader r1831 :=
  refute_zero r1831 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1831
def r1832 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))
theorem reject1832 : ¬ Reader r1832 :=
  refute_zero r1832 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1832
def r1833 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))
theorem reject1833 : ¬ Reader r1833 :=
  refute_zero r1833 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1833
def r1834 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject1834 : ¬ Reader r1834 :=
  refute_zero r1834 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1834
def r1835 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject1835 : ¬ Reader r1835 :=
  refute_zero r1835 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1835
def r1836 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.lam (.var 2))) (.app (.var 1) (.lam (.var 2)))))
theorem reject1836 : ¬ Reader r1836 :=
  refute_zero r1836 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1836
def r1837 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 3)))))
theorem reject1837 : ¬ Reader r1837 :=
  refute_zero r1837 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1837
def r1838 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 0)))))
theorem reject1838 : ¬ Reader r1838 :=
  refute_zero r1838 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1838
def r1839 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.lam (.lam (.var 3)))) (.app (.var 1) (.var 1))))
theorem reject1839 : ¬ Reader r1839 :=
  refute_zero r1839 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1839
def r1840 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 1))))
theorem reject1840 : ¬ Reader r1840 :=
  refute_zero r1840 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1840
def r1841 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.lam (.var 2)))) (.lam (.var 2))))
theorem reject1841 : ¬ Reader r1841 :=
  refute_zero r1841 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject1841
def r1842 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 0))))
theorem reject1842 : ¬ Reader r1842 :=
  refute_zero r1842 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1842
def r1843 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 0))))
theorem reject1843 : ¬ Reader r1843 :=
  refute_zero r1843 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1843
def r1844 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 1)))
theorem reject1844 : ¬ Reader r1844 :=
  refute_zero r1844 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1844
def r1845 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 1)))
theorem reject1845 : ¬ Reader r1845 :=
  refute_zero r1845 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1845
def r1846 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 1)))
theorem reject1846 : ¬ Reader r1846 :=
  refute_zero r1846 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1846
def r1847 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2))) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 1)))
theorem reject1847 : ¬ Reader r1847 :=
  refute_zero r1847 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1847
def r1848 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject1848 : ¬ Reader r1848 :=
  refute_zero r1848 (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) 6 (by decide) (by decide) (by decide)
#print axioms reject1848
def r1849 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject1849 : ¬ Reader r1849 :=
  refute_zero r1849 (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject1849
def r1850 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject1850 : ¬ Reader r1850 :=
  refute_zero r1850 (.app (.var 1) (.app (.var 0) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject1850
def r1851 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject1851 : ¬ Reader r1851 :=
  refute_zero r1851 (.app (.var 1) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject1851
def r1852 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))
theorem reject1852 : ¬ Reader r1852 :=
  refute_zero r1852 (.app (.var 1) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject1852
def r1853 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject1853 : ¬ Reader r1853 :=
  refute_zero r1853 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1853
def r1854 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject1854 : ¬ Reader r1854 :=
  refute_zero r1854 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1854
def r1855 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject1855 : ¬ Reader r1855 :=
  refute_zero r1855 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1855
def r1856 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject1856 : ¬ Reader r1856 :=
  refute_zero r1856 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1856
def r1857 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))
theorem reject1857 : ¬ Reader r1857 :=
  refute_zero r1857 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1857
def r1858 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject1858 : ¬ Reader r1858 :=
  refute_zero r1858 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1858
def r1859 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject1859 : ¬ Reader r1859 :=
  refute_zero r1859 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1859
def r1860 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject1860 : ¬ Reader r1860 :=
  refute_zero r1860 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1860
def r1861 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject1861 : ¬ Reader r1861 :=
  refute_zero r1861 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1861
def r1862 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))
theorem reject1862 : ¬ Reader r1862 :=
  refute_zero r1862 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1862
def r1863 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject1863 : ¬ Reader r1863 :=
  refute_zero r1863 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1863
def r1864 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject1864 : ¬ Reader r1864 :=
  refute_zero r1864 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1864
def r1865 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject1865 : ¬ Reader r1865 :=
  refute_zero r1865 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1865
def r1866 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject1866 : ¬ Reader r1866 :=
  refute_zero r1866 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1866
def r1867 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1)))
theorem reject1867 : ¬ Reader r1867 :=
  refute_zero r1867 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1867
def r1868 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1868 : ¬ Reader r1868 :=
  refute_zero r1868 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1868
def r1869 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1869 : ¬ Reader r1869 :=
  refute_zero r1869 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1869
def r1870 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2))) (.var 1)) (.app (.var 1) (.lam (.var 2)))))
theorem reject1870 : ¬ Reader r1870 :=
  refute_zero r1870 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1870
def r1871 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2))) (.lam (.var 2))) (.app (.var 1) (.var 1))))
theorem reject1871 : ¬ Reader r1871 :=
  refute_zero r1871 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.lam (.var 1))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1871
def r1872 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2))) (.app (.var 1) (.var 1))) (.lam (.var 2))))
theorem reject1872 : ¬ Reader r1872 :=
  refute_zero r1872 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject1872
def r1873 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2))) (.app (.var 1) (.lam (.var 2)))) (.var 1)))
theorem reject1873 : ¬ Reader r1873 :=
  refute_zero r1873 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.app (.var 0) (.lam (.var 1)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1873
def r1874 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1874 : ¬ Reader r1874 :=
  refute_zero r1874 (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject1874
def r1875 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1875 : ¬ Reader r1875 :=
  refute_zero r1875 (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1875
def r1876 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1876 : ¬ Reader r1876 :=
  refute_zero r1876 (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject1876
def r1877 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1877 : ¬ Reader r1877 :=
  refute_zero r1877 (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject1877
def r1878 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1878 : ¬ Reader r1878 :=
  refute_zero r1878 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject1878
def r1879 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1879 : ¬ Reader r1879 :=
  refute_zero r1879 (.app (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject1879
def r1880 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1880 : ¬ Reader r1880 :=
  refute_zero r1880 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject1880
def r1881 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1881 : ¬ Reader r1881 :=
  refute_zero r1881 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1881
def r1882 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1882 : ¬ Reader r1882 :=
  refute_zero r1882 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1882
def r1883 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1883 : ¬ Reader r1883 :=
  refute_zero r1883 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1883
def r1884 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1884 : ¬ Reader r1884 :=
  refute_zero r1884 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 1)) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1884
def r1885 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1885 : ¬ Reader r1885 :=
  refute_zero r1885 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1885
def r1886 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1886 : ¬ Reader r1886 :=
  refute_zero r1886 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1886
def r1887 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1887 : ¬ Reader r1887 :=
  refute_zero r1887 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1887
def r1888 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1888 : ¬ Reader r1888 :=
  refute_zero r1888 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1888
def r1889 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1889 : ¬ Reader r1889 :=
  refute_zero r1889 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1889
def r1890 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.lam (.var 2))))
theorem reject1890 : ¬ Reader r1890 :=
  refute_zero r1890 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject1890
def r1891 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.lam (.var 2))) (.var 1)))
theorem reject1891 : ¬ Reader r1891 :=
  refute_zero r1891 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1891
def r1892 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.lam (.var 2))))
theorem reject1892 : ¬ Reader r1892 :=
  refute_zero r1892 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject1892
def r1893 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.lam (.var 2))) (.var 1)))
theorem reject1893 : ¬ Reader r1893 :=
  refute_zero r1893 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1893
def r1894 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.var 0)) (.app (.var 1) (.var 1))))
theorem reject1894 : ¬ Reader r1894 :=
  refute_zero r1894 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1894
def r1895 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.app (.var 0) (.var 1))))
theorem reject1895 : ¬ Reader r1895 :=
  refute_zero r1895 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject1895
def r1896 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.app (.var 1) (.var 0))))
theorem reject1896 : ¬ Reader r1896 :=
  refute_zero r1896 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1896
def r1897 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 0) (.var 1))) (.var 1)))
theorem reject1897 : ¬ Reader r1897 :=
  refute_zero r1897 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1897
def r1898 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.var 0))) (.var 1)))
theorem reject1898 : ¬ Reader r1898 :=
  refute_zero r1898 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1898
def r1899 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.var 1))) (.var 0)))
theorem reject1899 : ¬ Reader r1899 :=
  refute_zero r1899 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1899
def r1900 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.var 0)) (.app (.var 1) (.var 1))))
theorem reject1900 : ¬ Reader r1900 :=
  refute_zero r1900 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1900
def r1901 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 0) (.var 1))))
theorem reject1901 : ¬ Reader r1901 :=
  refute_zero r1901 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject1901
def r1902 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.var 0))))
theorem reject1902 : ¬ Reader r1902 :=
  refute_zero r1902 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject1902
def r1903 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 0) (.var 1))) (.var 1)))
theorem reject1903 : ¬ Reader r1903 :=
  refute_zero r1903 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1903
def r1904 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.var 0))) (.var 1)))
theorem reject1904 : ¬ Reader r1904 :=
  refute_zero r1904 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1904
def r1905 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.var 0)))
theorem reject1905 : ¬ Reader r1905 :=
  refute_zero r1905 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1905
def r1906 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1906 : ¬ Reader r1906 :=
  refute_zero r1906 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1906
def r1907 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1907 : ¬ Reader r1907 :=
  refute_zero r1907 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1907
def r1908 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1908 : ¬ Reader r1908 :=
  refute_zero r1908 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1908
def r1909 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1909 : ¬ Reader r1909 :=
  refute_zero r1909 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1909
def r1910 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.lam (.lam (.var 3)))))
theorem reject1910 : ¬ Reader r1910 :=
  refute_zero r1910 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1910
def r1911 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.app (.var 1) (.lam (.var 0)))))
theorem reject1911 : ¬ Reader r1911 :=
  refute_zero r1911 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1911
def r1912 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.lam (.var 0))) (.app (.var 1) (.var 1))))
theorem reject1912 : ¬ Reader r1912 :=
  refute_zero r1912 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1912
def r1913 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.lam (.var 2))) (.lam (.var 2))))
theorem reject1913 : ¬ Reader r1913 :=
  refute_zero r1913 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.lam (.var 1))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject1913
def r1914 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.var 1))) (.lam (.var 0))))
theorem reject1914 : ¬ Reader r1914 :=
  refute_zero r1914 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1914
def r1915 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.lam (.lam (.var 3)))) (.var 1)))
theorem reject1915 : ¬ Reader r1915 :=
  refute_zero r1915 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.lam (.lam (.var 2)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1915
def r1916 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2))) (.app (.var 1) (.lam (.var 0)))) (.var 1)))
theorem reject1916 : ¬ Reader r1916 :=
  refute_zero r1916 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1916
def r1917 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.lam (.lam (.var 3)))))
theorem reject1917 : ¬ Reader r1917 :=
  refute_zero r1917 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.var 0)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1917
def r1918 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.lam (.var 0)))))
theorem reject1918 : ¬ Reader r1918 :=
  refute_zero r1918 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.var 0)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1918
def r1919 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.lam (.var 0))) (.app (.var 1) (.var 1))))
theorem reject1919 : ¬ Reader r1919 :=
  refute_zero r1919 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.lam (.var 0))) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1919
def r1920 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.lam (.var 2))) (.lam (.var 2))))
theorem reject1920 : ¬ Reader r1920 :=
  refute_zero r1920 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.lam (.var 1))) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject1920
def r1921 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.lam (.var 0))))
theorem reject1921 : ¬ Reader r1921 :=
  refute_zero r1921 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1921
def r1922 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.lam (.lam (.var 3)))) (.var 1)))
theorem reject1922 : ¬ Reader r1922 :=
  refute_zero r1922 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.lam (.lam (.var 2)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1922
def r1923 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2))) (.app (.var 1) (.lam (.var 0)))) (.var 1)))
theorem reject1923 : ¬ Reader r1923 :=
  refute_zero r1923 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.app (.var 0) (.lam (.var 0)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1923
def r1924 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1924 : ¬ Reader r1924 :=
  refute_zero r1924 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1924
def r1925 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1925 : ¬ Reader r1925 :=
  refute_zero r1925 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1925
def r1926 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1926 : ¬ Reader r1926 :=
  refute_zero r1926 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1926
def r1927 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1927 : ¬ Reader r1927 :=
  refute_zero r1927 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1927
def r1928 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1928 : ¬ Reader r1928 :=
  refute_zero r1928 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1928
def r1929 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1929 : ¬ Reader r1929 :=
  refute_zero r1929 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1929
def r1930 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1930 : ¬ Reader r1930 :=
  refute_zero r1930 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1930
def r1931 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1931 : ¬ Reader r1931 :=
  refute_zero r1931 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1931
def r1932 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1932 : ¬ Reader r1932 :=
  refute_zero r1932 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1932
def r1933 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1933 : ¬ Reader r1933 :=
  refute_zero r1933 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1933
def r1934 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1934 : ¬ Reader r1934 :=
  refute_zero r1934 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1934
def r1935 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1935 : ¬ Reader r1935 :=
  refute_zero r1935 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1935
def r1936 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1936 : ¬ Reader r1936 :=
  refute_zero r1936 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1936
def r1937 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1937 : ¬ Reader r1937 :=
  refute_zero r1937 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1937
def r1938 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1938 : ¬ Reader r1938 :=
  refute_zero r1938 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1938
def r1939 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1939 : ¬ Reader r1939 :=
  refute_zero r1939 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1939
def r1940 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 2))) (.var 1)) (.app (.var 1) (.var 1))))
theorem reject1940 : ¬ Reader r1940 :=
  refute_zero r1940 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject1940
def r1941 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 2))) (.app (.var 1) (.var 1))) (.var 1)))
theorem reject1941 : ¬ Reader r1941 :=
  refute_zero r1941 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1941
def r1942 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1942 : ¬ Reader r1942 :=
  refute_zero r1942 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1942
def r1943 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1943 : ¬ Reader r1943 :=
  refute_zero r1943 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1943
def r1944 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1944 : ¬ Reader r1944 :=
  refute_zero r1944 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1944
def r1945 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.var 2))) (.var 1)) (.lam (.var 2))))
theorem reject1945 : ¬ Reader r1945 :=
  refute_zero r1945 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 3)) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject1945
def r1946 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.var 2))) (.lam (.var 2))) (.var 1)))
theorem reject1946 : ¬ Reader r1946 :=
  refute_zero r1946 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 3)) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1946
def r1947 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.var 2))) (.var 1)) (.lam (.var 2))))
theorem reject1947 : ¬ Reader r1947 :=
  refute_zero r1947 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 3)) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject1947
def r1948 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.var 2))) (.lam (.var 2))) (.var 1)))
theorem reject1948 : ¬ Reader r1948 :=
  refute_zero r1948 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 3)) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1948
def r1949 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.var 2))) (.var 1)) (.lam (.var 2))))
theorem reject1949 : ¬ Reader r1949 :=
  refute_zero r1949 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 3)) (.var 0)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject1949
def r1950 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.var 2))) (.lam (.var 2))) (.var 1)))
theorem reject1950 : ¬ Reader r1950 :=
  refute_zero r1950 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 3)) (.lam (.var 1))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1950
def r1951 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1951 : ¬ Reader r1951 :=
  refute_zero r1951 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject1951
def r1952 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1952 : ¬ Reader r1952 :=
  refute_zero r1952 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject1952
def r1953 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1953 : ¬ Reader r1953 :=
  refute_zero r1953 (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject1953
def r1954 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1954 : ¬ Reader r1954 :=
  refute_zero r1954 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject1954
def r1955 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1955 : ¬ Reader r1955 :=
  refute_zero r1955 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject1955
def r1956 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1956 : ¬ Reader r1956 :=
  refute_zero r1956 (.app (.app (.app (.app (.var 1) (.lam (.app (.var 2) (.var 2)))) (.var 3)) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1956
def r1957 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1957 : ¬ Reader r1957 :=
  refute_zero r1957 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject1957
def r1958 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1958 : ¬ Reader r1958 :=
  refute_zero r1958 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 3)) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1958
def r1959 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1959 : ¬ Reader r1959 :=
  refute_zero r1959 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 1)))))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1959
def r1960 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1960 : ¬ Reader r1960 :=
  refute_zero r1960 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 1))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1960
def r1961 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1961 : ¬ Reader r1961 :=
  refute_zero r1961 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1))))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1961
def r1962 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1962 : ¬ Reader r1962 :=
  refute_zero r1962 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1962
def r1963 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1963 : ¬ Reader r1963 :=
  refute_zero r1963 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 3)) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1963
def r1964 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1964 : ¬ Reader r1964 :=
  refute_zero r1964 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1964
def r1965 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1965 : ¬ Reader r1965 :=
  refute_zero r1965 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 3)) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1965
def r1966 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1966 : ¬ Reader r1966 :=
  refute_zero r1966 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 1))))) (.var 1)) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1966
def r1967 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1967 : ¬ Reader r1967 :=
  refute_zero r1967 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 1)) (.var 1)) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1967
def r1968 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1968 : ¬ Reader r1968 :=
  refute_zero r1968 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 1)) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1968
def r1969 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1969 : ¬ Reader r1969 :=
  refute_zero r1969 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1969
def r1970 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1970 : ¬ Reader r1970 :=
  refute_zero r1970 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1970
def r1971 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 2)))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1971 : ¬ Reader r1971 :=
  refute_zero r1971 (.app (.app (.app (.app (.var 1) (.lam (.app (.var 2) (.var 2)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1971
def r1972 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1972 : ¬ Reader r1972 :=
  refute_zero r1972 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1972
def r1973 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1973 : ¬ Reader r1973 :=
  refute_zero r1973 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1973
def r1974 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1974 : ¬ Reader r1974 :=
  refute_zero r1974 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1974
def r1975 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1975 : ¬ Reader r1975 :=
  refute_zero r1975 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1975
def r1976 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1976 : ¬ Reader r1976 :=
  refute_zero r1976 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1976
def r1977 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1977 : ¬ Reader r1977 :=
  refute_zero r1977 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1977
def r1978 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1978 : ¬ Reader r1978 :=
  refute_zero r1978 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1978
def r1979 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1979 : ¬ Reader r1979 :=
  refute_zero r1979 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1979
def r1980 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1980 : ¬ Reader r1980 :=
  refute_zero r1980 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1980
def r1981 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1981 : ¬ Reader r1981 :=
  refute_zero r1981 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1981
def r1982 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1982 : ¬ Reader r1982 :=
  refute_zero r1982 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1982
def r1983 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1983 : ¬ Reader r1983 :=
  refute_zero r1983 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1983
def r1984 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1984 : ¬ Reader r1984 :=
  refute_zero r1984 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1984
def r1985 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1985 : ¬ Reader r1985 :=
  refute_zero r1985 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1985
def r1986 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.var 2)))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1986 : ¬ Reader r1986 :=
  refute_zero r1986 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1986
def r1987 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.var 2))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1987 : ¬ Reader r1987 :=
  refute_zero r1987 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject1987
def r1988 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2))) (.var 0)) (.var 1)))
theorem reject1988 : ¬ Reader r1988 :=
  refute_zero r1988 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1988
def r1989 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2))) (.var 1)) (.var 0)))
theorem reject1989 : ¬ Reader r1989 :=
  refute_zero r1989 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1989
def r1990 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2))) (.var 0)) (.var 1)))
theorem reject1990 : ¬ Reader r1990 :=
  refute_zero r1990 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1990
def r1991 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2))) (.var 1)) (.var 0)))
theorem reject1991 : ¬ Reader r1991 :=
  refute_zero r1991 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1991
def r1992 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2))) (.var 0)) (.var 1)))
theorem reject1992 : ¬ Reader r1992 :=
  refute_zero r1992 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1992
def r1993 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.var 0)))
theorem reject1993 : ¬ Reader r1993 :=
  refute_zero r1993 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1993
def r1994 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2))) (.var 0)) (.var 1)))
theorem reject1994 : ¬ Reader r1994 :=
  refute_zero r1994 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1994
def r1995 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2))) (.var 1)) (.var 0)))
theorem reject1995 : ¬ Reader r1995 :=
  refute_zero r1995 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1995
def r1996 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2))) (.var 0)) (.var 1)))
theorem reject1996 : ¬ Reader r1996 :=
  refute_zero r1996 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1996
def r1997 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.var 0)))
theorem reject1997 : ¬ Reader r1997 :=
  refute_zero r1997 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 3)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject1997
def r1998 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1998 : ¬ Reader r1998 :=
  refute_zero r1998 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1998
def r1999 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject1999 : ¬ Reader r1999 :=
  refute_zero r1999 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject1999
def r2000 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject2000 : ¬ Reader r2000 :=
  refute_zero r2000 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2000
def r2001 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject2001 : ¬ Reader r2001 :=
  refute_zero r2001 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2001
def r2002 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject2002 : ¬ Reader r2002 :=
  refute_zero r2002 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2002
def r2003 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2))) (.var 1)) (.lam (.var 0))))
theorem reject2003 : ¬ Reader r2003 :=
  refute_zero r2003 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 3)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2003
def r2004 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2))) (.lam (.var 0))) (.var 1)))
theorem reject2004 : ¬ Reader r2004 :=
  refute_zero r2004 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 3)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2004
def r2005 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2))) (.var 1)) (.lam (.var 0))))
theorem reject2005 : ¬ Reader r2005 :=
  refute_zero r2005 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 3)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2005
def r2006 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2))) (.lam (.var 0))) (.var 1)))
theorem reject2006 : ¬ Reader r2006 :=
  refute_zero r2006 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 3)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2006
def r2007 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.lam (.var 0))))
theorem reject2007 : ¬ Reader r2007 :=
  refute_zero r2007 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2007
def r2008 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2))) (.lam (.var 0))) (.var 1)))
theorem reject2008 : ¬ Reader r2008 :=
  refute_zero r2008 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 3)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2008
def r2009 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2))) (.var 1)) (.lam (.var 0))))
theorem reject2009 : ¬ Reader r2009 :=
  refute_zero r2009 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 3)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2009
def r2010 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2))) (.lam (.var 0))) (.var 1)))
theorem reject2010 : ¬ Reader r2010 :=
  refute_zero r2010 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 3)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2010
def r2011 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.lam (.var 0))))
theorem reject2011 : ¬ Reader r2011 :=
  refute_zero r2011 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 3)) (.var 0)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2011
def r2012 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2))) (.lam (.var 0))) (.var 1)))
theorem reject2012 : ¬ Reader r2012 :=
  refute_zero r2012 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 3)) (.lam (.var 0))) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2012
def r2013 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject2013 : ¬ Reader r2013 :=
  refute_zero r2013 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2013
def r2014 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject2014 : ¬ Reader r2014 :=
  refute_zero r2014 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2014
def r2015 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject2015 : ¬ Reader r2015 :=
  refute_zero r2015 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2015
def r2016 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject2016 : ¬ Reader r2016 :=
  refute_zero r2016 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2016
def r2017 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject2017 : ¬ Reader r2017 :=
  refute_zero r2017 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2017
def r2018 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject2018 : ¬ Reader r2018 :=
  refute_zero r2018 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2018
def r2019 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject2019 : ¬ Reader r2019 :=
  refute_zero r2019 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2019
def r2020 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject2020 : ¬ Reader r2020 :=
  refute_zero r2020 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2020
def r2021 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject2021 : ¬ Reader r2021 :=
  refute_zero r2021 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2021
def r2022 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject2022 : ¬ Reader r2022 :=
  refute_zero r2022 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2022
def r2023 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject2023 : ¬ Reader r2023 :=
  refute_zero r2023 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2023
def r2024 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject2024 : ¬ Reader r2024 :=
  refute_zero r2024 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2024
def r2025 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))))) (.var 2))) (.var 1)) (.var 1)))
theorem reject2025 : ¬ Reader r2025 :=
  refute_zero r2025 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2025
def r2026 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject2026 : ¬ Reader r2026 :=
  refute_zero r2026 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2026
def r2027 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject2027 : ¬ Reader r2027 :=
  refute_zero r2027 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2027
def r2028 : Term := (.lam (.app (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)))) (.var 2))) (.var 1)) (.var 1)))
theorem reject2028 : ¬ Reader r2028 :=
  refute_zero r2028 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 3)) (.var 0)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2028
def r2029 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2029 : ¬ Reader r2029 :=
  refute_zero r2029 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2029
def r2030 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2030 : ¬ Reader r2030 :=
  refute_zero r2030 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2030
def r2031 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject2031 : ¬ Reader r2031 :=
  refute_zero r2031 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2031
def r2032 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject2032 : ¬ Reader r2032 :=
  refute_zero r2032 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2032
def r2033 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 1)))
theorem reject2033 : ¬ Reader r2033 :=
  refute_zero r2033 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2033
def r2034 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))))
theorem reject2034 : ¬ Reader r2034 :=
  refute_zero r2034 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2034
def r2035 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))))
theorem reject2035 : ¬ Reader r2035 :=
  refute_zero r2035 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2035
def r2036 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))))
theorem reject2036 : ¬ Reader r2036 :=
  refute_zero r2036 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2036
def r2037 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2)))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2037 : ¬ Reader r2037 :=
  refute_zero r2037 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2037
def r2038 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2)))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2038 : ¬ Reader r2038 :=
  refute_zero r2038 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2038
def r2039 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.lam (.var 2)))))
theorem reject2039 : ¬ Reader r2039 :=
  refute_zero r2039 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2039
def r2040 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 2))))) (.app (.var 1) (.var 1))))
theorem reject2040 : ¬ Reader r2040 :=
  refute_zero r2040 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2040
def r2041 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.var 2))))
theorem reject2041 : ¬ Reader r2041 :=
  refute_zero r2041 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2041
def r2042 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.var 2))))
theorem reject2042 : ¬ Reader r2042 :=
  refute_zero r2042 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2042
def r2043 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.var 1)))
theorem reject2043 : ¬ Reader r2043 :=
  refute_zero r2043 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2043
def r2044 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.var 1)))
theorem reject2044 : ¬ Reader r2044 :=
  refute_zero r2044 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2044
def r2045 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.var 1)))
theorem reject2045 : ¬ Reader r2045 :=
  refute_zero r2045 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2045
def r2046 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2046 : ¬ Reader r2046 :=
  refute_zero r2046 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2046
def r2047 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2047 : ¬ Reader r2047 :=
  refute_zero r2047 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2047
def r2048 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2048 : ¬ Reader r2048 :=
  refute_zero r2048 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2048
def r2049 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2049 : ¬ Reader r2049 :=
  refute_zero r2049 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2049
def r2050 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))
theorem reject2050 : ¬ Reader r2050 :=
  refute_zero r2050 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2050
def r2051 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2051 : ¬ Reader r2051 :=
  refute_zero r2051 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject2051
def r2052 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2052 : ¬ Reader r2052 :=
  refute_zero r2052 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject2052
def r2053 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2053 : ¬ Reader r2053 :=
  refute_zero r2053 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject2053
def r2054 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2054 : ¬ Reader r2054 :=
  refute_zero r2054 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject2054
def r2055 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))))
theorem reject2055 : ¬ Reader r2055 :=
  refute_zero r2055 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject2055
def r2056 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.lam (.app (.var 2) (.var 2))))))
theorem reject2056 : ¬ Reader r2056 :=
  refute_zero r2056 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2056
def r2057 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1))))))
theorem reject2057 : ¬ Reader r2057 :=
  refute_zero r2057 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject2057
def r2058 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1)))))
theorem reject2058 : ¬ Reader r2058 :=
  refute_zero r2058 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject2058
def r2059 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1))))))
theorem reject2059 : ¬ Reader r2059 :=
  refute_zero r2059 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))) 5 (by decide) (by decide) (by decide)
#print axioms reject2059
def r2060 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0))))))
theorem reject2060 : ¬ Reader r2060 :=
  refute_zero r2060 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2060
def r2061 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1)))))
theorem reject2061 : ¬ Reader r2061 :=
  refute_zero r2061 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2061
def r2062 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))
theorem reject2062 : ¬ Reader r2062 :=
  refute_zero r2062 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2062
def r2063 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))))
theorem reject2063 : ¬ Reader r2063 :=
  refute_zero r2063 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2063
def r2064 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))
theorem reject2064 : ¬ Reader r2064 :=
  refute_zero r2064 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject2064
def r2065 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))
theorem reject2065 : ¬ Reader r2065 :=
  refute_zero r2065 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2065
def r2066 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))
theorem reject2066 : ¬ Reader r2066 :=
  refute_zero r2066 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject2066
def r2067 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1))))
theorem reject2067 : ¬ Reader r2067 :=
  refute_zero r2067 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2067
def r2068 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))))
theorem reject2068 : ¬ Reader r2068 :=
  refute_zero r2068 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2068
def r2069 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))))
theorem reject2069 : ¬ Reader r2069 :=
  refute_zero r2069 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2069
def r2070 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0))))
theorem reject2070 : ¬ Reader r2070 :=
  refute_zero r2070 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2070
def r2071 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0))))
theorem reject2071 : ¬ Reader r2071 :=
  refute_zero r2071 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2071
def r2072 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2072 : ¬ Reader r2072 :=
  refute_zero r2072 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2072
def r2073 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.var 1)))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2073 : ¬ Reader r2073 :=
  refute_zero r2073 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2073
def r2074 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 0)))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2074 : ¬ Reader r2074 :=
  refute_zero r2074 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2074
def r2075 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 0)))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2075 : ¬ Reader r2075 :=
  refute_zero r2075 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2075
def r2076 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.lam (.app (.var 2) (.var 2)))))
theorem reject2076 : ¬ Reader r2076 :=
  refute_zero r2076 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2076
def r2077 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 1)))))
theorem reject2077 : ¬ Reader r2077 :=
  refute_zero r2077 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject2077
def r2078 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.app (.var 0) (.var 1)) (.var 1))))
theorem reject2078 : ¬ Reader r2078 :=
  refute_zero r2078 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject2078
def r2079 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 1)))))
theorem reject2079 : ¬ Reader r2079 :=
  refute_zero r2079 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject2079
def r2080 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 0)))))
theorem reject2080 : ¬ Reader r2080 :=
  refute_zero r2080 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2080
def r2081 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.app (.var 1) (.var 0)) (.var 1))))
theorem reject2081 : ¬ Reader r2081 :=
  refute_zero r2081 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2081
def r2082 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.app (.var 1) (.var 1)) (.var 0))))
theorem reject2082 : ¬ Reader r2082 :=
  refute_zero r2082 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2082
def r2083 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.app (.var 2) (.var 2))))) (.app (.var 1) (.var 1))))
theorem reject2083 : ¬ Reader r2083 :=
  refute_zero r2083 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2083
def r2084 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 1))))) (.app (.var 1) (.var 1))))
theorem reject2084 : ¬ Reader r2084 :=
  refute_zero r2084 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2084
def r2085 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject2085 : ¬ Reader r2085 :=
  refute_zero r2085 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2085
def r2086 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 1))))) (.app (.var 1) (.var 1))))
theorem reject2086 : ¬ Reader r2086 :=
  refute_zero r2086 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2086
def r2087 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.var 1) (.var 1))))
theorem reject2087 : ¬ Reader r2087 :=
  refute_zero r2087 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2087
def r2088 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject2088 : ¬ Reader r2088 :=
  refute_zero r2088 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2088
def r2089 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 0)))) (.app (.var 1) (.var 1))))
theorem reject2089 : ¬ Reader r2089 :=
  refute_zero r2089 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2089
def r2090 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.app (.var 0) (.var 1))))
theorem reject2090 : ¬ Reader r2090 :=
  refute_zero r2090 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject2090
def r2091 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.app (.var 1) (.var 0))))
theorem reject2091 : ¬ Reader r2091 :=
  refute_zero r2091 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2091
def r2092 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.app (.var 0) (.var 1))))
theorem reject2092 : ¬ Reader r2092 :=
  refute_zero r2092 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject2092
def r2093 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.app (.var 1) (.var 0))))
theorem reject2093 : ¬ Reader r2093 :=
  refute_zero r2093 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2093
def r2094 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 1)))
theorem reject2094 : ¬ Reader r2094 :=
  refute_zero r2094 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2094
def r2095 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 1)))
theorem reject2095 : ¬ Reader r2095 :=
  refute_zero r2095 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2095
def r2096 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject2096 : ¬ Reader r2096 :=
  refute_zero r2096 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2096
def r2097 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.var 1)))
theorem reject2097 : ¬ Reader r2097 :=
  refute_zero r2097 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2097
def r2098 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))) (.var 1)))
theorem reject2098 : ¬ Reader r2098 :=
  refute_zero r2098 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2098
def r2099 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.app (.var 2) (.var 2)))))) (.var 1)))
theorem reject2099 : ¬ Reader r2099 :=
  refute_zero r2099 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2099
def r2100 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 1)))
theorem reject2100 : ¬ Reader r2100 :=
  refute_zero r2100 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2100
def r2101 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 1)))
theorem reject2101 : ¬ Reader r2101 :=
  refute_zero r2101 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2101
def r2102 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 1)))
theorem reject2102 : ¬ Reader r2102 :=
  refute_zero r2102 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2102
def r2103 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 1)))
theorem reject2103 : ¬ Reader r2103 :=
  refute_zero r2103 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2103
def r2104 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)))
theorem reject2104 : ¬ Reader r2104 :=
  refute_zero r2104 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2104
def r2105 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1)))
theorem reject2105 : ¬ Reader r2105 :=
  refute_zero r2105 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2105
def r2106 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject2106 : ¬ Reader r2106 :=
  refute_zero r2106 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2106
def r2107 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1))))) (.var 1)))
theorem reject2107 : ¬ Reader r2107 :=
  refute_zero r2107 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2107
def r2108 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))))) (.var 1)))
theorem reject2108 : ¬ Reader r2108 :=
  refute_zero r2108 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2108
def r2109 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.var 1)))
theorem reject2109 : ¬ Reader r2109 :=
  refute_zero r2109 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2109
def r2110 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)))) (.var 1)))
theorem reject2110 : ¬ Reader r2110 :=
  refute_zero r2110 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2110
def r2111 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.var 1)))
theorem reject2111 : ¬ Reader r2111 :=
  refute_zero r2111 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2111
def r2112 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.var 1)))
theorem reject2112 : ¬ Reader r2112 :=
  refute_zero r2112 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2112
def r2113 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)))) (.var 1)))
theorem reject2113 : ¬ Reader r2113 :=
  refute_zero r2113 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2113
def r2114 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)))) (.var 1)))
theorem reject2114 : ¬ Reader r2114 :=
  refute_zero r2114 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2114
def r2115 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 0)))
theorem reject2115 : ¬ Reader r2115 :=
  refute_zero r2115 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2115
def r2116 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 0)))
theorem reject2116 : ¬ Reader r2116 :=
  refute_zero r2116 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2116
def r2117 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 0)))
theorem reject2117 : ¬ Reader r2117 :=
  refute_zero r2117 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2117
def r2118 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 0)))
theorem reject2118 : ¬ Reader r2118 :=
  refute_zero r2118 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2118
def r2119 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 0)))
theorem reject2119 : ¬ Reader r2119 :=
  refute_zero r2119 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2119
def r2120 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.lam (.app (.var 2) (.app (.var 2) (.var 2))))))
theorem reject2120 : ¬ Reader r2120 :=
  refute_zero r2120 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2120
def r2121 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.lam (.app (.app (.var 2) (.var 2)) (.var 2)))))
theorem reject2121 : ¬ Reader r2121 :=
  refute_zero r2121 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2121
def r2122 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.app (.var 2) (.app (.var 2) (.var 2)))))) (.var 1)))
theorem reject2122 : ¬ Reader r2122 :=
  refute_zero r2122 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2122
def r2123 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.app (.app (.var 2) (.var 2)) (.var 2))))) (.var 1)))
theorem reject2123 : ¬ Reader r2123 :=
  refute_zero r2123 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2123
def r2124 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2124 : ¬ Reader r2124 :=
  refute_zero r2124 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2124
def r2125 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2125 : ¬ Reader r2125 :=
  refute_zero r2125 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2125
def r2126 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2126 : ¬ Reader r2126 :=
  refute_zero r2126 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2126
def r2127 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2127 : ¬ Reader r2127 :=
  refute_zero r2127 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2127
def r2128 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))
theorem reject2128 : ¬ Reader r2128 :=
  refute_zero r2128 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2128
def r2129 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2129 : ¬ Reader r2129 :=
  refute_zero r2129 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2129
def r2130 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2130 : ¬ Reader r2130 :=
  refute_zero r2130 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2130
def r2131 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.app (.var 1) (.var 1))))
theorem reject2131 : ¬ Reader r2131 :=
  refute_zero r2131 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2131
def r2132 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject2132 : ¬ Reader r2132 :=
  refute_zero r2132 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2132
def r2133 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 1)))
theorem reject2133 : ¬ Reader r2133 :=
  refute_zero r2133 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2133
def r2134 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 1)))
theorem reject2134 : ¬ Reader r2134 :=
  refute_zero r2134 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2134
def r2135 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject2135 : ¬ Reader r2135 :=
  refute_zero r2135 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2135
def r2136 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 1)))
theorem reject2136 : ¬ Reader r2136 :=
  refute_zero r2136 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2136
def r2137 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 1)))
theorem reject2137 : ¬ Reader r2137 :=
  refute_zero r2137 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2137
def r2138 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3)))))))
theorem reject2138 : ¬ Reader r2138 :=
  refute_zero r2138 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2138
def r2139 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3))))))
theorem reject2139 : ¬ Reader r2139 :=
  refute_zero r2139 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2139
def r2140 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2)))))
theorem reject2140 : ¬ Reader r2140 :=
  refute_zero r2140 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2140
def r2141 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1))))
theorem reject2141 : ¬ Reader r2141 :=
  refute_zero r2141 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2141
def r2142 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))
theorem reject2142 : ¬ Reader r2142 :=
  refute_zero r2142 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2142
def r2143 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))
theorem reject2143 : ¬ Reader r2143 :=
  refute_zero r2143 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2143
def r2144 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))))
theorem reject2144 : ¬ Reader r2144 :=
  refute_zero r2144 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2144
def r2145 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0))))))
theorem reject2145 : ¬ Reader r2145 :=
  refute_zero r2145 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2145
def r2146 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1)))))
theorem reject2146 : ¬ Reader r2146 :=
  refute_zero r2146 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2146
def r2147 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0)))))
theorem reject2147 : ¬ Reader r2147 :=
  refute_zero r2147 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2147
def r2148 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0)))))
theorem reject2148 : ¬ Reader r2148 :=
  refute_zero r2148 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2148
def r2149 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1))))
theorem reject2149 : ¬ Reader r2149 :=
  refute_zero r2149 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2149
def r2150 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1))))
theorem reject2150 : ¬ Reader r2150 :=
  refute_zero r2150 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2150
def r2151 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1))) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1))))
theorem reject2151 : ¬ Reader r2151 :=
  refute_zero r2151 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2151
def r2152 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0)))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2152 : ¬ Reader r2152 :=
  refute_zero r2152 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2152
def r2153 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0)))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2153 : ¬ Reader r2153 :=
  refute_zero r2153 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2153
def r2154 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0)))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2154 : ¬ Reader r2154 :=
  refute_zero r2154 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2154
def r2155 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0)))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2155 : ¬ Reader r2155 :=
  refute_zero r2155 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2155
def r2156 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0)))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))))
theorem reject2156 : ¬ Reader r2156 :=
  refute_zero r2156 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2156
def r2157 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2)))) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))))
theorem reject2157 : ¬ Reader r2157 :=
  refute_zero r2157 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2157
def r2158 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2)))) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))))
theorem reject2158 : ¬ Reader r2158 :=
  refute_zero r2158 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2158
def r2159 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2)))) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))))
theorem reject2159 : ¬ Reader r2159 :=
  refute_zero r2159 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2159
def r2160 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.lam (.lam (.var 3))))))
theorem reject2160 : ¬ Reader r2160 :=
  refute_zero r2160 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.var 2))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2160
def r2161 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))
theorem reject2161 : ¬ Reader r2161 :=
  refute_zero r2161 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2161
def r2162 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))
theorem reject2162 : ¬ Reader r2162 :=
  refute_zero r2162 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2162
def r2163 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))
theorem reject2163 : ¬ Reader r2163 :=
  refute_zero r2163 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2163
def r2164 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.lam (.var 3))))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2164 : ¬ Reader r2164 :=
  refute_zero r2164 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2164
def r2165 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.lam (.var 3))))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2165 : ¬ Reader r2165 :=
  refute_zero r2165 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2165
def r2166 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 0))))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2166 : ¬ Reader r2166 :=
  refute_zero r2166 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2166
def r2167 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2167 : ¬ Reader r2167 :=
  refute_zero r2167 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2167
def r2168 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 2))))) (.app (.var 1) (.lam (.var 2)))))
theorem reject2168 : ¬ Reader r2168 :=
  refute_zero r2168 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2168
def r2169 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.lam (.var 3)))))
theorem reject2169 : ¬ Reader r2169 :=
  refute_zero r2169 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2169
def r2170 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.app (.var 1) (.lam (.var 0)))))
theorem reject2170 : ¬ Reader r2170 :=
  refute_zero r2170 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2170
def r2171 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.var 3)))))
theorem reject2171 : ¬ Reader r2171 :=
  refute_zero r2171 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2171
def r2172 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.app (.var 1) (.lam (.var 0)))))
theorem reject2172 : ¬ Reader r2172 :=
  refute_zero r2172 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2172
def r2173 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.lam (.var 3)))))) (.app (.var 1) (.var 1))))
theorem reject2173 : ¬ Reader r2173 :=
  refute_zero r2173 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2173
def r2174 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.app (.var 1) (.var 1))))
theorem reject2174 : ¬ Reader r2174 :=
  refute_zero r2174 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2174
def r2175 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.app (.var 1) (.var 1))))
theorem reject2175 : ¬ Reader r2175 :=
  refute_zero r2175 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2175
def r2176 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject2176 : ¬ Reader r2176 :=
  refute_zero r2176 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2176
def r2177 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.lam (.var 2))))
theorem reject2177 : ¬ Reader r2177 :=
  refute_zero r2177 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2177
def r2178 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.lam (.var 2))))
theorem reject2178 : ¬ Reader r2178 :=
  refute_zero r2178 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2178
def r2179 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.lam (.var 2))))
theorem reject2179 : ¬ Reader r2179 :=
  refute_zero r2179 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2179
def r2180 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.var 0))))
theorem reject2180 : ¬ Reader r2180 :=
  refute_zero r2180 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2180
def r2181 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.var 0))))
theorem reject2181 : ¬ Reader r2181 :=
  refute_zero r2181 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2181
def r2182 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.lam (.var 0))))
theorem reject2182 : ¬ Reader r2182 :=
  refute_zero r2182 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2182
def r2183 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.lam (.var 0))))
theorem reject2183 : ¬ Reader r2183 :=
  refute_zero r2183 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2183
def r2184 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.lam (.var 0))))
theorem reject2184 : ¬ Reader r2184 :=
  refute_zero r2184 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2184
def r2185 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))))) (.var 1)))
theorem reject2185 : ¬ Reader r2185 :=
  refute_zero r2185 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2185
def r2186 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))))) (.var 1)))
theorem reject2186 : ¬ Reader r2186 :=
  refute_zero r2186 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2186
def r2187 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))))) (.var 1)))
theorem reject2187 : ¬ Reader r2187 :=
  refute_zero r2187 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2187
def r2188 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)))) (.var 1)))
theorem reject2188 : ¬ Reader r2188 :=
  refute_zero r2188 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2188
def r2189 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))) (.var 1)))
theorem reject2189 : ¬ Reader r2189 :=
  refute_zero r2189 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2189
def r2190 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 1)))
theorem reject2190 : ¬ Reader r2190 :=
  refute_zero r2190 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2190
def r2191 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))) (.var 1)))
theorem reject2191 : ¬ Reader r2191 :=
  refute_zero r2191 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2191
def r2192 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))))) (.var 1)))
theorem reject2192 : ¬ Reader r2192 :=
  refute_zero r2192 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2192
def r2193 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject2193 : ¬ Reader r2193 :=
  refute_zero r2193 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2193
def r2194 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))))) (.var 1)))
theorem reject2194 : ¬ Reader r2194 :=
  refute_zero r2194 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2194
def r2195 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))))) (.var 1)))
theorem reject2195 : ¬ Reader r2195 :=
  refute_zero r2195 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2195
def r2196 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)))) (.var 1)))
theorem reject2196 : ¬ Reader r2196 :=
  refute_zero r2196 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2196
def r2197 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)))) (.var 1)))
theorem reject2197 : ¬ Reader r2197 :=
  refute_zero r2197 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2197
def r2198 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)))) (.var 1)))
theorem reject2198 : ¬ Reader r2198 :=
  refute_zero r2198 (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2198
def r2199 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2199 : ¬ Reader r2199 :=
  refute_zero r2199 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject2199
def r2200 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2200 : ¬ Reader r2200 :=
  refute_zero r2200 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject2200
def r2201 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject2201 : ¬ Reader r2201 :=
  refute_zero r2201 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject2201
def r2202 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject2202 : ¬ Reader r2202 :=
  refute_zero r2202 (.app (.app (.var 1) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject2202
def r2203 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 1)))
theorem reject2203 : ¬ Reader r2203 :=
  refute_zero r2203 (.app (.app (.var 1) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject2203
def r2204 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))))
theorem reject2204 : ¬ Reader r2204 :=
  refute_zero r2204 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) 5 (by decide) (by decide) (by decide)
#print axioms reject2204
def r2205 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))))
theorem reject2205 : ¬ Reader r2205 :=
  refute_zero r2205 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) 5 (by decide) (by decide) (by decide)
#print axioms reject2205
def r2206 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))))
theorem reject2206 : ¬ Reader r2206 :=
  refute_zero r2206 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject2206
def r2207 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.lam (.var 2)))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2207 : ¬ Reader r2207 :=
  refute_zero r2207 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 5 (by decide) (by decide) (by decide)
#print axioms reject2207
def r2208 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.lam (.var 2)))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2208 : ¬ Reader r2208 :=
  refute_zero r2208 (.app (.app (.var 1) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject2208
def r2209 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.lam (.var 2)))))
theorem reject2209 : ¬ Reader r2209 :=
  refute_zero r2209 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.var 1)))) 5 (by decide) (by decide) (by decide)
#print axioms reject2209
def r2210 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.lam (.var 2))))) (.app (.var 1) (.var 1))))
theorem reject2210 : ¬ Reader r2210 :=
  refute_zero r2210 (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject2210
def r2211 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.var 2))))
theorem reject2211 : ¬ Reader r2211 :=
  refute_zero r2211 (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) 5 (by decide) (by decide) (by decide)
#print axioms reject2211
def r2212 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.var 2))))
theorem reject2212 : ¬ Reader r2212 :=
  refute_zero r2212 (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) 5 (by decide) (by decide) (by decide)
#print axioms reject2212
def r2213 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.var 1)))
theorem reject2213 : ¬ Reader r2213 :=
  refute_zero r2213 (.app (.app (.var 1) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject2213
def r2214 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.var 1)))
theorem reject2214 : ¬ Reader r2214 :=
  refute_zero r2214 (.app (.app (.var 1) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject2214
def r2215 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.var 1)))
theorem reject2215 : ¬ Reader r2215 :=
  refute_zero r2215 (.app (.app (.var 1) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject2215
def r2216 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2216 : ¬ Reader r2216 :=
  refute_zero r2216 (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2216
def r2217 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2217 : ¬ Reader r2217 :=
  refute_zero r2217 (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2217
def r2218 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject2218 : ¬ Reader r2218 :=
  refute_zero r2218 (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2218
def r2219 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject2219 : ¬ Reader r2219 :=
  refute_zero r2219 (.app (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2219
def r2220 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 1)))
theorem reject2220 : ¬ Reader r2220 :=
  refute_zero r2220 (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2220
def r2221 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2221 : ¬ Reader r2221 :=
  refute_zero r2221 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2221
def r2222 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2222 : ¬ Reader r2222 :=
  refute_zero r2222 (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2222
def r2223 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject2223 : ¬ Reader r2223 :=
  refute_zero r2223 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2223
def r2224 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject2224 : ¬ Reader r2224 :=
  refute_zero r2224 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2224
def r2225 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 1)))
theorem reject2225 : ¬ Reader r2225 :=
  refute_zero r2225 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2225
def r2226 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2226 : ¬ Reader r2226 :=
  refute_zero r2226 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2226
def r2227 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2227 : ¬ Reader r2227 :=
  refute_zero r2227 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2227
def r2228 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.lam (.var 2)))))
theorem reject2228 : ¬ Reader r2228 :=
  refute_zero r2228 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2228
def r2229 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 2)))) (.app (.var 1) (.var 1))))
theorem reject2229 : ¬ Reader r2229 :=
  refute_zero r2229 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2229
def r2230 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.lam (.var 2))))
theorem reject2230 : ¬ Reader r2230 :=
  refute_zero r2230 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2230
def r2231 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.lam (.var 2))))) (.var 1)))
theorem reject2231 : ¬ Reader r2231 :=
  refute_zero r2231 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2231
def r2232 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 0))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2232 : ¬ Reader r2232 :=
  refute_zero r2232 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2232
def r2233 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2233 : ¬ Reader r2233 :=
  refute_zero r2233 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2233
def r2234 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.lam (.app (.var 2) (.var 2)))))
theorem reject2234 : ¬ Reader r2234 :=
  refute_zero r2234 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.var 1) (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2234
def r2235 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 1)))))
theorem reject2235 : ¬ Reader r2235 :=
  refute_zero r2235 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject2235
def r2236 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 1))))
theorem reject2236 : ¬ Reader r2236 :=
  refute_zero r2236 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject2236
def r2237 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 0) (.var 1)))))
theorem reject2237 : ¬ Reader r2237 :=
  refute_zero r2237 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) 5 (by decide) (by decide) (by decide)
#print axioms reject2237
def r2238 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 0)))))
theorem reject2238 : ¬ Reader r2238 :=
  refute_zero r2238 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2238
def r2239 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 1))))
theorem reject2239 : ¬ Reader r2239 :=
  refute_zero r2239 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2239
def r2240 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0))))
theorem reject2240 : ¬ Reader r2240 :=
  refute_zero r2240 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2240
def r2241 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 0) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject2241 : ¬ Reader r2241 :=
  refute_zero r2241 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2241
def r2242 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 1))))
theorem reject2242 : ¬ Reader r2242 :=
  refute_zero r2242 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2242
def r2243 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 1))))
theorem reject2243 : ¬ Reader r2243 :=
  refute_zero r2243 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject2243
def r2244 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 0))))
theorem reject2244 : ¬ Reader r2244 :=
  refute_zero r2244 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2244
def r2245 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.app (.var 2) (.var 2))))) (.var 1)))
theorem reject2245 : ¬ Reader r2245 :=
  refute_zero r2245 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2245
def r2246 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject2246 : ¬ Reader r2246 :=
  refute_zero r2246 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2246
def r2247 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 1)))
theorem reject2247 : ¬ Reader r2247 :=
  refute_zero r2247 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2247
def r2248 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 1)))
theorem reject2248 : ¬ Reader r2248 :=
  refute_zero r2248 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2248
def r2249 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 1)))
theorem reject2249 : ¬ Reader r2249 :=
  refute_zero r2249 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2249
def r2250 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 1)))
theorem reject2250 : ¬ Reader r2250 :=
  refute_zero r2250 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2250
def r2251 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 1)))
theorem reject2251 : ¬ Reader r2251 :=
  refute_zero r2251 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2251
def r2252 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 0)))
theorem reject2252 : ¬ Reader r2252 :=
  refute_zero r2252 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2252
def r2253 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 0)))
theorem reject2253 : ¬ Reader r2253 :=
  refute_zero r2253 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2253
def r2254 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2254 : ¬ Reader r2254 :=
  refute_zero r2254 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2254
def r2255 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2255 : ¬ Reader r2255 :=
  refute_zero r2255 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2255
def r2256 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject2256 : ¬ Reader r2256 :=
  refute_zero r2256 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2256
def r2257 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject2257 : ¬ Reader r2257 :=
  refute_zero r2257 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2257
def r2258 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 1)))
theorem reject2258 : ¬ Reader r2258 :=
  refute_zero r2258 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2258
def r2259 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.lam (.lam (.var 3))))))
theorem reject2259 : ¬ Reader r2259 :=
  refute_zero r2259 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.lam (.var 2))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2259
def r2260 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))
theorem reject2260 : ¬ Reader r2260 :=
  refute_zero r2260 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2260
def r2261 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))
theorem reject2261 : ¬ Reader r2261 :=
  refute_zero r2261 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2261
def r2262 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))
theorem reject2262 : ¬ Reader r2262 :=
  refute_zero r2262 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2262
def r2263 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 0)))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2263 : ¬ Reader r2263 :=
  refute_zero r2263 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2263
def r2264 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 0)))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2264 : ¬ Reader r2264 :=
  refute_zero r2264 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2264
def r2265 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 2)))) (.app (.var 1) (.lam (.var 2)))))
theorem reject2265 : ¬ Reader r2265 :=
  refute_zero r2265 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2265
def r2266 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 3)))))
theorem reject2266 : ¬ Reader r2266 :=
  refute_zero r2266 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2266
def r2267 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.lam (.var 0)))))
theorem reject2267 : ¬ Reader r2267 :=
  refute_zero r2267 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2267
def r2268 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.lam (.var 3))))) (.app (.var 1) (.var 1))))
theorem reject2268 : ¬ Reader r2268 :=
  refute_zero r2268 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2268
def r2269 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.lam (.var 0))))) (.app (.var 1) (.var 1))))
theorem reject2269 : ¬ Reader r2269 :=
  refute_zero r2269 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2269
def r2270 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.lam (.var 2))))) (.lam (.var 2))))
theorem reject2270 : ¬ Reader r2270 :=
  refute_zero r2270 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2270
def r2271 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.var 0))))
theorem reject2271 : ¬ Reader r2271 :=
  refute_zero r2271 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2271
def r2272 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.var 0))))
theorem reject2272 : ¬ Reader r2272 :=
  refute_zero r2272 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2272
def r2273 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 1)))
theorem reject2273 : ¬ Reader r2273 :=
  refute_zero r2273 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2273
def r2274 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 1)))
theorem reject2274 : ¬ Reader r2274 :=
  refute_zero r2274 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2274
def r2275 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 1)))
theorem reject2275 : ¬ Reader r2275 :=
  refute_zero r2275 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2275
def r2276 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 1)))
theorem reject2276 : ¬ Reader r2276 :=
  refute_zero r2276 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2276
def r2277 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2277 : ¬ Reader r2277 :=
  refute_zero r2277 (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) 6 (by decide) (by decide) (by decide)
#print axioms reject2277
def r2278 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2278 : ¬ Reader r2278 :=
  refute_zero r2278 (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject2278
def r2279 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject2279 : ¬ Reader r2279 :=
  refute_zero r2279 (.app (.var 1) (.app (.var 0) (.var 0))) 6 (by decide) (by decide) (by decide)
#print axioms reject2279
def r2280 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject2280 : ¬ Reader r2280 :=
  refute_zero r2280 (.app (.var 1) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject2280
def r2281 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 1)))
theorem reject2281 : ¬ Reader r2281 :=
  refute_zero r2281 (.app (.var 1) (.var 0)) 6 (by decide) (by decide) (by decide)
#print axioms reject2281
def r2282 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2282 : ¬ Reader r2282 :=
  refute_zero r2282 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2282
def r2283 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2283 : ¬ Reader r2283 :=
  refute_zero r2283 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2283
def r2284 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject2284 : ¬ Reader r2284 :=
  refute_zero r2284 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2284
def r2285 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject2285 : ¬ Reader r2285 :=
  refute_zero r2285 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2285
def r2286 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 1)))
theorem reject2286 : ¬ Reader r2286 :=
  refute_zero r2286 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2286
def r2287 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2287 : ¬ Reader r2287 :=
  refute_zero r2287 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2287
def r2288 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2288 : ¬ Reader r2288 :=
  refute_zero r2288 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2288
def r2289 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject2289 : ¬ Reader r2289 :=
  refute_zero r2289 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2289
def r2290 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject2290 : ¬ Reader r2290 :=
  refute_zero r2290 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2290
def r2291 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 1)))
theorem reject2291 : ¬ Reader r2291 :=
  refute_zero r2291 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2291
def r2292 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))))
theorem reject2292 : ¬ Reader r2292 :=
  refute_zero r2292 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2292
def r2293 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1))))
theorem reject2293 : ¬ Reader r2293 :=
  refute_zero r2293 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2293
def r2294 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 1))))
theorem reject2294 : ¬ Reader r2294 :=
  refute_zero r2294 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2294
def r2295 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 1)))
theorem reject2295 : ¬ Reader r2295 :=
  refute_zero r2295 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2295
def r2296 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 1)))
theorem reject2296 : ¬ Reader r2296 :=
  refute_zero r2296 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2296
def r2297 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2297 : ¬ Reader r2297 :=
  refute_zero r2297 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2297
def r2298 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2298 : ¬ Reader r2298 :=
  refute_zero r2298 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2298
def r2299 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.var 1))) (.app (.var 1) (.lam (.var 2)))))
theorem reject2299 : ¬ Reader r2299 :=
  refute_zero r2299 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 1)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2299
def r2300 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.lam (.var 2)))) (.app (.var 1) (.var 1))))
theorem reject2300 : ¬ Reader r2300 :=
  refute_zero r2300 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2300
def r2301 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.app (.var 1) (.var 1)))) (.lam (.var 2))))
theorem reject2301 : ¬ Reader r2301 :=
  refute_zero r2301 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2301
def r2302 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.app (.var 1) (.lam (.var 2))))) (.var 1)))
theorem reject2302 : ¬ Reader r2302 :=
  refute_zero r2302 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2302
def r2303 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2303 : ¬ Reader r2303 :=
  refute_zero r2303 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.app (.var 0) (.var 0))) 5 (by decide) (by decide) (by decide)
#print axioms reject2303
def r2304 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2304 : ¬ Reader r2304 :=
  refute_zero r2304 (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject2304
def r2305 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2305 : ¬ Reader r2305 :=
  refute_zero r2305 (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2305
def r2306 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2306 : ¬ Reader r2306 :=
  refute_zero r2306 (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2306
def r2307 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2307 : ¬ Reader r2307 :=
  refute_zero r2307 (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2307
def r2308 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2308 : ¬ Reader r2308 :=
  refute_zero r2308 (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2308
def r2309 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2309 : ¬ Reader r2309 :=
  refute_zero r2309 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2309
def r2310 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2310 : ¬ Reader r2310 :=
  refute_zero r2310 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2310
def r2311 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2311 : ¬ Reader r2311 :=
  refute_zero r2311 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2311
def r2312 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2312 : ¬ Reader r2312 :=
  refute_zero r2312 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2312
def r2313 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2313 : ¬ Reader r2313 :=
  refute_zero r2313 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2313
def r2314 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2314 : ¬ Reader r2314 :=
  refute_zero r2314 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2314
def r2315 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2315 : ¬ Reader r2315 :=
  refute_zero r2315 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2315
def r2316 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2316 : ¬ Reader r2316 :=
  refute_zero r2316 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2316
def r2317 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2317 : ¬ Reader r2317 :=
  refute_zero r2317 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2317
def r2318 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2318 : ¬ Reader r2318 :=
  refute_zero r2318 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2318
def r2319 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.lam (.var 2))))
theorem reject2319 : ¬ Reader r2319 :=
  refute_zero r2319 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2319
def r2320 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.lam (.var 2)))) (.var 1)))
theorem reject2320 : ¬ Reader r2320 :=
  refute_zero r2320 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2320
def r2321 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.lam (.var 2))))
theorem reject2321 : ¬ Reader r2321 :=
  refute_zero r2321 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2321
def r2322 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.lam (.var 2)))) (.var 1)))
theorem reject2322 : ¬ Reader r2322 :=
  refute_zero r2322 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2322
def r2323 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 0))) (.app (.var 1) (.var 1))))
theorem reject2323 : ¬ Reader r2323 :=
  refute_zero r2323 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2323
def r2324 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.app (.var 0) (.var 1))))
theorem reject2324 : ¬ Reader r2324 :=
  refute_zero r2324 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject2324
def r2325 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.app (.var 1) (.var 0))))
theorem reject2325 : ¬ Reader r2325 :=
  refute_zero r2325 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2325
def r2326 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 0) (.var 1)))) (.var 1)))
theorem reject2326 : ¬ Reader r2326 :=
  refute_zero r2326 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2326
def r2327 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.var 0)))) (.var 1)))
theorem reject2327 : ¬ Reader r2327 :=
  refute_zero r2327 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2327
def r2328 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 0)))
theorem reject2328 : ¬ Reader r2328 :=
  refute_zero r2328 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2328
def r2329 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 0))) (.app (.var 1) (.var 1))))
theorem reject2329 : ¬ Reader r2329 :=
  refute_zero r2329 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2329
def r2330 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 0) (.var 1))))
theorem reject2330 : ¬ Reader r2330 :=
  refute_zero r2330 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) 5 (by decide) (by decide) (by decide)
#print axioms reject2330
def r2331 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.var 0))))
theorem reject2331 : ¬ Reader r2331 :=
  refute_zero r2331 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) 4 (by decide) (by decide) (by decide)
#print axioms reject2331
def r2332 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 0) (.var 1)))) (.var 1)))
theorem reject2332 : ¬ Reader r2332 :=
  refute_zero r2332 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2332
def r2333 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.var 0)))) (.var 1)))
theorem reject2333 : ¬ Reader r2333 :=
  refute_zero r2333 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2333
def r2334 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 0)))
theorem reject2334 : ¬ Reader r2334 :=
  refute_zero r2334 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2334
def r2335 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2335 : ¬ Reader r2335 :=
  refute_zero r2335 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2335
def r2336 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2336 : ¬ Reader r2336 :=
  refute_zero r2336 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2336
def r2337 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2337 : ¬ Reader r2337 :=
  refute_zero r2337 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2337
def r2338 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2338 : ¬ Reader r2338 :=
  refute_zero r2338 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2338
def r2339 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.lam (.lam (.var 3)))))
theorem reject2339 : ¬ Reader r2339 :=
  refute_zero r2339 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2339
def r2340 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.app (.var 1) (.lam (.var 0)))))
theorem reject2340 : ¬ Reader r2340 :=
  refute_zero r2340 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2340
def r2341 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.lam (.var 0)))) (.app (.var 1) (.var 1))))
theorem reject2341 : ¬ Reader r2341 :=
  refute_zero r2341 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2341
def r2342 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.lam (.var 2)))) (.lam (.var 2))))
theorem reject2342 : ¬ Reader r2342 :=
  refute_zero r2342 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2342
def r2343 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1)))) (.lam (.var 0))))
theorem reject2343 : ¬ Reader r2343 :=
  refute_zero r2343 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2343
def r2344 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.lam (.lam (.var 3))))) (.var 1)))
theorem reject2344 : ¬ Reader r2344 :=
  refute_zero r2344 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2344
def r2345 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.lam (.var 0))))) (.var 1)))
theorem reject2345 : ¬ Reader r2345 :=
  refute_zero r2345 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2345
def r2346 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.lam (.lam (.var 3)))))
theorem reject2346 : ¬ Reader r2346 :=
  refute_zero r2346 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.lam (.var 2)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2346
def r2347 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.lam (.var 0)))))
theorem reject2347 : ¬ Reader r2347 :=
  refute_zero r2347 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.lam (.var 0)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2347
def r2348 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.lam (.var 0)))) (.app (.var 1) (.var 1))))
theorem reject2348 : ¬ Reader r2348 :=
  refute_zero r2348 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2348
def r2349 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.lam (.var 2)))) (.lam (.var 2))))
theorem reject2349 : ¬ Reader r2349 :=
  refute_zero r2349 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2349
def r2350 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.lam (.var 0))))
theorem reject2350 : ¬ Reader r2350 :=
  refute_zero r2350 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2350
def r2351 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.lam (.lam (.var 3))))) (.var 1)))
theorem reject2351 : ¬ Reader r2351 :=
  refute_zero r2351 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2351
def r2352 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.lam (.var 0))))) (.var 1)))
theorem reject2352 : ¬ Reader r2352 :=
  refute_zero r2352 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2352
def r2353 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2353 : ¬ Reader r2353 :=
  refute_zero r2353 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2353
def r2354 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2354 : ¬ Reader r2354 :=
  refute_zero r2354 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2354
def r2355 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2355 : ¬ Reader r2355 :=
  refute_zero r2355 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2355
def r2356 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2356 : ¬ Reader r2356 :=
  refute_zero r2356 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2356
def r2357 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2357 : ¬ Reader r2357 :=
  refute_zero r2357 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2357
def r2358 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2358 : ¬ Reader r2358 :=
  refute_zero r2358 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2358
def r2359 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2359 : ¬ Reader r2359 :=
  refute_zero r2359 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2359
def r2360 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2360 : ¬ Reader r2360 :=
  refute_zero r2360 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2360
def r2361 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2361 : ¬ Reader r2361 :=
  refute_zero r2361 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2361
def r2362 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2362 : ¬ Reader r2362 :=
  refute_zero r2362 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2362
def r2363 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2363 : ¬ Reader r2363 :=
  refute_zero r2363 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2363
def r2364 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2364 : ¬ Reader r2364 :=
  refute_zero r2364 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2364
def r2365 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2365 : ¬ Reader r2365 :=
  refute_zero r2365 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2365
def r2366 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2366 : ¬ Reader r2366 :=
  refute_zero r2366 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2366
def r2367 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2367 : ¬ Reader r2367 :=
  refute_zero r2367 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2367
def r2368 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2368 : ¬ Reader r2368 :=
  refute_zero r2368 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2368
def r2369 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 2)) (.var 1))) (.app (.var 1) (.var 1))))
theorem reject2369 : ¬ Reader r2369 :=
  refute_zero r2369 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2369
def r2370 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1)))) (.var 1)))
theorem reject2370 : ¬ Reader r2370 :=
  refute_zero r2370 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2370
def r2371 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2371 : ¬ Reader r2371 :=
  refute_zero r2371 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2371
def r2372 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2372 : ¬ Reader r2372 :=
  refute_zero r2372 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2372
def r2373 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2373 : ¬ Reader r2373 :=
  refute_zero r2373 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2373
def r2374 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.var 2)) (.var 1))) (.lam (.var 2))))
theorem reject2374 : ¬ Reader r2374 :=
  refute_zero r2374 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2374
def r2375 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.var 2)) (.lam (.var 2)))) (.var 1)))
theorem reject2375 : ¬ Reader r2375 :=
  refute_zero r2375 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2375
def r2376 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.var 2)) (.var 1))) (.lam (.var 2))))
theorem reject2376 : ¬ Reader r2376 :=
  refute_zero r2376 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2376
def r2377 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.var 2)) (.lam (.var 2)))) (.var 1)))
theorem reject2377 : ¬ Reader r2377 :=
  refute_zero r2377 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2377
def r2378 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.var 2)) (.var 1))) (.lam (.var 2))))
theorem reject2378 : ¬ Reader r2378 :=
  refute_zero r2378 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 1))) 4 (by decide) (by decide) (by decide)
#print axioms reject2378
def r2379 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.var 2)) (.lam (.var 2)))) (.var 1)))
theorem reject2379 : ¬ Reader r2379 :=
  refute_zero r2379 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2379
def r2380 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2380 : ¬ Reader r2380 :=
  refute_zero r2380 (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2380
def r2381 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2381 : ¬ Reader r2381 :=
  refute_zero r2381 (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2381
def r2382 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2382 : ¬ Reader r2382 :=
  refute_zero r2382 (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2382
def r2383 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2383 : ¬ Reader r2383 :=
  refute_zero r2383 (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2383
def r2384 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2384 : ¬ Reader r2384 :=
  refute_zero r2384 (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2384
def r2385 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2385 : ¬ Reader r2385 :=
  refute_zero r2385 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2385
def r2386 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2386 : ¬ Reader r2386 :=
  refute_zero r2386 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2386
def r2387 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2387 : ¬ Reader r2387 :=
  refute_zero r2387 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2387
def r2388 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2388 : ¬ Reader r2388 :=
  refute_zero r2388 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2388
def r2389 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2389 : ¬ Reader r2389 :=
  refute_zero r2389 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2389
def r2390 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2390 : ¬ Reader r2390 :=
  refute_zero r2390 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2390
def r2391 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2391 : ¬ Reader r2391 :=
  refute_zero r2391 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2391
def r2392 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2392 : ¬ Reader r2392 :=
  refute_zero r2392 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2392
def r2393 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2393 : ¬ Reader r2393 :=
  refute_zero r2393 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2393
def r2394 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2394 : ¬ Reader r2394 :=
  refute_zero r2394 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2394
def r2395 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2395 : ¬ Reader r2395 :=
  refute_zero r2395 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2395
def r2396 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2396 : ¬ Reader r2396 :=
  refute_zero r2396 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2396
def r2397 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2397 : ¬ Reader r2397 :=
  refute_zero r2397 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2397
def r2398 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2398 : ¬ Reader r2398 :=
  refute_zero r2398 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2398
def r2399 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2399 : ¬ Reader r2399 :=
  refute_zero r2399 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2399
def r2400 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 2)))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2400 : ¬ Reader r2400 :=
  refute_zero r2400 (.app (.app (.app (.app (.var 1) (.lam (.app (.var 2) (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2400
def r2401 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2401 : ¬ Reader r2401 :=
  refute_zero r2401 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2401
def r2402 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2402 : ¬ Reader r2402 :=
  refute_zero r2402 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2402
def r2403 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2403 : ¬ Reader r2403 :=
  refute_zero r2403 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2403
def r2404 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2404 : ¬ Reader r2404 :=
  refute_zero r2404 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2404
def r2405 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2405 : ¬ Reader r2405 :=
  refute_zero r2405 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2405
def r2406 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2406 : ¬ Reader r2406 :=
  refute_zero r2406 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2406
def r2407 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2407 : ¬ Reader r2407 :=
  refute_zero r2407 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2407
def r2408 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2408 : ¬ Reader r2408 :=
  refute_zero r2408 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2408
def r2409 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2409 : ¬ Reader r2409 :=
  refute_zero r2409 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2409
def r2410 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2410 : ¬ Reader r2410 :=
  refute_zero r2410 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2410
def r2411 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2411 : ¬ Reader r2411 :=
  refute_zero r2411 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2411
def r2412 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2412 : ¬ Reader r2412 :=
  refute_zero r2412 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2412
def r2413 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2413 : ¬ Reader r2413 :=
  refute_zero r2413 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2413
def r2414 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2414 : ¬ Reader r2414 :=
  refute_zero r2414 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2414
def r2415 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.var 2)))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2415 : ¬ Reader r2415 :=
  refute_zero r2415 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject2415
def r2416 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.var 2))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2416 : ¬ Reader r2416 :=
  refute_zero r2416 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 3)) (.var 0)) 5 (by decide) (by decide) (by decide)
#print axioms reject2416
def r2417 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 0))) (.var 1)))
theorem reject2417 : ¬ Reader r2417 :=
  refute_zero r2417 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2417
def r2418 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1))) (.var 0)))
theorem reject2418 : ¬ Reader r2418 :=
  refute_zero r2418 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2418
def r2419 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.var 0))) (.var 1)))
theorem reject2419 : ¬ Reader r2419 :=
  refute_zero r2419 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2419
def r2420 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.var 1))) (.var 0)))
theorem reject2420 : ¬ Reader r2420 :=
  refute_zero r2420 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2420
def r2421 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.var 0))) (.var 1)))
theorem reject2421 : ¬ Reader r2421 :=
  refute_zero r2421 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2421
def r2422 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.var 0)))
theorem reject2422 : ¬ Reader r2422 :=
  refute_zero r2422 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2422
def r2423 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.var 0))) (.var 1)))
theorem reject2423 : ¬ Reader r2423 :=
  refute_zero r2423 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2423
def r2424 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.var 1))) (.var 0)))
theorem reject2424 : ¬ Reader r2424 :=
  refute_zero r2424 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2424
def r2425 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.var 0))) (.var 1)))
theorem reject2425 : ¬ Reader r2425 :=
  refute_zero r2425 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2425
def r2426 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.var 0)))
theorem reject2426 : ¬ Reader r2426 :=
  refute_zero r2426 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) 4 (by decide) (by decide) (by decide)
#print axioms reject2426
def r2427 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2427 : ¬ Reader r2427 :=
  refute_zero r2427 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2427
def r2428 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2428 : ¬ Reader r2428 :=
  refute_zero r2428 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2428
def r2429 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2429 : ¬ Reader r2429 :=
  refute_zero r2429 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2429
def r2430 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2430 : ¬ Reader r2430 :=
  refute_zero r2430 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2430
def r2431 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2431 : ¬ Reader r2431 :=
  refute_zero r2431 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2431
def r2432 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1))) (.lam (.var 0))))
theorem reject2432 : ¬ Reader r2432 :=
  refute_zero r2432 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2432
def r2433 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.lam (.var 0)))) (.var 1)))
theorem reject2433 : ¬ Reader r2433 :=
  refute_zero r2433 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2433
def r2434 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.var 1))) (.lam (.var 0))))
theorem reject2434 : ¬ Reader r2434 :=
  refute_zero r2434 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2434
def r2435 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.lam (.var 0)))) (.var 1)))
theorem reject2435 : ¬ Reader r2435 :=
  refute_zero r2435 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2435
def r2436 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.lam (.var 0))))
theorem reject2436 : ¬ Reader r2436 :=
  refute_zero r2436 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2436
def r2437 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.lam (.var 0)))) (.var 1)))
theorem reject2437 : ¬ Reader r2437 :=
  refute_zero r2437 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2437
def r2438 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.var 1))) (.lam (.var 0))))
theorem reject2438 : ¬ Reader r2438 :=
  refute_zero r2438 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2438
def r2439 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.lam (.var 0)))) (.var 1)))
theorem reject2439 : ¬ Reader r2439 :=
  refute_zero r2439 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2439
def r2440 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.lam (.var 0))))
theorem reject2440 : ¬ Reader r2440 :=
  refute_zero r2440 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.lam (.var 0))) 4 (by decide) (by decide) (by decide)
#print axioms reject2440
def r2441 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.lam (.var 0)))) (.var 1)))
theorem reject2441 : ¬ Reader r2441 :=
  refute_zero r2441 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2441
def r2442 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2442 : ¬ Reader r2442 :=
  refute_zero r2442 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2442
def r2443 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2443 : ¬ Reader r2443 :=
  refute_zero r2443 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2443
def r2444 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2444 : ¬ Reader r2444 :=
  refute_zero r2444 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2444
def r2445 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2445 : ¬ Reader r2445 :=
  refute_zero r2445 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2445
def r2446 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2446 : ¬ Reader r2446 :=
  refute_zero r2446 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2446
def r2447 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2447 : ¬ Reader r2447 :=
  refute_zero r2447 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2447
def r2448 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2448 : ¬ Reader r2448 :=
  refute_zero r2448 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2448
def r2449 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2449 : ¬ Reader r2449 :=
  refute_zero r2449 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2449
def r2450 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2450 : ¬ Reader r2450 :=
  refute_zero r2450 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2450
def r2451 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2451 : ¬ Reader r2451 :=
  refute_zero r2451 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2451
def r2452 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2452 : ¬ Reader r2452 :=
  refute_zero r2452 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2452
def r2453 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2453 : ¬ Reader r2453 :=
  refute_zero r2453 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2453
def r2454 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2454 : ¬ Reader r2454 :=
  refute_zero r2454 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2454
def r2455 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2455 : ¬ Reader r2455 :=
  refute_zero r2455 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2455
def r2456 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2456 : ¬ Reader r2456 :=
  refute_zero r2456 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2456
def r2457 : Term := (.lam (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)))) (.var 2)) (.var 1))) (.var 1)))
theorem reject2457 : ¬ Reader r2457 :=
  refute_zero r2457 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) 4 (by decide) (by decide) (by decide)
#print axioms reject2457
def r2458 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2458 : ¬ Reader r2458 :=
  refute_zero r2458 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2458
def r2459 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2459 : ¬ Reader r2459 :=
  refute_zero r2459 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2459
def r2460 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject2460 : ¬ Reader r2460 :=
  refute_zero r2460 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2460
def r2461 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject2461 : ¬ Reader r2461 :=
  refute_zero r2461 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2461
def r2462 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1))))
theorem reject2462 : ¬ Reader r2462 :=
  refute_zero r2462 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2462
def r2463 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))))
theorem reject2463 : ¬ Reader r2463 :=
  refute_zero r2463 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2463
def r2464 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))))
theorem reject2464 : ¬ Reader r2464 :=
  refute_zero r2464 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2464
def r2465 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))))
theorem reject2465 : ¬ Reader r2465 :=
  refute_zero r2465 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2465
def r2466 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2466 : ¬ Reader r2466 :=
  refute_zero r2466 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2466
def r2467 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2467 : ¬ Reader r2467 :=
  refute_zero r2467 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2467
def r2468 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 2))))))
theorem reject2468 : ¬ Reader r2468 :=
  refute_zero r2468 (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2468
def r2469 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 2)))) (.app (.var 1) (.var 1)))))
theorem reject2469 : ¬ Reader r2469 :=
  refute_zero r2469 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2469
def r2470 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 2)))))
theorem reject2470 : ¬ Reader r2470 :=
  refute_zero r2470 (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2470
def r2471 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 2)))))
theorem reject2471 : ¬ Reader r2471 :=
  refute_zero r2471 (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2471
def r2472 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.var 1))))
theorem reject2472 : ¬ Reader r2472 :=
  refute_zero r2472 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2472
def r2473 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.var 1))))
theorem reject2473 : ¬ Reader r2473 :=
  refute_zero r2473 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2473
def r2474 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.var 1))))
theorem reject2474 : ¬ Reader r2474 :=
  refute_zero r2474 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2474
def r2475 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject2475 : ¬ Reader r2475 :=
  refute_zero r2475 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2475
def r2476 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject2476 : ¬ Reader r2476 :=
  refute_zero r2476 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2476
def r2477 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject2477 : ¬ Reader r2477 :=
  refute_zero r2477 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2477
def r2478 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject2478 : ¬ Reader r2478 :=
  refute_zero r2478 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2478
def r2479 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 0)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))))
theorem reject2479 : ¬ Reader r2479 :=
  refute_zero r2479 (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2479
def r2480 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject2480 : ¬ Reader r2480 :=
  refute_zero r2480 (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2480
def r2481 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject2481 : ¬ Reader r2481 :=
  refute_zero r2481 (.app (.app (.app (.var 1) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2481
def r2482 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject2482 : ¬ Reader r2482 :=
  refute_zero r2482 (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2482
def r2483 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject2483 : ¬ Reader r2483 :=
  refute_zero r2483 (.app (.app (.app (.var 1) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2483
def r2484 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))))
theorem reject2484 : ¬ Reader r2484 :=
  refute_zero r2484 (.app (.app (.app (.var 1) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2484
def r2485 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.app (.var 2) (.var 2)))))))
theorem reject2485 : ¬ Reader r2485 :=
  refute_zero r2485 (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2485
def r2486 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))))))
theorem reject2486 : ¬ Reader r2486 :=
  refute_zero r2486 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2486
def r2487 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))))))
theorem reject2487 : ¬ Reader r2487 :=
  refute_zero r2487 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2487
def r2488 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))))))
theorem reject2488 : ¬ Reader r2488 :=
  refute_zero r2488 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2488
def r2489 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))))))
theorem reject2489 : ¬ Reader r2489 :=
  refute_zero r2489 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2489
def r2490 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))))))
theorem reject2490 : ¬ Reader r2490 :=
  refute_zero r2490 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2490
def r2491 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))))))
theorem reject2491 : ¬ Reader r2491 :=
  refute_zero r2491 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2491
def r2492 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))))
theorem reject2492 : ¬ Reader r2492 :=
  refute_zero r2492 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2492
def r2493 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1))))))
theorem reject2493 : ¬ Reader r2493 :=
  refute_zero r2493 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2493
def r2494 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))))))
theorem reject2494 : ¬ Reader r2494 :=
  refute_zero r2494 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2494
def r2495 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))
theorem reject2495 : ¬ Reader r2495 :=
  refute_zero r2495 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2495
def r2496 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)))))
theorem reject2496 : ¬ Reader r2496 :=
  refute_zero r2496 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2496
def r2497 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))))
theorem reject2497 : ¬ Reader r2497 :=
  refute_zero r2497 (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2497
def r2498 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))))
theorem reject2498 : ¬ Reader r2498 :=
  refute_zero r2498 (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2498
def r2499 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)))))
theorem reject2499 : ¬ Reader r2499 :=
  refute_zero r2499 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2499
def r2500 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)))))
theorem reject2500 : ¬ Reader r2500 :=
  refute_zero r2500 (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2500
def r2501 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2501 : ¬ Reader r2501 :=
  refute_zero r2501 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2501
def r2502 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2502 : ¬ Reader r2502 :=
  refute_zero r2502 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2502
def r2503 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 0))) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2503 : ¬ Reader r2503 :=
  refute_zero r2503 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2503
def r2504 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2504 : ¬ Reader r2504 :=
  refute_zero r2504 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2504
def r2505 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.app (.var 2) (.var 2))))))
theorem reject2505 : ¬ Reader r2505 :=
  refute_zero r2505 (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2505
def r2506 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 1))))))
theorem reject2506 : ¬ Reader r2506 :=
  refute_zero r2506 (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2506
def r2507 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 1)))))
theorem reject2507 : ¬ Reader r2507 :=
  refute_zero r2507 (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2507
def r2508 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 0) (.var 1))))))
theorem reject2508 : ¬ Reader r2508 :=
  refute_zero r2508 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2508
def r2509 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 0))))))
theorem reject2509 : ¬ Reader r2509 :=
  refute_zero r2509 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2509
def r2510 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 1)))))
theorem reject2510 : ¬ Reader r2510 :=
  refute_zero r2510 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2510
def r2511 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0)))))
theorem reject2511 : ¬ Reader r2511 :=
  refute_zero r2511 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2511
def r2512 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.app (.var 2) (.var 2)))) (.app (.var 1) (.var 1)))))
theorem reject2512 : ¬ Reader r2512 :=
  refute_zero r2512 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2512
def r2513 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 1)))))
theorem reject2513 : ¬ Reader r2513 :=
  refute_zero r2513 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2513
def r2514 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject2514 : ¬ Reader r2514 :=
  refute_zero r2514 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2514
def r2515 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 1)))) (.app (.var 1) (.var 1)))))
theorem reject2515 : ¬ Reader r2515 :=
  refute_zero r2515 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2515
def r2516 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 1)))))
theorem reject2516 : ¬ Reader r2516 :=
  refute_zero r2516 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2516
def r2517 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject2517 : ¬ Reader r2517 :=
  refute_zero r2517 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2517
def r2518 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 0))) (.app (.var 1) (.var 1)))))
theorem reject2518 : ¬ Reader r2518 :=
  refute_zero r2518 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2518
def r2519 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 1)))))
theorem reject2519 : ¬ Reader r2519 :=
  refute_zero r2519 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2519
def r2520 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 0)))))
theorem reject2520 : ¬ Reader r2520 :=
  refute_zero r2520 (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2520
def r2521 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.app (.var 0) (.var 1)))))
theorem reject2521 : ¬ Reader r2521 :=
  refute_zero r2521 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2521
def r2522 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.app (.var 1) (.var 0)))))
theorem reject2522 : ¬ Reader r2522 :=
  refute_zero r2522 (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2522
def r2523 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 1))))
theorem reject2523 : ¬ Reader r2523 :=
  refute_zero r2523 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2523
def r2524 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 1))))
theorem reject2524 : ¬ Reader r2524 :=
  refute_zero r2524 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2524
def r2525 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject2525 : ¬ Reader r2525 :=
  refute_zero r2525 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2525
def r2526 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1))) (.var 1))))
theorem reject2526 : ¬ Reader r2526 :=
  refute_zero r2526 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2526
def r2527 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1))) (.var 1))))
theorem reject2527 : ¬ Reader r2527 :=
  refute_zero r2527 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2527
def r2528 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.app (.var 2) (.var 2))))) (.var 1))))
theorem reject2528 : ¬ Reader r2528 :=
  refute_zero r2528 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2528
def r2529 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 1))))
theorem reject2529 : ¬ Reader r2529 :=
  refute_zero r2529 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2529
def r2530 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 1))))
theorem reject2530 : ¬ Reader r2530 :=
  refute_zero r2530 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2530
def r2531 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 1))))
theorem reject2531 : ¬ Reader r2531 :=
  refute_zero r2531 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2531
def r2532 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 1))))
theorem reject2532 : ¬ Reader r2532 :=
  refute_zero r2532 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2532
def r2533 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 1))))
theorem reject2533 : ¬ Reader r2533 :=
  refute_zero r2533 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2533
def r2534 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 1))))
theorem reject2534 : ¬ Reader r2534 :=
  refute_zero r2534 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2534
def r2535 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject2535 : ¬ Reader r2535 :=
  refute_zero r2535 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2535
def r2536 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))) (.var 1))))
theorem reject2536 : ¬ Reader r2536 :=
  refute_zero r2536 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2536
def r2537 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject2537 : ¬ Reader r2537 :=
  refute_zero r2537 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2537
def r2538 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))) (.var 1))))
theorem reject2538 : ¬ Reader r2538 :=
  refute_zero r2538 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2538
def r2539 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1))) (.var 1))))
theorem reject2539 : ¬ Reader r2539 :=
  refute_zero r2539 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2539
def r2540 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1))) (.var 1))))
theorem reject2540 : ¬ Reader r2540 :=
  refute_zero r2540 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2540
def r2541 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1))) (.var 1))))
theorem reject2541 : ¬ Reader r2541 :=
  refute_zero r2541 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2541
def r2542 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0))) (.var 1))))
theorem reject2542 : ¬ Reader r2542 :=
  refute_zero r2542 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2542
def r2543 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0))) (.var 1))))
theorem reject2543 : ¬ Reader r2543 :=
  refute_zero r2543 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2543
def r2544 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 0))))
theorem reject2544 : ¬ Reader r2544 :=
  refute_zero r2544 (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2544
def r2545 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 0))))
theorem reject2545 : ¬ Reader r2545 :=
  refute_zero r2545 (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2545
def r2546 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.var 0))))
theorem reject2546 : ¬ Reader r2546 :=
  refute_zero r2546 (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2546
def r2547 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.var 0))))
theorem reject2547 : ¬ Reader r2547 :=
  refute_zero r2547 (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2547
def r2548 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.var 0))))
theorem reject2548 : ¬ Reader r2548 :=
  refute_zero r2548 (.app (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2548
def r2549 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.app (.var 2) (.app (.var 2) (.var 2)))))))
theorem reject2549 : ¬ Reader r2549 :=
  refute_zero r2549 (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2549
def r2550 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.lam (.app (.app (.var 2) (.var 2)) (.var 2))))))
theorem reject2550 : ¬ Reader r2550 :=
  refute_zero r2550 (.app (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2550
def r2551 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.app (.var 2) (.app (.var 2) (.var 2))))) (.var 1))))
theorem reject2551 : ¬ Reader r2551 :=
  refute_zero r2551 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2551
def r2552 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.app (.app (.var 2) (.var 2)) (.var 2)))) (.var 1))))
theorem reject2552 : ¬ Reader r2552 :=
  refute_zero r2552 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2552
def r2553 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject2553 : ¬ Reader r2553 :=
  refute_zero r2553 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2553
def r2554 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject2554 : ¬ Reader r2554 :=
  refute_zero r2554 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2554
def r2555 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject2555 : ¬ Reader r2555 :=
  refute_zero r2555 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2555
def r2556 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject2556 : ¬ Reader r2556 :=
  refute_zero r2556 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2556
def r2557 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))))
theorem reject2557 : ¬ Reader r2557 :=
  refute_zero r2557 (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2557
def r2558 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2558 : ¬ Reader r2558 :=
  refute_zero r2558 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2558
def r2559 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2559 : ¬ Reader r2559 :=
  refute_zero r2559 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2559
def r2560 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 1)))))
theorem reject2560 : ¬ Reader r2560 :=
  refute_zero r2560 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2560
def r2561 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject2561 : ¬ Reader r2561 :=
  refute_zero r2561 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2561
def r2562 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 1))))
theorem reject2562 : ¬ Reader r2562 :=
  refute_zero r2562 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2562
def r2563 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 1))))
theorem reject2563 : ¬ Reader r2563 :=
  refute_zero r2563 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2563
def r2564 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject2564 : ¬ Reader r2564 :=
  refute_zero r2564 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2564
def r2565 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.var 1))))
theorem reject2565 : ¬ Reader r2565 :=
  refute_zero r2565 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2565
def r2566 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.var 1))))
theorem reject2566 : ¬ Reader r2566 :=
  refute_zero r2566 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2566
def r2567 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))))))
theorem reject2567 : ¬ Reader r2567 :=
  refute_zero r2567 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2567
def r2568 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))))))
theorem reject2568 : ¬ Reader r2568 :=
  refute_zero r2568 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2568
def r2569 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))))))
theorem reject2569 : ¬ Reader r2569 :=
  refute_zero r2569 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2569
def r2570 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)))))
theorem reject2570 : ¬ Reader r2570 :=
  refute_zero r2570 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2570
def r2571 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))))
theorem reject2571 : ¬ Reader r2571 :=
  refute_zero r2571 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2571
def r2572 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))))
theorem reject2572 : ¬ Reader r2572 :=
  refute_zero r2572 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2572
def r2573 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))))
theorem reject2573 : ¬ Reader r2573 :=
  refute_zero r2573 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2573
def r2574 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))))))
theorem reject2574 : ¬ Reader r2574 :=
  refute_zero r2574 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2574
def r2575 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))))))
theorem reject2575 : ¬ Reader r2575 :=
  refute_zero r2575 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2575
def r2576 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))))))
theorem reject2576 : ¬ Reader r2576 :=
  refute_zero r2576 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2576
def r2577 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))))))
theorem reject2577 : ¬ Reader r2577 :=
  refute_zero r2577 (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2577
def r2578 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)))))
theorem reject2578 : ¬ Reader r2578 :=
  refute_zero r2578 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2578
def r2579 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)))))
theorem reject2579 : ¬ Reader r2579 :=
  refute_zero r2579 (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2579
def r2580 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.var 1)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)))))
theorem reject2580 : ¬ Reader r2580 :=
  refute_zero r2580 (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2580
def r2581 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))))
theorem reject2581 : ¬ Reader r2581 :=
  refute_zero r2581 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2581
def r2582 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))))
theorem reject2582 : ¬ Reader r2582 :=
  refute_zero r2582 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2582
def r2583 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))))
theorem reject2583 : ¬ Reader r2583 :=
  refute_zero r2583 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2583
def r2584 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))))
theorem reject2584 : ¬ Reader r2584 :=
  refute_zero r2584 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2584
def r2585 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))))
theorem reject2585 : ¬ Reader r2585 :=
  refute_zero r2585 (.app (.app (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2585
def r2586 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))))
theorem reject2586 : ¬ Reader r2586 :=
  refute_zero r2586 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2586
def r2587 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))))
theorem reject2587 : ¬ Reader r2587 :=
  refute_zero r2587 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2587
def r2588 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.var 2))) (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))))
theorem reject2588 : ¬ Reader r2588 :=
  refute_zero r2588 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2588
def r2589 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.lam (.var 3)))))))
theorem reject2589 : ¬ Reader r2589 :=
  refute_zero r2589 (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2589
def r2590 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))
theorem reject2590 : ¬ Reader r2590 :=
  refute_zero r2590 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2590
def r2591 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))
theorem reject2591 : ¬ Reader r2591 :=
  refute_zero r2591 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2591
def r2592 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))))
theorem reject2592 : ¬ Reader r2592 :=
  refute_zero r2592 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2592
def r2593 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.lam (.var 3)))) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2593 : ¬ Reader r2593 :=
  refute_zero r2593 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2593
def r2594 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.lam (.lam (.var 3)))) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2594 : ¬ Reader r2594 :=
  refute_zero r2594 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2594
def r2595 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2595 : ¬ Reader r2595 :=
  refute_zero r2595 (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2595
def r2596 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2596 : ¬ Reader r2596 :=
  refute_zero r2596 (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2596
def r2597 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.var 2)))) (.app (.var 1) (.lam (.var 2))))))
theorem reject2597 : ¬ Reader r2597 :=
  refute_zero r2597 (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2597
def r2598 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 3))))))
theorem reject2598 : ¬ Reader r2598 :=
  refute_zero r2598 (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2598
def r2599 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.app (.var 1) (.lam (.var 0))))))
theorem reject2599 : ¬ Reader r2599 :=
  refute_zero r2599 (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2599
def r2600 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 3))))))
theorem reject2600 : ¬ Reader r2600 :=
  refute_zero r2600 (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2600
def r2601 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.app (.var 1) (.lam (.var 0))))))
theorem reject2601 : ¬ Reader r2601 :=
  refute_zero r2601 (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2601
def r2602 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.lam (.lam (.var 3))))) (.app (.var 1) (.var 1)))))
theorem reject2602 : ¬ Reader r2602 :=
  refute_zero r2602 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2602
def r2603 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.app (.var 1) (.var 1)))))
theorem reject2603 : ¬ Reader r2603 :=
  refute_zero r2603 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2603
def r2604 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.app (.var 1) (.var 1)))))
theorem reject2604 : ¬ Reader r2604 :=
  refute_zero r2604 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2604
def r2605 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject2605 : ¬ Reader r2605 :=
  refute_zero r2605 (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2605
def r2606 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.lam (.var 2)))))
theorem reject2606 : ¬ Reader r2606 :=
  refute_zero r2606 (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2606
def r2607 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.lam (.var 2)))))
theorem reject2607 : ¬ Reader r2607 :=
  refute_zero r2607 (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2607
def r2608 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.lam (.var 2)))))
theorem reject2608 : ¬ Reader r2608 :=
  refute_zero r2608 (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2608
def r2609 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1))))) (.lam (.var 0)))))
theorem reject2609 : ¬ Reader r2609 :=
  refute_zero r2609 (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2609
def r2610 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1)))) (.lam (.var 0)))))
theorem reject2610 : ¬ Reader r2610 :=
  refute_zero r2610 (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2610
def r2611 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1)))) (.lam (.var 0)))))
theorem reject2611 : ¬ Reader r2611 :=
  refute_zero r2611 (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2611
def r2612 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1))) (.lam (.var 0)))))
theorem reject2612 : ¬ Reader r2612 :=
  refute_zero r2612 (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2612
def r2613 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1))) (.lam (.var 0)))))
theorem reject2613 : ¬ Reader r2613 :=
  refute_zero r2613 (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2613
def r2614 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 1))))
theorem reject2614 : ¬ Reader r2614 :=
  refute_zero r2614 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2614
def r2615 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3))))) (.var 1))))
theorem reject2615 : ¬ Reader r2615 :=
  refute_zero r2615 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2615
def r2616 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2)))) (.var 1))))
theorem reject2616 : ¬ Reader r2616 :=
  refute_zero r2616 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2616
def r2617 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1))) (.var 1))))
theorem reject2617 : ¬ Reader r2617 :=
  refute_zero r2617 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2617
def r2618 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 1))))
theorem reject2618 : ¬ Reader r2618 :=
  refute_zero r2618 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2618
def r2619 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 1))))
theorem reject2619 : ¬ Reader r2619 :=
  refute_zero r2619 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2619
def r2620 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 1))))
theorem reject2620 : ¬ Reader r2620 :=
  refute_zero r2620 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2620
def r2621 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0))))) (.var 1))))
theorem reject2621 : ¬ Reader r2621 :=
  refute_zero r2621 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2621
def r2622 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject2622 : ¬ Reader r2622 :=
  refute_zero r2622 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2622
def r2623 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0)))) (.var 1))))
theorem reject2623 : ¬ Reader r2623 :=
  refute_zero r2623 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2623
def r2624 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0)))) (.var 1))))
theorem reject2624 : ¬ Reader r2624 :=
  refute_zero r2624 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2624
def r2625 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1))) (.var 1))))
theorem reject2625 : ¬ Reader r2625 :=
  refute_zero r2625 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2625
def r2626 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1))) (.var 1))))
theorem reject2626 : ¬ Reader r2626 :=
  refute_zero r2626 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2626
def r2627 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.var 1))) (.var 2)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1))) (.var 1))))
theorem reject2627 : ¬ Reader r2627 :=
  refute_zero r2627 (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2627
def r2628 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2628 : ¬ Reader r2628 :=
  refute_zero r2628 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2628
def r2629 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2629 : ¬ Reader r2629 :=
  refute_zero r2629 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2629
def r2630 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject2630 : ¬ Reader r2630 :=
  refute_zero r2630 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2630
def r2631 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject2631 : ¬ Reader r2631 :=
  refute_zero r2631 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2631
def r2632 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1))))
theorem reject2632 : ¬ Reader r2632 :=
  refute_zero r2632 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2632
def r2633 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))))
theorem reject2633 : ¬ Reader r2633 :=
  refute_zero r2633 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2633
def r2634 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))))
theorem reject2634 : ¬ Reader r2634 :=
  refute_zero r2634 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2634
def r2635 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))))
theorem reject2635 : ¬ Reader r2635 :=
  refute_zero r2635 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2635
def r2636 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.lam (.var 2))) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2636 : ¬ Reader r2636 :=
  refute_zero r2636 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2636
def r2637 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.lam (.var 2))) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2637 : ¬ Reader r2637 :=
  refute_zero r2637 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2637
def r2638 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 2))))))
theorem reject2638 : ¬ Reader r2638 :=
  refute_zero r2638 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2638
def r2639 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.lam (.var 2)))) (.app (.var 1) (.var 1)))))
theorem reject2639 : ¬ Reader r2639 :=
  refute_zero r2639 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2639
def r2640 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 2)))))
theorem reject2640 : ¬ Reader r2640 :=
  refute_zero r2640 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2640
def r2641 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 2)))))
theorem reject2641 : ¬ Reader r2641 :=
  refute_zero r2641 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2641
def r2642 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.var 2))))) (.var 1))))
theorem reject2642 : ¬ Reader r2642 :=
  refute_zero r2642 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2642
def r2643 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.var 2)))) (.var 1))))
theorem reject2643 : ¬ Reader r2643 :=
  refute_zero r2643 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2643
def r2644 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.var 2)))) (.var 2)) (.app (.app (.var 1) (.lam (.var 2))) (.var 1))) (.var 1))))
theorem reject2644 : ¬ Reader r2644 :=
  refute_zero r2644 (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2644
def r2645 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2645 : ¬ Reader r2645 :=
  refute_zero r2645 (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2645
def r2646 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2646 : ¬ Reader r2646 :=
  refute_zero r2646 (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2646
def r2647 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject2647 : ¬ Reader r2647 :=
  refute_zero r2647 (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2647
def r2648 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject2648 : ¬ Reader r2648 :=
  refute_zero r2648 (.app (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2648
def r2649 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1))))
theorem reject2649 : ¬ Reader r2649 :=
  refute_zero r2649 (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2649
def r2650 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2650 : ¬ Reader r2650 :=
  refute_zero r2650 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2650
def r2651 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2651 : ¬ Reader r2651 :=
  refute_zero r2651 (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2651
def r2652 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject2652 : ¬ Reader r2652 :=
  refute_zero r2652 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2652
def r2653 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject2653 : ¬ Reader r2653 :=
  refute_zero r2653 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2653
def r2654 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1))))
theorem reject2654 : ¬ Reader r2654 :=
  refute_zero r2654 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2654
def r2655 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2655 : ¬ Reader r2655 :=
  refute_zero r2655 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2655
def r2656 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2656 : ¬ Reader r2656 :=
  refute_zero r2656 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2656
def r2657 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.var 2))))))
theorem reject2657 : ¬ Reader r2657 :=
  refute_zero r2657 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2657
def r2658 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 2))) (.app (.var 1) (.var 1)))))
theorem reject2658 : ¬ Reader r2658 :=
  refute_zero r2658 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2658
def r2659 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.var 2)))))
theorem reject2659 : ¬ Reader r2659 :=
  refute_zero r2659 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2659
def r2660 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.lam (.var 2)))) (.var 1))))
theorem reject2660 : ¬ Reader r2660 :=
  refute_zero r2660 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2660
def r2661 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2661 : ¬ Reader r2661 :=
  refute_zero r2661 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2661
def r2662 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2662 : ¬ Reader r2662 :=
  refute_zero r2662 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2662
def r2663 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.lam (.app (.var 2) (.var 2))))))
theorem reject2663 : ¬ Reader r2663 :=
  refute_zero r2663 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2663
def r2664 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 1))))))
theorem reject2664 : ¬ Reader r2664 :=
  refute_zero r2664 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2664
def r2665 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 1)))))
theorem reject2665 : ¬ Reader r2665 :=
  refute_zero r2665 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2665
def r2666 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 1))))))
theorem reject2666 : ¬ Reader r2666 :=
  refute_zero r2666 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2666
def r2667 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 0))))))
theorem reject2667 : ¬ Reader r2667 :=
  refute_zero r2667 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2667
def r2668 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 1)))))
theorem reject2668 : ¬ Reader r2668 :=
  refute_zero r2668 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2668
def r2669 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 0)))))
theorem reject2669 : ¬ Reader r2669 :=
  refute_zero r2669 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2669
def r2670 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject2670 : ¬ Reader r2670 :=
  refute_zero r2670 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2670
def r2671 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 1)))))
theorem reject2671 : ¬ Reader r2671 :=
  refute_zero r2671 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2671
def r2672 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 1)))))
theorem reject2672 : ¬ Reader r2672 :=
  refute_zero r2672 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2672
def r2673 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 0)))))
theorem reject2673 : ¬ Reader r2673 :=
  refute_zero r2673 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2673
def r2674 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.app (.var 2) (.var 2)))) (.var 1))))
theorem reject2674 : ¬ Reader r2674 :=
  refute_zero r2674 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2674
def r2675 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject2675 : ¬ Reader r2675 :=
  refute_zero r2675 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2675
def r2676 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 1))))
theorem reject2676 : ¬ Reader r2676 :=
  refute_zero r2676 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2676
def r2677 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 1))))
theorem reject2677 : ¬ Reader r2677 :=
  refute_zero r2677 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2677
def r2678 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject2678 : ¬ Reader r2678 :=
  refute_zero r2678 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2678
def r2679 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 1))))
theorem reject2679 : ¬ Reader r2679 :=
  refute_zero r2679 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2679
def r2680 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 1))))
theorem reject2680 : ¬ Reader r2680 :=
  refute_zero r2680 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2680
def r2681 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0))))
theorem reject2681 : ¬ Reader r2681 :=
  refute_zero r2681 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2681
def r2682 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0))))
theorem reject2682 : ¬ Reader r2682 :=
  refute_zero r2682 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2682
def r2683 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2683 : ¬ Reader r2683 :=
  refute_zero r2683 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2683
def r2684 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2684 : ¬ Reader r2684 :=
  refute_zero r2684 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2684
def r2685 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject2685 : ¬ Reader r2685 :=
  refute_zero r2685 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2685
def r2686 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject2686 : ¬ Reader r2686 :=
  refute_zero r2686 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2686
def r2687 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1))))
theorem reject2687 : ¬ Reader r2687 :=
  refute_zero r2687 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2687
def r2688 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.lam (.var 3)))))))
theorem reject2688 : ¬ Reader r2688 :=
  refute_zero r2688 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2688
def r2689 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))
theorem reject2689 : ¬ Reader r2689 :=
  refute_zero r2689 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2689
def r2690 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))
theorem reject2690 : ¬ Reader r2690 :=
  refute_zero r2690 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2690
def r2691 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))))
theorem reject2691 : ¬ Reader r2691 :=
  refute_zero r2691 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2691
def r2692 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2692 : ¬ Reader r2692 :=
  refute_zero r2692 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2692
def r2693 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2693 : ¬ Reader r2693 :=
  refute_zero r2693 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2693
def r2694 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.var 2))) (.app (.var 1) (.lam (.var 2))))))
theorem reject2694 : ¬ Reader r2694 :=
  refute_zero r2694 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2694
def r2695 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 3))))))
theorem reject2695 : ¬ Reader r2695 :=
  refute_zero r2695 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2695
def r2696 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.lam (.var 0))))))
theorem reject2696 : ¬ Reader r2696 :=
  refute_zero r2696 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2696
def r2697 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.lam (.lam (.var 3)))) (.app (.var 1) (.var 1)))))
theorem reject2697 : ¬ Reader r2697 :=
  refute_zero r2697 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2697
def r2698 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 1)))))
theorem reject2698 : ¬ Reader r2698 :=
  refute_zero r2698 (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2698
def r2699 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.lam (.var 2)))) (.lam (.var 2)))))
theorem reject2699 : ¬ Reader r2699 :=
  refute_zero r2699 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2699
def r2700 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 0)))))
theorem reject2700 : ¬ Reader r2700 :=
  refute_zero r2700 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2700
def r2701 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 0)))))
theorem reject2701 : ¬ Reader r2701 :=
  refute_zero r2701 (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2701
def r2702 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 1))))
theorem reject2702 : ¬ Reader r2702 :=
  refute_zero r2702 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2702
def r2703 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 1))))
theorem reject2703 : ¬ Reader r2703 :=
  refute_zero r2703 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2703
def r2704 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 1))))
theorem reject2704 : ¬ Reader r2704 :=
  refute_zero r2704 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2704
def r2705 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 1))))
theorem reject2705 : ¬ Reader r2705 :=
  refute_zero r2705 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2705
def r2706 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2706 : ¬ Reader r2706 :=
  refute_zero r2706 (.app (.var 1) (.var 3)) 6 (by decide) (by decide) (by decide)
#print axioms reject2706
def r2707 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2707 : ¬ Reader r2707 :=
  refute_zero r2707 (.app (.var 1) (.var 3)) 6 (by decide) (by decide) (by decide)
#print axioms reject2707
def r2708 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject2708 : ¬ Reader r2708 :=
  refute_zero r2708 (.app (.var 1) (.var 3)) 6 (by decide) (by decide) (by decide)
#print axioms reject2708
def r2709 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject2709 : ¬ Reader r2709 :=
  refute_zero r2709 (.app (.var 1) (.var 3)) 6 (by decide) (by decide) (by decide)
#print axioms reject2709
def r2710 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.lam (.var 3))))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1))))
theorem reject2710 : ¬ Reader r2710 :=
  refute_zero r2710 (.app (.var 1) (.var 3)) 6 (by decide) (by decide) (by decide)
#print axioms reject2710
def r2711 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2711 : ¬ Reader r2711 :=
  refute_zero r2711 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2711
def r2712 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2712 : ¬ Reader r2712 :=
  refute_zero r2712 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2712
def r2713 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject2713 : ¬ Reader r2713 :=
  refute_zero r2713 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2713
def r2714 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject2714 : ¬ Reader r2714 :=
  refute_zero r2714 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2714
def r2715 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 0))))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1))))
theorem reject2715 : ¬ Reader r2715 :=
  refute_zero r2715 (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2715
def r2716 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2716 : ¬ Reader r2716 :=
  refute_zero r2716 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2716
def r2717 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2717 : ¬ Reader r2717 :=
  refute_zero r2717 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2717
def r2718 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject2718 : ¬ Reader r2718 :=
  refute_zero r2718 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2718
def r2719 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject2719 : ¬ Reader r2719 :=
  refute_zero r2719 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2719
def r2720 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1))))
theorem reject2720 : ¬ Reader r2720 :=
  refute_zero r2720 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2720
def r2721 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 1))))))
theorem reject2721 : ¬ Reader r2721 :=
  refute_zero r2721 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2721
def r2722 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1)))))
theorem reject2722 : ¬ Reader r2722 :=
  refute_zero r2722 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2722
def r2723 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 1)))))
theorem reject2723 : ¬ Reader r2723 :=
  refute_zero r2723 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2723
def r2724 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 1))))
theorem reject2724 : ¬ Reader r2724 :=
  refute_zero r2724 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2724
def r2725 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 1))))
theorem reject2725 : ¬ Reader r2725 :=
  refute_zero r2725 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2725
def r2726 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2726 : ¬ Reader r2726 :=
  refute_zero r2726 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2726
def r2727 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2727 : ¬ Reader r2727 :=
  refute_zero r2727 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2727
def r2728 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.var 2))))))
theorem reject2728 : ¬ Reader r2728 :=
  refute_zero r2728 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2728
def r2729 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.lam (.var 2))) (.app (.var 1) (.var 1)))))
theorem reject2729 : ¬ Reader r2729 :=
  refute_zero r2729 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2729
def r2730 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.var 2)))))
theorem reject2730 : ¬ Reader r2730 :=
  refute_zero r2730 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2730
def r2731 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.var 2)) (.app (.var 1) (.lam (.var 2)))) (.var 1))))
theorem reject2731 : ¬ Reader r2731 :=
  refute_zero r2731 (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2731
def r2732 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2732 : ¬ Reader r2732 :=
  refute_zero r2732 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2732
def r2733 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.app (.var 2) (.var 2))))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2733 : ¬ Reader r2733 :=
  refute_zero r2733 (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2733
def r2734 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2734 : ¬ Reader r2734 :=
  refute_zero r2734 (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2734
def r2735 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2735 : ¬ Reader r2735 :=
  refute_zero r2735 (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2735
def r2736 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2736 : ¬ Reader r2736 :=
  refute_zero r2736 (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2736
def r2737 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2737 : ¬ Reader r2737 :=
  refute_zero r2737 (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2737
def r2738 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2738 : ¬ Reader r2738 :=
  refute_zero r2738 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2738
def r2739 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2739 : ¬ Reader r2739 :=
  refute_zero r2739 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2739
def r2740 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2740 : ¬ Reader r2740 :=
  refute_zero r2740 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2740
def r2741 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2741 : ¬ Reader r2741 :=
  refute_zero r2741 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2741
def r2742 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2742 : ¬ Reader r2742 :=
  refute_zero r2742 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2742
def r2743 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2743 : ¬ Reader r2743 :=
  refute_zero r2743 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2743
def r2744 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2744 : ¬ Reader r2744 :=
  refute_zero r2744 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2744
def r2745 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2745 : ¬ Reader r2745 :=
  refute_zero r2745 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2745
def r2746 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2746 : ¬ Reader r2746 :=
  refute_zero r2746 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2746
def r2747 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2747 : ¬ Reader r2747 :=
  refute_zero r2747 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2747
def r2748 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.lam (.var 2)))))
theorem reject2748 : ¬ Reader r2748 :=
  refute_zero r2748 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2748
def r2749 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.lam (.var 2))) (.var 1))))
theorem reject2749 : ¬ Reader r2749 :=
  refute_zero r2749 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2749
def r2750 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.lam (.var 2)))))
theorem reject2750 : ¬ Reader r2750 :=
  refute_zero r2750 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2750
def r2751 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.lam (.var 2))) (.var 1))))
theorem reject2751 : ¬ Reader r2751 :=
  refute_zero r2751 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2751
def r2752 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 0)) (.app (.var 1) (.var 1)))))
theorem reject2752 : ¬ Reader r2752 :=
  refute_zero r2752 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2752
def r2753 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.app (.var 0) (.var 1)))))
theorem reject2753 : ¬ Reader r2753 :=
  refute_zero r2753 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2753
def r2754 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.app (.var 1) (.var 0)))))
theorem reject2754 : ¬ Reader r2754 :=
  refute_zero r2754 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2754
def r2755 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 0) (.var 1))) (.var 1))))
theorem reject2755 : ¬ Reader r2755 :=
  refute_zero r2755 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2755
def r2756 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.var 0))) (.var 1))))
theorem reject2756 : ¬ Reader r2756 :=
  refute_zero r2756 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2756
def r2757 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1))) (.var 0))))
theorem reject2757 : ¬ Reader r2757 :=
  refute_zero r2757 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2757
def r2758 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 0)) (.app (.var 1) (.var 1)))))
theorem reject2758 : ¬ Reader r2758 :=
  refute_zero r2758 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2758
def r2759 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 0) (.var 1)))))
theorem reject2759 : ¬ Reader r2759 :=
  refute_zero r2759 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2759
def r2760 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 0)))))
theorem reject2760 : ¬ Reader r2760 :=
  refute_zero r2760 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2760
def r2761 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 0) (.var 1))) (.var 1))))
theorem reject2761 : ¬ Reader r2761 :=
  refute_zero r2761 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2761
def r2762 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.var 0))) (.var 1))))
theorem reject2762 : ¬ Reader r2762 :=
  refute_zero r2762 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2762
def r2763 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 0))))
theorem reject2763 : ¬ Reader r2763 :=
  refute_zero r2763 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2763
def r2764 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2764 : ¬ Reader r2764 :=
  refute_zero r2764 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2764
def r2765 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2765 : ¬ Reader r2765 :=
  refute_zero r2765 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2765
def r2766 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2766 : ¬ Reader r2766 :=
  refute_zero r2766 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2766
def r2767 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2767 : ¬ Reader r2767 :=
  refute_zero r2767 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2767
def r2768 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.lam (.lam (.var 3))))))
theorem reject2768 : ¬ Reader r2768 :=
  refute_zero r2768 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2768
def r2769 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.var 0))))))
theorem reject2769 : ¬ Reader r2769 :=
  refute_zero r2769 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2769
def r2770 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.var 1)))))
theorem reject2770 : ¬ Reader r2770 :=
  refute_zero r2770 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2770
def r2771 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.lam (.var 2))) (.lam (.var 2)))))
theorem reject2771 : ¬ Reader r2771 :=
  refute_zero r2771 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2771
def r2772 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.var 0)))))
theorem reject2772 : ¬ Reader r2772 :=
  refute_zero r2772 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2772
def r2773 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.lam (.lam (.var 3)))) (.var 1))))
theorem reject2773 : ¬ Reader r2773 :=
  refute_zero r2773 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2773
def r2774 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 1))))) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 1))))
theorem reject2774 : ¬ Reader r2774 :=
  refute_zero r2774 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2774
def r2775 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.lam (.lam (.var 3))))))
theorem reject2775 : ¬ Reader r2775 :=
  refute_zero r2775 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 2)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2775
def r2776 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.var 0))))))
theorem reject2776 : ¬ Reader r2776 :=
  refute_zero r2776 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2776
def r2777 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.var 1)))))
theorem reject2777 : ¬ Reader r2777 :=
  refute_zero r2777 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2777
def r2778 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.lam (.var 2))) (.lam (.var 2)))))
theorem reject2778 : ¬ Reader r2778 :=
  refute_zero r2778 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2778
def r2779 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.var 0)))))
theorem reject2779 : ¬ Reader r2779 :=
  refute_zero r2779 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2779
def r2780 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.lam (.lam (.var 3)))) (.var 1))))
theorem reject2780 : ¬ Reader r2780 :=
  refute_zero r2780 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2780
def r2781 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 1)))) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 1))))
theorem reject2781 : ¬ Reader r2781 :=
  refute_zero r2781 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2781
def r2782 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2782 : ¬ Reader r2782 :=
  refute_zero r2782 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2782
def r2783 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2783 : ¬ Reader r2783 :=
  refute_zero r2783 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2783
def r2784 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2784 : ¬ Reader r2784 :=
  refute_zero r2784 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2784
def r2785 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2785 : ¬ Reader r2785 :=
  refute_zero r2785 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2785
def r2786 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2786 : ¬ Reader r2786 :=
  refute_zero r2786 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2786
def r2787 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2787 : ¬ Reader r2787 :=
  refute_zero r2787 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2787
def r2788 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2788 : ¬ Reader r2788 :=
  refute_zero r2788 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2788
def r2789 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2789 : ¬ Reader r2789 :=
  refute_zero r2789 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2789
def r2790 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2790 : ¬ Reader r2790 :=
  refute_zero r2790 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2790
def r2791 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2791 : ¬ Reader r2791 :=
  refute_zero r2791 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2791
def r2792 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2792 : ¬ Reader r2792 :=
  refute_zero r2792 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2792
def r2793 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.lam (.var 3)))))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2793 : ¬ Reader r2793 :=
  refute_zero r2793 (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2793
def r2794 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2794 : ¬ Reader r2794 :=
  refute_zero r2794 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2794
def r2795 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2795 : ¬ Reader r2795 :=
  refute_zero r2795 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2795
def r2796 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2796 : ¬ Reader r2796 :=
  refute_zero r2796 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2796
def r2797 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2797 : ¬ Reader r2797 :=
  refute_zero r2797 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2797
def r2798 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 2)) (.var 1)) (.app (.var 1) (.var 1)))))
theorem reject2798 : ¬ Reader r2798 :=
  refute_zero r2798 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2798
def r2799 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 2)) (.app (.var 1) (.var 1))) (.var 1))))
theorem reject2799 : ¬ Reader r2799 :=
  refute_zero r2799 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2799
def r2800 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2800 : ¬ Reader r2800 :=
  refute_zero r2800 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2800
def r2801 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2801 : ¬ Reader r2801 :=
  refute_zero r2801 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2801
def r2802 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2802 : ¬ Reader r2802 :=
  refute_zero r2802 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2802
def r2803 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.var 2)) (.var 1)) (.lam (.var 2)))))
theorem reject2803 : ¬ Reader r2803 :=
  refute_zero r2803 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2803
def r2804 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 2)))))) (.var 2)) (.lam (.var 2))) (.var 1))))
theorem reject2804 : ¬ Reader r2804 :=
  refute_zero r2804 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 2)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2804
def r2805 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.var 2)) (.var 1)) (.lam (.var 2)))))
theorem reject2805 : ¬ Reader r2805 :=
  refute_zero r2805 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2805
def r2806 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))) (.var 2)) (.lam (.var 2))) (.var 1))))
theorem reject2806 : ¬ Reader r2806 :=
  refute_zero r2806 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2806
def r2807 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.var 2)) (.var 1)) (.lam (.var 2)))))
theorem reject2807 : ¬ Reader r2807 :=
  refute_zero r2807 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2807
def r2808 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.var 1)))) (.var 2)) (.lam (.var 2))) (.var 1))))
theorem reject2808 : ¬ Reader r2808 :=
  refute_zero r2808 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2808
def r2809 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2809 : ¬ Reader r2809 :=
  refute_zero r2809 (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2809
def r2810 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2810 : ¬ Reader r2810 :=
  refute_zero r2810 (.app (.app (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2810
def r2811 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2811 : ¬ Reader r2811 :=
  refute_zero r2811 (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2811
def r2812 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2812 : ¬ Reader r2812 :=
  refute_zero r2812 (.app (.app (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2812
def r2813 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2813 : ¬ Reader r2813 :=
  refute_zero r2813 (.app (.app (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2813
def r2814 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2814 : ¬ Reader r2814 :=
  refute_zero r2814 (.app (.app (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2814
def r2815 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2815 : ¬ Reader r2815 :=
  refute_zero r2815 (.app (.app (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2815
def r2816 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2816 : ¬ Reader r2816 :=
  refute_zero r2816 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2816
def r2817 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2817 : ¬ Reader r2817 :=
  refute_zero r2817 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2817
def r2818 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2818 : ¬ Reader r2818 :=
  refute_zero r2818 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2818
def r2819 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2819 : ¬ Reader r2819 :=
  refute_zero r2819 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2819
def r2820 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2820 : ¬ Reader r2820 :=
  refute_zero r2820 (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2820
def r2821 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2821 : ¬ Reader r2821 :=
  refute_zero r2821 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2821
def r2822 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2822 : ¬ Reader r2822 :=
  refute_zero r2822 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2822
def r2823 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2823 : ¬ Reader r2823 :=
  refute_zero r2823 (.app (.app (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2823
def r2824 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2824 : ¬ Reader r2824 :=
  refute_zero r2824 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2824
def r2825 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2825 : ¬ Reader r2825 :=
  refute_zero r2825 (.app (.app (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2825
def r2826 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2826 : ¬ Reader r2826 :=
  refute_zero r2826 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2826
def r2827 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2827 : ¬ Reader r2827 :=
  refute_zero r2827 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2827
def r2828 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2828 : ¬ Reader r2828 :=
  refute_zero r2828 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2828
def r2829 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 2)))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2829 : ¬ Reader r2829 :=
  refute_zero r2829 (.app (.app (.app (.app (.var 1) (.lam (.app (.var 2) (.var 2)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2829
def r2830 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2830 : ¬ Reader r2830 :=
  refute_zero r2830 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2830
def r2831 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2831 : ¬ Reader r2831 :=
  refute_zero r2831 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2831
def r2832 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2832 : ¬ Reader r2832 :=
  refute_zero r2832 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2832
def r2833 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2833 : ¬ Reader r2833 :=
  refute_zero r2833 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2833
def r2834 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2834 : ¬ Reader r2834 :=
  refute_zero r2834 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2834
def r2835 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2835 : ¬ Reader r2835 :=
  refute_zero r2835 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2835
def r2836 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2836 : ¬ Reader r2836 :=
  refute_zero r2836 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2836
def r2837 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2837 : ¬ Reader r2837 :=
  refute_zero r2837 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2837
def r2838 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2838 : ¬ Reader r2838 :=
  refute_zero r2838 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2838
def r2839 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2839 : ¬ Reader r2839 :=
  refute_zero r2839 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2839
def r2840 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2840 : ¬ Reader r2840 :=
  refute_zero r2840 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2840
def r2841 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2841 : ¬ Reader r2841 :=
  refute_zero r2841 (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2841
def r2842 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2842 : ¬ Reader r2842 :=
  refute_zero r2842 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2842
def r2843 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2843 : ¬ Reader r2843 :=
  refute_zero r2843 (.app (.app (.app (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 3)) (.var 1)) (.var 1)) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2843
def r2844 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.var 2)))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2844 : ¬ Reader r2844 :=
  refute_zero r2844 (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2844
def r2845 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.var 2))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2845 : ¬ Reader r2845 :=
  refute_zero r2845 (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.lam (.var 1)))) (.var 3)) 5 (by decide) (by decide) (by decide)
#print axioms reject2845
def r2846 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 0)) (.var 1))))
theorem reject2846 : ¬ Reader r2846 :=
  refute_zero r2846 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2846
def r2847 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1)) (.var 0))))
theorem reject2847 : ¬ Reader r2847 :=
  refute_zero r2847 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2847
def r2848 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.var 0)) (.var 1))))
theorem reject2848 : ¬ Reader r2848 :=
  refute_zero r2848 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2848
def r2849 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.var 1)) (.var 0))))
theorem reject2849 : ¬ Reader r2849 :=
  refute_zero r2849 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2849
def r2850 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.var 0)) (.var 1))))
theorem reject2850 : ¬ Reader r2850 :=
  refute_zero r2850 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2850
def r2851 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.var 0))))
theorem reject2851 : ¬ Reader r2851 :=
  refute_zero r2851 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2851
def r2852 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.var 0)) (.var 1))))
theorem reject2852 : ¬ Reader r2852 :=
  refute_zero r2852 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2852
def r2853 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.var 1)) (.var 0))))
theorem reject2853 : ¬ Reader r2853 :=
  refute_zero r2853 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2853
def r2854 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.var 0)) (.var 1))))
theorem reject2854 : ¬ Reader r2854 :=
  refute_zero r2854 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2854
def r2855 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.var 0))))
theorem reject2855 : ¬ Reader r2855 :=
  refute_zero r2855 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2855
def r2856 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2856 : ¬ Reader r2856 :=
  refute_zero r2856 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2856
def r2857 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2857 : ¬ Reader r2857 :=
  refute_zero r2857 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2857
def r2858 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2858 : ¬ Reader r2858 :=
  refute_zero r2858 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2858
def r2859 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2859 : ¬ Reader r2859 :=
  refute_zero r2859 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2859
def r2860 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2860 : ¬ Reader r2860 :=
  refute_zero r2860 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2860
def r2861 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1)) (.lam (.var 0)))))
theorem reject2861 : ¬ Reader r2861 :=
  refute_zero r2861 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2861
def r2862 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))))) (.var 2)) (.lam (.var 0))) (.var 1))))
theorem reject2862 : ¬ Reader r2862 :=
  refute_zero r2862 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2862
def r2863 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.var 1)) (.lam (.var 0)))))
theorem reject2863 : ¬ Reader r2863 :=
  refute_zero r2863 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2863
def r2864 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))))) (.var 2)) (.lam (.var 0))) (.var 1))))
theorem reject2864 : ¬ Reader r2864 :=
  refute_zero r2864 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2864
def r2865 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.lam (.var 0)))))
theorem reject2865 : ¬ Reader r2865 :=
  refute_zero r2865 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2865
def r2866 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))))) (.var 2)) (.lam (.var 0))) (.var 1))))
theorem reject2866 : ¬ Reader r2866 :=
  refute_zero r2866 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2866
def r2867 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.var 1)) (.lam (.var 0)))))
theorem reject2867 : ¬ Reader r2867 :=
  refute_zero r2867 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2867
def r2868 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)))) (.var 2)) (.lam (.var 0))) (.var 1))))
theorem reject2868 : ¬ Reader r2868 :=
  refute_zero r2868 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2868
def r2869 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.lam (.var 0)))))
theorem reject2869 : ¬ Reader r2869 :=
  refute_zero r2869 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2869
def r2870 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)))) (.var 2)) (.lam (.var 0))) (.var 1))))
theorem reject2870 : ¬ Reader r2870 :=
  refute_zero r2870 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2870
def r2871 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2871 : ¬ Reader r2871 :=
  refute_zero r2871 (.app (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2871
def r2872 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2872 : ¬ Reader r2872 :=
  refute_zero r2872 (.app (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2872
def r2873 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2873 : ¬ Reader r2873 :=
  refute_zero r2873 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2873
def r2874 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2874 : ¬ Reader r2874 :=
  refute_zero r2874 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 3)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2874
def r2875 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2875 : ¬ Reader r2875 :=
  refute_zero r2875 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2875
def r2876 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2876 : ¬ Reader r2876 :=
  refute_zero r2876 (.app (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2876
def r2877 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2877 : ¬ Reader r2877 :=
  refute_zero r2877 (.app (.app (.app (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2877
def r2878 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2878 : ¬ Reader r2878 :=
  refute_zero r2878 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2878
def r2879 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2879 : ¬ Reader r2879 :=
  refute_zero r2879 (.app (.app (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2879
def r2880 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2880 : ¬ Reader r2880 :=
  refute_zero r2880 (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2880
def r2881 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2881 : ¬ Reader r2881 :=
  refute_zero r2881 (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2881
def r2882 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2882 : ¬ Reader r2882 :=
  refute_zero r2882 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2882
def r2883 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2883 : ¬ Reader r2883 :=
  refute_zero r2883 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2883
def r2884 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2884 : ¬ Reader r2884 :=
  refute_zero r2884 (.app (.app (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2884
def r2885 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2885 : ¬ Reader r2885 :=
  refute_zero r2885 (.app (.app (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2885
def r2886 : Term := (.lam (.app (.var 0) (.app (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)))) (.var 2)) (.var 1)) (.var 1))))
theorem reject2886 : ¬ Reader r2886 :=
  refute_zero r2886 (.app (.app (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))) (.var 3)) 4 (by decide) (by decide) (by decide)
#print axioms reject2886
end Blc.Firstop.JBare2
