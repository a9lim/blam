import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11806 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [3,0,1,2,0]
certRow g11806s0 on (rg11806 0) using bank tags [3,3,28]
certRow g11806s1 on (rg11806 1) using bank tags [3,3,3,3,3,3,3]
certRow g11806s2 on (rg11806 2) using bank tags [3,3,28,28,3,3,3,3,3,28,28,28]
certRow g11806s3 on (rg11806 3) using bank tags [3,3,28,28,1,1,11,11,11,28,28,28,28]
certRow g11806s4 on (rg11806 4) using bank tags [3,3,3,3,3]
certRow g11806s5 on (rg11806 5) using bank tags [28,28,28]
certRow g11806s6 on (rg11806 6) using bank tags [1,1,11,11,11,28,28]
certRow g11806s7 on (rg11806 7) using bank tags [3,3,3,3,3,28,28]
theorem g11806 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,0,1,2,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [3,0,1,2,0] (.cons (g11806s0) (.cons (g11806s1) (.cons (g11806s2) (.cons (g11806s3) (.cons (g11806s4) (.cons (g11806s5) (.cons (g11806s6) (.cons (g11806s7) .nil))))))))
certRow g11807 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,0,1,2,0]) using bank tags []
private abbrev rg11808 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [3,0,2,0,1]
certRow g11808s0 on (rg11808 0) using bank tags [3,3,28]
certRow g11808s1 on (rg11808 1) using bank tags [3,3,3,3,3,3,3]
certRow g11808s2 on (rg11808 2) using bank tags [3,3,28,28,3,3,3,3,3,28,28,28]
certRow g11808s3 on (rg11808 3) using bank tags [3,3,26,1,11,1,11,28,28,28,28,28]
certRow g11808s4 on (rg11808 4) using bank tags [3,3,3,3,3]
certRow g11808s5 on (rg11808 5) using bank tags [28,28,28]
certRow g11808s6 on (rg11808 6) using bank tags [26,1,11,1,11,28,28]
certRow g11808s7 on (rg11808 7) using bank tags [3,3,3,3,3,28,28]
theorem g11808 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,0,2,0,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [3,0,2,0,1] (.cons (g11808s0) (.cons (g11808s1) (.cons (g11808s2) (.cons (g11808s3) (.cons (g11808s4) (.cons (g11808s5) (.cons (g11808s6) (.cons (g11808s7) .nil))))))))
certRow g11809 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,0,2,0,1]) using bank tags []
private abbrev rg11810 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [3,0,2,1,0]
certRow g11810s0 on (rg11810 0) using bank tags [3,3,28]
certRow g11810s1 on (rg11810 1) using bank tags [3,3,3,3,3,3,3]
certRow g11810s2 on (rg11810 2) using bank tags [3,3,28,28,3,3,3,3,3,28,28]
certRow g11810s3 on (rg11810 3) using bank tags [3,3,28,28,1,1,11,11,11,28,28,28,28]
certRow g11810s4 on (rg11810 4) using bank tags [3,3,3,3,3]
certRow g11810s5 on (rg11810 5) using bank tags [28,28,28]
certRow g11810s6 on (rg11810 6) using bank tags [1,1,11,11,11,28,28]
certRow g11810s7 on (rg11810 7) using bank tags [3,3,3,3,3,28,28]
theorem g11810 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,0,2,1,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [3,0,2,1,0] (.cons (g11810s0) (.cons (g11810s1) (.cons (g11810s2) (.cons (g11810s3) (.cons (g11810s4) (.cons (g11810s5) (.cons (g11810s6) (.cons (g11810s7) .nil))))))))
certRow g11811 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,0,2,1,0]) using bank tags []
certRow g11812 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,0,3,0,0]) using bank tags [1,1,28,13,13,28,28]
certRow g11813 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,0,3,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
