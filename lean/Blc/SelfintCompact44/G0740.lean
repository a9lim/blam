import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13973 (i : Nat) := Split43.five 24 i 8 5 4 true 4 2 5 [0,1,2,0,1]
certRow g13973s0 on (rg13973 0) using bank tags []
certRow g13973s1 on (rg13973 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g13973s2 on (rg13973 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g13973s3 on (rg13973 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g13973s4 on (rg13973 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,27,57,1,1,29,1,29,1,1,1,27,57,1,1,29,1,29,1,1,1]
certRow g13973s5 on (rg13973 5) using bank tags []
certRow g13973s6 on (rg13973 6) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13973s7 on (rg13973 7) using bank tags []
certRow g13973s8 on (rg13973 8) using bank tags []
certRow g13973s9 on (rg13973 9) using bank tags []
certRow g13973s10 on (rg13973 10) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13973s11 on (rg13973 11) using bank tags []
certRow g13973s12 on (rg13973 12) using bank tags []
certRow g13973s13 on (rg13973 13) using bank tags []
certRow g13973s14 on (rg13973 14) using bank tags []
certRow g13973s15 on (rg13973 15) using bank tags []
certRow g13973s16 on (rg13973 16) using bank tags []
certRow g13973s17 on (rg13973 17) using bank tags []
certRow g13973s18 on (rg13973 18) using bank tags []
certRow g13973s19 on (rg13973 19) using bank tags [1,1,1,1,1,1,16,30,1,1,29,6,29,6,1,1]
certRow g13973s20 on (rg13973 20) using bank tags []
certRow g13973s21 on (rg13973 21) using bank tags []
certRow g13973s22 on (rg13973 22) using bank tags [6,1,1,1,1,1,6,1,1,1,1,1,19,1,1,1,1,1,6,1,1,1,1,1,19,1,1,1,1,1,19,12,19,1,1,1,1,1,19,12,19,1,1,1,1,1,1,1,1,1,29,1,29,1,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g13973s23 on (rg13973 23) using bank tags []
theorem g13973 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,1,2,0,1]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 4 2 5 [0,1,2,0,1] (.cons (g13973s0) (.cons (g13973s1) (.cons (g13973s2) (.cons (g13973s3) (.cons (g13973s4) (.cons (g13973s5) (.cons (g13973s6) (.cons (g13973s7) (.cons (g13973s8) (.cons (g13973s9) (.cons (g13973s10) (.cons (g13973s11) (.cons (g13973s12) (.cons (g13973s13) (.cons (g13973s14) (.cons (g13973s15) (.cons (g13973s16) (.cons (g13973s17) (.cons (g13973s18) (.cons (g13973s19) (.cons (g13973s20) (.cons (g13973s21) (.cons (g13973s22) (.cons (g13973s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
