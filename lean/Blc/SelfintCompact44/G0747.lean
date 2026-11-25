import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14007 (i : Nat) := Split43.five 24 i 8 5 4 true 4 2 5 [1,0,1,0,2]
certRow g14007s0 on (rg14007 0) using bank tags []
certRow g14007s1 on (rg14007 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g14007s2 on (rg14007 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14007s3 on (rg14007 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14007s4 on (rg14007 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,1,1,1,1,29,1,29,1,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g14007s5 on (rg14007 5) using bank tags []
certRow g14007s6 on (rg14007 6) using bank tags [6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1]
certRow g14007s7 on (rg14007 7) using bank tags []
certRow g14007s8 on (rg14007 8) using bank tags []
certRow g14007s9 on (rg14007 9) using bank tags []
certRow g14007s10 on (rg14007 10) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1]
certRow g14007s11 on (rg14007 11) using bank tags []
certRow g14007s12 on (rg14007 12) using bank tags []
certRow g14007s13 on (rg14007 13) using bank tags []
certRow g14007s14 on (rg14007 14) using bank tags []
certRow g14007s15 on (rg14007 15) using bank tags []
certRow g14007s16 on (rg14007 16) using bank tags []
certRow g14007s17 on (rg14007 17) using bank tags []
certRow g14007s18 on (rg14007 18) using bank tags []
certRow g14007s19 on (rg14007 19) using bank tags []
certRow g14007s20 on (rg14007 20) using bank tags []
certRow g14007s21 on (rg14007 21) using bank tags []
certRow g14007s22 on (rg14007 22) using bank tags [28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,1,1,1,1,29,1,29,1,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g14007s23 on (rg14007 23) using bank tags []
theorem g14007 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [1,0,1,0,2]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 4 2 5 [1,0,1,0,2] (.cons (g14007s0) (.cons (g14007s1) (.cons (g14007s2) (.cons (g14007s3) (.cons (g14007s4) (.cons (g14007s5) (.cons (g14007s6) (.cons (g14007s7) (.cons (g14007s8) (.cons (g14007s9) (.cons (g14007s10) (.cons (g14007s11) (.cons (g14007s12) (.cons (g14007s13) (.cons (g14007s14) (.cons (g14007s15) (.cons (g14007s16) (.cons (g14007s17) (.cons (g14007s18) (.cons (g14007s19) (.cons (g14007s20) (.cons (g14007s21) (.cons (g14007s22) (.cons (g14007s23) .nil))))))))))))))))))))))))
certRow g14008 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,0,1,1,1]) using bank tags []
certRow g14009 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [1,0,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
