import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11692 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,2,1,0,2]
certRow g11692s0 on (rg11692 0) using bank tags []
certRow g11692s1 on (rg11692 1) using bank tags [28,28,11,11]
certRow g11692s2 on (rg11692 2) using bank tags [3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,57,28,57,57,57,28,28,57,1,27]
certRow g11692s3 on (rg11692 3) using bank tags [3,3,3,3,3]
certRow g11692s4 on (rg11692 4) using bank tags [3,3,3,3,3,3,3,3,3,28,28]
certRow g11692s5 on (rg11692 5) using bank tags [3,3,28,28,28,28,28,57,57,57,1,28,28,57,1,28,28,57,1]
certRow g11692s6 on (rg11692 6) using bank tags [3,3]
certRow g11692s7 on (rg11692 7) using bank tags [1,1,11,11,11,1,15,1,15,1,1,1,24,1,1,18,19]
theorem g11692 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,2,1,0,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,2,1,0,2] (.cons (g11692s0) (.cons (g11692s1) (.cons (g11692s2) (.cons (g11692s3) (.cons (g11692s4) (.cons (g11692s5) (.cons (g11692s6) (.cons (g11692s7) .nil))))))))
certRow g11693 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,2,1,0,2]) using bank tags []
certRow g11694 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,2,1,1,1]) using bank tags [1,28,28,28,28,28,28,28,28,28,13,26,1,15,15,1,13,15,1,1,1,119,27,27]
certRow g11695 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,2,1,1,1]) using bank tags []
private abbrev rg11696 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,2,1,2,0]
certRow g11696s0 on (rg11696 0) using bank tags []
certRow g11696s1 on (rg11696 1) using bank tags [28,28,57,28,57,11]
certRow g11696s2 on (rg11696 2) using bank tags [3,3,28,28,28,28,28,28,28,57,57,28,57,28,57,28,28,57,57,16]
certRow g11696s3 on (rg11696 3) using bank tags [3,3]
certRow g11696s4 on (rg11696 4) using bank tags [3,3,3,3,3,3,3,28,57,28,28,57,1,28]
certRow g11696s5 on (rg11696 5) using bank tags [3,3,28,28,28,28,28]
certRow g11696s6 on (rg11696 6) using bank tags [3,3]
certRow g11696s7 on (rg11696 7) using bank tags [26,1,11,32,13,65,24,24,1,18,18]
theorem g11696 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,2,1,2,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,2,1,2,0] (.cons (g11696s0) (.cons (g11696s1) (.cons (g11696s2) (.cons (g11696s3) (.cons (g11696s4) (.cons (g11696s5) (.cons (g11696s6) (.cons (g11696s7) .nil))))))))
certRow g11697 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,2,1,2,0]) using bank tags []
private abbrev rg11698 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,2,2,0,1]
certRow g11698s0 on (rg11698 0) using bank tags []
certRow g11698s1 on (rg11698 1) using bank tags [11,11]
certRow g11698s2 on (rg11698 2) using bank tags [3,3,28,14,14,14,1,28,26,1,28,25,1,28]
certRow g11698s3 on (rg11698 3) using bank tags [3,3,3,3,14,1,57]
certRow g11698s4 on (rg11698 4) using bank tags [3,3,3,3,3,3,3,3,3]
certRow g11698s5 on (rg11698 5) using bank tags [3,3,3,28,57,57,57,28,28]
certRow g11698s6 on (rg11698 6) using bank tags [3,3,28]
certRow g11698s7 on (rg11698 7) using bank tags [24,24,19,18,19,1,1,1,45,24,18]
theorem g11698 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,2,2,0,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,2,2,0,1] (.cons (g11698s0) (.cons (g11698s1) (.cons (g11698s2) (.cons (g11698s3) (.cons (g11698s4) (.cons (g11698s5) (.cons (g11698s6) (.cons (g11698s7) .nil))))))))
certRow g11699 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,2,2,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
