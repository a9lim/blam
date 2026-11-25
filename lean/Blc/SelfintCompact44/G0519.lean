import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11586 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,3,2,0,1]
certRow g11586s0 on (rg11586 0) using bank tags [3,3,3,3,3,3,3,28,28,3,3,3,3,3,28,28,28,28,28,28]
certRow g11586s1 on (rg11586 1) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,57,28,22]
certRow g11586s2 on (rg11586 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28]
certRow g11586s3 on (rg11586 3) using bank tags [3,3,3,3,3,3,3,28,28,28,3,3,3,3,3,3,3,3,3,3,28,28,28,28]
certRow g11586s4 on (rg11586 4) using bank tags [3,3,3,3,3]
certRow g11586s5 on (rg11586 5) using bank tags [28,28,28]
certRow g11586s6 on (rg11586 6) using bank tags [3,3,3,3,3,28,28,28,28,57]
certRow g11586s7 on (rg11586 7) using bank tags [3,3,28,28]
certRow g11586s8 on (rg11586 8) using bank tags [28,28,28]
certRow g11586s9 on (rg11586 9) using bank tags [28]
certRow g11586s10 on (rg11586 10) using bank tags [28,28,3,3,28,28]
certRow g11586s11 on (rg11586 11) using bank tags [3,3,3,3,3,13,13,13,13,18,16]
theorem g11586 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,3,2,0,1]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,3,2,0,1] (.cons (g11586s0) (.cons (g11586s1) (.cons (g11586s2) (.cons (g11586s3) (.cons (g11586s4) (.cons (g11586s5) (.cons (g11586s6) (.cons (g11586s7) (.cons (g11586s8) (.cons (g11586s9) (.cons (g11586s10) (.cons (g11586s11) .nil))))))))))))
certRow g11587 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,3,2,0,1]) using bank tags []
private abbrev rg11588 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,3,2,1,0]
certRow g11588s0 on (rg11588 0) using bank tags [3,3,3,3,3,3,28,28,3,3,3,3,28,28,28,28,28,57,28,6,28,27]
certRow g11588s1 on (rg11588 1) using bank tags [3,3,3,3,3,3,28]
certRow g11588s2 on (rg11588 2) using bank tags [3,3,3,3,3,3,28,28,28,28,28]
certRow g11588s3 on (rg11588 3) using bank tags [3,3,3,3,3,3,28,28,28,3,3,3,3,3,3,3,3,28,28,28,28,28,28]
certRow g11588s4 on (rg11588 4) using bank tags [3,3,3,3]
certRow g11588s5 on (rg11588 5) using bank tags [28,28,28]
certRow g11588s6 on (rg11588 6) using bank tags [3,3,3,3,28,28,28,28,57,57,28]
certRow g11588s7 on (rg11588 7) using bank tags [28]
certRow g11588s8 on (rg11588 8) using bank tags [28,28,28]
certRow g11588s9 on (rg11588 9) using bank tags [28,28,6]
certRow g11588s10 on (rg11588 10) using bank tags [28,28,22]
certRow g11588s11 on (rg11588 11) using bank tags [3,3,3,3,13,13,13,13,18,6,16,6]
theorem g11588 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,3,2,1,0]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,3,2,1,0] (.cons (g11588s0) (.cons (g11588s1) (.cons (g11588s2) (.cons (g11588s3) (.cons (g11588s4) (.cons (g11588s5) (.cons (g11588s6) (.cons (g11588s7) (.cons (g11588s8) (.cons (g11588s9) (.cons (g11588s10) (.cons (g11588s11) .nil))))))))))))
certRow g11589 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,3,2,1,0]) using bank tags []
certRow g11590 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,3,3,0,0]) using bank tags [1,1,28]
certRow g11591 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,3,3,0,0]) using bank tags []
certRow g11592 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,4,0,0,2]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
end Blc.SelfintSingleObject.Compact44
