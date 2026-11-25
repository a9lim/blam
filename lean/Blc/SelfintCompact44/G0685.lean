import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13413 (i : Nat) := Split43.five 24 i 8 5 4 true 3 2 5 [0,0,1,0,2]
certRow g13413s0 on (rg13413 0) using bank tags []
certRow g13413s1 on (rg13413 1) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13413s2 on (rg13413 2) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13413s3 on (rg13413 3) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13413s4 on (rg13413 4) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,15,14,19,19,1,1,1,28,1,1,1,1,15,14,19,19,1,1,1,28,1,1,1,1]
certRow g13413s5 on (rg13413 5) using bank tags []
certRow g13413s6 on (rg13413 6) using bank tags [28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,15,59,1,28,28,28,15,59,1]
certRow g13413s7 on (rg13413 7) using bank tags []
certRow g13413s8 on (rg13413 8) using bank tags []
certRow g13413s9 on (rg13413 9) using bank tags []
certRow g13413s10 on (rg13413 10) using bank tags [28,28,28,0,59,1,28,28,28,6,59,1] except [Floor44.e1197493522030]
certRow g13413s11 on (rg13413 11) using bank tags []
certRow g13413s12 on (rg13413 12) using bank tags []
certRow g13413s13 on (rg13413 13) using bank tags []
certRow g13413s14 on (rg13413 14) using bank tags []
certRow g13413s15 on (rg13413 15) using bank tags []
certRow g13413s16 on (rg13413 16) using bank tags []
certRow g13413s17 on (rg13413 17) using bank tags []
certRow g13413s18 on (rg13413 18) using bank tags []
certRow g13413s19 on (rg13413 19) using bank tags []
certRow g13413s20 on (rg13413 20) using bank tags []
certRow g13413s21 on (rg13413 21) using bank tags []
certRow g13413s22 on (rg13413 22) using bank tags [8,1,10,1,1,1,51,1,1,1,1,1,8,1,10,1,1,1,6,1,10,1,1,1,8,1,1,1,6,1,39,1,1,1,1,1,8,1,10,1,1,1,6,1,1,1,1,1,8,1,1,1,1,1,12,1,1,1,1,1,10,1,19,19,1,1,1,1,1,1,1,1,10,1,19,19,1,1,1,1,1,1,1,1,6,14,6,0,1,1,1,28,1,1,1,1,6,14,6,0,1,1,1,28,1,1,1,1] except [Floor44.e1196967071342,Floor44.e1196967070638]
certRow g13413s23 on (rg13413 23) using bank tags []
theorem g13413 (hard : BadRow [Floor44.e1197493522030,Floor44.e1196967071342,Floor44.e1196967070638]) : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,0,1,0,2]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 3 2 5 [0,0,1,0,2] (.cons (g13413s0) (.cons (g13413s1) (.cons (g13413s2) (.cons (g13413s3) (.cons (g13413s4) (.cons (g13413s5) (.cons (g13413s6) (.cons (g13413s7) (.cons (g13413s8) (.cons (g13413s9) (.cons (g13413s10 (.cons (hard.get (by decide : Floor44.e1197493522030 ∈ [Floor44.e1197493522030,Floor44.e1196967071342,Floor44.e1196967070638])) .nil)) (.cons (g13413s11) (.cons (g13413s12) (.cons (g13413s13) (.cons (g13413s14) (.cons (g13413s15) (.cons (g13413s16) (.cons (g13413s17) (.cons (g13413s18) (.cons (g13413s19) (.cons (g13413s20) (.cons (g13413s21) (.cons (g13413s22 (.cons (hard.get (by decide : Floor44.e1196967071342 ∈ [Floor44.e1197493522030,Floor44.e1196967071342,Floor44.e1196967070638])) (.cons (hard.get (by decide : Floor44.e1196967070638 ∈ [Floor44.e1197493522030,Floor44.e1196967071342,Floor44.e1196967070638])) .nil))) (.cons (g13413s23) .nil))))))))))))))))))))))))
certRow g13414 on (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,0,1,1,1]) using bank tags []
certRow g13415 on (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,0,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
