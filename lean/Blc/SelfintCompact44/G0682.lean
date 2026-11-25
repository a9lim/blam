import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13401 (i : Nat) := Split43.five 12 i 8 5 4 true 3 2 4 [2,1,0,0]
certRow g13401s0 on (rg13401 0) using bank tags []
certRow g13401s1 on (rg13401 1) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,27,27,13,13,11,1,1,27,13,13,11,26,1,1,57,1,14,1,26,1,1,57,14,1,1,1,28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,27,27,13,13,11,1,1,27,13,13,11,1,1,1,57,1,14,6,32,1,1,57,14,1,1,1]
certRow g13401s2 on (rg13401 2) using bank tags []
certRow g13401s3 on (rg13401 3) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,27,27,13,13,11,1,1,27,13,13,11,6,1,1,57,1,14,1,1,1,1,57,14,1,1,1]
certRow g13401s4 on (rg13401 4) using bank tags []
certRow g13401s5 on (rg13401 5) using bank tags []
certRow g13401s6 on (rg13401 6) using bank tags []
certRow g13401s7 on (rg13401 7) using bank tags []
certRow g13401s8 on (rg13401 8) using bank tags []
certRow g13401s9 on (rg13401 9) using bank tags []
certRow g13401s10 on (rg13401 10) using bank tags []
certRow g13401s11 on (rg13401 11) using bank tags []
theorem g13401 : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 4 [2,1,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 3 2 4 [2,1,0,0] (.cons (g13401s0) (.cons (g13401s1) (.cons (g13401s2) (.cons (g13401s3) (.cons (g13401s4) (.cons (g13401s5) (.cons (g13401s6) (.cons (g13401s7) (.cons (g13401s8) (.cons (g13401s9) (.cons (g13401s10) (.cons (g13401s11) .nil))))))))))))
certRow g13402 on (Grammar43.fiveRow 8 5 4 false 3 2 4 [3,0,0,0]) using bank tags []
certRow g13403 on (Grammar43.fiveRow 8 5 4 true 3 2 4 [3,0,0,0]) using bank tags []
certRow g13404 on (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,0,0,0,3]) using bank tags []
certRow g13405 on (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,0,0,0,3]) using bank tags []
certRow g13406 on (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,0,0,1,2]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,29,29,29,1,29,29,29,1,29,29,29,29,29,1,29,29,29,1,29,29,29,29,29,1,29,29,29,1,29,29,29,29,19,19,29,29,19,19,29,29,29,29,29,0,29,29,29,0,29,29,29,29,19,19,29,29,19,19,29,29] except [Floor44.e4817624501102,Floor44.e4818161372014]
end Blc.SelfintSingleObject.Compact44
