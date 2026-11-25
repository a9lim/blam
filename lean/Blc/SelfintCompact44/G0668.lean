import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13369 (i : Nat) := Split43.five 24 i 8 5 4 true 3 2 4 [0,0,2,1]
certRow g13369s0 on (rg13369 0) using bank tags []
certRow g13369s1 on (rg13369 1) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,22,14,1,1,1,57,14,6,6,26,1,1,57,1,14,6,32,1,1,57,1,1,1,1]
certRow g13369s2 on (rg13369 2) using bank tags []
certRow g13369s3 on (rg13369 3) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,6,14,1,1,1,57,14,6,6,32,1,1,57,1,14,6,22,1,1,57,1,1,1,1,28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,22,14,1,1,1,57,14,6,6,6,1,1,57,1,14,6,6,1,1,57,1,1,1,1]
certRow g13369s4 on (rg13369 4) using bank tags []
certRow g13369s5 on (rg13369 5) using bank tags [28,59,28,59,28,59,13,14,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,0,14,1,1,1,57,15,1,22,1,1,1,57,6,6,6,22,1,1,57,1,1,1,1] except [Floor44.e1196601576310]
certRow g13369s6 on (rg13369 6) using bank tags []
certRow g13369s7 on (rg13369 7) using bank tags []
certRow g13369s8 on (rg13369 8) using bank tags []
certRow g13369s9 on (rg13369 9) using bank tags []
certRow g13369s10 on (rg13369 10) using bank tags []
certRow g13369s11 on (rg13369 11) using bank tags []
certRow g13369s12 on (rg13369 12) using bank tags []
certRow g13369s13 on (rg13369 13) using bank tags []
certRow g13369s14 on (rg13369 14) using bank tags []
certRow g13369s15 on (rg13369 15) using bank tags []
certRow g13369s16 on (rg13369 16) using bank tags []
certRow g13369s17 on (rg13369 17) using bank tags [10,8,27,57,1,1,1,1,1,1,1,1,7,10,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,10,32,6,6,53,6,1,41,52,33,1,1,1,1,6,1,51,1,1,1,50,14,1,1,1,1,1,1,6,1,6,1,6,1,6,1,6,1,1,1,1,1,1,1,17,1,1,1,1,1,1,1]
certRow g13369s18 on (rg13369 18) using bank tags []
certRow g13369s19 on (rg13369 19) using bank tags []
certRow g13369s20 on (rg13369 20) using bank tags []
certRow g13369s21 on (rg13369 21) using bank tags []
certRow g13369s22 on (rg13369 22) using bank tags []
certRow g13369s23 on (rg13369 23) using bank tags []
theorem g13369 (hard : BadRow [Floor44.e1196601576310]) : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 4 [0,0,2,1]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 3 2 4 [0,0,2,1] (.cons (g13369s0) (.cons (g13369s1) (.cons (g13369s2) (.cons (g13369s3) (.cons (g13369s4) (.cons (g13369s5 (.cons (hard.get (by decide : Floor44.e1196601576310 ∈ [Floor44.e1196601576310])) .nil)) (.cons (g13369s6) (.cons (g13369s7) (.cons (g13369s8) (.cons (g13369s9) (.cons (g13369s10) (.cons (g13369s11) (.cons (g13369s12) (.cons (g13369s13) (.cons (g13369s14) (.cons (g13369s15) (.cons (g13369s16) (.cons (g13369s17) (.cons (g13369s18) (.cons (g13369s19) (.cons (g13369s20) (.cons (g13369s21) (.cons (g13369s22) (.cons (g13369s23) .nil))))))))))))))))))))))))
certRow g13370 on (Grammar43.fiveRow 8 5 4 false 3 2 4 [0,0,3,0]) using bank tags []
certRow g13371 on (Grammar43.fiveRow 8 5 4 true 3 2 4 [0,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
