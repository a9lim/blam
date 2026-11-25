import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13891 (i : Nat) := Split43.five 24 i 8 5 4 true 4 2 4 [1,0,1,2]
certRow g13891s0 on (rg13891 0) using bank tags []
certRow g13891s1 on (rg13891 1) using bank tags [28,59,59,59,1,1,1,1,14,57,26,15,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,59,59,59,1,1,1,1,14,57,1,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13891s2 on (rg13891 2) using bank tags [28,59,59,59,1,1,1,1,14,57,22,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13891s3 on (rg13891 3) using bank tags [28,59,59,59,1,1,1,1,14,57,6,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,59,59,59,1,1,1,1,14,57,37,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13891s4 on (rg13891 4) using bank tags []
certRow g13891s5 on (rg13891 5) using bank tags [6,1,1,1,1,1,1,1,29,12,6,1,29,12,6,1,3,1,1,1,6,1,1,1,1,1,60,28,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13891s6 on (rg13891 6) using bank tags []
certRow g13891s7 on (rg13891 7) using bank tags []
certRow g13891s8 on (rg13891 8) using bank tags []
certRow g13891s9 on (rg13891 9) using bank tags []
certRow g13891s10 on (rg13891 10) using bank tags []
certRow g13891s11 on (rg13891 11) using bank tags []
certRow g13891s12 on (rg13891 12) using bank tags []
certRow g13891s13 on (rg13891 13) using bank tags []
certRow g13891s14 on (rg13891 14) using bank tags []
certRow g13891s15 on (rg13891 15) using bank tags []
certRow g13891s16 on (rg13891 16) using bank tags []
certRow g13891s17 on (rg13891 17) using bank tags []
certRow g13891s18 on (rg13891 18) using bank tags []
certRow g13891s19 on (rg13891 19) using bank tags []
certRow g13891s20 on (rg13891 20) using bank tags []
certRow g13891s21 on (rg13891 21) using bank tags []
certRow g13891s22 on (rg13891 22) using bank tags []
certRow g13891s23 on (rg13891 23) using bank tags []
theorem g13891 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 4 [1,0,1,2]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 4 2 4 [1,0,1,2] (.cons (g13891s0) (.cons (g13891s1) (.cons (g13891s2) (.cons (g13891s3) (.cons (g13891s4) (.cons (g13891s5) (.cons (g13891s6) (.cons (g13891s7) (.cons (g13891s8) (.cons (g13891s9) (.cons (g13891s10) (.cons (g13891s11) (.cons (g13891s12) (.cons (g13891s13) (.cons (g13891s14) (.cons (g13891s15) (.cons (g13891s16) (.cons (g13891s17) (.cons (g13891s18) (.cons (g13891s19) (.cons (g13891s20) (.cons (g13891s21) (.cons (g13891s22) (.cons (g13891s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
