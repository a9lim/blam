import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g9219 on (Grammar43.fiveRow 7 6 6 true 5 3 4 [1,1,2,1]) using bank tags [28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,26,59,1,28,28,28,11,59,1,25,27,15,32,25,1,14,28,15,26,1,1]
certRow g9220 on (Grammar43.fiveRow 7 6 6 false 5 3 4 [1,1,3,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,29,29,29,1,29,29,29,16,29,29]
certRow g9221 on (Grammar43.fiveRow 7 6 6 true 5 3 4 [1,1,3,0]) using bank tags [28,28,28,48,59,1,28,28,28,48,59,1,28,28,28,48,59,1,28,28,28,13,59,1,28,28,28,27,59,1,9,27,7,18,15,1,1,28,15,26,1,1]
certRow g9222 on (Grammar43.fiveRow 7 6 6 false 5 3 4 [1,2,0,2]) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28,29,29,29,24,29,29,29,62,29,29,29,29,19,19,29,29,19,19,29,29]
private abbrev rg9223 (i : Nat) := Split43.five 12 i 7 6 6 true 5 3 4 [1,2,0,2]
certRow g9223s0 on (rg9223 0) using bank tags [28,28,28,13,59,1]
certRow g9223s1 on (rg9223 1) using bank tags [3,3,3,21,4,1,3,3,3,1,4,1,28,28,28,18,59,1,28,28,28,11,59,1]
certRow g9223s2 on (rg9223 2) using bank tags [3,3,3,1,4,1,28,28,28,13,59,1]
certRow g9223s3 on (rg9223 3) using bank tags [3,3,3,1,4,1,3,3,3,1,4,1]
certRow g9223s4 on (rg9223 4) using bank tags [24,27,24,45,1,1,13,28,26,30,1,1,24,27,19,19,1,1,13,28,1,1,1,1]
certRow g9223s5 on (rg9223 5) using bank tags []
certRow g9223s6 on (rg9223 6) using bank tags []
certRow g9223s7 on (rg9223 7) using bank tags []
certRow g9223s8 on (rg9223 8) using bank tags []
certRow g9223s9 on (rg9223 9) using bank tags [28,28,28,13,59,1,28,28,28,13,59,1]
certRow g9223s10 on (rg9223 10) using bank tags []
certRow g9223s11 on (rg9223 11) using bank tags [28,28,28,1,59,1]
theorem g9223 : BadRow (Grammar43.fiveRow 7 6 6 true 5 3 4 [1,2,0,2]) :=
  Split43.five_cover 12 (by decide) 7 6 6 true 5 3 4 [1,2,0,2] (.cons (g9223s0) (.cons (g9223s1) (.cons (g9223s2) (.cons (g9223s3) (.cons (g9223s4) (.cons (g9223s5) (.cons (g9223s6) (.cons (g9223s7) (.cons (g9223s8) (.cons (g9223s9) (.cons (g9223s10) (.cons (g9223s11) .nil))))))))))))
certRow g9224 on (Grammar43.fiveRow 7 6 6 false 5 3 4 [1,2,1,1]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,29,29,29,1,29,29,29,6,29,29,29,29,29,44,29,29,29,45,29,29]
certRow g9225 on (Grammar43.fiveRow 7 6 6 true 5 3 4 [1,2,1,1]) using bank tags [28,28,28,27,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,18,59,1,28,28,28,1,59,1,28,28,28,11,59,1,26,27,22,6,6,1,13,28,1,1,1,1,23,27,11,16,23,1,13,28,15,32,1,1]
end Blc.SelfintSingleObject.Compact44
