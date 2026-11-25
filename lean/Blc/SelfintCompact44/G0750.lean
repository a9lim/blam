import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14013 (i : Nat) := Split43.five 24 i 8 5 4 true 4 2 5 [1,0,2,0,1]
certRow g14013s0 on (rg14013 0) using bank tags []
certRow g14013s1 on (rg14013 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g14013s2 on (rg14013 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14013s3 on (rg14013 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14013s4 on (rg14013 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,1,1,1,1,29,1,29,1,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g14013s5 on (rg14013 5) using bank tags []
certRow g14013s6 on (rg14013 6) using bank tags [6,1,1,1,1,1,19,1,1,1,1,1,19,1,1,1,1,1,19,1,1,1,1,1,19,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1]
certRow g14013s7 on (rg14013 7) using bank tags []
certRow g14013s8 on (rg14013 8) using bank tags []
certRow g14013s9 on (rg14013 9) using bank tags []
certRow g14013s10 on (rg14013 10) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1]
certRow g14013s11 on (rg14013 11) using bank tags []
certRow g14013s12 on (rg14013 12) using bank tags []
certRow g14013s13 on (rg14013 13) using bank tags []
certRow g14013s14 on (rg14013 14) using bank tags []
certRow g14013s15 on (rg14013 15) using bank tags []
certRow g14013s16 on (rg14013 16) using bank tags []
certRow g14013s17 on (rg14013 17) using bank tags []
certRow g14013s18 on (rg14013 18) using bank tags []
certRow g14013s19 on (rg14013 19) using bank tags []
certRow g14013s20 on (rg14013 20) using bank tags []
certRow g14013s21 on (rg14013 21) using bank tags []
certRow g14013s22 on (rg14013 22) using bank tags [28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,1,1,1,1,29,1,29,1,1,1,15,15,1,1,29,1,29,1,1,1]
certRow g14013s23 on (rg14013 23) using bank tags []
theorem g14013 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [1,0,2,0,1]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 4 2 5 [1,0,2,0,1] (.cons (g14013s0) (.cons (g14013s1) (.cons (g14013s2) (.cons (g14013s3) (.cons (g14013s4) (.cons (g14013s5) (.cons (g14013s6) (.cons (g14013s7) (.cons (g14013s8) (.cons (g14013s9) (.cons (g14013s10) (.cons (g14013s11) (.cons (g14013s12) (.cons (g14013s13) (.cons (g14013s14) (.cons (g14013s15) (.cons (g14013s16) (.cons (g14013s17) (.cons (g14013s18) (.cons (g14013s19) (.cons (g14013s20) (.cons (g14013s21) (.cons (g14013s22) (.cons (g14013s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
