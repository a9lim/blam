import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13967 (i : Nat) := Split43.five 24 i 8 5 4 true 4 2 5 [0,1,1,0,2]
certRow g13967s0 on (rg13967 0) using bank tags []
certRow g13967s1 on (rg13967 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g13967s2 on (rg13967 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g13967s3 on (rg13967 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g13967s4 on (rg13967 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,27,57,1,1,29,1,29,1,1,1,27,57,1,1,29,1,29,1,1,1]
certRow g13967s5 on (rg13967 5) using bank tags []
certRow g13967s6 on (rg13967 6) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13967s7 on (rg13967 7) using bank tags []
certRow g13967s8 on (rg13967 8) using bank tags []
certRow g13967s9 on (rg13967 9) using bank tags []
certRow g13967s10 on (rg13967 10) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13967s11 on (rg13967 11) using bank tags []
certRow g13967s12 on (rg13967 12) using bank tags []
certRow g13967s13 on (rg13967 13) using bank tags []
certRow g13967s14 on (rg13967 14) using bank tags []
certRow g13967s15 on (rg13967 15) using bank tags []
certRow g13967s16 on (rg13967 16) using bank tags []
certRow g13967s17 on (rg13967 17) using bank tags []
certRow g13967s18 on (rg13967 18) using bank tags []
certRow g13967s19 on (rg13967 19) using bank tags []
certRow g13967s20 on (rg13967 20) using bank tags []
certRow g13967s21 on (rg13967 21) using bank tags []
certRow g13967s22 on (rg13967 22) using bank tags [6,1,1,1,1,1,6,1,1,1,1,1,19,1,1,1,1,1,6,1,1,1,1,1,19,1,1,1,1,1,19,12,19,1,1,1,1,1,19,12,19,1,1,1,1,1,1,1,1,1,29,1,29,1,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g13967s23 on (rg13967 23) using bank tags []
theorem g13967 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,1,1,0,2]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 4 2 5 [0,1,1,0,2] (.cons (g13967s0) (.cons (g13967s1) (.cons (g13967s2) (.cons (g13967s3) (.cons (g13967s4) (.cons (g13967s5) (.cons (g13967s6) (.cons (g13967s7) (.cons (g13967s8) (.cons (g13967s9) (.cons (g13967s10) (.cons (g13967s11) (.cons (g13967s12) (.cons (g13967s13) (.cons (g13967s14) (.cons (g13967s15) (.cons (g13967s16) (.cons (g13967s17) (.cons (g13967s18) (.cons (g13967s19) (.cons (g13967s20) (.cons (g13967s21) (.cons (g13967s22) (.cons (g13967s23) .nil))))))))))))))))))))))))
certRow g13968 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,1,1,1,1]) using bank tags []
certRow g13969 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,1,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
