import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g8833 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [2,0,2,1]) using bank tags [20,56,15,1,1,1,1,3,20,56,1,1,1,1,1,3,18,26,13,1,1,1,1,2,20,56,1,1,1,1,1,3,6,1,13,1,1,1,1,2]
certRow g8834 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [2,0,3,0]) using bank tags []
certRow g8835 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [2,0,3,0]) using bank tags []
private abbrev rg8836 (i : Nat) := Split43.five 12 i 7 6 6 false 5 2 4 [2,1,0,2]
certRow g8836s0 on (rg8836 0) using bank tags []
certRow g8836s1 on (rg8836 1) using bank tags [20,44,29,29,29,29,29,27,29,44,29,28,29,29,29,29,48,29,20,29,28,29,29,29,20,24,29,29,29,29,29,27,29,24,29,28,29,29,29,29,48,29,20,29,28,29,29,29]
certRow g8836s2 on (rg8836 2) using bank tags [1,13,29,29,29,29,29,27,29,13,29,28,29,29,29,29,13,29,1,29,28,29,29,29]
certRow g8836s3 on (rg8836 3) using bank tags [1,13,29,29,29,29,29,27,29,13,29,28,29,29,29,29,13,29,1,29,28,29,29,29,11,13,29,29,29,29,29,27,29,13,29,28,29,29,29,29,13,29,11,29,28,29,29,29]
certRow g8836s4 on (rg8836 4) using bank tags []
certRow g8836s5 on (rg8836 5) using bank tags []
certRow g8836s6 on (rg8836 6) using bank tags []
certRow g8836s7 on (rg8836 7) using bank tags []
certRow g8836s8 on (rg8836 8) using bank tags []
certRow g8836s9 on (rg8836 9) using bank tags []
certRow g8836s10 on (rg8836 10) using bank tags []
certRow g8836s11 on (rg8836 11) using bank tags []
theorem g8836 : BadRow (Grammar43.fiveRow 7 6 6 false 5 2 4 [2,1,0,2]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 5 2 4 [2,1,0,2] (.cons (g8836s0) (.cons (g8836s1) (.cons (g8836s2) (.cons (g8836s3) (.cons (g8836s4) (.cons (g8836s5) (.cons (g8836s6) (.cons (g8836s7) (.cons (g8836s8) (.cons (g8836s9) (.cons (g8836s10) (.cons (g8836s11) .nil))))))))))))
certRow g8837 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [2,1,0,2]) using bank tags [20,56,11,1,1,1,1,3,20,56,1,1,1,1,1,3,1,1,13,1,1,1,1,3,1,1,13,1,1,1,1,3,11,14,13,1,1,1,1,3]
certRow g8838 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [2,1,1,1]) using bank tags []
certRow g8839 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [2,1,1,1]) using bank tags []
certRow g8840 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [2,1,2,0]) using bank tags [20,44,29,29,29,29,29,27,29,44,29,28,29,29,29,29,48,29,20,29,28,29,29,29,20,1,29,29,29,29,29,27,29,1,29,28,29,29,29,29,48,29,20,29,28,29,29,29,18,13,29,29,29,29,29,27,29,13,29,28,29,29,29,29,13,29,18,29,28,29,29,29]
certRow g8841 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [2,1,2,0]) using bank tags [20,56,11,1,1,1,1,3,20,56,11,1,1,1,1,3,18,26,13,1,1,1,1,3]
end Blc.SelfintSingleObject.Compact44
