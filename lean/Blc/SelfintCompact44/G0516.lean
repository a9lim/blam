import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11566 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,2,3,0,1]
certRow g11566s0 on (rg11566 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28]
certRow g11566s1 on (rg11566 1) using bank tags [3,3,3,3,3,3,3,28,28,28,14,15,28,57,28,28,14,22,1,1]
certRow g11566s2 on (rg11566 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28]
certRow g11566s3 on (rg11566 3) using bank tags [3,3,3,3,3,3,3,28,3,3,3,3,3,3,3,3,3,3,28,28,28,28]
certRow g11566s4 on (rg11566 4) using bank tags [3,3,3,3,3]
certRow g11566s5 on (rg11566 5) using bank tags [28]
certRow g11566s6 on (rg11566 6) using bank tags [3,3,3,3,3,28,28]
certRow g11566s7 on (rg11566 7) using bank tags [3,3,28,28]
certRow g11566s8 on (rg11566 8) using bank tags [28,28,28]
certRow g11566s9 on (rg11566 9) using bank tags []
certRow g11566s10 on (rg11566 10) using bank tags [3,3,3,3]
certRow g11566s11 on (rg11566 11) using bank tags [3,3,3,3,3,61,19,24,18,58,6,16,24]
theorem g11566 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,2,3,0,1]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,2,3,0,1] (.cons (g11566s0) (.cons (g11566s1) (.cons (g11566s2) (.cons (g11566s3) (.cons (g11566s4) (.cons (g11566s5) (.cons (g11566s6) (.cons (g11566s7) (.cons (g11566s8) (.cons (g11566s9) (.cons (g11566s10) (.cons (g11566s11) .nil))))))))))))
certRow g11567 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,2,3,0,1]) using bank tags []
private abbrev rg11568 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,2,3,1,0]
certRow g11568s0 on (rg11568 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,14,22,28,27]
certRow g11568s1 on (rg11568 1) using bank tags [3,3,3,3,3,3,28,28,1]
certRow g11568s2 on (rg11568 2) using bank tags [3,3,3,3,3,3,28,28,28,28,28]
certRow g11568s3 on (rg11568 3) using bank tags [3,3,3,3,3,3,28,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow g11568s4 on (rg11568 4) using bank tags [3,3,3,3]
certRow g11568s5 on (rg11568 5) using bank tags [28]
certRow g11568s6 on (rg11568 6) using bank tags [3,3,3,3,28,28,28]
certRow g11568s7 on (rg11568 7) using bank tags [28]
certRow g11568s8 on (rg11568 8) using bank tags [28,28]
certRow g11568s9 on (rg11568 9) using bank tags [28,28,14,6]
certRow g11568s10 on (rg11568 10) using bank tags [16]
certRow g11568s11 on (rg11568 11) using bank tags [3,3,3,3,1,24,18,69,24,24,18]
theorem g11568 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,2,3,1,0]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,2,3,1,0] (.cons (g11568s0) (.cons (g11568s1) (.cons (g11568s2) (.cons (g11568s3) (.cons (g11568s4) (.cons (g11568s5) (.cons (g11568s6) (.cons (g11568s7) (.cons (g11568s8) (.cons (g11568s9) (.cons (g11568s10) (.cons (g11568s11) .nil))))))))))))
certRow g11569 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,2,3,1,0]) using bank tags []
certRow g11570 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,2,4,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g11571 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,2,4,0,0]) using bank tags []
certRow g11572 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,3,0,0,3]) using bank tags [28,28,1,1,28,28,28,1,1,28,1,1,28,28,28,28,28,28,28,28,28,28,28,28,28,6,11]
end Blc.SelfintSingleObject.Compact44
