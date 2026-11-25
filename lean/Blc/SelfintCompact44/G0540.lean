import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g11743 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,0,2,0,2]) using bank tags []
private abbrev rg11744 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [2,0,2,1,1]
certRow g11744s0 on (rg11744 0) using bank tags [1,1,1,1,1,1,11,11,11,1,11,28,28,28,28,28]
certRow g11744s1 on (rg11744 1) using bank tags [46,28,28,28,15,1,28,28,27,28,27,6,27,28,27,28,28]
certRow g11744s2 on (rg11744 2) using bank tags [1,1,1,11,11,11,1,11,1,28,28,28,14,14,14,1,14,1,28,28,14,1]
certRow g11744s3 on (rg11744 3) using bank tags [3,3,3,3,3]
certRow g11744s4 on (rg11744 4) using bank tags []
certRow g11744s5 on (rg11744 5) using bank tags [13,28,28,28,27,27,27]
certRow g11744s6 on (rg11744 6) using bank tags [3,3,3,3,3,28,28,28,28,28,27,27,27]
certRow g11744s7 on (rg11744 7) using bank tags [3,3,28,28]
certRow g11744s8 on (rg11744 8) using bank tags [1,27]
certRow g11744s9 on (rg11744 9) using bank tags [28,27]
certRow g11744s10 on (rg11744 10) using bank tags [3,3,28,28]
certRow g11744s11 on (rg11744 11) using bank tags [15,1,27,22,27]
theorem g11744 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,0,2,1,1]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [2,0,2,1,1] (.cons (g11744s0) (.cons (g11744s1) (.cons (g11744s2) (.cons (g11744s3) (.cons (g11744s4) (.cons (g11744s5) (.cons (g11744s6) (.cons (g11744s7) (.cons (g11744s8) (.cons (g11744s9) (.cons (g11744s10) (.cons (g11744s11) .nil))))))))))))
certRow g11745 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,0,2,1,1]) using bank tags []
private abbrev rg11746 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,0,2,2,0]
certRow g11746s0 on (rg11746 0) using bank tags [3,1,27]
certRow g11746s1 on (rg11746 1) using bank tags [28,28,28,28,27,28,27]
certRow g11746s2 on (rg11746 2) using bank tags [28,1,11,11,11,11,28,28,28,28,14,14,1,28,14,28,14,1,1,27]
certRow g11746s3 on (rg11746 3) using bank tags [3,3,3,3]
certRow g11746s4 on (rg11746 4) using bank tags [1,11,11,11,11,28,28,15,1,1,28,27,22,27,27,27]
certRow g11746s5 on (rg11746 5) using bank tags [3,3,3,28,28,28,28,27,27,28,28,28]
certRow g11746s6 on (rg11746 6) using bank tags [27]
certRow g11746s7 on (rg11746 7) using bank tags [3,3]
theorem g11746 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,0,2,2,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,0,2,2,0] (.cons (g11746s0) (.cons (g11746s1) (.cons (g11746s2) (.cons (g11746s3) (.cons (g11746s4) (.cons (g11746s5) (.cons (g11746s6) (.cons (g11746s7) .nil))))))))
certRow g11747 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,0,2,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
