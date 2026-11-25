import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g11561 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,2,2,0,2]) using bank tags []
private abbrev rg11562 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,2,2,1,1]
certRow g11562s0 on (rg11562 0) using bank tags [22,22]
certRow g11562s1 on (rg11562 1) using bank tags []
certRow g11562s2 on (rg11562 2) using bank tags [28,28,28,28,28,28,28]
certRow g11562s3 on (rg11562 3) using bank tags [57,22,22]
certRow g11562s4 on (rg11562 4) using bank tags [28,28,28,28]
certRow g11562s5 on (rg11562 5) using bank tags [6,28,28,28,57,57,57,28,28,14,35,28,28,57,22,22]
certRow g11562s6 on (rg11562 6) using bank tags []
certRow g11562s7 on (rg11562 7) using bank tags [28,28,28,28,28,28,28,13,13,24,24,24,19,13,18,19,6,6,69,6,6,69,11]
theorem g11562 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,2,2,1,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,2,2,1,1] (.cons (g11562s0) (.cons (g11562s1) (.cons (g11562s2) (.cons (g11562s3) (.cons (g11562s4) (.cons (g11562s5) (.cons (g11562s6) (.cons (g11562s7) .nil))))))))
certRow g11563 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,2,2,1,1]) using bank tags []
private abbrev rg11564 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,2,2,2,0]
certRow g11564s0 on (rg11564 0) using bank tags [22,22]
certRow g11564s1 on (rg11564 1) using bank tags [28,28,57,28,57,28,57]
certRow g11564s2 on (rg11564 2) using bank tags [28,28,28]
certRow g11564s3 on (rg11564 3) using bank tags []
certRow g11564s4 on (rg11564 4) using bank tags [28,28,57,1,22,22,28,57,6,1]
certRow g11564s5 on (rg11564 5) using bank tags [3,3,3,28,28,28,28,57,57]
certRow g11564s6 on (rg11564 6) using bank tags [28,14,6]
certRow g11564s7 on (rg11564 7) using bank tags [3,3,28,28,28,24,11,69,24,69]
theorem g11564 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,2,2,2,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,2,2,2,0] (.cons (g11564s0) (.cons (g11564s1) (.cons (g11564s2) (.cons (g11564s3) (.cons (g11564s4) (.cons (g11564s5) (.cons (g11564s6) (.cons (g11564s7) .nil))))))))
certRow g11565 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,2,2,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
