import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g11475 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,2,2,2]) using bank tags []
private abbrev rg11476 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,0,2,3,1]
certRow g11476s0 on (rg11476 0) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow g11476s1 on (rg11476 1) using bank tags [3,3,3,3,3,3,28,28,14,28,6,1,28]
certRow g11476s2 on (rg11476 2) using bank tags [3,3,3,3,3,3,28,28,28,28,28]
certRow g11476s3 on (rg11476 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow g11476s4 on (rg11476 4) using bank tags [3,3,3,3,3]
certRow g11476s5 on (rg11476 5) using bank tags [28]
certRow g11476s6 on (rg11476 6) using bank tags [3,3,3,3,28,13,28]
certRow g11476s7 on (rg11476 7) using bank tags [3,3,28]
certRow g11476s8 on (rg11476 8) using bank tags [28,28,28,28,1]
certRow g11476s9 on (rg11476 9) using bank tags [28,1,20,13,28,19,19]
certRow g11476s10 on (rg11476 10) using bank tags [3,3,28]
certRow g11476s11 on (rg11476 11) using bank tags [3,3,3,3,13,13,26,6,13,26,26,1,16,27,13,18,27]
theorem g11476 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,2,3,1]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,0,2,3,1] (.cons (g11476s0) (.cons (g11476s1) (.cons (g11476s2) (.cons (g11476s3) (.cons (g11476s4) (.cons (g11476s5) (.cons (g11476s6) (.cons (g11476s7) (.cons (g11476s8) (.cons (g11476s9) (.cons (g11476s10) (.cons (g11476s11) .nil))))))))))))
certRow g11477 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,2,3,1]) using bank tags []
private abbrev rg11478 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,0,2,4,0]
certRow g11478s0 on (rg11478 0) using bank tags []
certRow g11478s1 on (rg11478 1) using bank tags [28]
certRow g11478s2 on (rg11478 2) using bank tags [28,28,28]
certRow g11478s3 on (rg11478 3) using bank tags [28,28,28,28,28,28]
certRow g11478s4 on (rg11478 4) using bank tags [28,28,28,28]
certRow g11478s5 on (rg11478 5) using bank tags [28,28]
certRow g11478s6 on (rg11478 6) using bank tags [28,28,28,28]
certRow g11478s7 on (rg11478 7) using bank tags [28,28,28,28,28,28,28,28,28,13,13,6,16]
theorem g11478 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,2,4,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,0,2,4,0] (.cons (g11478s0) (.cons (g11478s1) (.cons (g11478s2) (.cons (g11478s3) (.cons (g11478s4) (.cons (g11478s5) (.cons (g11478s6) (.cons (g11478s7) .nil))))))))
certRow g11479 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,2,4,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
