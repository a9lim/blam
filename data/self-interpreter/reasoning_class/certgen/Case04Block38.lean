import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem row1824 : (match states[1824]? with | none => false | some s => goodb P V K states s (hints[1824]?.getD []))=true := by decide +kernel
theorem row1825 : (match states[1825]? with | none => false | some s => goodb P V K states s (hints[1825]?.getD []))=true := by decide +kernel
theorem row1826 : (match states[1826]? with | none => false | some s => goodb P V K states s (hints[1826]?.getD []))=true := by decide +kernel
theorem row1827 : (match states[1827]? with | none => false | some s => goodb P V K states s (hints[1827]?.getD []))=true := by decide +kernel
theorem row1828 : (match states[1828]? with | none => false | some s => goodb P V K states s (hints[1828]?.getD []))=true := by decide +kernel
theorem row1829 : (match states[1829]? with | none => false | some s => goodb P V K states s (hints[1829]?.getD []))=true := by decide +kernel
theorem row1830 : (match states[1830]? with | none => false | some s => goodb P V K states s (hints[1830]?.getD []))=true := by decide +kernel
theorem row1831 : (match states[1831]? with | none => false | some s => goodb P V K states s (hints[1831]?.getD []))=true := by decide +kernel
theorem row1832 : (match states[1832]? with | none => false | some s => goodb P V K states s (hints[1832]?.getD []))=true := by decide +kernel
theorem row1833 : (match states[1833]? with | none => false | some s => goodb P V K states s (hints[1833]?.getD []))=true := by decide +kernel
theorem row1834 : (match states[1834]? with | none => false | some s => goodb P V K states s (hints[1834]?.getD []))=true := by decide +kernel
theorem row1835 : (match states[1835]? with | none => false | some s => goodb P V K states s (hints[1835]?.getD []))=true := by decide +kernel
theorem block1824 : checkRange P V K states hints 1824 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1824
 · exact row1825
 · exact row1826
 · exact row1827
 · exact row1828
 · exact row1829
 · exact row1830
 · exact row1831
 · exact row1832
 · exact row1833
 · exact row1834
 · exact row1835
theorem row1836 : (match states[1836]? with | none => false | some s => goodb P V K states s (hints[1836]?.getD []))=true := by decide +kernel
theorem row1837 : (match states[1837]? with | none => false | some s => goodb P V K states s (hints[1837]?.getD []))=true := by decide +kernel
theorem row1838 : (match states[1838]? with | none => false | some s => goodb P V K states s (hints[1838]?.getD []))=true := by decide +kernel
theorem row1839 : (match states[1839]? with | none => false | some s => goodb P V K states s (hints[1839]?.getD []))=true := by decide +kernel
theorem row1840 : (match states[1840]? with | none => false | some s => goodb P V K states s (hints[1840]?.getD []))=true := by decide +kernel
theorem row1841 : (match states[1841]? with | none => false | some s => goodb P V K states s (hints[1841]?.getD []))=true := by decide +kernel
theorem row1842 : (match states[1842]? with | none => false | some s => goodb P V K states s (hints[1842]?.getD []))=true := by decide +kernel
theorem row1843 : (match states[1843]? with | none => false | some s => goodb P V K states s (hints[1843]?.getD []))=true := by decide +kernel
theorem row1844 : (match states[1844]? with | none => false | some s => goodb P V K states s (hints[1844]?.getD []))=true := by decide +kernel
theorem row1845 : (match states[1845]? with | none => false | some s => goodb P V K states s (hints[1845]?.getD []))=true := by decide +kernel
theorem row1846 : (match states[1846]? with | none => false | some s => goodb P V K states s (hints[1846]?.getD []))=true := by decide +kernel
theorem row1847 : (match states[1847]? with | none => false | some s => goodb P V K states s (hints[1847]?.getD []))=true := by decide +kernel
theorem block1836 : checkRange P V K states hints 1836 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1836
 · exact row1837
 · exact row1838
 · exact row1839
 · exact row1840
 · exact row1841
 · exact row1842
 · exact row1843
 · exact row1844
 · exact row1845
 · exact row1846
 · exact row1847
theorem row1848 : (match states[1848]? with | none => false | some s => goodb P V K states s (hints[1848]?.getD []))=true := by decide +kernel
theorem row1849 : (match states[1849]? with | none => false | some s => goodb P V K states s (hints[1849]?.getD []))=true := by decide +kernel
theorem row1850 : (match states[1850]? with | none => false | some s => goodb P V K states s (hints[1850]?.getD []))=true := by decide +kernel
theorem row1851 : (match states[1851]? with | none => false | some s => goodb P V K states s (hints[1851]?.getD []))=true := by decide +kernel
theorem row1852 : (match states[1852]? with | none => false | some s => goodb P V K states s (hints[1852]?.getD []))=true := by decide +kernel
theorem row1853 : (match states[1853]? with | none => false | some s => goodb P V K states s (hints[1853]?.getD []))=true := by decide +kernel
theorem row1854 : (match states[1854]? with | none => false | some s => goodb P V K states s (hints[1854]?.getD []))=true := by decide +kernel
theorem row1855 : (match states[1855]? with | none => false | some s => goodb P V K states s (hints[1855]?.getD []))=true := by decide +kernel
theorem row1856 : (match states[1856]? with | none => false | some s => goodb P V K states s (hints[1856]?.getD []))=true := by decide +kernel
theorem row1857 : (match states[1857]? with | none => false | some s => goodb P V K states s (hints[1857]?.getD []))=true := by decide +kernel
theorem row1858 : (match states[1858]? with | none => false | some s => goodb P V K states s (hints[1858]?.getD []))=true := by decide +kernel
theorem row1859 : (match states[1859]? with | none => false | some s => goodb P V K states s (hints[1859]?.getD []))=true := by decide +kernel
theorem block1848 : checkRange P V K states hints 1848 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1848
 · exact row1849
 · exact row1850
 · exact row1851
 · exact row1852
 · exact row1853
 · exact row1854
 · exact row1855
 · exact row1856
 · exact row1857
 · exact row1858
 · exact row1859
theorem row1860 : (match states[1860]? with | none => false | some s => goodb P V K states s (hints[1860]?.getD []))=true := by decide +kernel
theorem row1861 : (match states[1861]? with | none => false | some s => goodb P V K states s (hints[1861]?.getD []))=true := by decide +kernel
theorem row1862 : (match states[1862]? with | none => false | some s => goodb P V K states s (hints[1862]?.getD []))=true := by decide +kernel
theorem row1863 : (match states[1863]? with | none => false | some s => goodb P V K states s (hints[1863]?.getD []))=true := by decide +kernel
theorem row1864 : (match states[1864]? with | none => false | some s => goodb P V K states s (hints[1864]?.getD []))=true := by decide +kernel
theorem row1865 : (match states[1865]? with | none => false | some s => goodb P V K states s (hints[1865]?.getD []))=true := by decide +kernel
theorem row1866 : (match states[1866]? with | none => false | some s => goodb P V K states s (hints[1866]?.getD []))=true := by decide +kernel
theorem row1867 : (match states[1867]? with | none => false | some s => goodb P V K states s (hints[1867]?.getD []))=true := by decide +kernel
theorem row1868 : (match states[1868]? with | none => false | some s => goodb P V K states s (hints[1868]?.getD []))=true := by decide +kernel
theorem row1869 : (match states[1869]? with | none => false | some s => goodb P V K states s (hints[1869]?.getD []))=true := by decide +kernel
theorem row1870 : (match states[1870]? with | none => false | some s => goodb P V K states s (hints[1870]?.getD []))=true := by decide +kernel
theorem row1871 : (match states[1871]? with | none => false | some s => goodb P V K states s (hints[1871]?.getD []))=true := by decide +kernel
theorem block1860 : checkRange P V K states hints 1860 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1860
 · exact row1861
 · exact row1862
 · exact row1863
 · exact row1864
 · exact row1865
 · exact row1866
 · exact row1867
 · exact row1868
 · exact row1869
 · exact row1870
 · exact row1871
end Certgen.Case04
