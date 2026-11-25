import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13420 (i : Nat) := Split43.five 12 i 8 5 4 false 3 2 5 [0,0,2,1,0]
certRow g13420s0 on (rg13420 0) using bank tags []
certRow g13420s1 on (rg13420 1) using bank tags [28,28,28,28,28,28]
certRow g13420s2 on (rg13420 2) using bank tags [28,28]
certRow g13420s3 on (rg13420 3) using bank tags [28,28,28,28]
certRow g13420s4 on (rg13420 4) using bank tags [28,28,28,28,28,28,29,29,19,19,29,29,19,19,29,29]
certRow g13420s5 on (rg13420 5) using bank tags []
certRow g13420s6 on (rg13420 6) using bank tags [28,28,28,28,28,28,28,28]
certRow g13420s7 on (rg13420 7) using bank tags [28,28,29,29,29,0,29,29,29,0,29,29] except [Floor44.e4817622674906,Floor44.e4818159545818]
certRow g13420s8 on (rg13420 8) using bank tags []
certRow g13420s9 on (rg13420 9) using bank tags []
certRow g13420s10 on (rg13420 10) using bank tags [28,28,29,29,29,1,29,29,29,1,29,29,29,29,29,1,29,29,29,1,29,29,29,29,29,1,29,29,29,1,29,29,29,29,19,19,29,29,19,19,29,29,29,29,29,0,29,29,29,0,29,29] except [Floor44.e4817624502074,Floor44.e4818161372986]
certRow g13420s11 on (rg13420 11) using bank tags []
theorem g13420 (hard : BadRow [Floor44.e4817624502074,Floor44.e4818161372986,Floor44.e4817622674906,Floor44.e4818159545818]) : BadRow (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,0,2,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 3 2 5 [0,0,2,1,0] (.cons (g13420s0) (.cons (g13420s1) (.cons (g13420s2) (.cons (g13420s3) (.cons (g13420s4) (.cons (g13420s5) (.cons (g13420s6) (.cons (g13420s7 (.cons (hard.get (by decide : Floor44.e4817622674906 ∈ [Floor44.e4817624502074,Floor44.e4818161372986,Floor44.e4817622674906,Floor44.e4818159545818])) (.cons (hard.get (by decide : Floor44.e4818159545818 ∈ [Floor44.e4817624502074,Floor44.e4818161372986,Floor44.e4817622674906,Floor44.e4818159545818])) .nil))) (.cons (g13420s8) (.cons (g13420s9) (.cons (g13420s10 (.cons (hard.get (by decide : Floor44.e4817624502074 ∈ [Floor44.e4817624502074,Floor44.e4818161372986,Floor44.e4817622674906,Floor44.e4818159545818])) (.cons (hard.get (by decide : Floor44.e4818161372986 ∈ [Floor44.e4817624502074,Floor44.e4818161372986,Floor44.e4817622674906,Floor44.e4818159545818])) .nil))) (.cons (g13420s11) .nil))))))))))))
private abbrev rg13421 (i : Nat) := Split43.five 12 i 8 5 4 true 3 2 5 [0,0,2,1,0]
certRow g13421s0 on (rg13421 0) using bank tags []
certRow g13421s1 on (rg13421 1) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13421s2 on (rg13421 2) using bank tags [28,28,28,27,59,1]
certRow g13421s3 on (rg13421 3) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13421s4 on (rg13421 4) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,15,14,19,19,1,1,1,28,1,1,1,1]
certRow g13421s5 on (rg13421 5) using bank tags []
certRow g13421s6 on (rg13421 6) using bank tags [28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,15,59,1]
certRow g13421s7 on (rg13421 7) using bank tags [28,28,28,0,59,1,30,14,1,0,6,1,7,28,1,1,1,1] except [Floor44.e1197493464538,Floor44.e1196965244378]
certRow g13421s8 on (rg13421 8) using bank tags []
certRow g13421s9 on (rg13421 9) using bank tags []
certRow g13421s10 on (rg13421 10) using bank tags [28,28,28,6,59,1,32,1,1,1,6,1,6,1,1,1,1,1,8,1,10,1,6,1,6,1,1,1,1,1,8,1,1,1,6,1,6,1,1,1,1,1,39,1,19,19,1,1,1,1,1,1,1,1,6,14,6,0,6,1,6,28,1,1,1,1] except [Floor44.e1196967071546]
certRow g13421s11 on (rg13421 11) using bank tags []
theorem g13421 (hard : BadRow [Floor44.e1197493464538,Floor44.e1196967071546,Floor44.e1196965244378]) : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,0,2,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 3 2 5 [0,0,2,1,0] (.cons (g13421s0) (.cons (g13421s1) (.cons (g13421s2) (.cons (g13421s3) (.cons (g13421s4) (.cons (g13421s5) (.cons (g13421s6) (.cons (g13421s7 (.cons (hard.get (by decide : Floor44.e1197493464538 ∈ [Floor44.e1197493464538,Floor44.e1196967071546,Floor44.e1196965244378])) (.cons (hard.get (by decide : Floor44.e1196965244378 ∈ [Floor44.e1197493464538,Floor44.e1196967071546,Floor44.e1196965244378])) .nil))) (.cons (g13421s8) (.cons (g13421s9) (.cons (g13421s10 (.cons (hard.get (by decide : Floor44.e1196967071546 ∈ [Floor44.e1197493464538,Floor44.e1196967071546,Floor44.e1196965244378])) .nil)) (.cons (g13421s11) .nil))))))))))))
certRow g13422 on (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,0,3,0,0]) using bank tags []
certRow g13423 on (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,0,3,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
