import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14012 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 5 [1,0,2,0,1]
certRow g14012s0 on (rg14012 0) using bank tags []
certRow g14012s1 on (rg14012 1) using bank tags [28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13]
certRow g14012s2 on (rg14012 2) using bank tags [28,28,28,6,28,28,28,6]
certRow g14012s3 on (rg14012 3) using bank tags [28,28,28,6,28,28,28,6]
certRow g14012s4 on (rg14012 4) using bank tags [28,28,28,6,28,28,28,6,28,28,28,6,28,28,28,6,28,28,28,24]
certRow g14012s5 on (rg14012 5) using bank tags []
certRow g14012s6 on (rg14012 6) using bank tags [6,29,29,13,29,6,29,27,19,19,29,13,19,19,29,27,19,19,29,13,19,19,29,27,19,19,29,13,19,19,29,27,19,19,29,13,19,19,29,27,6,29,29,1,29,6,29,6,6,29,29,1,29,6,29,6]
certRow g14012s7 on (rg14012 7) using bank tags []
certRow g14012s8 on (rg14012 8) using bank tags []
certRow g14012s9 on (rg14012 9) using bank tags []
certRow g14012s10 on (rg14012 10) using bank tags [22,29,29,13,29,22,29,6,35,29,29,13,29,35,29,6]
certRow g14012s11 on (rg14012 11) using bank tags []
theorem g14012 : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,0,2,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 5 [1,0,2,0,1] (.cons (g14012s0) (.cons (g14012s1) (.cons (g14012s2) (.cons (g14012s3) (.cons (g14012s4) (.cons (g14012s5) (.cons (g14012s6) (.cons (g14012s7) (.cons (g14012s8) (.cons (g14012s9) (.cons (g14012s10) (.cons (g14012s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
