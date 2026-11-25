import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14736 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [1,0,2,1,0,0]
certRow g14736s0 on (rg14736 0) using bank tags [28,28,28,28,28]
certRow g14736s1 on (rg14736 1) using bank tags [1,1,1,28,28,28,1,1,1,28,28,28]
certRow g14736s2 on (rg14736 2) using bank tags [28,28,1,1,1,1,1,1,1]
certRow g14736s3 on (rg14736 3) using bank tags [1,28,1,28,1,28,1,28,1,28,19,19]
certRow g14736s4 on (rg14736 4) using bank tags [13,13,13]
certRow g14736s5 on (rg14736 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14736s6 on (rg14736 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14736s7 on (rg14736 7) using bank tags [19,19]
certRow g14736s8 on (rg14736 8) using bank tags [13,13,13,13,13,13,13,13,13,6,6,6,6,6,6,6,6,19,19,19,19,19,19,6,19,19,19,19,6,6,6,6,6,6,6,1,28]
certRow g14736s9 on (rg14736 9) using bank tags [1,1,1,28,28,28,8,28,28,28,28,28,28,1,1,1,28,28,28,1,28,1,28,28,28,28,28,28,28,28,28,28,28,28,28,6,19,19,1,1,19]
certRow g14736s10 on (rg14736 10) using bank tags []
certRow g14736s11 on (rg14736 11) using bank tags [1,1,1,28,28,28,8,28,28,28,28,28,28,23,23,23,6,19,19,28,28,6,19,28]
theorem g14736 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,2,1,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [1,0,2,1,0,0] (.cons (g14736s0) (.cons (g14736s1) (.cons (g14736s2) (.cons (g14736s3) (.cons (g14736s4) (.cons (g14736s5) (.cons (g14736s6) (.cons (g14736s7) (.cons (g14736s8) (.cons (g14736s9) (.cons (g14736s10) (.cons (g14736s11) .nil))))))))))))
certRow g14737 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,2,1,0,0]) using bank tags []
certRow g14738 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,3,0,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14739 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,3,0,0,0]) using bank tags []
private abbrev rg14740 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [1,1,0,0,0,2]
certRow g14740s0 on (rg14740 0) using bank tags []
certRow g14740s1 on (rg14740 1) using bank tags [28,28]
certRow g14740s2 on (rg14740 2) using bank tags [28,28,28,28,28,28]
certRow g14740s3 on (rg14740 3) using bank tags []
certRow g14740s4 on (rg14740 4) using bank tags [6,6,1,28,28,28,1,28,28,28,28,28,28]
certRow g14740s5 on (rg14740 5) using bank tags []
certRow g14740s6 on (rg14740 6) using bank tags [1,1,1,1,1,1,28,28,28,1,28,28,28,28,1,28,28,28,1,28,28,28,1,28,1,28,28,28,28,28,28,28,28,28,1,1,1,28,28,28,1,28,28,28,28,28,28]
certRow g14740s7 on (rg14740 7) using bank tags []
certRow g14740s8 on (rg14740 8) using bank tags [13,13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,1,1,1,1,1,6,6,6,6,6,6,6,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g14740s9 on (rg14740 9) using bank tags [28,1,28,1,28,28,28,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,28,1,28,28,28]
certRow g14740s10 on (rg14740 10) using bank tags []
certRow g14740s11 on (rg14740 11) using bank tags [28,1,28,1,28,28,28]
theorem g14740 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,1,0,0,0,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [1,1,0,0,0,2] (.cons (g14740s0) (.cons (g14740s1) (.cons (g14740s2) (.cons (g14740s3) (.cons (g14740s4) (.cons (g14740s5) (.cons (g14740s6) (.cons (g14740s7) (.cons (g14740s8) (.cons (g14740s9) (.cons (g14740s10) (.cons (g14740s11) .nil))))))))))))
certRow g14741 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,1,0,0,0,2]) using bank tags []
certRow g14742 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,1,0,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
