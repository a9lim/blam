import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14772 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [2,0,0,0,1,1]
certRow g14772s0 on (rg14772 0) using bank tags [28,28,28,28,28]
certRow g14772s1 on (rg14772 1) using bank tags []
certRow g14772s2 on (rg14772 2) using bank tags [19,19,28,28,28,28,28,28]
certRow g14772s3 on (rg14772 3) using bank tags []
certRow g14772s4 on (rg14772 4) using bank tags [1,28,28,28,9,28,28,28,28,19,28,28,28]
certRow g14772s5 on (rg14772 5) using bank tags []
certRow g14772s6 on (rg14772 6) using bank tags [1,19,19,19,19,1,1,28,28,28,28,1,28,28,28,9,9,28,28,28,28,28,28,19,28,28,28,23,28,28,28,9,28,28,28,28,19,28,28,28]
certRow g14772s7 on (rg14772 7) using bank tags []
certRow g14772s8 on (rg14772 8) using bank tags []
certRow g14772s9 on (rg14772 9) using bank tags [14,28,28,28,13,13,28,28,1,28,28,28,1,1,28,28,28,28,1,28,28,28]
certRow g14772s10 on (rg14772 10) using bank tags []
certRow g14772s11 on (rg14772 11) using bank tags [30,28,28,28]
theorem g14772 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [2,0,0,0,1,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [2,0,0,0,1,1] (.cons (g14772s0) (.cons (g14772s1) (.cons (g14772s2) (.cons (g14772s3) (.cons (g14772s4) (.cons (g14772s5) (.cons (g14772s6) (.cons (g14772s7) (.cons (g14772s8) (.cons (g14772s9) (.cons (g14772s10) (.cons (g14772s11) .nil))))))))))))
certRow g14773 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [2,0,0,0,1,1]) using bank tags []
private abbrev rg14774 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [2,0,0,0,2,0]
certRow g14774s0 on (rg14774 0) using bank tags [30,1,6,1,1]
certRow g14774s1 on (rg14774 1) using bank tags [1,1,1,1,1,1,1,28,28,28,1,1,28,28,28,1,1,28,28]
certRow g14774s2 on (rg14774 2) using bank tags [1,1,28,28,13,13,28,28,28]
certRow g14774s3 on (rg14774 3) using bank tags [13,13,13,13,13,13,13,28,28,28]
certRow g14774s4 on (rg14774 4) using bank tags []
certRow g14774s5 on (rg14774 5) using bank tags [13,13,28,9,9,28]
certRow g14774s6 on (rg14774 6) using bank tags [1,1,22,22]
certRow g14774s7 on (rg14774 7) using bank tags [28,28,28,28,28]
theorem g14774 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [2,0,0,0,2,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [2,0,0,0,2,0] (.cons (g14774s0) (.cons (g14774s1) (.cons (g14774s2) (.cons (g14774s3) (.cons (g14774s4) (.cons (g14774s5) (.cons (g14774s6) (.cons (g14774s7) .nil))))))))
certRow g14775 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [2,0,0,0,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
