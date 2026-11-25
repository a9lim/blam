import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g11725 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,0,0,0,4]) using bank tags []
private abbrev rg11726 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,0,0,1,3]
certRow g11726s0 on (rg11726 0) using bank tags [3,3,28,28]
certRow g11726s1 on (rg11726 1) using bank tags [3,3,3,3,3,3,3,1,14,1,27,27,27]
certRow g11726s2 on (rg11726 2) using bank tags [3,3,3,3,3,3,3,1,1,28,28,28,28,1,24,24,19,24,19,1,28,28,28,28,1,1]
certRow g11726s3 on (rg11726 3) using bank tags [3,3,28]
certRow g11726s4 on (rg11726 4) using bank tags [3,3,3,3,3,13,13,13,19,24,24,19,24,19,1,28,28,27,27,27,27,27,27]
certRow g11726s5 on (rg11726 5) using bank tags [13,28,28,28]
certRow g11726s6 on (rg11726 6) using bank tags [27,27]
certRow g11726s7 on (rg11726 7) using bank tags [3,3,3,3,3,1]
theorem g11726 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,0,0,1,3]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,0,0,1,3] (.cons (g11726s0) (.cons (g11726s1) (.cons (g11726s2) (.cons (g11726s3) (.cons (g11726s4) (.cons (g11726s5) (.cons (g11726s6) (.cons (g11726s7) .nil))))))))
certRow g11727 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,0,0,1,3]) using bank tags []
private abbrev rg11728 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,0,0,2,2]
certRow g11728s0 on (rg11728 0) using bank tags []
certRow g11728s1 on (rg11728 1) using bank tags [28,27,28,27,28,27]
certRow g11728s2 on (rg11728 2) using bank tags [3,3,28,28,28,24,24,24,19,24,19,24,19,28,28,28,28,14,28,1,1]
certRow g11728s3 on (rg11728 3) using bank tags [3,3,3]
certRow g11728s4 on (rg11728 4) using bank tags [24,24,24,19,24,19,24,19,28,28,28,28,1,28,27,27,27,27]
certRow g11728s5 on (rg11728 5) using bank tags [3,3,28,28,28,27,27,27,27,27]
certRow g11728s6 on (rg11728 6) using bank tags [28,27,27,27]
certRow g11728s7 on (rg11728 7) using bank tags []
theorem g11728 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,0,0,2,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,0,0,2,2] (.cons (g11728s0) (.cons (g11728s1) (.cons (g11728s2) (.cons (g11728s3) (.cons (g11728s4) (.cons (g11728s5) (.cons (g11728s6) (.cons (g11728s7) .nil))))))))
certRow g11729 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,0,0,2,2]) using bank tags []
private abbrev rg11730 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,0,0,3,1]
certRow g11730s0 on (rg11730 0) using bank tags [3,3,28,28]
certRow g11730s1 on (rg11730 1) using bank tags [3,3,3,3,3,3,3,14,1]
certRow g11730s2 on (rg11730 2) using bank tags [3,3,3,3,3,3,3,3,3,28,30,24,24,19,1,28,28,28,28,28,1]
certRow g11730s3 on (rg11730 3) using bank tags [3,3,3]
certRow g11730s4 on (rg11730 4) using bank tags [3,3,3,3,3,13,13,13,1,24,24,19,1,28,27]
certRow g11730s5 on (rg11730 5) using bank tags [13,28,28,28,28,1,28,28,27,27,27,27]
certRow g11730s6 on (rg11730 6) using bank tags [27]
certRow g11730s7 on (rg11730 7) using bank tags [3,3,3,3,3,1]
theorem g11730 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,0,0,3,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,0,0,3,1] (.cons (g11730s0) (.cons (g11730s1) (.cons (g11730s2) (.cons (g11730s3) (.cons (g11730s4) (.cons (g11730s5) (.cons (g11730s6) (.cons (g11730s7) .nil))))))))
certRow g11731 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,0,0,3,1]) using bank tags []
certRow g11732 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,0,0,4,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow g11733 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,0,0,4,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
