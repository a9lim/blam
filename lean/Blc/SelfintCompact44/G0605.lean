import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g12662 on (Grammar43.fiveRow 7 7 4 false 4 3 4 [0,0,4,0]) using bank tags []
certRow g12663 on (Grammar43.fiveRow 7 7 4 true 4 3 4 [0,0,4,0]) using bank tags []
private abbrev rg12664 (i : Nat) := Split43.five 12 i 7 7 4 false 4 3 4 [0,1,0,3]
certRow g12664s0 on (rg12664 0) using bank tags []
certRow g12664s1 on (rg12664 1) using bank tags [28,28,28,48,28,28,28,48,28,28,28,27,28,28,28,27]
certRow g12664s2 on (rg12664 2) using bank tags [28,28,28,48]
certRow g12664s3 on (rg12664 3) using bank tags [28,28,28,48,28,28,28,48]
certRow g12664s4 on (rg12664 4) using bank tags [28,28,28,13,28,28,28,13]
certRow g12664s5 on (rg12664 5) using bank tags [28,28,28,48,28,28,28,48]
certRow g12664s6 on (rg12664 6) using bank tags []
certRow g12664s7 on (rg12664 7) using bank tags []
certRow g12664s8 on (rg12664 8) using bank tags []
certRow g12664s9 on (rg12664 9) using bank tags [28,28,28,27,28,28,28,27]
certRow g12664s10 on (rg12664 10) using bank tags [13,29,29,29,29,29,29,27,29,13,29,28,13,29,29,29,29,29,29,27,29,13,29,28,18,29,29,29,29,29,29,27,29,18,29,28,16,29,29,29,29,29,29,27,29,16,29,28]
certRow g12664s11 on (rg12664 11) using bank tags [28,28,28,27]
theorem g12664 : BadRow (Grammar43.fiveRow 7 7 4 false 4 3 4 [0,1,0,3]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 3 4 [0,1,0,3] (.cons (g12664s0) (.cons (g12664s1) (.cons (g12664s2) (.cons (g12664s3) (.cons (g12664s4) (.cons (g12664s5) (.cons (g12664s6) (.cons (g12664s7) (.cons (g12664s8) (.cons (g12664s9) (.cons (g12664s10) (.cons (g12664s11) .nil))))))))))))
certRow g12665 on (Grammar43.fiveRow 7 7 4 true 4 3 4 [0,1,0,3]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g12666 on (Grammar43.fiveRow 7 7 4 false 4 3 4 [0,1,1,2]) using bank tags [3,3,3,27,3,3,3,27,3,3,3,27,28,28,28,27,28,28,28,27,28,28,28,27,28,28,28,27,28,28,28,13,29,16,29,29,29,29,29,29,27,29,16,29,28]
certRow g12667 on (Grammar43.fiveRow 7 7 4 true 4 3 4 [0,1,1,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,29,12,1,1,1]
certRow g12668 on (Grammar43.fiveRow 7 7 4 false 4 3 4 [0,1,2,1]) using bank tags [3,3,3,27,3,3,3,27,3,3,3,27,28,28,28,27,28,28,28,27,28,28,28,27,28,28,28,27,28,28,28,13,29,18,29,29,29,29,29,29,27,29,18,29,28]
certRow g12669 on (Grammar43.fiveRow 7 7 4 true 4 3 4 [0,1,2,1]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,29,12,1,1,1]
certRow g12670 on (Grammar43.fiveRow 7 7 4 false 4 3 4 [0,1,3,0]) using bank tags [28,28,28,48,28,28,28,48,28,28,28,48,28,28,28,48,28,28,28,27,13,29,29,29,29,29,29,27,29,13,29,28]
certRow g12671 on (Grammar43.fiveRow 7 7 4 true 4 3 4 [0,1,3,0]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1]
end Blc.SelfintSingleObject.Compact44
