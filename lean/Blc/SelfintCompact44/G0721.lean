import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13893 (i : Nat) := Split43.five 24 i 8 5 4 true 4 2 4 [1,0,2,1]
certRow g13893s0 on (rg13893 0) using bank tags []
certRow g13893s1 on (rg13893 1) using bank tags [28,59,59,59,1,1,1,1,14,57,26,15,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,59,59,59,1,1,1,1,14,57,1,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13893s2 on (rg13893 2) using bank tags [28,59,59,59,1,1,1,1,14,57,6,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13893s3 on (rg13893 3) using bank tags [28,59,59,59,1,1,1,1,14,57,6,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,59,59,59,1,1,1,1,14,57,6,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13893s4 on (rg13893 4) using bank tags []
certRow g13893s5 on (rg13893 5) using bank tags [19,1,1,1,1,1,1,1,19,12,19,1,19,12,19,1,3,1,1,1,19,1,1,1,1,1,60,28,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13893s6 on (rg13893 6) using bank tags []
certRow g13893s7 on (rg13893 7) using bank tags []
certRow g13893s8 on (rg13893 8) using bank tags []
certRow g13893s9 on (rg13893 9) using bank tags []
certRow g13893s10 on (rg13893 10) using bank tags []
certRow g13893s11 on (rg13893 11) using bank tags []
certRow g13893s12 on (rg13893 12) using bank tags []
certRow g13893s13 on (rg13893 13) using bank tags []
certRow g13893s14 on (rg13893 14) using bank tags []
certRow g13893s15 on (rg13893 15) using bank tags []
certRow g13893s16 on (rg13893 16) using bank tags []
certRow g13893s17 on (rg13893 17) using bank tags []
certRow g13893s18 on (rg13893 18) using bank tags []
certRow g13893s19 on (rg13893 19) using bank tags []
certRow g13893s20 on (rg13893 20) using bank tags []
certRow g13893s21 on (rg13893 21) using bank tags []
certRow g13893s22 on (rg13893 22) using bank tags []
certRow g13893s23 on (rg13893 23) using bank tags []
theorem g13893 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 4 [1,0,2,1]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 4 2 4 [1,0,2,1] (.cons (g13893s0) (.cons (g13893s1) (.cons (g13893s2) (.cons (g13893s3) (.cons (g13893s4) (.cons (g13893s5) (.cons (g13893s6) (.cons (g13893s7) (.cons (g13893s8) (.cons (g13893s9) (.cons (g13893s10) (.cons (g13893s11) (.cons (g13893s12) (.cons (g13893s13) (.cons (g13893s14) (.cons (g13893s15) (.cons (g13893s16) (.cons (g13893s17) (.cons (g13893s18) (.cons (g13893s19) (.cons (g13893s20) (.cons (g13893s21) (.cons (g13893s22) (.cons (g13893s23) .nil))))))))))))))))))))))))
certRow g13894 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [1,0,3,0]) using bank tags []
certRow g13895 on (Grammar43.fiveRow 8 5 4 true 4 2 4 [1,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
