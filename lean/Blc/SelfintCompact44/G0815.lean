import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14699 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,4,0,0,0,0]) using bank tags []
private abbrev rg14700 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [1,0,0,0,0,3]
certRow g14700s0 on (rg14700 0) using bank tags []
certRow g14700s1 on (rg14700 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14700s2 on (rg14700 2) using bank tags []
certRow g14700s3 on (rg14700 3) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g14700s4 on (rg14700 4) using bank tags []
certRow g14700s5 on (rg14700 5) using bank tags [28,28,28,28,28,28]
certRow g14700s6 on (rg14700 6) using bank tags []
certRow g14700s7 on (rg14700 7) using bank tags [28,28,28,28,28]
theorem g14700 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,0,0,0,3]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [1,0,0,0,0,3] (.cons (g14700s0) (.cons (g14700s1) (.cons (g14700s2) (.cons (g14700s3) (.cons (g14700s4) (.cons (g14700s5) (.cons (g14700s6) (.cons (g14700s7) .nil))))))))
certRow g14701 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,0,0,0,3]) using bank tags []
private abbrev rg14702 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [1,0,0,0,1,2]
certRow g14702s0 on (rg14702 0) using bank tags [28,28,28,28,28]
certRow g14702s1 on (rg14702 1) using bank tags []
certRow g14702s2 on (rg14702 2) using bank tags [6,6,1,1,28,28,28,28,28,28,1,1,1,1,1,28]
certRow g14702s3 on (rg14702 3) using bank tags []
certRow g14702s4 on (rg14702 4) using bank tags [1,28,28,28,1,28,28,28,28,1,28,28,28,13,13,13,6]
certRow g14702s5 on (rg14702 5) using bank tags []
certRow g14702s6 on (rg14702 6) using bank tags [1,1,1,1,1,1,1,28,28,28,28,1,28,28,28,1,1,28,28,28,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,28,1,28,28,28]
certRow g14702s7 on (rg14702 7) using bank tags []
certRow g14702s8 on (rg14702 8) using bank tags [13,13,13,13,13,13,13,13,13,19,19,19,19,19,22,6,22,22,35,19,35,19,22,6,6,6,6,6,28,28,6,1,28,28,0,0] except [Floor44.e4845917703022,Floor44.e4845894634350]
certRow g14702s9 on (rg14702 9) using bank tags [1,28,28,28,1,1,28,28,1,28,28,28,1,1,28,28,28,28,1,28,28,28]
certRow g14702s10 on (rg14702 10) using bank tags [1,1,19,1,13,13]
certRow g14702s11 on (rg14702 11) using bank tags [1,28,28,28]
theorem g14702 (hard : BadRow [Floor44.e4845917703022,Floor44.e4845894634350]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,0,0,1,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [1,0,0,0,1,2] (.cons (g14702s0) (.cons (g14702s1) (.cons (g14702s2) (.cons (g14702s3) (.cons (g14702s4) (.cons (g14702s5) (.cons (g14702s6) (.cons (g14702s7) (.cons (g14702s8 (.cons (hard.get (by decide : Floor44.e4845917703022 ∈ [Floor44.e4845917703022,Floor44.e4845894634350])) (.cons (hard.get (by decide : Floor44.e4845894634350 ∈ [Floor44.e4845917703022,Floor44.e4845894634350])) .nil))) (.cons (g14702s9) (.cons (g14702s10) (.cons (g14702s11) .nil))))))))))))
certRow g14703 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,0,0,1,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
