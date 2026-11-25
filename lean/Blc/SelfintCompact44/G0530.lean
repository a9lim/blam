import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11672 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,1,2,0,2]
certRow g11672s0 on (rg11672 0) using bank tags []
certRow g11672s1 on (rg11672 1) using bank tags [28]
certRow g11672s2 on (rg11672 2) using bank tags [3,3,28,28,28,28,28,28,1,27]
certRow g11672s3 on (rg11672 3) using bank tags [3,3]
certRow g11672s4 on (rg11672 4) using bank tags [3,3,3,3,3]
certRow g11672s5 on (rg11672 5) using bank tags [28,28,28,28,28,28,28,28,28,57,57,28,1,28,1]
certRow g11672s6 on (rg11672 6) using bank tags [28,57]
certRow g11672s7 on (rg11672 7) using bank tags [1,57,1,15,1,15,1,1,1,11,18,11,11,18,28,28,26,1,1,13,13,19,19]
theorem g11672 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,1,2,0,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,1,2,0,2] (.cons (g11672s0) (.cons (g11672s1) (.cons (g11672s2) (.cons (g11672s3) (.cons (g11672s4) (.cons (g11672s5) (.cons (g11672s6) (.cons (g11672s7) .nil))))))))
certRow g11673 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,1,2,0,2]) using bank tags []
certRow g11674 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,1,2,1,1]) using bank tags [28,28,28,13,26,1,1,11,11,11,28,28,1,13,13,19,19,27]
certRow g11675 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,1,2,1,1]) using bank tags []
certRow g11676 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,1,2,2,0]) using bank tags [3,3,3,28,28,28,28,14,49,14,1,28,28,57,28,57,1,28,1,28,26,1,15,1,18,26]
certRow g11677 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,1,2,2,0]) using bank tags []
private abbrev rg11678 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,1,3,0,1]
certRow g11678s0 on (rg11678 0) using bank tags []
certRow g11678s1 on (rg11678 1) using bank tags [28,27,27]
certRow g11678s2 on (rg11678 2) using bank tags [3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,16]
certRow g11678s3 on (rg11678 3) using bank tags [3,3,3,3,3,3,3,3,3,28,28]
certRow g11678s4 on (rg11678 4) using bank tags [3,3,3,3,28,28,28,28,28,28,28,28,28,27]
certRow g11678s5 on (rg11678 5) using bank tags [3,3,28,28,28,28,28,28]
certRow g11678s6 on (rg11678 6) using bank tags [3,3,3,3,3,3,3,28,28]
certRow g11678s7 on (rg11678 7) using bank tags [28,28,20,20,20,20,20,24,11,11,28,28,15,13,13,19,19]
theorem g11678 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,1,3,0,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,1,3,0,1] (.cons (g11678s0) (.cons (g11678s1) (.cons (g11678s2) (.cons (g11678s3) (.cons (g11678s4) (.cons (g11678s5) (.cons (g11678s6) (.cons (g11678s7) .nil))))))))
certRow g11679 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,1,3,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
