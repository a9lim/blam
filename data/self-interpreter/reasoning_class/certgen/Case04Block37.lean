import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem row1776 : (match states[1776]? with | none => false | some s => goodb P V K states s (hints[1776]?.getD []))=true := by decide +kernel
theorem row1777 : (match states[1777]? with | none => false | some s => goodb P V K states s (hints[1777]?.getD []))=true := by decide +kernel
theorem row1778 : (match states[1778]? with | none => false | some s => goodb P V K states s (hints[1778]?.getD []))=true := by decide +kernel
theorem row1779 : (match states[1779]? with | none => false | some s => goodb P V K states s (hints[1779]?.getD []))=true := by decide +kernel
theorem row1780 : (match states[1780]? with | none => false | some s => goodb P V K states s (hints[1780]?.getD []))=true := by decide +kernel
theorem row1781 : (match states[1781]? with | none => false | some s => goodb P V K states s (hints[1781]?.getD []))=true := by decide +kernel
theorem row1782 : (match states[1782]? with | none => false | some s => goodb P V K states s (hints[1782]?.getD []))=true := by decide +kernel
theorem row1783 : (match states[1783]? with | none => false | some s => goodb P V K states s (hints[1783]?.getD []))=true := by decide +kernel
theorem row1784 : (match states[1784]? with | none => false | some s => goodb P V K states s (hints[1784]?.getD []))=true := by decide +kernel
theorem row1785 : (match states[1785]? with | none => false | some s => goodb P V K states s (hints[1785]?.getD []))=true := by decide +kernel
theorem row1786 : (match states[1786]? with | none => false | some s => goodb P V K states s (hints[1786]?.getD []))=true := by decide +kernel
theorem row1787 : (match states[1787]? with | none => false | some s => goodb P V K states s (hints[1787]?.getD []))=true := by decide +kernel
theorem block1776 : checkRange P V K states hints 1776 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1776
 · exact row1777
 · exact row1778
 · exact row1779
 · exact row1780
 · exact row1781
 · exact row1782
 · exact row1783
 · exact row1784
 · exact row1785
 · exact row1786
 · exact row1787
theorem row1788 : (match states[1788]? with | none => false | some s => goodb P V K states s (hints[1788]?.getD []))=true := by decide +kernel
theorem row1789 : (match states[1789]? with | none => false | some s => goodb P V K states s (hints[1789]?.getD []))=true := by decide +kernel
theorem row1790 : (match states[1790]? with | none => false | some s => goodb P V K states s (hints[1790]?.getD []))=true := by decide +kernel
theorem row1791 : (match states[1791]? with | none => false | some s => goodb P V K states s (hints[1791]?.getD []))=true := by decide +kernel
theorem row1792 : (match states[1792]? with | none => false | some s => goodb P V K states s (hints[1792]?.getD []))=true := by decide +kernel
theorem row1793 : (match states[1793]? with | none => false | some s => goodb P V K states s (hints[1793]?.getD []))=true := by decide +kernel
theorem row1794 : (match states[1794]? with | none => false | some s => goodb P V K states s (hints[1794]?.getD []))=true := by decide +kernel
theorem row1795 : (match states[1795]? with | none => false | some s => goodb P V K states s (hints[1795]?.getD []))=true := by decide +kernel
theorem row1796 : (match states[1796]? with | none => false | some s => goodb P V K states s (hints[1796]?.getD []))=true := by decide +kernel
theorem row1797 : (match states[1797]? with | none => false | some s => goodb P V K states s (hints[1797]?.getD []))=true := by decide +kernel
theorem row1798 : (match states[1798]? with | none => false | some s => goodb P V K states s (hints[1798]?.getD []))=true := by decide +kernel
theorem row1799 : (match states[1799]? with | none => false | some s => goodb P V K states s (hints[1799]?.getD []))=true := by decide +kernel
theorem block1788 : checkRange P V K states hints 1788 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1788
 · exact row1789
 · exact row1790
 · exact row1791
 · exact row1792
 · exact row1793
 · exact row1794
 · exact row1795
 · exact row1796
 · exact row1797
 · exact row1798
 · exact row1799
theorem row1800 : (match states[1800]? with | none => false | some s => goodb P V K states s (hints[1800]?.getD []))=true := by decide +kernel
theorem row1801 : (match states[1801]? with | none => false | some s => goodb P V K states s (hints[1801]?.getD []))=true := by decide +kernel
theorem row1802 : (match states[1802]? with | none => false | some s => goodb P V K states s (hints[1802]?.getD []))=true := by decide +kernel
theorem row1803 : (match states[1803]? with | none => false | some s => goodb P V K states s (hints[1803]?.getD []))=true := by decide +kernel
theorem row1804 : (match states[1804]? with | none => false | some s => goodb P V K states s (hints[1804]?.getD []))=true := by decide +kernel
theorem row1805 : (match states[1805]? with | none => false | some s => goodb P V K states s (hints[1805]?.getD []))=true := by decide +kernel
theorem row1806 : (match states[1806]? with | none => false | some s => goodb P V K states s (hints[1806]?.getD []))=true := by decide +kernel
theorem row1807 : (match states[1807]? with | none => false | some s => goodb P V K states s (hints[1807]?.getD []))=true := by decide +kernel
theorem row1808 : (match states[1808]? with | none => false | some s => goodb P V K states s (hints[1808]?.getD []))=true := by decide +kernel
theorem row1809 : (match states[1809]? with | none => false | some s => goodb P V K states s (hints[1809]?.getD []))=true := by decide +kernel
theorem row1810 : (match states[1810]? with | none => false | some s => goodb P V K states s (hints[1810]?.getD []))=true := by decide +kernel
theorem row1811 : (match states[1811]? with | none => false | some s => goodb P V K states s (hints[1811]?.getD []))=true := by decide +kernel
theorem block1800 : checkRange P V K states hints 1800 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1800
 · exact row1801
 · exact row1802
 · exact row1803
 · exact row1804
 · exact row1805
 · exact row1806
 · exact row1807
 · exact row1808
 · exact row1809
 · exact row1810
 · exact row1811
theorem row1812 : (match states[1812]? with | none => false | some s => goodb P V K states s (hints[1812]?.getD []))=true := by decide +kernel
theorem row1813 : (match states[1813]? with | none => false | some s => goodb P V K states s (hints[1813]?.getD []))=true := by decide +kernel
theorem row1814 : (match states[1814]? with | none => false | some s => goodb P V K states s (hints[1814]?.getD []))=true := by decide +kernel
theorem row1815 : (match states[1815]? with | none => false | some s => goodb P V K states s (hints[1815]?.getD []))=true := by decide +kernel
theorem row1816 : (match states[1816]? with | none => false | some s => goodb P V K states s (hints[1816]?.getD []))=true := by decide +kernel
theorem row1817 : (match states[1817]? with | none => false | some s => goodb P V K states s (hints[1817]?.getD []))=true := by decide +kernel
theorem row1818 : (match states[1818]? with | none => false | some s => goodb P V K states s (hints[1818]?.getD []))=true := by decide +kernel
theorem row1819 : (match states[1819]? with | none => false | some s => goodb P V K states s (hints[1819]?.getD []))=true := by decide +kernel
theorem row1820 : (match states[1820]? with | none => false | some s => goodb P V K states s (hints[1820]?.getD []))=true := by decide +kernel
theorem row1821 : (match states[1821]? with | none => false | some s => goodb P V K states s (hints[1821]?.getD []))=true := by decide +kernel
theorem row1822 : (match states[1822]? with | none => false | some s => goodb P V K states s (hints[1822]?.getD []))=true := by decide +kernel
theorem row1823 : (match states[1823]? with | none => false | some s => goodb P V K states s (hints[1823]?.getD []))=true := by decide +kernel
theorem block1812 : checkRange P V K states hints 1812 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1812
 · exact row1813
 · exact row1814
 · exact row1815
 · exact row1816
 · exact row1817
 · exact row1818
 · exact row1819
 · exact row1820
 · exact row1821
 · exact row1822
 · exact row1823
end Certgen.Case04
