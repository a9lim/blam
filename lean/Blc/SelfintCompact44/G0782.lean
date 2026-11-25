import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14524 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 5 [1,2,0,1,0]
certRow g14524s0 on (rg14524 0) using bank tags [18,6,18,6,6,18,18,6,6,18,29,6,29,35,29,6,29,6,19,19,19,19,29,6,29,22,29,35,29,6,19,19,19,19]
certRow g14524s1 on (rg14524 1) using bank tags []
certRow g14524s2 on (rg14524 2) using bank tags []
certRow g14524s3 on (rg14524 3) using bank tags [1,1,1,1,57,13,57,15,57,15,57,13,57,1,57,1,57,15,57,30,57,13,57,30]
certRow g14524s4 on (rg14524 4) using bank tags []
certRow g14524s5 on (rg14524 5) using bank tags [57,6,57,6]
certRow g14524s6 on (rg14524 6) using bank tags []
certRow g14524s7 on (rg14524 7) using bank tags [57,13,57,22,57,6,29,35,29,0,19,19,19,19] except [Floor44.e4786765230946]
certRow g14524s8 on (rg14524 8) using bank tags [57,22,57,65]
certRow g14524s9 on (rg14524 9) using bank tags [57,18,57,61,57,6,57,0,57,6,27,45,27,93] except [Floor44.e4786746768738]
certRow g14524s10 on (rg14524 10) using bank tags [57,13]
certRow g14524s11 on (rg14524 11) using bank tags []
theorem g14524 (hard : BadRow [Floor44.e4786746768738,Floor44.e4786765230946]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 5 [1,2,0,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 5 [1,2,0,1,0] (.cons (g14524s0) (.cons (g14524s1) (.cons (g14524s2) (.cons (g14524s3) (.cons (g14524s4) (.cons (g14524s5) (.cons (g14524s6) (.cons (g14524s7 (.cons (hard.get (by decide : Floor44.e4786765230946 ∈ [Floor44.e4786746768738,Floor44.e4786765230946])) .nil)) (.cons (g14524s8) (.cons (g14524s9 (.cons (hard.get (by decide : Floor44.e4786746768738 ∈ [Floor44.e4786746768738,Floor44.e4786765230946])) .nil)) (.cons (g14524s10) (.cons (g14524s11) .nil))))))))))))
certRow g14525 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [1,2,0,1,0]) using bank tags []
certRow g14526 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [1,2,1,0,0]) using bank tags [1,1,1,1,57,15,57,15,57,15,57,15,57,15,57,15,57,13,57,15,57,15,57,6,57,22,57,6,57,18,57,18,57,22,57,13,18,31,18,16,18,6,29,6,29,22,29,6,29,22,29,6,29,22,29,35,29,35,29,35,29,0,27,62] except [Floor44.e4786765231010]
certRow g14527 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [1,2,1,0,0]) using bank tags []
certRow g14528 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [1,3,0,0,0]) using bank tags []
certRow g14529 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [1,3,0,0,0]) using bank tags []
certRow g14530 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [2,0,0,0,2]) using bank tags [1,1,1,1,27,13,27,13,16,11,16,11,27,11,27,11,27,6]
certRow g14531 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [2,0,0,0,2]) using bank tags []
certRow g14532 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [2,0,0,1,1]) using bank tags [27,15,27,13,27,1,27,6,27,6,27,6,27,32,27,45,6,31,19,19,27,11,27,6,27,6,27,6,27,6,27,6,27,61]
certRow g14533 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [2,0,0,1,1]) using bank tags []
certRow g14534 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [2,0,0,2,0]) using bank tags [1,1,1,1,27,13,27,13,27,13,16,11,16,11,27,11,27,11,27,6,27,13,27,11]
certRow g14535 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [2,0,0,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
