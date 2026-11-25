import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g13434 on (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,1,2,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,29,29,29,6,29,29,29,6,29,29,29,29,29,6,29,29,29,6,29,29,29,29,29,6,29,29,29,6,29,29,29,29,29,0,29,29,29,0,29,29] except [Floor44.e4817622677994,Floor44.e4818159548906]
private abbrev rg13435 (i : Nat) := Split43.five 12 i 8 5 4 true 3 2 5 [0,1,2,0,0]
certRow g13435s0 on (rg13435 0) using bank tags []
certRow g13435s1 on (rg13435 1) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13435s2 on (rg13435 2) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13435s3 on (rg13435 3) using bank tags [28,28,28,27,59,1]
certRow g13435s4 on (rg13435 4) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13435s5 on (rg13435 5) using bank tags []
certRow g13435s6 on (rg13435 6) using bank tags [28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1]
certRow g13435s7 on (rg13435 7) using bank tags [28,28,28,0,59,1,7,14,7,0,1,1,1,28,1,1,1,1] except [Floor44.e1197493467626,Floor44.e1196965247466]
certRow g13435s8 on (rg13435 8) using bank tags []
certRow g13435s9 on (rg13435 9) using bank tags []
certRow g13435s10 on (rg13435 10) using bank tags [9,1,7,6,15,1,1,1,15,1,1,1,9,1,7,6,15,1,1,1,15,1,1,1,9,1,7,6,15,1,1,1,10,1,1,1]
certRow g13435s11 on (rg13435 11) using bank tags []
theorem g13435 (hard : BadRow [Floor44.e1197493467626,Floor44.e1196965247466]) : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,1,2,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 3 2 5 [0,1,2,0,0] (.cons (g13435s0) (.cons (g13435s1) (.cons (g13435s2) (.cons (g13435s3) (.cons (g13435s4) (.cons (g13435s5) (.cons (g13435s6) (.cons (g13435s7 (.cons (hard.get (by decide : Floor44.e1197493467626 ∈ [Floor44.e1197493467626,Floor44.e1196965247466])) (.cons (hard.get (by decide : Floor44.e1196965247466 ∈ [Floor44.e1197493467626,Floor44.e1196965247466])) .nil))) (.cons (g13435s8) (.cons (g13435s9) (.cons (g13435s10) (.cons (g13435s11) .nil))))))))))))
certRow g13436 on (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,2,0,0,1]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,29,29,29,1,29,29,29,6,29,29,29,29,29,1,29,29,29,6,29,29,29,29,29,1,29,29,29,6,29,29,29,29,29,1,29,29,29,6,29,29,29,29,29,1,29,29,29,6,29,29]
end Blc.SelfintSingleObject.Compact44
