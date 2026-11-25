import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g11761 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,1,0,3,0]) using bank tags []
private abbrev rg11762 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,1,1,0,2]
certRow g11762s0 on (rg11762 0) using bank tags []
certRow g11762s1 on (rg11762 1) using bank tags [28,28,28,28]
certRow g11762s2 on (rg11762 2) using bank tags [3,3,3,3,28,15,28,28,1,28,28,28,28,28,28,28,28,28,1,28,1,1,1,1,27,27,27]
certRow g11762s3 on (rg11762 3) using bank tags [3,3,3,3,3,3,3,3]
certRow g11762s4 on (rg11762 4) using bank tags [24,24,19,18,19,28,28,15,1,28,28,28,28,28,28]
certRow g11762s5 on (rg11762 5) using bank tags [3,3,28,28,28,27,27,27,27,27,27,27,27,27,27,27,27]
certRow g11762s6 on (rg11762 6) using bank tags [3,3,3,3,3,3,3,28,28,28,27]
certRow g11762s7 on (rg11762 7) using bank tags [27,27]
theorem g11762 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,1,1,0,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,1,1,0,2] (.cons (g11762s0) (.cons (g11762s1) (.cons (g11762s2) (.cons (g11762s3) (.cons (g11762s4) (.cons (g11762s5) (.cons (g11762s6) (.cons (g11762s7) .nil))))))))
certRow g11763 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,1,1,0,2]) using bank tags []
certRow g11764 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,1,1,1,1]) using bank tags [1,28,28,28,28,28,28,28,28,1,28,28,28,28,28,28]
certRow g11765 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,1,1,1,1]) using bank tags []
private abbrev rg11766 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,1,1,2,0]
certRow g11766s0 on (rg11766 0) using bank tags []
certRow g11766s1 on (rg11766 1) using bank tags [28,28,28,27,28,27,28,27]
certRow g11766s2 on (rg11766 2) using bank tags [3,3,28,28,28,1,28,28,1,28,28,28,28,28,28,28,14,14,28,1,28,1,15,27,27,27]
certRow g11766s3 on (rg11766 3) using bank tags [3,3,3,3,3,3,3]
certRow g11766s4 on (rg11766 4) using bank tags [24,24,19,28,1,1,28,28,28,28,28,26,28,27,27,27,27]
certRow g11766s5 on (rg11766 5) using bank tags [3,3,28,28,28,28,28]
certRow g11766s6 on (rg11766 6) using bank tags [3,3,3,3,3,3,3,28,28,28,27,27]
certRow g11766s7 on (rg11766 7) using bank tags [27,27]
theorem g11766 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,1,1,2,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,1,1,2,0] (.cons (g11766s0) (.cons (g11766s1) (.cons (g11766s2) (.cons (g11766s3) (.cons (g11766s4) (.cons (g11766s5) (.cons (g11766s6) (.cons (g11766s7) .nil))))))))
certRow g11767 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,1,1,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
