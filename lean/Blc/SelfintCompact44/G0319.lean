import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg7632 (i : Nat) := Split43.five 12 i 7 6 6 false 3 2 4 [0,1,0,2]
certRow g7632s0 on (rg7632 0) using bank tags []
certRow g7632s1 on (rg7632 1) using bank tags [59,1,28,1,28,28,28,48,28,28,48,28,28,59,1,28,1,28,28,28,48,28,28,48,28,28]
certRow g7632s2 on (rg7632 2) using bank tags [59,1,28,1,28,28,28,48,28,28,48,28,28]
certRow g7632s3 on (rg7632 3) using bank tags [59,1,28,1,28,28,28,48,28,28,48,28,28,59,1,28,1,28,28,28,48,28,28,48,28,28]
certRow g7632s4 on (rg7632 4) using bank tags []
certRow g7632s5 on (rg7632 5) using bank tags [59,1,28,1,28,28,28,20,28,28,13,28,28,59,1,28,1,28,28,28,20,28,28,13,28,28,29,29,56,29,1,29,6,29,29,1,29,6,29,6,29,1,29,28,29,29,27,29,18,29,28,29,6,29,48,29,29,56,29,1,29,11,29,29,1,29,6,29,11,29,1,29,28,29,29,27,29,58,29,28,29,6,29,48]
certRow g7632s6 on (rg7632 6) using bank tags []
certRow g7632s7 on (rg7632 7) using bank tags []
certRow g7632s8 on (rg7632 8) using bank tags []
certRow g7632s9 on (rg7632 9) using bank tags []
certRow g7632s10 on (rg7632 10) using bank tags []
certRow g7632s11 on (rg7632 11) using bank tags []
theorem g7632 : BadRow (Grammar43.fiveRow 7 6 6 false 3 2 4 [0,1,0,2]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 3 2 4 [0,1,0,2] (.cons (g7632s0) (.cons (g7632s1) (.cons (g7632s2) (.cons (g7632s3) (.cons (g7632s4) (.cons (g7632s5) (.cons (g7632s6) (.cons (g7632s7) (.cons (g7632s8) (.cons (g7632s9) (.cons (g7632s10) (.cons (g7632s11) .nil))))))))))))
certRow g7633 on (Grammar43.fiveRow 7 6 6 true 3 2 4 [0,1,0,2]) using bank tags [28,28,59,28,28,59,28,28,59,28,28,59,28,28,59,28,28,59,28,28,59,20,48,20,48,1,1,7,48,1,48,10,1]
certRow g7634 on (Grammar43.fiveRow 7 6 6 false 3 2 4 [0,1,1,1]) using bank tags []
certRow g7635 on (Grammar43.fiveRow 7 6 6 true 3 2 4 [0,1,1,1]) using bank tags []
certRow g7636 on (Grammar43.fiveRow 7 6 6 false 3 2 4 [0,1,2,0]) using bank tags [59,1,28,1,28,28,28,48,28,28,48,28,28,59,1,28,1,28,28,28,48,28,28,48,28,28,59,1,28,1,28,28,28,48,28,28,48,28,28,59,1,28,1,28,28,28,20,28,28,13,28,28,29,29,56,29,1,29,46,29,29,1,29,58,29,6,29,1,29,28,29,29,27,29,18,29,28,29,16,29,48]
certRow g7637 on (Grammar43.fiveRow 7 6 6 true 3 2 4 [0,1,2,0]) using bank tags [28,28,59,28,28,59,28,28,59,28,28,59,20,48,20,48,15,26]
end Blc.SelfintSingleObject.Compact44
