import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g11649 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,4,0,1]) using bank tags []
private abbrev rg11650 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,0,4,1,0]
certRow g11650s0 on (rg11650 0) using bank tags [28]
certRow g11650s1 on (rg11650 1) using bank tags [28]
certRow g11650s2 on (rg11650 2) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g11650s3 on (rg11650 3) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g11650s4 on (rg11650 4) using bank tags [28,28,28,28,28,28,11,6]
certRow g11650s5 on (rg11650 5) using bank tags [28,28,28,28,28]
certRow g11650s6 on (rg11650 6) using bank tags [28,28,28,28,28,28,28]
certRow g11650s7 on (rg11650 7) using bank tags [6,6,27]
theorem g11650 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,4,1,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,0,4,1,0] (.cons (g11650s0) (.cons (g11650s1) (.cons (g11650s2) (.cons (g11650s3) (.cons (g11650s4) (.cons (g11650s5) (.cons (g11650s6) (.cons (g11650s7) .nil))))))))
certRow g11651 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,4,1,0]) using bank tags []
certRow g11652 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,5,0,0]) using bank tags []
certRow g11653 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,5,0,0]) using bank tags []
private abbrev rg11654 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,1,0,0,4]
certRow g11654s0 on (rg11654 0) using bank tags [28,28,28,28]
certRow g11654s1 on (rg11654 1) using bank tags []
certRow g11654s2 on (rg11654 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow g11654s3 on (rg11654 3) using bank tags [28,28,28,28,28,28,28]
certRow g11654s4 on (rg11654 4) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g11654s5 on (rg11654 5) using bank tags [28,28,28]
certRow g11654s6 on (rg11654 6) using bank tags [28,28,28,28,28]
certRow g11654s7 on (rg11654 7) using bank tags [28,28,1,1,26,30,1,1]
theorem g11654 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,1,0,0,4]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,1,0,0,4] (.cons (g11654s0) (.cons (g11654s1) (.cons (g11654s2) (.cons (g11654s3) (.cons (g11654s4) (.cons (g11654s5) (.cons (g11654s6) (.cons (g11654s7) .nil))))))))
certRow g11655 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,1,0,0,4]) using bank tags []
private abbrev rg11656 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,1,0,1,3]
certRow g11656s0 on (rg11656 0) using bank tags [28]
certRow g11656s1 on (rg11656 1) using bank tags [28,28,28,28,27]
certRow g11656s2 on (rg11656 2) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g11656s3 on (rg11656 3) using bank tags [3,3,3,3,3,3,3,28]
certRow g11656s4 on (rg11656 4) using bank tags [3,3,3,3,28,28,28,28,28,28,28,28,28,28]
certRow g11656s5 on (rg11656 5) using bank tags [3,3]
certRow g11656s6 on (rg11656 6) using bank tags [3,3,3,3,3,3,3,28,28]
certRow g11656s7 on (rg11656 7) using bank tags [20,20,20,20,20,13,26,1,13,11,32,11,1,28,28,1,1,13,13,19,19]
theorem g11656 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,1,0,1,3]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,1,0,1,3] (.cons (g11656s0) (.cons (g11656s1) (.cons (g11656s2) (.cons (g11656s3) (.cons (g11656s4) (.cons (g11656s5) (.cons (g11656s6) (.cons (g11656s7) .nil))))))))
certRow g11657 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,1,0,1,3]) using bank tags []
end Blc.SelfintSingleObject.Compact44
