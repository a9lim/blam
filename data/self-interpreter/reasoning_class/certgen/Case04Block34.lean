import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem row1632 : (match states[1632]? with | none => false | some s => goodb P V K states s (hints[1632]?.getD []))=true := by decide +kernel
theorem row1633 : (match states[1633]? with | none => false | some s => goodb P V K states s (hints[1633]?.getD []))=true := by decide +kernel
theorem row1634 : (match states[1634]? with | none => false | some s => goodb P V K states s (hints[1634]?.getD []))=true := by decide +kernel
theorem row1635 : (match states[1635]? with | none => false | some s => goodb P V K states s (hints[1635]?.getD []))=true := by decide +kernel
theorem row1636 : (match states[1636]? with | none => false | some s => goodb P V K states s (hints[1636]?.getD []))=true := by decide +kernel
theorem row1637 : (match states[1637]? with | none => false | some s => goodb P V K states s (hints[1637]?.getD []))=true := by decide +kernel
theorem row1638 : (match states[1638]? with | none => false | some s => goodb P V K states s (hints[1638]?.getD []))=true := by decide +kernel
theorem row1639 : (match states[1639]? with | none => false | some s => goodb P V K states s (hints[1639]?.getD []))=true := by decide +kernel
theorem row1640 : (match states[1640]? with | none => false | some s => goodb P V K states s (hints[1640]?.getD []))=true := by decide +kernel
theorem row1641 : (match states[1641]? with | none => false | some s => goodb P V K states s (hints[1641]?.getD []))=true := by decide +kernel
theorem row1642 : (match states[1642]? with | none => false | some s => goodb P V K states s (hints[1642]?.getD []))=true := by decide +kernel
theorem row1643 : (match states[1643]? with | none => false | some s => goodb P V K states s (hints[1643]?.getD []))=true := by decide +kernel
theorem block1632 : checkRange P V K states hints 1632 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1632
 · exact row1633
 · exact row1634
 · exact row1635
 · exact row1636
 · exact row1637
 · exact row1638
 · exact row1639
 · exact row1640
 · exact row1641
 · exact row1642
 · exact row1643
theorem row1644 : (match states[1644]? with | none => false | some s => goodb P V K states s (hints[1644]?.getD []))=true := by decide +kernel
theorem row1645 : (match states[1645]? with | none => false | some s => goodb P V K states s (hints[1645]?.getD []))=true := by decide +kernel
theorem row1646 : (match states[1646]? with | none => false | some s => goodb P V K states s (hints[1646]?.getD []))=true := by decide +kernel
theorem row1647 : (match states[1647]? with | none => false | some s => goodb P V K states s (hints[1647]?.getD []))=true := by decide +kernel
theorem row1648 : (match states[1648]? with | none => false | some s => goodb P V K states s (hints[1648]?.getD []))=true := by decide +kernel
theorem row1649 : (match states[1649]? with | none => false | some s => goodb P V K states s (hints[1649]?.getD []))=true := by decide +kernel
theorem row1650 : (match states[1650]? with | none => false | some s => goodb P V K states s (hints[1650]?.getD []))=true := by decide +kernel
theorem row1651 : (match states[1651]? with | none => false | some s => goodb P V K states s (hints[1651]?.getD []))=true := by decide +kernel
theorem row1652 : (match states[1652]? with | none => false | some s => goodb P V K states s (hints[1652]?.getD []))=true := by decide +kernel
theorem row1653 : (match states[1653]? with | none => false | some s => goodb P V K states s (hints[1653]?.getD []))=true := by decide +kernel
theorem row1654 : (match states[1654]? with | none => false | some s => goodb P V K states s (hints[1654]?.getD []))=true := by decide +kernel
theorem row1655 : (match states[1655]? with | none => false | some s => goodb P V K states s (hints[1655]?.getD []))=true := by decide +kernel
theorem block1644 : checkRange P V K states hints 1644 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1644
 · exact row1645
 · exact row1646
 · exact row1647
 · exact row1648
 · exact row1649
 · exact row1650
 · exact row1651
 · exact row1652
 · exact row1653
 · exact row1654
 · exact row1655
theorem row1656 : (match states[1656]? with | none => false | some s => goodb P V K states s (hints[1656]?.getD []))=true := by decide +kernel
theorem row1657 : (match states[1657]? with | none => false | some s => goodb P V K states s (hints[1657]?.getD []))=true := by decide +kernel
theorem row1658 : (match states[1658]? with | none => false | some s => goodb P V K states s (hints[1658]?.getD []))=true := by decide +kernel
theorem row1659 : (match states[1659]? with | none => false | some s => goodb P V K states s (hints[1659]?.getD []))=true := by decide +kernel
theorem row1660 : (match states[1660]? with | none => false | some s => goodb P V K states s (hints[1660]?.getD []))=true := by decide +kernel
theorem row1661 : (match states[1661]? with | none => false | some s => goodb P V K states s (hints[1661]?.getD []))=true := by decide +kernel
theorem row1662 : (match states[1662]? with | none => false | some s => goodb P V K states s (hints[1662]?.getD []))=true := by decide +kernel
theorem row1663 : (match states[1663]? with | none => false | some s => goodb P V K states s (hints[1663]?.getD []))=true := by decide +kernel
theorem row1664 : (match states[1664]? with | none => false | some s => goodb P V K states s (hints[1664]?.getD []))=true := by decide +kernel
theorem row1665 : (match states[1665]? with | none => false | some s => goodb P V K states s (hints[1665]?.getD []))=true := by decide +kernel
theorem row1666 : (match states[1666]? with | none => false | some s => goodb P V K states s (hints[1666]?.getD []))=true := by decide +kernel
theorem row1667 : (match states[1667]? with | none => false | some s => goodb P V K states s (hints[1667]?.getD []))=true := by decide +kernel
theorem block1656 : checkRange P V K states hints 1656 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1656
 · exact row1657
 · exact row1658
 · exact row1659
 · exact row1660
 · exact row1661
 · exact row1662
 · exact row1663
 · exact row1664
 · exact row1665
 · exact row1666
 · exact row1667
theorem row1668 : (match states[1668]? with | none => false | some s => goodb P V K states s (hints[1668]?.getD []))=true := by decide +kernel
theorem row1669 : (match states[1669]? with | none => false | some s => goodb P V K states s (hints[1669]?.getD []))=true := by decide +kernel
theorem row1670 : (match states[1670]? with | none => false | some s => goodb P V K states s (hints[1670]?.getD []))=true := by decide +kernel
theorem row1671 : (match states[1671]? with | none => false | some s => goodb P V K states s (hints[1671]?.getD []))=true := by decide +kernel
theorem row1672 : (match states[1672]? with | none => false | some s => goodb P V K states s (hints[1672]?.getD []))=true := by decide +kernel
theorem row1673 : (match states[1673]? with | none => false | some s => goodb P V K states s (hints[1673]?.getD []))=true := by decide +kernel
theorem row1674 : (match states[1674]? with | none => false | some s => goodb P V K states s (hints[1674]?.getD []))=true := by decide +kernel
theorem row1675 : (match states[1675]? with | none => false | some s => goodb P V K states s (hints[1675]?.getD []))=true := by decide +kernel
theorem row1676 : (match states[1676]? with | none => false | some s => goodb P V K states s (hints[1676]?.getD []))=true := by decide +kernel
theorem row1677 : (match states[1677]? with | none => false | some s => goodb P V K states s (hints[1677]?.getD []))=true := by decide +kernel
theorem row1678 : (match states[1678]? with | none => false | some s => goodb P V K states s (hints[1678]?.getD []))=true := by decide +kernel
theorem row1679 : (match states[1679]? with | none => false | some s => goodb P V K states s (hints[1679]?.getD []))=true := by decide +kernel
theorem block1668 : checkRange P V K states hints 1668 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1668
 · exact row1669
 · exact row1670
 · exact row1671
 · exact row1672
 · exact row1673
 · exact row1674
 · exact row1675
 · exact row1676
 · exact row1677
 · exact row1678
 · exact row1679
end Certgen.Case04
