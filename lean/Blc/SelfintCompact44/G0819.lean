import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14718 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [1,0,0,3,0,0]
certRow g14718s0 on (rg14718 0) using bank tags [28,28]
certRow g14718s1 on (rg14718 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14718s2 on (rg14718 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14718s3 on (rg14718 3) using bank tags [28,28,28,28,28,28,28,28]
certRow g14718s4 on (rg14718 4) using bank tags []
certRow g14718s5 on (rg14718 5) using bank tags [28,28,28,28]
certRow g14718s6 on (rg14718 6) using bank tags []
certRow g14718s7 on (rg14718 7) using bank tags []
theorem g14718 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,0,3,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [1,0,0,3,0,0] (.cons (g14718s0) (.cons (g14718s1) (.cons (g14718s2) (.cons (g14718s3) (.cons (g14718s4) (.cons (g14718s5) (.cons (g14718s6) (.cons (g14718s7) .nil))))))))
certRow g14719 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,0,3,0,0]) using bank tags []
private abbrev rg14720 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [1,0,1,0,0,2]
certRow g14720s0 on (rg14720 0) using bank tags [28,28,28,28,28]
certRow g14720s1 on (rg14720 1) using bank tags [28,28]
certRow g14720s2 on (rg14720 2) using bank tags [28,28,28,28,1,1,1,1,1,1,1,1,1,1]
certRow g14720s3 on (rg14720 3) using bank tags []
certRow g14720s4 on (rg14720 4) using bank tags [1,1,28,28,28,28,28,28,28,28,28,28,13,13,13,13,13]
certRow g14720s5 on (rg14720 5) using bank tags []
certRow g14720s6 on (rg14720 6) using bank tags [1,1,1,1,1,1,1,1,28,28,28,1,28,28,28,28,28,28,1,1,1,28,28,28,28,28,1,28,1,28,28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28,28,28,28]
certRow g14720s7 on (rg14720 7) using bank tags []
certRow g14720s8 on (rg14720 8) using bank tags [13,13,13,13,13,13,13,13,13,13,13,13,13,13,35,19,19,19,19,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6]
certRow g14720s9 on (rg14720 9) using bank tags [28,28,1,28,28,28,28,28,28,28,1,1,1,28,28,28,1,28,28,28,28,28,28]
certRow g14720s10 on (rg14720 10) using bank tags []
certRow g14720s11 on (rg14720 11) using bank tags [28,28,1,28,28,28]
theorem g14720 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,1,0,0,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [1,0,1,0,0,2] (.cons (g14720s0) (.cons (g14720s1) (.cons (g14720s2) (.cons (g14720s3) (.cons (g14720s4) (.cons (g14720s5) (.cons (g14720s6) (.cons (g14720s7) (.cons (g14720s8) (.cons (g14720s9) (.cons (g14720s10) (.cons (g14720s11) .nil))))))))))))
certRow g14721 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,1,0,0,2]) using bank tags []
certRow g14722 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,1,0,1,1]) using bank tags []
certRow g14723 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,1,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
