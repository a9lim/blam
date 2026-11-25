import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11464 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,0,1,3,2]
certRow g11464s0 on (rg11464 0) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28]
certRow g11464s1 on (rg11464 1) using bank tags [3,3,3,3,3,3,1,6,28,28,28,28,6,6,19,28]
certRow g11464s2 on (rg11464 2) using bank tags [3,3,3,3,3,3,28,28]
certRow g11464s3 on (rg11464 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28]
certRow g11464s4 on (rg11464 4) using bank tags [3,3,3,3,3]
certRow g11464s5 on (rg11464 5) using bank tags []
certRow g11464s6 on (rg11464 6) using bank tags [3,3,3,3,13,28,1]
certRow g11464s7 on (rg11464 7) using bank tags [28,28]
certRow g11464s8 on (rg11464 8) using bank tags []
certRow g11464s9 on (rg11464 9) using bank tags [28,28,1,28,19,19]
certRow g11464s10 on (rg11464 10) using bank tags [28]
certRow g11464s11 on (rg11464 11) using bank tags [3,3,3,3,13,13,6,6,13,1,6,27,13,1,27]
theorem g11464 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,1,3,2]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,0,1,3,2] (.cons (g11464s0) (.cons (g11464s1) (.cons (g11464s2) (.cons (g11464s3) (.cons (g11464s4) (.cons (g11464s5) (.cons (g11464s6) (.cons (g11464s7) (.cons (g11464s8) (.cons (g11464s9) (.cons (g11464s10) (.cons (g11464s11) .nil))))))))))))
certRow g11465 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,1,3,2]) using bank tags []
private abbrev rg11466 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,0,1,4,1]
certRow g11466s0 on (rg11466 0) using bank tags [28,28]
certRow g11466s1 on (rg11466 1) using bank tags [28,28]
certRow g11466s2 on (rg11466 2) using bank tags [28,28,28,28]
certRow g11466s3 on (rg11466 3) using bank tags [28,28]
certRow g11466s4 on (rg11466 4) using bank tags [28,28,28,1,1]
certRow g11466s5 on (rg11466 5) using bank tags [28,28,28,28,28]
certRow g11466s6 on (rg11466 6) using bank tags []
certRow g11466s7 on (rg11466 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,58]
theorem g11466 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,1,4,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,0,1,4,1] (.cons (g11466s0) (.cons (g11466s1) (.cons (g11466s2) (.cons (g11466s3) (.cons (g11466s4) (.cons (g11466s5) (.cons (g11466s6) (.cons (g11466s7) .nil))))))))
certRow g11467 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,1,4,1]) using bank tags []
certRow g11468 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,1,5,0]) using bank tags []
certRow g11469 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,1,5,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
