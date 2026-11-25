import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14602 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,0,1,1,2,0]
certRow g14602s0 on (rg14602 0) using bank tags [1,1,1,28,28,28,6,6,19,22,19,53,19,29,6]
certRow g14602s1 on (rg14602 1) using bank tags [28,28,28,28,0,0,0] except [Floor44.e4846200999650,Floor44.e4846200977122,Floor44.e4846200927970]
certRow g14602s2 on (rg14602 2) using bank tags [1,1,28,28,28,28,13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,1,1,1,1,1,1,1,6,19,19,19,0,19,22,6,22,6,0,0,22,35,22,35] except [Floor44.e4846360727162,Floor44.e4836157717018,Floor44.e4846434481786]
certRow g14602s3 on (rg14602 3) using bank tags [28,28,28,28,28,1,212,1,22,1,212]
certRow g14602s4 on (rg14602 4) using bank tags [27,28,28,28,1,28,1,28,1,28,6,1]
certRow g14602s5 on (rg14602 5) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g14602s6 on (rg14602 6) using bank tags [28,28,28,28]
certRow g14602s7 on (rg14602 7) using bank tags []
certRow g14602s8 on (rg14602 8) using bank tags [28,28,28,28,28,28,28,28,28,28,28,22,0,19,19] except [Floor44.e4845892013690]
certRow g14602s9 on (rg14602 9) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g14602s10 on (rg14602 10) using bank tags [1,1,28,1,19,19,19,19,19,19,19,19,19,19]
certRow g14602s11 on (rg14602 11) using bank tags []
theorem g14602 (hard : BadRow [Floor44.e4846360727162,Floor44.e4836157717018,Floor44.e4846434481786,Floor44.e4845892013690,Floor44.e4846200999650,Floor44.e4846200977122,Floor44.e4846200927970]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,1,1,2,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,0,1,1,2,0] (.cons (g14602s0) (.cons (g14602s1 (.cons (hard.get (by decide : Floor44.e4846200999650 ∈ [Floor44.e4846360727162,Floor44.e4836157717018,Floor44.e4846434481786,Floor44.e4845892013690,Floor44.e4846200999650,Floor44.e4846200977122,Floor44.e4846200927970])) (.cons (hard.get (by decide : Floor44.e4846200977122 ∈ [Floor44.e4846360727162,Floor44.e4836157717018,Floor44.e4846434481786,Floor44.e4845892013690,Floor44.e4846200999650,Floor44.e4846200977122,Floor44.e4846200927970])) (.cons (hard.get (by decide : Floor44.e4846200927970 ∈ [Floor44.e4846360727162,Floor44.e4836157717018,Floor44.e4846434481786,Floor44.e4845892013690,Floor44.e4846200999650,Floor44.e4846200977122,Floor44.e4846200927970])) .nil)))) (.cons (g14602s2 (.cons (hard.get (by decide : Floor44.e4846360727162 ∈ [Floor44.e4846360727162,Floor44.e4836157717018,Floor44.e4846434481786,Floor44.e4845892013690,Floor44.e4846200999650,Floor44.e4846200977122,Floor44.e4846200927970])) (.cons (hard.get (by decide : Floor44.e4836157717018 ∈ [Floor44.e4846360727162,Floor44.e4836157717018,Floor44.e4846434481786,Floor44.e4845892013690,Floor44.e4846200999650,Floor44.e4846200977122,Floor44.e4846200927970])) (.cons (hard.get (by decide : Floor44.e4846434481786 ∈ [Floor44.e4846360727162,Floor44.e4836157717018,Floor44.e4846434481786,Floor44.e4845892013690,Floor44.e4846200999650,Floor44.e4846200977122,Floor44.e4846200927970])) .nil)))) (.cons (g14602s3) (.cons (g14602s4) (.cons (g14602s5) (.cons (g14602s6) (.cons (g14602s7) (.cons (g14602s8 (.cons (hard.get (by decide : Floor44.e4845892013690 ∈ [Floor44.e4846360727162,Floor44.e4836157717018,Floor44.e4846434481786,Floor44.e4845892013690,Floor44.e4846200999650,Floor44.e4846200977122,Floor44.e4846200927970])) .nil)) (.cons (g14602s9) (.cons (g14602s10) (.cons (g14602s11) .nil))))))))))))
certRow g14603 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,1,1,2,0]) using bank tags [14,14,14,14,14,14,1,1,1]
end Blc.SelfintSingleObject.Compact44
