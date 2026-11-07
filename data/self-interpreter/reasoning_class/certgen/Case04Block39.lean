import Case04Data
namespace Certgen.Case04
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
theorem row1872 : (match states[1872]? with | none => false | some s => goodb P V K states s (hints[1872]?.getD []))=true := by decide +kernel
theorem row1873 : (match states[1873]? with | none => false | some s => goodb P V K states s (hints[1873]?.getD []))=true := by decide +kernel
theorem row1874 : (match states[1874]? with | none => false | some s => goodb P V K states s (hints[1874]?.getD []))=true := by decide +kernel
theorem row1875 : (match states[1875]? with | none => false | some s => goodb P V K states s (hints[1875]?.getD []))=true := by decide +kernel
theorem row1876 : (match states[1876]? with | none => false | some s => goodb P V K states s (hints[1876]?.getD []))=true := by decide +kernel
theorem row1877 : (match states[1877]? with | none => false | some s => goodb P V K states s (hints[1877]?.getD []))=true := by decide +kernel
theorem row1878 : (match states[1878]? with | none => false | some s => goodb P V K states s (hints[1878]?.getD []))=true := by decide +kernel
theorem row1879 : (match states[1879]? with | none => false | some s => goodb P V K states s (hints[1879]?.getD []))=true := by decide +kernel
theorem row1880 : (match states[1880]? with | none => false | some s => goodb P V K states s (hints[1880]?.getD []))=true := by decide +kernel
theorem row1881 : (match states[1881]? with | none => false | some s => goodb P V K states s (hints[1881]?.getD []))=true := by decide +kernel
theorem row1882 : (match states[1882]? with | none => false | some s => goodb P V K states s (hints[1882]?.getD []))=true := by decide +kernel
theorem row1883 : (match states[1883]? with | none => false | some s => goodb P V K states s (hints[1883]?.getD []))=true := by decide +kernel
theorem block1872 : checkRange P V K states hints 1872 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1872
 · exact row1873
 · exact row1874
 · exact row1875
 · exact row1876
 · exact row1877
 · exact row1878
 · exact row1879
 · exact row1880
 · exact row1881
 · exact row1882
 · exact row1883
theorem row1884 : (match states[1884]? with | none => false | some s => goodb P V K states s (hints[1884]?.getD []))=true := by decide +kernel
theorem row1885 : (match states[1885]? with | none => false | some s => goodb P V K states s (hints[1885]?.getD []))=true := by decide +kernel
theorem row1886 : (match states[1886]? with | none => false | some s => goodb P V K states s (hints[1886]?.getD []))=true := by decide +kernel
theorem row1887 : (match states[1887]? with | none => false | some s => goodb P V K states s (hints[1887]?.getD []))=true := by decide +kernel
theorem row1888 : (match states[1888]? with | none => false | some s => goodb P V K states s (hints[1888]?.getD []))=true := by decide +kernel
theorem row1889 : (match states[1889]? with | none => false | some s => goodb P V K states s (hints[1889]?.getD []))=true := by decide +kernel
theorem row1890 : (match states[1890]? with | none => false | some s => goodb P V K states s (hints[1890]?.getD []))=true := by decide +kernel
theorem row1891 : (match states[1891]? with | none => false | some s => goodb P V K states s (hints[1891]?.getD []))=true := by decide +kernel
theorem row1892 : (match states[1892]? with | none => false | some s => goodb P V K states s (hints[1892]?.getD []))=true := by decide +kernel
theorem row1893 : (match states[1893]? with | none => false | some s => goodb P V K states s (hints[1893]?.getD []))=true := by decide +kernel
theorem row1894 : (match states[1894]? with | none => false | some s => goodb P V K states s (hints[1894]?.getD []))=true := by decide +kernel
theorem row1895 : (match states[1895]? with | none => false | some s => goodb P V K states s (hints[1895]?.getD []))=true := by decide +kernel
theorem block1884 : checkRange P V K states hints 1884 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1884
 · exact row1885
 · exact row1886
 · exact row1887
 · exact row1888
 · exact row1889
 · exact row1890
 · exact row1891
 · exact row1892
 · exact row1893
 · exact row1894
 · exact row1895
theorem row1896 : (match states[1896]? with | none => false | some s => goodb P V K states s (hints[1896]?.getD []))=true := by decide +kernel
theorem row1897 : (match states[1897]? with | none => false | some s => goodb P V K states s (hints[1897]?.getD []))=true := by decide +kernel
theorem row1898 : (match states[1898]? with | none => false | some s => goodb P V K states s (hints[1898]?.getD []))=true := by decide +kernel
theorem row1899 : (match states[1899]? with | none => false | some s => goodb P V K states s (hints[1899]?.getD []))=true := by decide +kernel
theorem row1900 : (match states[1900]? with | none => false | some s => goodb P V K states s (hints[1900]?.getD []))=true := by decide +kernel
theorem row1901 : (match states[1901]? with | none => false | some s => goodb P V K states s (hints[1901]?.getD []))=true := by decide +kernel
theorem row1902 : (match states[1902]? with | none => false | some s => goodb P V K states s (hints[1902]?.getD []))=true := by decide +kernel
theorem row1903 : (match states[1903]? with | none => false | some s => goodb P V K states s (hints[1903]?.getD []))=true := by decide +kernel
theorem row1904 : (match states[1904]? with | none => false | some s => goodb P V K states s (hints[1904]?.getD []))=true := by decide +kernel
theorem row1905 : (match states[1905]? with | none => false | some s => goodb P V K states s (hints[1905]?.getD []))=true := by decide +kernel
theorem row1906 : (match states[1906]? with | none => false | some s => goodb P V K states s (hints[1906]?.getD []))=true := by decide +kernel
theorem row1907 : (match states[1907]? with | none => false | some s => goodb P V K states s (hints[1907]?.getD []))=true := by decide +kernel
theorem block1896 : checkRange P V K states hints 1896 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1896
 · exact row1897
 · exact row1898
 · exact row1899
 · exact row1900
 · exact row1901
 · exact row1902
 · exact row1903
 · exact row1904
 · exact row1905
 · exact row1906
 · exact row1907
theorem row1908 : (match states[1908]? with | none => false | some s => goodb P V K states s (hints[1908]?.getD []))=true := by decide +kernel
theorem row1909 : (match states[1909]? with | none => false | some s => goodb P V K states s (hints[1909]?.getD []))=true := by decide +kernel
theorem row1910 : (match states[1910]? with | none => false | some s => goodb P V K states s (hints[1910]?.getD []))=true := by decide +kernel
theorem row1911 : (match states[1911]? with | none => false | some s => goodb P V K states s (hints[1911]?.getD []))=true := by decide +kernel
theorem row1912 : (match states[1912]? with | none => false | some s => goodb P V K states s (hints[1912]?.getD []))=true := by decide +kernel
theorem row1913 : (match states[1913]? with | none => false | some s => goodb P V K states s (hints[1913]?.getD []))=true := by decide +kernel
theorem row1914 : (match states[1914]? with | none => false | some s => goodb P V K states s (hints[1914]?.getD []))=true := by decide +kernel
theorem row1915 : (match states[1915]? with | none => false | some s => goodb P V K states s (hints[1915]?.getD []))=true := by decide +kernel
theorem row1916 : (match states[1916]? with | none => false | some s => goodb P V K states s (hints[1916]?.getD []))=true := by decide +kernel
theorem row1917 : (match states[1917]? with | none => false | some s => goodb P V K states s (hints[1917]?.getD []))=true := by decide +kernel
theorem row1918 : (match states[1918]? with | none => false | some s => goodb P V K states s (hints[1918]?.getD []))=true := by decide +kernel
theorem row1919 : (match states[1919]? with | none => false | some s => goodb P V K states s (hints[1919]?.getD []))=true := by decide +kernel
theorem block1908 : checkRange P V K states hints 1908 12=true := by
 apply List.all_eq_true.mpr
 intro j hj
 have hlt : j<12 := List.mem_range.mp hj
 have hcases : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 ∨ j=5 ∨ j=6 ∨ j=7 ∨ j=8 ∨ j=9 ∨ j=10 ∨ j=11 := by omega
 rcases hcases with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
 · exact row1908
 · exact row1909
 · exact row1910
 · exact row1911
 · exact row1912
 · exact row1913
 · exact row1914
 · exact row1915
 · exact row1916
 · exact row1917
 · exact row1918
 · exact row1919
end Certgen.Case04
