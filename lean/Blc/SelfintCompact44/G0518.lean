import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11580 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,3,1,0,2]
certRow g11580s0 on (rg11580 0) using bank tags [3,3,3,3,3,3,3,28,28,3,3,3,3,3,28,28,28,28,28,28]
certRow g11580s1 on (rg11580 1) using bank tags [3,3,3,3,3,3,3,22,22,28]
certRow g11580s2 on (rg11580 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28]
certRow g11580s3 on (rg11580 3) using bank tags [3,3,3,3,3,3,3,28,28,28,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28]
certRow g11580s4 on (rg11580 4) using bank tags [3,3,3,3,3]
certRow g11580s5 on (rg11580 5) using bank tags [28,28,28]
certRow g11580s6 on (rg11580 6) using bank tags [3,3,3,3,3,28,28,28,28,28,6,1]
certRow g11580s7 on (rg11580 7) using bank tags [28,28,28,28]
certRow g11580s8 on (rg11580 8) using bank tags [28,28]
certRow g11580s9 on (rg11580 9) using bank tags [28,28]
certRow g11580s10 on (rg11580 10) using bank tags [28,28,28,28,6,28]
certRow g11580s11 on (rg11580 11) using bank tags [3,3,3,3,3,13,13,13,13,11,6,11,11]
theorem g11580 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,3,1,0,2]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,3,1,0,2] (.cons (g11580s0) (.cons (g11580s1) (.cons (g11580s2) (.cons (g11580s3) (.cons (g11580s4) (.cons (g11580s5) (.cons (g11580s6) (.cons (g11580s7) (.cons (g11580s8) (.cons (g11580s9) (.cons (g11580s10) (.cons (g11580s11) .nil))))))))))))
certRow g11581 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,3,1,0,2]) using bank tags []
certRow g11582 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,3,1,1,1]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1]
certRow g11583 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,3,1,1,1]) using bank tags []
private abbrev rg11584 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,3,1,2,0]
certRow g11584s0 on (rg11584 0) using bank tags [3,3,3,3,3,3,3,28,28,3,3,3,3,3,28,28,28,28,28,28,6,22,28,27,28,27]
certRow g11584s1 on (rg11584 1) using bank tags [3,3,3,3,3,3,3,28,28]
certRow g11584s2 on (rg11584 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow g11584s3 on (rg11584 3) using bank tags [3,3,3,3,3,3,3,28,28,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow g11584s4 on (rg11584 4) using bank tags [3,3,3,3,3]
certRow g11584s5 on (rg11584 5) using bank tags [28,28,28]
certRow g11584s6 on (rg11584 6) using bank tags [3,3,3,3,3,28,28,28,28,28,57,6,28,28]
certRow g11584s7 on (rg11584 7) using bank tags [28,28]
certRow g11584s8 on (rg11584 8) using bank tags [28,28,28]
certRow g11584s9 on (rg11584 9) using bank tags [28,28,28,57]
certRow g11584s10 on (rg11584 10) using bank tags [28,28,11,28,6,18]
certRow g11584s11 on (rg11584 11) using bank tags [3,3,3,3,3,13,13,13,13,6,6,11,6,11]
theorem g11584 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,3,1,2,0]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,3,1,2,0] (.cons (g11584s0) (.cons (g11584s1) (.cons (g11584s2) (.cons (g11584s3) (.cons (g11584s4) (.cons (g11584s5) (.cons (g11584s6) (.cons (g11584s7) (.cons (g11584s8) (.cons (g11584s9) (.cons (g11584s10) (.cons (g11584s11) .nil))))))))))))
certRow g11585 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,3,1,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
