import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11480 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,0,3,0,3]
certRow g11480s0 on (rg11480 0) using bank tags [1,1,28]
certRow g11480s1 on (rg11480 1) using bank tags []
certRow g11480s2 on (rg11480 2) using bank tags [1,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g11480s3 on (rg11480 3) using bank tags [28,28]
certRow g11480s4 on (rg11480 4) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g11480s5 on (rg11480 5) using bank tags [28,28]
certRow g11480s6 on (rg11480 6) using bank tags []
certRow g11480s7 on (rg11480 7) using bank tags [28,28,28,28,28,28,28,28,6,6,1,15,1,15]
theorem g11480 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,3,0,3]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,0,3,0,3] (.cons (g11480s0) (.cons (g11480s1) (.cons (g11480s2) (.cons (g11480s3) (.cons (g11480s4) (.cons (g11480s5) (.cons (g11480s6) (.cons (g11480s7) .nil))))))))
certRow g11481 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,3,0,3]) using bank tags []
private abbrev rg11482 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,0,3,1,2]
certRow g11482s0 on (rg11482 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow g11482s1 on (rg11482 1) using bank tags [3,3,3,3,3,3,3,18,6,28,28,28,28,28,6,45,28,19,28]
certRow g11482s2 on (rg11482 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28]
certRow g11482s3 on (rg11482 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28]
certRow g11482s4 on (rg11482 4) using bank tags [3,3,3,3,3]
certRow g11482s5 on (rg11482 5) using bank tags [28]
certRow g11482s6 on (rg11482 6) using bank tags [3,3,3,3,3,28,13,13,28,28,1]
certRow g11482s7 on (rg11482 7) using bank tags [28,28]
certRow g11482s8 on (rg11482 8) using bank tags [3]
certRow g11482s9 on (rg11482 9) using bank tags [28,1,1,28,28,28,28,19,19,19,19]
certRow g11482s10 on (rg11482 10) using bank tags [3,28,28,6]
certRow g11482s11 on (rg11482 11) using bank tags [3,3,3,3,3,28,13,13,6,22,13,13,15,15,1,6,18,16,27,13,27,13,6,27,24,27]
theorem g11482 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,3,1,2]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,0,3,1,2] (.cons (g11482s0) (.cons (g11482s1) (.cons (g11482s2) (.cons (g11482s3) (.cons (g11482s4) (.cons (g11482s5) (.cons (g11482s6) (.cons (g11482s7) (.cons (g11482s8) (.cons (g11482s9) (.cons (g11482s10) (.cons (g11482s11) .nil))))))))))))
certRow g11483 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,3,1,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
