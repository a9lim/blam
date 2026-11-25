import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g11539 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,4,1,0]) using bank tags []
certRow g11540 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,5,0,0]) using bank tags []
certRow g11541 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,5,0,0]) using bank tags []
private abbrev rg11542 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,2,0,0,4]
certRow g11542s0 on (rg11542 0) using bank tags []
certRow g11542s1 on (rg11542 1) using bank tags []
certRow g11542s2 on (rg11542 2) using bank tags [28,28,28,28,28]
certRow g11542s3 on (rg11542 3) using bank tags [28,28,28,28,28,28,28]
certRow g11542s4 on (rg11542 4) using bank tags [28,28,28,28,28]
certRow g11542s5 on (rg11542 5) using bank tags [28,28,28]
certRow g11542s6 on (rg11542 6) using bank tags [28,28,28,28,28]
certRow g11542s7 on (rg11542 7) using bank tags [28,28,28,28,28,28,28,28,28,1,24]
theorem g11542 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,2,0,0,4]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,2,0,0,4] (.cons (g11542s0) (.cons (g11542s1) (.cons (g11542s2) (.cons (g11542s3) (.cons (g11542s4) (.cons (g11542s5) (.cons (g11542s6) (.cons (g11542s7) .nil))))))))
certRow g11543 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,2,0,0,4]) using bank tags []
private abbrev rg11544 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,2,0,1,3]
certRow g11544s0 on (rg11544 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,57,28,57,6]
certRow g11544s1 on (rg11544 1) using bank tags [3,3,3,3,3,3,3,1]
certRow g11544s2 on (rg11544 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28]
certRow g11544s3 on (rg11544 3) using bank tags [3,3,3,3,3,3,3,28,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28]
certRow g11544s4 on (rg11544 4) using bank tags [3,3,3,3,3]
certRow g11544s5 on (rg11544 5) using bank tags [6,28,28,28]
certRow g11544s6 on (rg11544 6) using bank tags [3,3,3,3,3,28,28,28,28]
certRow g11544s7 on (rg11544 7) using bank tags [28,28,28,28]
certRow g11544s8 on (rg11544 8) using bank tags [28,28,28,28,28]
certRow g11544s9 on (rg11544 9) using bank tags [20,55,28,28,57,6]
certRow g11544s10 on (rg11544 10) using bank tags [28,28,28,28,28]
certRow g11544s11 on (rg11544 11) using bank tags [3,3,3,3,3,1,1,1,11,11,11,24,22,6,6,6,18,6,6,1,11]
theorem g11544 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,2,0,1,3]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,2,0,1,3] (.cons (g11544s0) (.cons (g11544s1) (.cons (g11544s2) (.cons (g11544s3) (.cons (g11544s4) (.cons (g11544s5) (.cons (g11544s6) (.cons (g11544s7) (.cons (g11544s8) (.cons (g11544s9) (.cons (g11544s10) (.cons (g11544s11) .nil))))))))))))
certRow g11545 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,2,0,1,3]) using bank tags []
end Blc.SelfintSingleObject.Compact44
