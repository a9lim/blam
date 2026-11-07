import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem row1680 : (match states[1680]? with | none => false | some s => goodb P V K states s (hints[1680]?.getD []))=true := by decide +kernel
theorem row1681 : (match states[1681]? with | none => false | some s => goodb P V K states s (hints[1681]?.getD []))=true := by decide +kernel
theorem row1682 : (match states[1682]? with | none => false | some s => goodb P V K states s (hints[1682]?.getD []))=true := by decide +kernel
theorem row1683 : (match states[1683]? with | none => false | some s => goodb P V K states s (hints[1683]?.getD []))=true := by decide +kernel
theorem row1684 : (match states[1684]? with | none => false | some s => goodb P V K states s (hints[1684]?.getD []))=true := by decide +kernel
theorem row1685 : (match states[1685]? with | none => false | some s => goodb P V K states s (hints[1685]?.getD []))=true := by decide +kernel
theorem row1686 : (match states[1686]? with | none => false | some s => goodb P V K states s (hints[1686]?.getD []))=true := by decide +kernel
theorem row1687 : (match states[1687]? with | none => false | some s => goodb P V K states s (hints[1687]?.getD []))=true := by decide +kernel
theorem row1688 : (match states[1688]? with | none => false | some s => goodb P V K states s (hints[1688]?.getD []))=true := by decide +kernel
theorem row1689 : (match states[1689]? with | none => false | some s => goodb P V K states s (hints[1689]?.getD []))=true := by decide +kernel
theorem row1690 : (match states[1690]? with | none => false | some s => goodb P V K states s (hints[1690]?.getD []))=true := by decide +kernel
theorem row1691 : (match states[1691]? with | none => false | some s => goodb P V K states s (hints[1691]?.getD []))=true := by decide +kernel
theorem block1680 : checkRange P V K states hints 1680 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1680
 · exact row1681
 · exact row1682
 · exact row1683
 · exact row1684
 · exact row1685
 · exact row1686
 · exact row1687
 · exact row1688
 · exact row1689
 · exact row1690
 · exact row1691
theorem row1692 : (match states[1692]? with | none => false | some s => goodb P V K states s (hints[1692]?.getD []))=true := by decide +kernel
theorem row1693 : (match states[1693]? with | none => false | some s => goodb P V K states s (hints[1693]?.getD []))=true := by decide +kernel
theorem row1694 : (match states[1694]? with | none => false | some s => goodb P V K states s (hints[1694]?.getD []))=true := by decide +kernel
theorem row1695 : (match states[1695]? with | none => false | some s => goodb P V K states s (hints[1695]?.getD []))=true := by decide +kernel
theorem row1696 : (match states[1696]? with | none => false | some s => goodb P V K states s (hints[1696]?.getD []))=true := by decide +kernel
theorem row1697 : (match states[1697]? with | none => false | some s => goodb P V K states s (hints[1697]?.getD []))=true := by decide +kernel
theorem row1698 : (match states[1698]? with | none => false | some s => goodb P V K states s (hints[1698]?.getD []))=true := by decide +kernel
theorem row1699 : (match states[1699]? with | none => false | some s => goodb P V K states s (hints[1699]?.getD []))=true := by decide +kernel
theorem row1700 : (match states[1700]? with | none => false | some s => goodb P V K states s (hints[1700]?.getD []))=true := by decide +kernel
theorem row1701 : (match states[1701]? with | none => false | some s => goodb P V K states s (hints[1701]?.getD []))=true := by decide +kernel
theorem row1702 : (match states[1702]? with | none => false | some s => goodb P V K states s (hints[1702]?.getD []))=true := by decide +kernel
theorem row1703 : (match states[1703]? with | none => false | some s => goodb P V K states s (hints[1703]?.getD []))=true := by decide +kernel
theorem block1692 : checkRange P V K states hints 1692 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1692
 · exact row1693
 · exact row1694
 · exact row1695
 · exact row1696
 · exact row1697
 · exact row1698
 · exact row1699
 · exact row1700
 · exact row1701
 · exact row1702
 · exact row1703
theorem row1704 : (match states[1704]? with | none => false | some s => goodb P V K states s (hints[1704]?.getD []))=true := by decide +kernel
theorem row1705 : (match states[1705]? with | none => false | some s => goodb P V K states s (hints[1705]?.getD []))=true := by decide +kernel
theorem row1706 : (match states[1706]? with | none => false | some s => goodb P V K states s (hints[1706]?.getD []))=true := by decide +kernel
theorem row1707 : (match states[1707]? with | none => false | some s => goodb P V K states s (hints[1707]?.getD []))=true := by decide +kernel
theorem row1708 : (match states[1708]? with | none => false | some s => goodb P V K states s (hints[1708]?.getD []))=true := by decide +kernel
theorem row1709 : (match states[1709]? with | none => false | some s => goodb P V K states s (hints[1709]?.getD []))=true := by decide +kernel
theorem row1710 : (match states[1710]? with | none => false | some s => goodb P V K states s (hints[1710]?.getD []))=true := by decide +kernel
theorem row1711 : (match states[1711]? with | none => false | some s => goodb P V K states s (hints[1711]?.getD []))=true := by decide +kernel
theorem row1712 : (match states[1712]? with | none => false | some s => goodb P V K states s (hints[1712]?.getD []))=true := by decide +kernel
theorem row1713 : (match states[1713]? with | none => false | some s => goodb P V K states s (hints[1713]?.getD []))=true := by decide +kernel
theorem row1714 : (match states[1714]? with | none => false | some s => goodb P V K states s (hints[1714]?.getD []))=true := by decide +kernel
theorem row1715 : (match states[1715]? with | none => false | some s => goodb P V K states s (hints[1715]?.getD []))=true := by decide +kernel
theorem block1704 : checkRange P V K states hints 1704 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1704
 · exact row1705
 · exact row1706
 · exact row1707
 · exact row1708
 · exact row1709
 · exact row1710
 · exact row1711
 · exact row1712
 · exact row1713
 · exact row1714
 · exact row1715
theorem row1716 : (match states[1716]? with | none => false | some s => goodb P V K states s (hints[1716]?.getD []))=true := by decide +kernel
theorem row1717 : (match states[1717]? with | none => false | some s => goodb P V K states s (hints[1717]?.getD []))=true := by decide +kernel
theorem row1718 : (match states[1718]? with | none => false | some s => goodb P V K states s (hints[1718]?.getD []))=true := by decide +kernel
theorem row1719 : (match states[1719]? with | none => false | some s => goodb P V K states s (hints[1719]?.getD []))=true := by decide +kernel
theorem row1720 : (match states[1720]? with | none => false | some s => goodb P V K states s (hints[1720]?.getD []))=true := by decide +kernel
theorem row1721 : (match states[1721]? with | none => false | some s => goodb P V K states s (hints[1721]?.getD []))=true := by decide +kernel
theorem row1722 : (match states[1722]? with | none => false | some s => goodb P V K states s (hints[1722]?.getD []))=true := by decide +kernel
theorem row1723 : (match states[1723]? with | none => false | some s => goodb P V K states s (hints[1723]?.getD []))=true := by decide +kernel
theorem row1724 : (match states[1724]? with | none => false | some s => goodb P V K states s (hints[1724]?.getD []))=true := by decide +kernel
theorem row1725 : (match states[1725]? with | none => false | some s => goodb P V K states s (hints[1725]?.getD []))=true := by decide +kernel
theorem row1726 : (match states[1726]? with | none => false | some s => goodb P V K states s (hints[1726]?.getD []))=true := by decide +kernel
theorem row1727 : (match states[1727]? with | none => false | some s => goodb P V K states s (hints[1727]?.getD []))=true := by decide +kernel
theorem block1716 : checkRange P V K states hints 1716 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1716
 · exact row1717
 · exact row1718
 · exact row1719
 · exact row1720
 · exact row1721
 · exact row1722
 · exact row1723
 · exact row1724
 · exact row1725
 · exact row1726
 · exact row1727
end Certgen.Case04
