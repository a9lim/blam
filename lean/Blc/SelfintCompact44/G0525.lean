import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g11639 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,2,2,1]) using bank tags []
private abbrev rg11640 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [1,0,2,3,0]
certRow g11640s0 on (rg11640 0) using bank tags [3,3,3,3,28,28,28,28,28,14,1,28,14,1,1]
certRow g11640s1 on (rg11640 1) using bank tags [3,3,3,3,3,3,3,28,27]
certRow g11640s2 on (rg11640 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,14,26,28,57,28,28,14,1]
certRow g11640s3 on (rg11640 3) using bank tags [3,3,3,3,3,3,13,13,13,13,13,44,19,6,28]
certRow g11640s4 on (rg11640 4) using bank tags [3,3,3,3,3]
certRow g11640s5 on (rg11640 5) using bank tags [3,3,3,28,28,28,14,26]
certRow g11640s6 on (rg11640 6) using bank tags [3,3,15,11]
certRow g11640s7 on (rg11640 7) using bank tags [3,3,3,28]
certRow g11640s8 on (rg11640 8) using bank tags [28,28,28,57,28,57,28,6]
certRow g11640s9 on (rg11640 9) using bank tags [28,28,28]
certRow g11640s10 on (rg11640 10) using bank tags [3,3,3]
certRow g11640s11 on (rg11640 11) using bank tags [3,3,3,3,3,28]
theorem g11640 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,2,3,0]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [1,0,2,3,0] (.cons (g11640s0) (.cons (g11640s1) (.cons (g11640s2) (.cons (g11640s3) (.cons (g11640s4) (.cons (g11640s5) (.cons (g11640s6) (.cons (g11640s7) (.cons (g11640s8) (.cons (g11640s9) (.cons (g11640s10) (.cons (g11640s11) .nil))))))))))))
certRow g11641 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,2,3,0]) using bank tags []
private abbrev rg11642 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [1,0,3,0,2]
certRow g11642s0 on (rg11642 0) using bank tags [3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g11642s1 on (rg11642 1) using bank tags [3,3,3,3,3,3,3,28,57,1,28,57,1,1,28,28,1,27,27]
certRow g11642s2 on (rg11642 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,57,1]
certRow g11642s3 on (rg11642 3) using bank tags [3,3,3,3,28,28,3,13,13,13,13,13,1,13,13,44,44,24,19,6,28,28,6,26]
certRow g11642s4 on (rg11642 4) using bank tags [3,3,3,3,3]
certRow g11642s5 on (rg11642 5) using bank tags [3,3,28,28,28,28,28]
certRow g11642s6 on (rg11642 6) using bank tags [3,3,28,28]
certRow g11642s7 on (rg11642 7) using bank tags [28,28]
certRow g11642s8 on (rg11642 8) using bank tags [3,28,28]
certRow g11642s9 on (rg11642 9) using bank tags [28,28,28]
certRow g11642s10 on (rg11642 10) using bank tags [3,3,3,3,3,28,28,1]
certRow g11642s11 on (rg11642 11) using bank tags [3,3,3,3,3,28,28,27,27]
theorem g11642 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,3,0,2]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [1,0,3,0,2] (.cons (g11642s0) (.cons (g11642s1) (.cons (g11642s2) (.cons (g11642s3) (.cons (g11642s4) (.cons (g11642s5) (.cons (g11642s6) (.cons (g11642s7) (.cons (g11642s8) (.cons (g11642s9) (.cons (g11642s10) (.cons (g11642s11) .nil))))))))))))
certRow g11643 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,3,0,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
