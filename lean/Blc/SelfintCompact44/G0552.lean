import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11830 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [3,2,1,0,0]
certRow g11830s0 on (rg11830 0) using bank tags [3,3]
certRow g11830s1 on (rg11830 1) using bank tags [3,3,3,3,3,3]
certRow g11830s2 on (rg11830 2) using bank tags [3,3,3,3,3,3,28,28,28,1,1]
certRow g11830s3 on (rg11830 3) using bank tags [3,28,28,1,1,1,1,1,1,1,28]
certRow g11830s4 on (rg11830 4) using bank tags [3,3,3,3]
certRow g11830s5 on (rg11830 5) using bank tags []
certRow g11830s6 on (rg11830 6) using bank tags [1,1,1,1,1,9]
certRow g11830s7 on (rg11830 7) using bank tags [3,3,3,3,3]
theorem g11830 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,2,1,0,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [3,2,1,0,0] (.cons (g11830s0) (.cons (g11830s1) (.cons (g11830s2) (.cons (g11830s3) (.cons (g11830s4) (.cons (g11830s5) (.cons (g11830s6) (.cons (g11830s7) .nil))))))))
certRow g11831 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,2,1,0,0]) using bank tags []
certRow g11832 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,3,0,0,0]) using bank tags []
certRow g11833 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,3,0,0,0]) using bank tags []
certRow g11834 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [4,0,0,0,2]) using bank tags []
certRow g11835 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [4,0,0,0,2]) using bank tags []
certRow g11836 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [4,0,0,1,1]) using bank tags []
certRow g11837 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [4,0,0,1,1]) using bank tags []
certRow g11838 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [4,0,0,2,0]) using bank tags []
certRow g11839 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [4,0,0,2,0]) using bank tags []
certRow g11840 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [4,0,1,0,1]) using bank tags []
certRow g11841 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [4,0,1,0,1]) using bank tags []
certRow g11842 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [4,0,1,1,0]) using bank tags []
certRow g11843 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [4,0,1,1,0]) using bank tags []
certRow g11844 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [4,0,2,0,0]) using bank tags []
certRow g11845 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [4,0,2,0,0]) using bank tags []
certRow g11846 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [4,1,0,0,1]) using bank tags []
certRow g11847 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [4,1,0,0,1]) using bank tags []
certRow g11848 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [4,1,0,1,0]) using bank tags []
certRow g11849 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [4,1,0,1,0]) using bank tags []
certRow g11850 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [4,1,1,0,0]) using bank tags []
certRow g11851 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [4,1,1,0,0]) using bank tags []
certRow g11852 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [4,2,0,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
