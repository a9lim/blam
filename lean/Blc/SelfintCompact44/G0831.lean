import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14780 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [2,0,0,2,0,0]
certRow g14780s0 on (rg14780 0) using bank tags [28,28]
certRow g14780s1 on (rg14780 1) using bank tags [1,1,1,1,1,1,1,28,1,1,28,1,1,28,28,28]
certRow g14780s2 on (rg14780 2) using bank tags [1,1,28,28,28,13,13,28,28,28,28,28]
certRow g14780s3 on (rg14780 3) using bank tags [13,13,13,13,13,13,13,28]
certRow g14780s4 on (rg14780 4) using bank tags []
certRow g14780s5 on (rg14780 5) using bank tags [13,13,9,9]
certRow g14780s6 on (rg14780 6) using bank tags [15,1,1,55]
certRow g14780s7 on (rg14780 7) using bank tags []
theorem g14780 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [2,0,0,2,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [2,0,0,2,0,0] (.cons (g14780s0) (.cons (g14780s1) (.cons (g14780s2) (.cons (g14780s3) (.cons (g14780s4) (.cons (g14780s5) (.cons (g14780s6) (.cons (g14780s7) .nil))))))))
certRow g14781 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [2,0,0,2,0,0]) using bank tags []
private abbrev rg14782 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [2,0,1,0,0,1]
certRow g14782s0 on (rg14782 0) using bank tags [28,28,28,28,28]
certRow g14782s1 on (rg14782 1) using bank tags [1,1,28,28,7,7,28,28]
certRow g14782s2 on (rg14782 2) using bank tags [28,28,28,28]
certRow g14782s3 on (rg14782 3) using bank tags [28,28,28,28,28]
certRow g14782s4 on (rg14782 4) using bank tags [1,24,28,28,28,28,28,28,28,28,28,28]
certRow g14782s5 on (rg14782 5) using bank tags []
certRow g14782s6 on (rg14782 6) using bank tags [1,1,1,1,1,1,1,1,28,28,28,1,28,28,28,28,28,28,9,9,7,28,28,28,28,28,9,28,23,28,28,28,28,28,28,28,28,9,9,28,28,28,28,28,28,28,28,28,28]
certRow g14782s7 on (rg14782 7) using bank tags []
certRow g14782s8 on (rg14782 8) using bank tags []
certRow g14782s9 on (rg14782 9) using bank tags [1,1,28,28,28,28,1,28,28,28,1,1,28,28,28,28,28,28,28,1,1,1,28,28,28,1,28,28,28,28,28,28]
certRow g14782s10 on (rg14782 10) using bank tags []
certRow g14782s11 on (rg14782 11) using bank tags [1,1,28,28,28,28,1,28,28,28]
theorem g14782 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [2,0,1,0,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [2,0,1,0,0,1] (.cons (g14782s0) (.cons (g14782s1) (.cons (g14782s2) (.cons (g14782s3) (.cons (g14782s4) (.cons (g14782s5) (.cons (g14782s6) (.cons (g14782s7) (.cons (g14782s8) (.cons (g14782s9) (.cons (g14782s10) (.cons (g14782s11) .nil))))))))))))
certRow g14783 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [2,0,1,0,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
