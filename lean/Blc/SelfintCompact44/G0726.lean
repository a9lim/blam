import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13903 (i : Nat) := Split43.five 24 i 8 5 4 true 4 2 4 [1,2,0,1]
certRow g13903s0 on (rg13903 0) using bank tags []
certRow g13903s1 on (rg13903 1) using bank tags [28,59,59,59,1,1,1,1,14,57,26,15,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,59,59,59,1,1,1,1,14,57,31,30,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13903s2 on (rg13903 2) using bank tags [28,59,59,59,1,1,1,1,14,57,6,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13903s3 on (rg13903 3) using bank tags [28,59,59,59,1,1,1,1,14,57,6,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,59,59,59,1,1,1,1,14,57,6,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13903s4 on (rg13903 4) using bank tags []
certRow g13903s5 on (rg13903 5) using bank tags [61,31,30,30,1,1,1,1,29,12,6,1,29,12,22,1,3,1,1,1,45,30,1,1,1,1,60,28,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,19,1,1,1,1,1,1,1,19,12,19,1,19,12,19,1,3,1,1,1,19,1,1,1,1,1,60,28,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13903s6 on (rg13903 6) using bank tags []
certRow g13903s7 on (rg13903 7) using bank tags []
certRow g13903s8 on (rg13903 8) using bank tags []
certRow g13903s9 on (rg13903 9) using bank tags []
certRow g13903s10 on (rg13903 10) using bank tags []
certRow g13903s11 on (rg13903 11) using bank tags []
certRow g13903s12 on (rg13903 12) using bank tags []
certRow g13903s13 on (rg13903 13) using bank tags []
certRow g13903s14 on (rg13903 14) using bank tags []
certRow g13903s15 on (rg13903 15) using bank tags []
certRow g13903s16 on (rg13903 16) using bank tags []
certRow g13903s17 on (rg13903 17) using bank tags []
certRow g13903s18 on (rg13903 18) using bank tags []
certRow g13903s19 on (rg13903 19) using bank tags []
certRow g13903s20 on (rg13903 20) using bank tags []
certRow g13903s21 on (rg13903 21) using bank tags []
certRow g13903s22 on (rg13903 22) using bank tags []
certRow g13903s23 on (rg13903 23) using bank tags []
theorem g13903 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 4 [1,2,0,1]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 4 2 4 [1,2,0,1] (.cons (g13903s0) (.cons (g13903s1) (.cons (g13903s2) (.cons (g13903s3) (.cons (g13903s4) (.cons (g13903s5) (.cons (g13903s6) (.cons (g13903s7) (.cons (g13903s8) (.cons (g13903s9) (.cons (g13903s10) (.cons (g13903s11) (.cons (g13903s12) (.cons (g13903s13) (.cons (g13903s14) (.cons (g13903s15) (.cons (g13903s16) (.cons (g13903s17) (.cons (g13903s18) (.cons (g13903s19) (.cons (g13903s20) (.cons (g13903s21) (.cons (g13903s22) (.cons (g13903s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
