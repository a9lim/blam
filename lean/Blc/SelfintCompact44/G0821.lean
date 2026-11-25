import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14732 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [1,0,2,0,0,1]
certRow g14732s0 on (rg14732 0) using bank tags [28,28,28,28,28]
certRow g14732s1 on (rg14732 1) using bank tags [1,1,28,28,1,1,28,28]
certRow g14732s2 on (rg14732 2) using bank tags [28,28,1,1,1,1,1,1,1,1,55,1]
certRow g14732s3 on (rg14732 3) using bank tags [28,28,28,28,28]
certRow g14732s4 on (rg14732 4) using bank tags [28,28,28,28,28,28,28,13,13,13,13,13]
certRow g14732s5 on (rg14732 5) using bank tags []
certRow g14732s6 on (rg14732 6) using bank tags [206,28,28,28,1,28,28,28,28,28,206,28,28,28,28,28,1,28,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14732s7 on (rg14732 7) using bank tags []
certRow g14732s8 on (rg14732 8) using bank tags [13,13,13,13,13,13,13,13,13,13,13,13,13,13,6,6,6,6,6,35,35,35,19,6,19,35,19,19,207,19,35,19,19,19,19,0,19,6,6,6,6,6,6,6,6,6,6] except [Floor44.e4845195705430]
certRow g14732s9 on (rg14732 9) using bank tags [26,1,28,28,28,28,206,28,28,28,1,1,28,28,28,28,28,28,206,28,28,28,1,28,28,28,28,28]
certRow g14732s10 on (rg14732 10) using bank tags []
certRow g14732s11 on (rg14732 11) using bank tags [26,1,28,28,28,28,206,28,28,28]
theorem g14732 (hard : BadRow [Floor44.e4845195705430]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,2,0,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [1,0,2,0,0,1] (.cons (g14732s0) (.cons (g14732s1) (.cons (g14732s2) (.cons (g14732s3) (.cons (g14732s4) (.cons (g14732s5) (.cons (g14732s6) (.cons (g14732s7) (.cons (g14732s8 (.cons (hard.get (by decide : Floor44.e4845195705430 ∈ [Floor44.e4845195705430])) .nil)) (.cons (g14732s9) (.cons (g14732s10) (.cons (g14732s11) .nil))))))))))))
certRow g14733 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,2,0,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
