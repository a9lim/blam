import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11546 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,2,0,2,2]
certRow g11546s0 on (rg11546 0) using bank tags [3]
certRow g11546s1 on (rg11546 1) using bank tags [28,28,28,28,57,28,57]
certRow g11546s2 on (rg11546 2) using bank tags [3,3,3,3,3,28,28,28,28,28,28,6,6]
certRow g11546s3 on (rg11546 3) using bank tags []
certRow g11546s4 on (rg11546 4) using bank tags [28,28,28,28,57,28,28,57,22]
certRow g11546s5 on (rg11546 5) using bank tags [3,3,28,28,28,28,28,28,28,57,28,28,57,6,1,1]
certRow g11546s6 on (rg11546 6) using bank tags []
certRow g11546s7 on (rg11546 7) using bank tags [28,28,28,28,28,28,13,26,1,1,13,11,6,11,11,11,6,19,62,6,19,62]
theorem g11546 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,2,0,2,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,2,0,2,2] (.cons (g11546s0) (.cons (g11546s1) (.cons (g11546s2) (.cons (g11546s3) (.cons (g11546s4) (.cons (g11546s5) (.cons (g11546s6) (.cons (g11546s7) .nil))))))))
certRow g11547 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,2,0,2,2]) using bank tags []
private abbrev rg11548 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,2,0,3,1]
certRow g11548s0 on (rg11548 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28]
certRow g11548s1 on (rg11548 1) using bank tags [3,3,3,3,3,3,3,28,28,28,57,28,28,28,28,57,22,1]
certRow g11548s2 on (rg11548 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28]
certRow g11548s3 on (rg11548 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28]
certRow g11548s4 on (rg11548 4) using bank tags [3,3,3,3,3]
certRow g11548s5 on (rg11548 5) using bank tags [6,28,28]
certRow g11548s6 on (rg11548 6) using bank tags [3,3,3,3,3,28,28,28]
certRow g11548s7 on (rg11548 7) using bank tags [3,3,28,28]
certRow g11548s8 on (rg11548 8) using bank tags [28,28,28,28,28,28,28]
certRow g11548s9 on (rg11548 9) using bank tags [20,24,28]
certRow g11548s10 on (rg11548 10) using bank tags [3,3,3,3,28]
certRow g11548s11 on (rg11548 11) using bank tags [3,3,3,3,3,19,1,6,11,6,62,61,62,1,11]
theorem g11548 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,2,0,3,1]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,2,0,3,1] (.cons (g11548s0) (.cons (g11548s1) (.cons (g11548s2) (.cons (g11548s3) (.cons (g11548s4) (.cons (g11548s5) (.cons (g11548s6) (.cons (g11548s7) (.cons (g11548s8) (.cons (g11548s9) (.cons (g11548s10) (.cons (g11548s11) .nil))))))))))))
certRow g11549 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,2,0,3,1]) using bank tags []
private abbrev rg11550 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,2,0,4,0]
certRow g11550s0 on (rg11550 0) using bank tags []
certRow g11550s1 on (rg11550 1) using bank tags [28,28]
certRow g11550s2 on (rg11550 2) using bank tags [28,28,28,28,28,28]
certRow g11550s3 on (rg11550 3) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g11550s4 on (rg11550 4) using bank tags [28,28,28,28,28]
certRow g11550s5 on (rg11550 5) using bank tags [28,28,28,28,28]
certRow g11550s6 on (rg11550 6) using bank tags [28,28,28,28,28]
certRow g11550s7 on (rg11550 7) using bank tags [28,28,28,28,28,28,28,28,28,1,24]
theorem g11550 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,2,0,4,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,2,0,4,0] (.cons (g11550s0) (.cons (g11550s1) (.cons (g11550s2) (.cons (g11550s3) (.cons (g11550s4) (.cons (g11550s5) (.cons (g11550s6) (.cons (g11550s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
