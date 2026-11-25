import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g12195 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [0,0,1,1,1]) using bank tags []
private abbrev rg12196 (i : Nat) := Split43.five 8 i 7 7 4 false 3 4 5 [0,0,1,2,0]
certRow g12196s0 on (rg12196 0) using bank tags [3,28,28,28,29,48]
certRow g12196s1 on (rg12196 1) using bank tags [3,3,3,3,3,20,27]
certRow g12196s2 on (rg12196 2) using bank tags [3,28,28,28,3]
certRow g12196s3 on (rg12196 3) using bank tags [3,3,28,28,28,28,3]
certRow g12196s4 on (rg12196 4) using bank tags [3,3,3,3,3,28,100]
certRow g12196s5 on (rg12196 5) using bank tags [28,29,46]
certRow g12196s6 on (rg12196 6) using bank tags [3,3]
certRow g12196s7 on (rg12196 7) using bank tags [3,3,3,28,3,3,3,3,3,3,3,28,28,3,3,48,48,48,48,48,29,48,29,48,27,48]
theorem g12196 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [0,0,1,2,0]) :=
  Split43.five_cover 8 (by decide) 7 7 4 false 3 4 5 [0,0,1,2,0] (.cons (g12196s0) (.cons (g12196s1) (.cons (g12196s2) (.cons (g12196s3) (.cons (g12196s4) (.cons (g12196s5) (.cons (g12196s6) (.cons (g12196s7) .nil))))))))
certRow g12197 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [0,0,1,2,0]) using bank tags []
private abbrev rg12198 (i : Nat) := Split43.five 8 i 7 7 4 false 3 4 5 [0,0,2,0,1]
certRow g12198s0 on (rg12198 0) using bank tags [3]
certRow g12198s1 on (rg12198 1) using bank tags [3,3,3,3,20,27,20,27]
certRow g12198s2 on (rg12198 2) using bank tags [3,3,3,3,3,3,3,3,28,28,28]
certRow g12198s3 on (rg12198 3) using bank tags [3,3,28,28,3,3]
certRow g12198s4 on (rg12198 4) using bank tags [3,3,3,3,3,3]
certRow g12198s5 on (rg12198 5) using bank tags [28,28,28,28,28,28,28,29,46,29,46]
certRow g12198s6 on (rg12198 6) using bank tags [3,3,3,3]
certRow g12198s7 on (rg12198 7) using bank tags [28,28,3,3,3,3,3,3,3,3,3,3,3,28,28,3,3,3,3,48,48,48,48,48,48,48,48,48,29,48,29,48,27,48,27,48]
theorem g12198 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [0,0,2,0,1]) :=
  Split43.five_cover 8 (by decide) 7 7 4 false 3 4 5 [0,0,2,0,1] (.cons (g12198s0) (.cons (g12198s1) (.cons (g12198s2) (.cons (g12198s3) (.cons (g12198s4) (.cons (g12198s5) (.cons (g12198s6) (.cons (g12198s7) .nil))))))))
certRow g12199 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [0,0,2,0,1]) using bank tags []
private abbrev rg12200 (i : Nat) := Split43.five 8 i 7 7 4 false 3 4 5 [0,0,2,1,0]
certRow g12200s0 on (rg12200 0) using bank tags [3,28,28,28,29,48]
certRow g12200s1 on (rg12200 1) using bank tags [3,3,3,3,3,20,27]
certRow g12200s2 on (rg12200 2) using bank tags [3,28,28,28,3]
certRow g12200s3 on (rg12200 3) using bank tags [3,3,28,28,28,28,3]
certRow g12200s4 on (rg12200 4) using bank tags [3,3,3,3,3,28,100]
certRow g12200s5 on (rg12200 5) using bank tags [28,29,46]
certRow g12200s6 on (rg12200 6) using bank tags [3,3]
certRow g12200s7 on (rg12200 7) using bank tags [3,3,3,28,3,3,3,3,3,3,3,28,28,3,3,48,48,48,48,48,29,48,29,48,27,48]
theorem g12200 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [0,0,2,1,0]) :=
  Split43.five_cover 8 (by decide) 7 7 4 false 3 4 5 [0,0,2,1,0] (.cons (g12200s0) (.cons (g12200s1) (.cons (g12200s2) (.cons (g12200s3) (.cons (g12200s4) (.cons (g12200s5) (.cons (g12200s6) (.cons (g12200s7) .nil))))))))
certRow g12201 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [0,0,2,1,0]) using bank tags []
certRow g12202 on (Grammar43.fiveRow 7 7 4 false 3 4 5 [0,0,3,0,0]) using bank tags []
certRow g12203 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [0,0,3,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
