import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11556 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,2,1,2,1]
certRow g11556s0 on (rg11556 0) using bank tags [28,57,28,28,57]
certRow g11556s1 on (rg11556 1) using bank tags []
certRow g11556s2 on (rg11556 2) using bank tags [28,28,28,28,28,28,28,57,57]
certRow g11556s3 on (rg11556 3) using bank tags [6,57,6]
certRow g11556s4 on (rg11556 4) using bank tags [28,28,28]
certRow g11556s5 on (rg11556 5) using bank tags [28,28,28,28,57,6,28,57,28,28,28,57,6]
certRow g11556s6 on (rg11556 6) using bank tags []
certRow g11556s7 on (rg11556 7) using bank tags [28,28,28,28,28,28,13,13,13,26,1,13,11,11,13,11,6,6,6,6,6,11]
theorem g11556 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,2,1,2,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,2,1,2,1] (.cons (g11556s0) (.cons (g11556s1) (.cons (g11556s2) (.cons (g11556s3) (.cons (g11556s4) (.cons (g11556s5) (.cons (g11556s6) (.cons (g11556s7) .nil))))))))
certRow g11557 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,2,1,2,1]) using bank tags []
private abbrev rg11558 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,2,1,3,0]
certRow g11558s0 on (rg11558 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,6,57,6,28,27,28,27]
certRow g11558s1 on (rg11558 1) using bank tags [3,3,3,3,3,3,3,28,28,1]
certRow g11558s2 on (rg11558 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28]
certRow g11558s3 on (rg11558 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28]
certRow g11558s4 on (rg11558 4) using bank tags [3,3,3,3,3]
certRow g11558s5 on (rg11558 5) using bank tags [3,28,28,28,57,6]
certRow g11558s6 on (rg11558 6) using bank tags [3,3,3,3,3,28,28,28,28,28,28]
certRow g11558s7 on (rg11558 7) using bank tags [3,3]
certRow g11558s8 on (rg11558 8) using bank tags [28,28,28,57,28,57]
certRow g11558s9 on (rg11558 9) using bank tags [28,28,28]
certRow g11558s10 on (rg11558 10) using bank tags [6,22]
certRow g11558s11 on (rg11558 11) using bank tags [3,3,3,3,3,1,1,62,6,26,1,32,6,6,24,6]
theorem g11558 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,2,1,3,0]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,2,1,3,0] (.cons (g11558s0) (.cons (g11558s1) (.cons (g11558s2) (.cons (g11558s3) (.cons (g11558s4) (.cons (g11558s5) (.cons (g11558s6) (.cons (g11558s7) (.cons (g11558s8) (.cons (g11558s9) (.cons (g11558s10) (.cons (g11558s11) .nil))))))))))))
certRow g11559 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,2,1,3,0]) using bank tags []
private abbrev rg11560 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,2,2,0,2]
certRow g11560s0 on (rg11560 0) using bank tags []
certRow g11560s1 on (rg11560 1) using bank tags [28,28,28,28]
certRow g11560s2 on (rg11560 2) using bank tags [3,3,3,3,28,28,28,28,28]
certRow g11560s3 on (rg11560 3) using bank tags []
certRow g11560s4 on (rg11560 4) using bank tags [28,28,28,14,35,28,57,22,22]
certRow g11560s5 on (rg11560 5) using bank tags [3,3,3,28,28,28,28,57,28,28,28,28,57,57,6,28,57,28,57,6,1]
certRow g11560s6 on (rg11560 6) using bank tags [28,57]
certRow g11560s7 on (rg11560 7) using bank tags [3,3,28,28,28,28,28,24,24,19,11,18,19,11,6,19,24,6,19]
theorem g11560 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,2,2,0,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,2,2,0,2] (.cons (g11560s0) (.cons (g11560s1) (.cons (g11560s2) (.cons (g11560s3) (.cons (g11560s4) (.cons (g11560s5) (.cons (g11560s6) (.cons (g11560s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
