import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11898 (i : Nat) := Split43.five 12 i 7 7 4 false 3 2 4 [0,2,0,1]
certRow g11898s0 on (rg11898 0) using bank tags []
certRow g11898s1 on (rg11898 1) using bank tags [28,28,28,28,48,60,28,28,27,28,28,28,28,48,60,28,28,27]
certRow g11898s2 on (rg11898 2) using bank tags [28,28,28,28,48,60,28,28,27]
certRow g11898s3 on (rg11898 3) using bank tags [28,28,28,28,48,60,28,28,27,28,28,28,28,48,60,28,28,27]
certRow g11898s4 on (rg11898 4) using bank tags []
certRow g11898s5 on (rg11898 5) using bank tags [28,28,28,28,20,60,28,28,13,28,28,28,28,20,60,28,28,13,29,29,48,29,18,29,29,29,29,29,29,29,29,29,27,29,18,29,28,29,60,29,29,29,29,29,29,29,48,29,48,29,28,29,29,29,29,29,29,48,29,24,29,29,29,29,29,29,29,29,29,27,29,24,29,28,29,60,29,29,29,29,29,29,29,48,29,48,29,28,29,29,29,29]
certRow g11898s6 on (rg11898 6) using bank tags []
certRow g11898s7 on (rg11898 7) using bank tags []
certRow g11898s8 on (rg11898 8) using bank tags []
certRow g11898s9 on (rg11898 9) using bank tags []
certRow g11898s10 on (rg11898 10) using bank tags []
certRow g11898s11 on (rg11898 11) using bank tags []
theorem g11898 : BadRow (Grammar43.fiveRow 7 7 4 false 3 2 4 [0,2,0,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 2 4 [0,2,0,1] (.cons (g11898s0) (.cons (g11898s1) (.cons (g11898s2) (.cons (g11898s3) (.cons (g11898s4) (.cons (g11898s5) (.cons (g11898s6) (.cons (g11898s7) (.cons (g11898s8) (.cons (g11898s9) (.cons (g11898s10) (.cons (g11898s11) .nil))))))))))))
certRow g11899 on (Grammar43.fiveRow 7 7 4 true 3 2 4 [0,2,0,1]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,29,12,29,1,1,1,3,29,12,29,1,1,1,3]
certRow g11900 on (Grammar43.fiveRow 7 7 4 false 3 2 4 [0,2,1,0]) using bank tags [28,28,28,28,48,60,28,28,27,28,28,28,28,48,60,28,28,27,28,28,28,28,48,60,28,28,27,28,28,28,28,20,60,28,28,13,29,29,48,29,62,29,29,29,29,29,29,29,29,29,27,29,62,29,28,29,60,29,29,29,29,29,29,29,48,29,48,29,28,29,29,29,29]
certRow g11901 on (Grammar43.fiveRow 7 7 4 true 3 2 4 [0,2,1,0]) using bank tags [1,1,1,1,1,1,1,1,29,12,29,1,1,1,3]
certRow g11902 on (Grammar43.fiveRow 7 7 4 false 3 2 4 [0,3,0,0]) using bank tags []
certRow g11903 on (Grammar43.fiveRow 7 7 4 true 3 2 4 [0,3,0,0]) using bank tags []
certRow g11904 on (Grammar43.fiveRow 7 7 4 false 3 2 4 [1,0,0,2]) using bank tags [28,28,28,28,48,60,28,28,27,28,28,28,28,48,60,28,28,27,28,28,28,28,48,60,28,28,27,28,28,28,28,48,60,28,28,27,28,28,28,28,48,60,28,28,27]
certRow g11905 on (Grammar43.fiveRow 7 7 4 true 3 2 4 [1,0,0,2]) using bank tags [1,1,1,1,1,1,1,1,1,1]
certRow g11906 on (Grammar43.fiveRow 7 7 4 false 3 2 4 [1,0,1,1]) using bank tags []
certRow g11907 on (Grammar43.fiveRow 7 7 4 true 3 2 4 [1,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
