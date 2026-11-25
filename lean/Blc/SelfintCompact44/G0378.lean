import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g8828 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [2,0,0,3]) using bank tags []
certRow g8829 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [2,0,0,3]) using bank tags []
private abbrev rg8830 (i : Nat) := Split43.five 12 i 7 6 6 false 5 2 4 [2,0,1,2]
certRow g8830s0 on (rg8830 0) using bank tags []
certRow g8830s1 on (rg8830 1) using bank tags [20,1,29,29,29,29,29,27,29,1,29,28,29,29,29,29,48,29,20,29,28,29,29,29,20,1,29,29,29,29,29,27,29,1,29,28,29,29,29,29,48,29,20,29,28,29,29,29]
certRow g8830s2 on (rg8830 2) using bank tags [1,13,29,29,29,29,29,27,29,13,29,28,29,29,29,29,13,29,1,29,28,29,29,29]
certRow g8830s3 on (rg8830 3) using bank tags [1,13,29,29,29,29,29,27,29,13,29,28,29,29,29,29,13,29,1,29,28,29,29,29,11,13,29,29,29,29,29,27,29,13,29,28,29,29,29,29,13,29,11,29,28,29,29,29]
certRow g8830s4 on (rg8830 4) using bank tags []
certRow g8830s5 on (rg8830 5) using bank tags []
certRow g8830s6 on (rg8830 6) using bank tags []
certRow g8830s7 on (rg8830 7) using bank tags []
certRow g8830s8 on (rg8830 8) using bank tags []
certRow g8830s9 on (rg8830 9) using bank tags []
certRow g8830s10 on (rg8830 10) using bank tags []
certRow g8830s11 on (rg8830 11) using bank tags []
theorem g8830 : BadRow (Grammar43.fiveRow 7 6 6 false 5 2 4 [2,0,1,2]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 5 2 4 [2,0,1,2] (.cons (g8830s0) (.cons (g8830s1) (.cons (g8830s2) (.cons (g8830s3) (.cons (g8830s4) (.cons (g8830s5) (.cons (g8830s6) (.cons (g8830s7) (.cons (g8830s8) (.cons (g8830s9) (.cons (g8830s10) (.cons (g8830s11) .nil))))))))))))
certRow g8831 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [2,0,1,2]) using bank tags [20,56,15,1,1,1,1,3,20,56,1,1,1,1,1,3,1,1,13,1,1,1,1,2,1,1,13,1,1,1,1,3,11,14,13,1,1,1,1,2]
private abbrev rg8832 (i : Nat) := Split43.five 12 i 7 6 6 false 5 2 4 [2,0,2,1]
certRow g8832s0 on (rg8832 0) using bank tags []
certRow g8832s1 on (rg8832 1) using bank tags [20,15,29,29,29,29,29,27,29,15,29,28,29,29,29,29,48,29,20,29,28,29,29,29,20,1,29,29,29,29,29,27,29,1,29,28,29,29,29,29,48,29,20,29,28,29,29,29]
certRow g8832s2 on (rg8832 2) using bank tags [18,13,29,29,29,29,29,27,29,13,29,28,29,29,29,29,13,29,18,29,28,29,29,29]
certRow g8832s3 on (rg8832 3) using bank tags [20,6,29,29,29,29,29,27,29,6,29,28,29,29,29,29,48,29,20,29,28,29,29,29,6,13,29,29,29,29,29,27,29,13,29,28,29,29,29,29,13,29,6,29,28,29,29,29]
certRow g8832s4 on (rg8832 4) using bank tags []
certRow g8832s5 on (rg8832 5) using bank tags []
certRow g8832s6 on (rg8832 6) using bank tags []
certRow g8832s7 on (rg8832 7) using bank tags []
certRow g8832s8 on (rg8832 8) using bank tags []
certRow g8832s9 on (rg8832 9) using bank tags []
certRow g8832s10 on (rg8832 10) using bank tags []
certRow g8832s11 on (rg8832 11) using bank tags []
theorem g8832 : BadRow (Grammar43.fiveRow 7 6 6 false 5 2 4 [2,0,2,1]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 5 2 4 [2,0,2,1] (.cons (g8832s0) (.cons (g8832s1) (.cons (g8832s2) (.cons (g8832s3) (.cons (g8832s4) (.cons (g8832s5) (.cons (g8832s6) (.cons (g8832s7) (.cons (g8832s8) (.cons (g8832s9) (.cons (g8832s10) (.cons (g8832s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
