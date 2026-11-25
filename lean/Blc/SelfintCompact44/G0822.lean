import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14734 (i : Nat) := Split43.five 24 i 8 5 4 false 4 3 6 [1,0,2,0,1,0]
certRow g14734s0 on (rg14734 0) using bank tags []
certRow g14734s1 on (rg14734 1) using bank tags []
certRow g14734s2 on (rg14734 2) using bank tags [1,1,1,1,1,1,1,31,1,55,1]
certRow g14734s3 on (rg14734 3) using bank tags []
certRow g14734s4 on (rg14734 4) using bank tags [13,13,13,13,13]
certRow g14734s5 on (rg14734 5) using bank tags []
certRow g14734s6 on (rg14734 6) using bank tags []
certRow g14734s7 on (rg14734 7) using bank tags []
certRow g14734s8 on (rg14734 8) using bank tags []
certRow g14734s9 on (rg14734 9) using bank tags [1,15,28,28,28,28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14734s10 on (rg14734 10) using bank tags []
certRow g14734s11 on (rg14734 11) using bank tags [1,15,28,28,28,28,28,28,28,28,28,28]
certRow g14734s12 on (rg14734 12) using bank tags [28,28,28,28,28]
certRow g14734s13 on (rg14734 13) using bank tags [1,1,28,28,28,1,1,28,28,28]
certRow g14734s14 on (rg14734 14) using bank tags [28,28]
certRow g14734s15 on (rg14734 15) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g14734s16 on (rg14734 16) using bank tags [28,28,28,28,28,28,28]
certRow g14734s17 on (rg14734 17) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14734s18 on (rg14734 18) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14734s19 on (rg14734 19) using bank tags []
certRow g14734s20 on (rg14734 20) using bank tags [13,13,13,13,13,13,13,13,13,13,13,13,13,13,6,6,6,6,6,6,6,6,6,19,35,6,19,19,19,19,19,35,19,6,19,19,19,19,22,19,6,6,6,6,6,6,6,6,6,6,6,1,1,28,28]
certRow g14734s21 on (rg14734 21) using bank tags [6,19,19,19,19,1,1,1,1]
certRow g14734s22 on (rg14734 22) using bank tags []
certRow g14734s23 on (rg14734 23) using bank tags [23,23,23,23,23,6,6,119,19,28,28,28,28,119,119]
theorem g14734 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,2,0,1,0]) :=
  Split43.five_cover 24 (by decide) 8 5 4 false 4 3 6 [1,0,2,0,1,0] (.cons (g14734s0) (.cons (g14734s1) (.cons (g14734s2) (.cons (g14734s3) (.cons (g14734s4) (.cons (g14734s5) (.cons (g14734s6) (.cons (g14734s7) (.cons (g14734s8) (.cons (g14734s9) (.cons (g14734s10) (.cons (g14734s11) (.cons (g14734s12) (.cons (g14734s13) (.cons (g14734s14) (.cons (g14734s15) (.cons (g14734s16) (.cons (g14734s17) (.cons (g14734s18) (.cons (g14734s19) (.cons (g14734s20) (.cons (g14734s21) (.cons (g14734s22) (.cons (g14734s23) .nil))))))))))))))))))))))))
certRow g14735 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,2,0,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
