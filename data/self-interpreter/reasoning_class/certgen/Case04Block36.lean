import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem row1728 : (match states[1728]? with | none => false | some s => goodb P V K states s (hints[1728]?.getD []))=true := by decide +kernel
theorem row1729 : (match states[1729]? with | none => false | some s => goodb P V K states s (hints[1729]?.getD []))=true := by decide +kernel
theorem row1730 : (match states[1730]? with | none => false | some s => goodb P V K states s (hints[1730]?.getD []))=true := by decide +kernel
theorem row1731 : (match states[1731]? with | none => false | some s => goodb P V K states s (hints[1731]?.getD []))=true := by decide +kernel
theorem row1732 : (match states[1732]? with | none => false | some s => goodb P V K states s (hints[1732]?.getD []))=true := by decide +kernel
theorem row1733 : (match states[1733]? with | none => false | some s => goodb P V K states s (hints[1733]?.getD []))=true := by decide +kernel
theorem row1734 : (match states[1734]? with | none => false | some s => goodb P V K states s (hints[1734]?.getD []))=true := by decide +kernel
theorem row1735 : (match states[1735]? with | none => false | some s => goodb P V K states s (hints[1735]?.getD []))=true := by decide +kernel
theorem row1736 : (match states[1736]? with | none => false | some s => goodb P V K states s (hints[1736]?.getD []))=true := by decide +kernel
theorem row1737 : (match states[1737]? with | none => false | some s => goodb P V K states s (hints[1737]?.getD []))=true := by decide +kernel
theorem row1738 : (match states[1738]? with | none => false | some s => goodb P V K states s (hints[1738]?.getD []))=true := by decide +kernel
theorem row1739 : (match states[1739]? with | none => false | some s => goodb P V K states s (hints[1739]?.getD []))=true := by decide +kernel
theorem block1728 : checkRange P V K states hints 1728 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1728
 · exact row1729
 · exact row1730
 · exact row1731
 · exact row1732
 · exact row1733
 · exact row1734
 · exact row1735
 · exact row1736
 · exact row1737
 · exact row1738
 · exact row1739
theorem row1740 : (match states[1740]? with | none => false | some s => goodb P V K states s (hints[1740]?.getD []))=true := by decide +kernel
theorem row1741 : (match states[1741]? with | none => false | some s => goodb P V K states s (hints[1741]?.getD []))=true := by decide +kernel
theorem row1742 : (match states[1742]? with | none => false | some s => goodb P V K states s (hints[1742]?.getD []))=true := by decide +kernel
theorem row1743 : (match states[1743]? with | none => false | some s => goodb P V K states s (hints[1743]?.getD []))=true := by decide +kernel
theorem row1744 : (match states[1744]? with | none => false | some s => goodb P V K states s (hints[1744]?.getD []))=true := by decide +kernel
theorem row1745 : (match states[1745]? with | none => false | some s => goodb P V K states s (hints[1745]?.getD []))=true := by decide +kernel
theorem row1746 : (match states[1746]? with | none => false | some s => goodb P V K states s (hints[1746]?.getD []))=true := by decide +kernel
theorem row1747 : (match states[1747]? with | none => false | some s => goodb P V K states s (hints[1747]?.getD []))=true := by decide +kernel
theorem row1748 : (match states[1748]? with | none => false | some s => goodb P V K states s (hints[1748]?.getD []))=true := by decide +kernel
theorem row1749 : (match states[1749]? with | none => false | some s => goodb P V K states s (hints[1749]?.getD []))=true := by decide +kernel
theorem row1750 : (match states[1750]? with | none => false | some s => goodb P V K states s (hints[1750]?.getD []))=true := by decide +kernel
theorem row1751 : (match states[1751]? with | none => false | some s => goodb P V K states s (hints[1751]?.getD []))=true := by decide +kernel
theorem block1740 : checkRange P V K states hints 1740 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1740
 · exact row1741
 · exact row1742
 · exact row1743
 · exact row1744
 · exact row1745
 · exact row1746
 · exact row1747
 · exact row1748
 · exact row1749
 · exact row1750
 · exact row1751
theorem row1752 : (match states[1752]? with | none => false | some s => goodb P V K states s (hints[1752]?.getD []))=true := by decide +kernel
theorem row1753 : (match states[1753]? with | none => false | some s => goodb P V K states s (hints[1753]?.getD []))=true := by decide +kernel
theorem row1754 : (match states[1754]? with | none => false | some s => goodb P V K states s (hints[1754]?.getD []))=true := by decide +kernel
theorem row1755 : (match states[1755]? with | none => false | some s => goodb P V K states s (hints[1755]?.getD []))=true := by decide +kernel
theorem row1756 : (match states[1756]? with | none => false | some s => goodb P V K states s (hints[1756]?.getD []))=true := by decide +kernel
theorem row1757 : (match states[1757]? with | none => false | some s => goodb P V K states s (hints[1757]?.getD []))=true := by decide +kernel
theorem row1758 : (match states[1758]? with | none => false | some s => goodb P V K states s (hints[1758]?.getD []))=true := by decide +kernel
theorem row1759 : (match states[1759]? with | none => false | some s => goodb P V K states s (hints[1759]?.getD []))=true := by decide +kernel
theorem row1760 : (match states[1760]? with | none => false | some s => goodb P V K states s (hints[1760]?.getD []))=true := by decide +kernel
theorem row1761 : (match states[1761]? with | none => false | some s => goodb P V K states s (hints[1761]?.getD []))=true := by decide +kernel
theorem row1762 : (match states[1762]? with | none => false | some s => goodb P V K states s (hints[1762]?.getD []))=true := by decide +kernel
theorem row1763 : (match states[1763]? with | none => false | some s => goodb P V K states s (hints[1763]?.getD []))=true := by decide +kernel
theorem block1752 : checkRange P V K states hints 1752 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1752
 · exact row1753
 · exact row1754
 · exact row1755
 · exact row1756
 · exact row1757
 · exact row1758
 · exact row1759
 · exact row1760
 · exact row1761
 · exact row1762
 · exact row1763
theorem row1764 : (match states[1764]? with | none => false | some s => goodb P V K states s (hints[1764]?.getD []))=true := by decide +kernel
theorem row1765 : (match states[1765]? with | none => false | some s => goodb P V K states s (hints[1765]?.getD []))=true := by decide +kernel
theorem row1766 : (match states[1766]? with | none => false | some s => goodb P V K states s (hints[1766]?.getD []))=true := by decide +kernel
theorem row1767 : (match states[1767]? with | none => false | some s => goodb P V K states s (hints[1767]?.getD []))=true := by decide +kernel
theorem row1768 : (match states[1768]? with | none => false | some s => goodb P V K states s (hints[1768]?.getD []))=true := by decide +kernel
theorem row1769 : (match states[1769]? with | none => false | some s => goodb P V K states s (hints[1769]?.getD []))=true := by decide +kernel
theorem row1770 : (match states[1770]? with | none => false | some s => goodb P V K states s (hints[1770]?.getD []))=true := by decide +kernel
theorem row1771 : (match states[1771]? with | none => false | some s => goodb P V K states s (hints[1771]?.getD []))=true := by decide +kernel
theorem row1772 : (match states[1772]? with | none => false | some s => goodb P V K states s (hints[1772]?.getD []))=true := by decide +kernel
theorem row1773 : (match states[1773]? with | none => false | some s => goodb P V K states s (hints[1773]?.getD []))=true := by decide +kernel
theorem row1774 : (match states[1774]? with | none => false | some s => goodb P V K states s (hints[1774]?.getD []))=true := by decide +kernel
theorem row1775 : (match states[1775]? with | none => false | some s => goodb P V K states s (hints[1775]?.getD []))=true := by decide +kernel
theorem block1764 : checkRange P V K states hints 1764 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1764
 · exact row1765
 · exact row1766
 · exact row1767
 · exact row1768
 · exact row1769
 · exact row1770
 · exact row1771
 · exact row1772
 · exact row1773
 · exact row1774
 · exact row1775
end Certgen.Case04
