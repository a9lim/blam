import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11680 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,1,3,1,0]
certRow g11680s0 on (rg11680 0) using bank tags []
certRow g11680s1 on (rg11680 1) using bank tags [28,28,28,28,27]
certRow g11680s2 on (rg11680 2) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,1]
certRow g11680s3 on (rg11680 3) using bank tags [3,3,3,3,3,3,3,28,28]
certRow g11680s4 on (rg11680 4) using bank tags [3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,16]
certRow g11680s5 on (rg11680 5) using bank tags [3,3,28,28,28,28,28]
certRow g11680s6 on (rg11680 6) using bank tags [3,3,3,3,3,3,3,28,28]
certRow g11680s7 on (rg11680 7) using bank tags [20,20,20,24,11,13,28,30,1,1,13,19]
theorem g11680 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,1,3,1,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,1,3,1,0] (.cons (g11680s0) (.cons (g11680s1) (.cons (g11680s2) (.cons (g11680s3) (.cons (g11680s4) (.cons (g11680s5) (.cons (g11680s6) (.cons (g11680s7) .nil))))))))
certRow g11681 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,1,3,1,0]) using bank tags []
private abbrev rg11682 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,1,4,0,0]
certRow g11682s0 on (rg11682 0) using bank tags []
certRow g11682s1 on (rg11682 1) using bank tags [28]
certRow g11682s2 on (rg11682 2) using bank tags [28,28,28,28,28,28,28]
certRow g11682s3 on (rg11682 3) using bank tags [28,28,28,28,28,28,28,28]
certRow g11682s4 on (rg11682 4) using bank tags [28,28,28,28,28,11]
certRow g11682s5 on (rg11682 5) using bank tags [28,28]
certRow g11682s6 on (rg11682 6) using bank tags [28,28,28,28,28]
certRow g11682s7 on (rg11682 7) using bank tags []
theorem g11682 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,1,4,0,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,1,4,0,0] (.cons (g11682s0) (.cons (g11682s1) (.cons (g11682s2) (.cons (g11682s3) (.cons (g11682s4) (.cons (g11682s5) (.cons (g11682s6) (.cons (g11682s7) .nil))))))))
certRow g11683 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,1,4,0,0]) using bank tags []
private abbrev rg11684 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,2,0,0,3]
certRow g11684s0 on (rg11684 0) using bank tags [3,3,28,28,28,28,28]
certRow g11684s1 on (rg11684 1) using bank tags [3,3,3,3,3,3,3,1,1,28,57,1,28]
certRow g11684s2 on (rg11684 2) using bank tags [3,3,3,3,3,3,3,28,28,28,1,28,28,57,57,57,57]
certRow g11684s3 on (rg11684 3) using bank tags [3,3,3,3]
certRow g11684s4 on (rg11684 4) using bank tags [3,3,3,3,3,28,28,28,28,28,57,57,57,1,57,1,28,57,1]
certRow g11684s5 on (rg11684 5) using bank tags [3,28,28,6]
certRow g11684s6 on (rg11684 6) using bank tags [28]
certRow g11684s7 on (rg11684 7) using bank tags [3,3,3,3,3,3,3,13,13,13,13,13,13,13,13,13,13,16,16,19,19]
theorem g11684 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,2,0,0,3]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,2,0,0,3] (.cons (g11684s0) (.cons (g11684s1) (.cons (g11684s2) (.cons (g11684s3) (.cons (g11684s4) (.cons (g11684s5) (.cons (g11684s6) (.cons (g11684s7) .nil))))))))
certRow g11685 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,2,0,0,3]) using bank tags []
end Blc.SelfintSingleObject.Compact44
