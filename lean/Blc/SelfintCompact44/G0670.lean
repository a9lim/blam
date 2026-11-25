import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13373 (i : Nat) := Split43.five 24 i 8 5 4 true 3 2 4 [0,1,0,2]
certRow g13373s0 on (rg13373 0) using bank tags []
certRow g13373s1 on (rg13373 1) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,15,14,15,1,1,57,14,1,14,26,1,1,57,1,14,14,26,1,1,57,14,1,1,1,28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,32,14,26,1,1,57,14,1,15,1,1,1,57,1,14,15,26,1,1,57,15,1,1,1]
certRow g13373s2 on (rg13373 2) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,22,14,1,1,1,57,14,6,22,32,1,1,57,1,14,6,22,1,1,57,1,1,1,1]
certRow g13373s3 on (rg13373 3) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,22,14,1,1,1,57,14,1,35,22,1,1,57,1,14,22,32,1,1,57,1,1,1,1,28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,22,14,1,1,1,57,14,1,22,6,1,1,57,1,14,22,6,1,1,57,1,1,1,1]
certRow g13373s4 on (rg13373 4) using bank tags []
certRow g13373s5 on (rg13373 5) using bank tags [28,59,28,59,28,59,13,14,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,35,14,26,1,1,57,15,1,15,1,1,1,57,6,6,15,32,1,1,57,15,1,1,1,28,59,28,59,28,59,13,14,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,0,14,30,1,1,57,15,1,6,1,1,1,57,6,0,6,6,1,1,57,32,1,1,1] except [Floor44.e1196601576366,Floor44.e1197440437166]
certRow g13373s6 on (rg13373 6) using bank tags []
certRow g13373s7 on (rg13373 7) using bank tags []
certRow g13373s8 on (rg13373 8) using bank tags []
certRow g13373s9 on (rg13373 9) using bank tags []
certRow g13373s10 on (rg13373 10) using bank tags []
certRow g13373s11 on (rg13373 11) using bank tags []
certRow g13373s12 on (rg13373 12) using bank tags []
certRow g13373s13 on (rg13373 13) using bank tags []
certRow g13373s14 on (rg13373 14) using bank tags []
certRow g13373s15 on (rg13373 15) using bank tags []
certRow g13373s16 on (rg13373 16) using bank tags []
certRow g13373s17 on (rg13373 17) using bank tags [7,8,27,57,7,10,6,1,1,1,1,1,10,10,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,54,32,54,6,54,6,50,6,50,22,1,1,1,1,6,1,51,1,6,6,17,14,17,6,1,1,1,1,6,1,1,1,17,1,1,1,1,1,1,1,1,1,1,1,51,1,1,1,1,1,1,1,7,8,27,57,7,10,6,1,1,1,1,1,1,1,28,59,10,10,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,54,32,54,6,50,6,50,42,52,34,1,1,1,1,6,1,6,1,6,6,6,14,6,6,1,1,1,1,51,1,1,1,17,1,1,1,1,1,1,1,1,1,17,1,17,1,1,1,1,1,1,1]
certRow g13373s18 on (rg13373 18) using bank tags []
certRow g13373s19 on (rg13373 19) using bank tags []
certRow g13373s20 on (rg13373 20) using bank tags []
certRow g13373s21 on (rg13373 21) using bank tags []
certRow g13373s22 on (rg13373 22) using bank tags []
certRow g13373s23 on (rg13373 23) using bank tags []
theorem g13373 (hard : BadRow [Floor44.e1196601576366,Floor44.e1197440437166]) : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 4 [0,1,0,2]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 3 2 4 [0,1,0,2] (.cons (g13373s0) (.cons (g13373s1) (.cons (g13373s2) (.cons (g13373s3) (.cons (g13373s4) (.cons (g13373s5 (.cons (hard.get (by decide : Floor44.e1196601576366 ∈ [Floor44.e1196601576366,Floor44.e1197440437166])) (.cons (hard.get (by decide : Floor44.e1197440437166 ∈ [Floor44.e1196601576366,Floor44.e1197440437166])) .nil))) (.cons (g13373s6) (.cons (g13373s7) (.cons (g13373s8) (.cons (g13373s9) (.cons (g13373s10) (.cons (g13373s11) (.cons (g13373s12) (.cons (g13373s13) (.cons (g13373s14) (.cons (g13373s15) (.cons (g13373s16) (.cons (g13373s17) (.cons (g13373s18) (.cons (g13373s19) (.cons (g13373s20) (.cons (g13373s21) (.cons (g13373s22) (.cons (g13373s23) .nil))))))))))))))))))))))))
certRow g13374 on (Grammar43.fiveRow 8 5 4 false 3 2 4 [0,1,1,1]) using bank tags []
certRow g13375 on (Grammar43.fiveRow 8 5 4 true 3 2 4 [0,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
