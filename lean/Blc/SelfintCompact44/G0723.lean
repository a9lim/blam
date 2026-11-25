import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13897 (i : Nat) := Split43.five 24 i 8 5 4 true 4 2 4 [1,1,0,2]
certRow g13897s0 on (rg13897 0) using bank tags []
certRow g13897s1 on (rg13897 1) using bank tags [28,59,59,59,1,1,1,1,14,57,26,15,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,59,59,59,1,1,1,1,14,57,30,32,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13897s2 on (rg13897 2) using bank tags [28,59,59,59,1,1,1,1,14,57,6,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13897s3 on (rg13897 3) using bank tags [28,59,59,59,1,1,1,1,14,57,6,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,59,59,59,1,1,1,1,14,57,6,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13897s4 on (rg13897 4) using bank tags []
certRow g13897s5 on (rg13897 5) using bank tags [6,1,1,1,1,1,1,1,29,12,6,1,29,12,6,1,3,1,1,1,6,1,1,1,1,1,60,28,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,6,1,1,1,1,1,1,1,29,12,6,1,29,12,6,1,3,1,1,1,6,1,1,1,1,1,60,28,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13897s6 on (rg13897 6) using bank tags []
certRow g13897s7 on (rg13897 7) using bank tags []
certRow g13897s8 on (rg13897 8) using bank tags []
certRow g13897s9 on (rg13897 9) using bank tags []
certRow g13897s10 on (rg13897 10) using bank tags []
certRow g13897s11 on (rg13897 11) using bank tags []
certRow g13897s12 on (rg13897 12) using bank tags []
certRow g13897s13 on (rg13897 13) using bank tags []
certRow g13897s14 on (rg13897 14) using bank tags []
certRow g13897s15 on (rg13897 15) using bank tags []
certRow g13897s16 on (rg13897 16) using bank tags []
certRow g13897s17 on (rg13897 17) using bank tags []
certRow g13897s18 on (rg13897 18) using bank tags []
certRow g13897s19 on (rg13897 19) using bank tags []
certRow g13897s20 on (rg13897 20) using bank tags []
certRow g13897s21 on (rg13897 21) using bank tags []
certRow g13897s22 on (rg13897 22) using bank tags []
certRow g13897s23 on (rg13897 23) using bank tags []
theorem g13897 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 4 [1,1,0,2]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 4 2 4 [1,1,0,2] (.cons (g13897s0) (.cons (g13897s1) (.cons (g13897s2) (.cons (g13897s3) (.cons (g13897s4) (.cons (g13897s5) (.cons (g13897s6) (.cons (g13897s7) (.cons (g13897s8) (.cons (g13897s9) (.cons (g13897s10) (.cons (g13897s11) (.cons (g13897s12) (.cons (g13897s13) (.cons (g13897s14) (.cons (g13897s15) (.cons (g13897s16) (.cons (g13897s17) (.cons (g13897s18) (.cons (g13897s19) (.cons (g13897s20) (.cons (g13897s21) (.cons (g13897s22) (.cons (g13897s23) .nil))))))))))))))))))))))))
certRow g13898 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [1,1,1,1]) using bank tags []
certRow g13899 on (Grammar43.fiveRow 8 5 4 true 4 2 4 [1,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
