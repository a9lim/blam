import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11892 (i : Nat) := Split43.five 12 i 7 7 4 false 3 2 4 [0,1,0,2]
certRow g11892s0 on (rg11892 0) using bank tags []
certRow g11892s1 on (rg11892 1) using bank tags [28,28,28,28,48,60,28,28,27,28,28,28,28,48,60,28,28,27]
certRow g11892s2 on (rg11892 2) using bank tags [28,28,28,28,48,60,28,28,27]
certRow g11892s3 on (rg11892 3) using bank tags [28,28,28,28,48,60,28,28,27,28,28,28,28,48,60,28,28,27]
certRow g11892s4 on (rg11892 4) using bank tags []
certRow g11892s5 on (rg11892 5) using bank tags [28,28,28,28,20,60,28,28,13,28,28,28,28,20,60,28,28,13,29,29,48,29,18,29,29,29,29,29,29,29,29,29,27,29,18,29,28,29,60,29,29,29,29,29,29,29,48,29,48,29,28,29,29,29,29,29,29,48,29,16,29,29,29,29,29,29,29,29,29,27,29,16,29,28,29,60,29,29,29,29,29,29,29,48,29,48,29,28,29,29,29,29]
certRow g11892s6 on (rg11892 6) using bank tags []
certRow g11892s7 on (rg11892 7) using bank tags []
certRow g11892s8 on (rg11892 8) using bank tags []
certRow g11892s9 on (rg11892 9) using bank tags []
certRow g11892s10 on (rg11892 10) using bank tags []
certRow g11892s11 on (rg11892 11) using bank tags []
theorem g11892 : BadRow (Grammar43.fiveRow 7 7 4 false 3 2 4 [0,1,0,2]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 2 4 [0,1,0,2] (.cons (g11892s0) (.cons (g11892s1) (.cons (g11892s2) (.cons (g11892s3) (.cons (g11892s4) (.cons (g11892s5) (.cons (g11892s6) (.cons (g11892s7) (.cons (g11892s8) (.cons (g11892s9) (.cons (g11892s10) (.cons (g11892s11) .nil))))))))))))
certRow g11893 on (Grammar43.fiveRow 7 7 4 true 3 2 4 [0,1,0,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,29,12,29,1,1,1,3,29,12,29,1,1,1,3]
certRow g11894 on (Grammar43.fiveRow 7 7 4 false 3 2 4 [0,1,1,1]) using bank tags []
certRow g11895 on (Grammar43.fiveRow 7 7 4 true 3 2 4 [0,1,1,1]) using bank tags []
certRow g11896 on (Grammar43.fiveRow 7 7 4 false 3 2 4 [0,1,2,0]) using bank tags [28,28,28,28,48,60,28,28,27,28,28,28,28,48,60,28,28,27,28,28,28,28,48,60,28,28,27,28,28,28,28,20,60,28,28,13,29,29,48,29,18,29,29,29,29,29,29,29,29,29,27,29,18,29,28,29,60,29,29,29,29,29,29,29,48,29,48,29,28,29,29,29,29]
certRow g11897 on (Grammar43.fiveRow 7 7 4 true 3 2 4 [0,1,2,0]) using bank tags [1,1,1,1,1,1,1,1,29,12,29,1,1,1,3]
end Blc.SelfintSingleObject.Compact44
