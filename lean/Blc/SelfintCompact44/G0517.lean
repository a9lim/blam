import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g11573 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,3,0,0,3]) using bank tags []
private abbrev rg11574 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,3,0,1,2]
certRow g11574s0 on (rg11574 0) using bank tags [3,3,3,3,3,3,3,28,28,3,3,3,3,3,28,28,28,28,28,28,28,28]
certRow g11574s1 on (rg11574 1) using bank tags [3,3,3,3,3,3,3,28,57,6]
certRow g11574s2 on (rg11574 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28]
certRow g11574s3 on (rg11574 3) using bank tags [3,3,3,3,3,3,3,28,28,28,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28]
certRow g11574s4 on (rg11574 4) using bank tags [3,3,3,3,3]
certRow g11574s5 on (rg11574 5) using bank tags [28,28]
certRow g11574s6 on (rg11574 6) using bank tags [3,3,3,3,3,28,28,28,28,1,1]
certRow g11574s7 on (rg11574 7) using bank tags [28,28]
certRow g11574s8 on (rg11574 8) using bank tags [3,28,28]
certRow g11574s9 on (rg11574 9) using bank tags [28,28,28,28]
certRow g11574s10 on (rg11574 10) using bank tags [28,28,28,28,3,28,57,6]
certRow g11574s11 on (rg11574 11) using bank tags [3,3,3,3,3,13,13,13,13,11,11,11]
theorem g11574 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,3,0,1,2]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,3,0,1,2] (.cons (g11574s0) (.cons (g11574s1) (.cons (g11574s2) (.cons (g11574s3) (.cons (g11574s4) (.cons (g11574s5) (.cons (g11574s6) (.cons (g11574s7) (.cons (g11574s8) (.cons (g11574s9) (.cons (g11574s10) (.cons (g11574s11) .nil))))))))))))
certRow g11575 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,3,0,1,2]) using bank tags []
private abbrev rg11576 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,3,0,2,1]
certRow g11576s0 on (rg11576 0) using bank tags [3,3,3,3,3,3,3,28,28,3,3,3,3,3,28,28,28,28,28,28,28,28,28]
certRow g11576s1 on (rg11576 1) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28,57,22]
certRow g11576s2 on (rg11576 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28]
certRow g11576s3 on (rg11576 3) using bank tags [3,3,3,3,3,3,3,28,28,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28]
certRow g11576s4 on (rg11576 4) using bank tags [3,3,3,3,3]
certRow g11576s5 on (rg11576 5) using bank tags [28,28]
certRow g11576s6 on (rg11576 6) using bank tags [3,3,3,3,3,28,28,28,28]
certRow g11576s7 on (rg11576 7) using bank tags [3,3,28,28]
certRow g11576s8 on (rg11576 8) using bank tags [3,28,28,28,28,1,15]
certRow g11576s9 on (rg11576 9) using bank tags [28,28,28,28,28]
certRow g11576s10 on (rg11576 10) using bank tags [28,28,3,3,28,28,3,28,57,57]
certRow g11576s11 on (rg11576 11) using bank tags [3,3,3,3,3,13,13,13,13,11]
theorem g11576 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,3,0,2,1]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,3,0,2,1] (.cons (g11576s0) (.cons (g11576s1) (.cons (g11576s2) (.cons (g11576s3) (.cons (g11576s4) (.cons (g11576s5) (.cons (g11576s6) (.cons (g11576s7) (.cons (g11576s8) (.cons (g11576s9) (.cons (g11576s10) (.cons (g11576s11) .nil))))))))))))
certRow g11577 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,3,0,2,1]) using bank tags []
certRow g11578 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,3,0,3,0]) using bank tags [28,28,1,1,28,28,28,11,44,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,6,11]
certRow g11579 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,3,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
