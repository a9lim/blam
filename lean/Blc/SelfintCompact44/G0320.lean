import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg7638 (i : Nat) := Split43.five 12 i 7 6 6 false 3 2 4 [0,2,0,1]
certRow g7638s0 on (rg7638 0) using bank tags []
certRow g7638s1 on (rg7638 1) using bank tags [59,1,28,1,28,28,28,48,28,28,48,28,28,59,1,28,1,28,28,28,48,28,28,48,28,28]
certRow g7638s2 on (rg7638 2) using bank tags [59,1,28,1,28,28,28,48,28,28,48,28,28]
certRow g7638s3 on (rg7638 3) using bank tags [59,1,28,1,28,28,28,48,28,28,48,28,28,59,1,28,1,28,28,28,48,28,28,48,28,28]
certRow g7638s4 on (rg7638 4) using bank tags []
certRow g7638s5 on (rg7638 5) using bank tags [59,1,28,1,28,28,28,20,28,28,13,28,28,59,1,28,1,28,28,28,20,28,28,13,28,28,29,29,56,29,1,29,1,29,29,1,29,6,29,6,29,1,29,28,29,29,27,29,18,29,28,29,64,29,48,29,29,56,29,1,29,44,29,29,1,29,46,29,6,29,1,29,28,29,29,27,29,24,29,28,29,18,29,48]
certRow g7638s6 on (rg7638 6) using bank tags []
certRow g7638s7 on (rg7638 7) using bank tags []
certRow g7638s8 on (rg7638 8) using bank tags []
certRow g7638s9 on (rg7638 9) using bank tags []
certRow g7638s10 on (rg7638 10) using bank tags []
certRow g7638s11 on (rg7638 11) using bank tags []
theorem g7638 : BadRow (Grammar43.fiveRow 7 6 6 false 3 2 4 [0,2,0,1]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 3 2 4 [0,2,0,1] (.cons (g7638s0) (.cons (g7638s1) (.cons (g7638s2) (.cons (g7638s3) (.cons (g7638s4) (.cons (g7638s5) (.cons (g7638s6) (.cons (g7638s7) (.cons (g7638s8) (.cons (g7638s9) (.cons (g7638s10) (.cons (g7638s11) .nil))))))))))))
certRow g7639 on (Grammar43.fiveRow 7 6 6 true 3 2 4 [0,2,0,1]) using bank tags [28,28,59,28,28,59,28,28,59,28,28,59,28,28,59,28,28,59,28,28,59,17,48,6,48,1,1,13,48,13,48,14,15]
certRow g7640 on (Grammar43.fiveRow 7 6 6 false 3 2 4 [0,2,1,0]) using bank tags [59,1,28,1,28,28,28,48,28,28,48,28,28,59,1,28,1,28,28,28,48,28,28,48,28,28,59,1,28,1,28,28,28,48,28,28,48,28,28,59,1,28,1,28,28,28,20,28,28,13,28,28,29,29,56,29,1,29,24,29,29,1,29,6,29,24,29,1,29,28,29,29,27,29,62,29,28,29,6,29,48]
certRow g7641 on (Grammar43.fiveRow 7 6 6 true 3 2 4 [0,2,1,0]) using bank tags [28,28,59,28,28,59,28,28,59,28,28,59,6,48,6,48,1,1]
certRow g7642 on (Grammar43.fiveRow 7 6 6 false 3 2 4 [0,3,0,0]) using bank tags []
certRow g7643 on (Grammar43.fiveRow 7 6 6 true 3 2 4 [0,3,0,0]) using bank tags []
certRow g7644 on (Grammar43.fiveRow 7 6 6 false 3 2 4 [1,0,0,2]) using bank tags [59,1,28,1,28,28,28,48,28,28,48,28,28,59,1,28,1,28,28,28,48,28,28,48,28,28,59,1,28,1,28,28,28,48,28,28,48,28,28,59,1,28,1,28,28,28,48,28,28,48,28,28,59,1,28,1,28,28,28,48,28,28,48,28,28]
certRow g7645 on (Grammar43.fiveRow 7 6 6 true 3 2 4 [1,0,0,2]) using bank tags [28,28,59,28,28,59,28,28,59,28,28,59,28,28,59]
certRow g7646 on (Grammar43.fiveRow 7 6 6 false 3 2 4 [1,0,1,1]) using bank tags []
certRow g7647 on (Grammar43.fiveRow 7 6 6 true 3 2 4 [1,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
