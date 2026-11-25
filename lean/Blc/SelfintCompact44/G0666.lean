import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13367 (i : Nat) := Split43.five 24 i 8 5 4 true 3 2 4 [0,0,1,2]
certRow g13367s0 on (rg13367 0) using bank tags []
certRow g13367s1 on (rg13367 1) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,22,14,1,1,1,57,14,6,22,32,1,1,57,1,14,6,26,1,1,57,1,1,1,1]
certRow g13367s2 on (rg13367 2) using bank tags []
certRow g13367s3 on (rg13367 3) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,22,14,1,1,1,57,14,6,43,35,1,1,57,1,14,22,32,1,1,57,1,1,1,1,28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,6,14,1,1,1,57,14,6,22,36,1,1,57,1,14,6,6,1,1,57,1,1,1,1]
certRow g13367s4 on (rg13367 4) using bank tags []
certRow g13367s5 on (rg13367 5) using bank tags [28,59,28,59,28,59,13,14,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,0,14,1,1,1,57,15,1,6,1,1,1,57,6,0,6,22,1,1,57,1,1,1,1] except [Floor44.e1196601576302,Floor44.e1197440437102]
certRow g13367s6 on (rg13367 6) using bank tags []
certRow g13367s7 on (rg13367 7) using bank tags []
certRow g13367s8 on (rg13367 8) using bank tags []
certRow g13367s9 on (rg13367 9) using bank tags []
certRow g13367s10 on (rg13367 10) using bank tags []
certRow g13367s11 on (rg13367 11) using bank tags []
certRow g13367s12 on (rg13367 12) using bank tags []
certRow g13367s13 on (rg13367 13) using bank tags []
certRow g13367s14 on (rg13367 14) using bank tags []
certRow g13367s15 on (rg13367 15) using bank tags []
certRow g13367s16 on (rg13367 16) using bank tags []
certRow g13367s17 on (rg13367 17) using bank tags [10,8,27,57,1,1,1,1,1,1,1,1,7,10,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,10,32,6,6,50,6,1,0,12,0,1,1,1,1,6,1,51,1,1,1,6,14,1,1,1,1,1,1,1,1,1,1,6,1,6,1,6,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] except [Floor44.e1195796859758,Floor44.e1192575634286]
certRow g13367s18 on (rg13367 18) using bank tags []
certRow g13367s19 on (rg13367 19) using bank tags []
certRow g13367s20 on (rg13367 20) using bank tags []
certRow g13367s21 on (rg13367 21) using bank tags []
certRow g13367s22 on (rg13367 22) using bank tags []
certRow g13367s23 on (rg13367 23) using bank tags []
theorem g13367 (hard : BadRow [Floor44.e1196601576302,Floor44.e1197440437102,Floor44.e1195796859758,Floor44.e1192575634286]) : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 4 [0,0,1,2]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 3 2 4 [0,0,1,2] (.cons (g13367s0) (.cons (g13367s1) (.cons (g13367s2) (.cons (g13367s3) (.cons (g13367s4) (.cons (g13367s5 (.cons (hard.get (by decide : Floor44.e1196601576302 ∈ [Floor44.e1196601576302,Floor44.e1197440437102,Floor44.e1195796859758,Floor44.e1192575634286])) (.cons (hard.get (by decide : Floor44.e1197440437102 ∈ [Floor44.e1196601576302,Floor44.e1197440437102,Floor44.e1195796859758,Floor44.e1192575634286])) .nil))) (.cons (g13367s6) (.cons (g13367s7) (.cons (g13367s8) (.cons (g13367s9) (.cons (g13367s10) (.cons (g13367s11) (.cons (g13367s12) (.cons (g13367s13) (.cons (g13367s14) (.cons (g13367s15) (.cons (g13367s16) (.cons (g13367s17 (.cons (hard.get (by decide : Floor44.e1195796859758 ∈ [Floor44.e1196601576302,Floor44.e1197440437102,Floor44.e1195796859758,Floor44.e1192575634286])) (.cons (hard.get (by decide : Floor44.e1192575634286 ∈ [Floor44.e1196601576302,Floor44.e1197440437102,Floor44.e1195796859758,Floor44.e1192575634286])) .nil))) (.cons (g13367s18) (.cons (g13367s19) (.cons (g13367s20) (.cons (g13367s21) (.cons (g13367s22) (.cons (g13367s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
