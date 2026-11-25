import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g11437 on (Grammar43.fiveRow 7 6 6 true 6 4 4 [5,0,0,1]) using bank tags []
certRow g11438 on (Grammar43.fiveRow 7 6 6 false 6 4 4 [5,0,1,0]) using bank tags []
certRow g11439 on (Grammar43.fiveRow 7 6 6 true 6 4 4 [5,0,1,0]) using bank tags []
certRow g11440 on (Grammar43.fiveRow 7 6 6 false 6 4 4 [5,1,0,0]) using bank tags []
certRow g11441 on (Grammar43.fiveRow 7 6 6 true 6 4 4 [5,1,0,0]) using bank tags []
certRow g11442 on (Grammar43.fiveRow 7 6 6 false 6 4 4 [6,0,0,0]) using bank tags []
certRow g11443 on (Grammar43.fiveRow 7 6 6 true 6 4 4 [6,0,0,0]) using bank tags []
certRow g11444 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,0,0,6]) using bank tags []
certRow g11445 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,0,0,6]) using bank tags []
certRow g11446 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,0,1,5]) using bank tags []
certRow g11447 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,0,1,5]) using bank tags []
private abbrev rg11448 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,0,0,2,4]
certRow g11448s0 on (rg11448 0) using bank tags []
certRow g11448s1 on (rg11448 1) using bank tags []
certRow g11448s2 on (rg11448 2) using bank tags [28,28,28,28,28,28]
certRow g11448s3 on (rg11448 3) using bank tags [28,28,28,28]
certRow g11448s4 on (rg11448 4) using bank tags [28,28,28,28,28,28]
certRow g11448s5 on (rg11448 5) using bank tags [28,28]
certRow g11448s6 on (rg11448 6) using bank tags [28,28,28,28]
certRow g11448s7 on (rg11448 7) using bank tags [28,28,28,28,28,28,28,28,13,13,1,1,6]
theorem g11448 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,0,2,4]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,0,0,2,4] (.cons (g11448s0) (.cons (g11448s1) (.cons (g11448s2) (.cons (g11448s3) (.cons (g11448s4) (.cons (g11448s5) (.cons (g11448s6) (.cons (g11448s7) .nil))))))))
certRow g11449 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,0,2,4]) using bank tags []
private abbrev rg11450 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,0,0,3,3]
certRow g11450s0 on (rg11450 0) using bank tags []
certRow g11450s1 on (rg11450 1) using bank tags []
certRow g11450s2 on (rg11450 2) using bank tags [1,1,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g11450s3 on (rg11450 3) using bank tags [28]
certRow g11450s4 on (rg11450 4) using bank tags [28,28,28,28,28,28,28,28]
certRow g11450s5 on (rg11450 5) using bank tags [28,28]
certRow g11450s6 on (rg11450 6) using bank tags []
certRow g11450s7 on (rg11450 7) using bank tags [28,28,28,28,28,6,1,1,1,1]
theorem g11450 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,0,3,3]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,0,0,3,3] (.cons (g11450s0) (.cons (g11450s1) (.cons (g11450s2) (.cons (g11450s3) (.cons (g11450s4) (.cons (g11450s5) (.cons (g11450s6) (.cons (g11450s7) .nil))))))))
certRow g11451 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,0,3,3]) using bank tags []
end Blc.SelfintSingleObject.Compact44
