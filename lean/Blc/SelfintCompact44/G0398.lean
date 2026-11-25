import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g9211 on (Grammar43.fiveRow 7 6 6 true 5 3 4 [1,0,3,1]) using bank tags [28,28,28,48,59,1,28,28,28,48,59,1,28,28,28,48,59,1,28,28,28,48,59,1,28,28,28,48,59,1,28,28,28,27,59,1,28,28,28,13,59,1,28,28,28,27,59,1,28,28,28,1,59,1,28,28,28,11,59,1,8,27,1,1,1,1,7,28,1,1,1,1,9,27,9,46,1,1,1,28,8,26,1,1]
certRow g9212 on (Grammar43.fiveRow 7 6 6 false 5 3 4 [1,0,4,0]) using bank tags []
certRow g9213 on (Grammar43.fiveRow 7 6 6 true 5 3 4 [1,0,4,0]) using bank tags []
certRow g9214 on (Grammar43.fiveRow 7 6 6 false 5 3 4 [1,1,0,3]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,29,29,29,1,29,29,29,1,29,29,29,29,29,11,29,29,29,1,29,29,29,29,29,49,29,29,29,32,29,29,29,29,29,1,29,29,29,6,29,29]
private abbrev rg9215 (i : Nat) := Split43.five 12 i 7 6 6 true 5 3 4 [1,1,0,3]
certRow g9215s0 on (rg9215 0) using bank tags []
certRow g9215s1 on (rg9215 1) using bank tags [28,28,28,48,59,1,28,28,28,48,59,1,28,28,28,13,59,1,28,28,28,13,59,1]
certRow g9215s2 on (rg9215 2) using bank tags [28,28,28,48,59,1]
certRow g9215s3 on (rg9215 3) using bank tags [28,28,28,48,59,1,28,28,28,48,59,1]
certRow g9215s4 on (rg9215 4) using bank tags [9,27,7,1,1,1,10,28,1,1,1,1,9,27,7,1,1,1,1,28,10,1,1,1,8,27,8,47,1,1,1,28,8,26,1,1,8,27,6,6,1,1,1,28,1,1,1,1]
certRow g9215s5 on (rg9215 5) using bank tags []
certRow g9215s6 on (rg9215 6) using bank tags []
certRow g9215s7 on (rg9215 7) using bank tags []
certRow g9215s8 on (rg9215 8) using bank tags []
certRow g9215s9 on (rg9215 9) using bank tags [28,28,28,13,59,1,28,28,28,13,59,1]
certRow g9215s10 on (rg9215 10) using bank tags []
certRow g9215s11 on (rg9215 11) using bank tags [28,28,28,13,59,1]
theorem g9215 : BadRow (Grammar43.fiveRow 7 6 6 true 5 3 4 [1,1,0,3]) :=
  Split43.five_cover 12 (by decide) 7 6 6 true 5 3 4 [1,1,0,3] (.cons (g9215s0) (.cons (g9215s1) (.cons (g9215s2) (.cons (g9215s3) (.cons (g9215s4) (.cons (g9215s5) (.cons (g9215s6) (.cons (g9215s7) (.cons (g9215s8) (.cons (g9215s9) (.cons (g9215s10) (.cons (g9215s11) .nil))))))))))))
certRow g9216 on (Grammar43.fiveRow 7 6 6 false 5 3 4 [1,1,1,2]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,29,29,29,1,29,29,29,6,29,29]
certRow g9217 on (Grammar43.fiveRow 7 6 6 true 5 3 4 [1,1,1,2]) using bank tags [28,28,28,13,59,1,28,28,28,18,59,1,28,28,28,27,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,0,59,1,8,27,22,6,6,1,6,28,1,1,1,1] except [Floor44.e1197491282798]
certRow g9218 on (Grammar43.fiveRow 7 6 6 false 5 3 4 [1,1,2,1]) using bank tags [28,28,28,28,28,28,28,28,28,28,29,29,29,49,29,29,29,30,29,29]
end Blc.SelfintSingleObject.Compact44
