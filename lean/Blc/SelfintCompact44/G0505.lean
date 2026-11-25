import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11506 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,1,0,3,2]
certRow g11506s0 on (rg11506 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28]
certRow g11506s1 on (rg11506 1) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,1,28,28,1,1]
certRow g11506s2 on (rg11506 2) using bank tags [3,3,3,3,3,3,3,28,28,28]
certRow g11506s3 on (rg11506 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,1]
certRow g11506s4 on (rg11506 4) using bank tags [3,3,3,3,3]
certRow g11506s5 on (rg11506 5) using bank tags [3,3,28,28]
certRow g11506s6 on (rg11506 6) using bank tags [3,3,3,3,3,3,28,28,28,1,1]
certRow g11506s7 on (rg11506 7) using bank tags [28,28]
certRow g11506s8 on (rg11506 8) using bank tags [28]
certRow g11506s9 on (rg11506 9) using bank tags [28,28,28,28]
certRow g11506s10 on (rg11506 10) using bank tags [3,3,3,3,28]
certRow g11506s11 on (rg11506 11) using bank tags [3,3,3,3,3,28,1,13,13,1,13,1,1,24,16,19,1,16,19,22]
theorem g11506 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,0,3,2]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,1,0,3,2] (.cons (g11506s0) (.cons (g11506s1) (.cons (g11506s2) (.cons (g11506s3) (.cons (g11506s4) (.cons (g11506s5) (.cons (g11506s6) (.cons (g11506s7) (.cons (g11506s8) (.cons (g11506s9) (.cons (g11506s10) (.cons (g11506s11) .nil))))))))))))
certRow g11507 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,0,3,2]) using bank tags []
private abbrev rg11508 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,1,0,4,1]
certRow g11508s0 on (rg11508 0) using bank tags [28,28]
certRow g11508s1 on (rg11508 1) using bank tags [28,28]
certRow g11508s2 on (rg11508 2) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g11508s3 on (rg11508 3) using bank tags [28,28,28,28]
certRow g11508s4 on (rg11508 4) using bank tags [28,28,28,28,28,28,28,28,28,28,1,1,1,1]
certRow g11508s5 on (rg11508 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow g11508s6 on (rg11508 6) using bank tags [28,28]
certRow g11508s7 on (rg11508 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,14,1,1,1,13,13,13,13,6,16,16,6,6]
theorem g11508 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,0,4,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,1,0,4,1] (.cons (g11508s0) (.cons (g11508s1) (.cons (g11508s2) (.cons (g11508s3) (.cons (g11508s4) (.cons (g11508s5) (.cons (g11508s6) (.cons (g11508s7) .nil))))))))
certRow g11509 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,0,4,1]) using bank tags []
certRow g11510 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,0,5,0]) using bank tags []
certRow g11511 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,0,5,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
