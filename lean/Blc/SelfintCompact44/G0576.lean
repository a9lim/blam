import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg12242 (i : Nat) := Split43.five 8 i 7 7 4 false 3 4 5 [1,2,0,0,0]
certRow g12242s0 on (rg12242 0) using bank tags [1,28]
certRow g12242s1 on (rg12242 1) using bank tags [3,3,3]
certRow g12242s2 on (rg12242 2) using bank tags [3,3,3,3,56,28,28,28,8,28,28,28,28,57,28,28,28]
certRow g12242s3 on (rg12242 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28]
certRow g12242s4 on (rg12242 4) using bank tags []
certRow g12242s5 on (rg12242 5) using bank tags [28,28,28,28]
certRow g12242s6 on (rg12242 6) using bank tags []
certRow g12242s7 on (rg12242 7) using bank tags [3,3]
theorem g12242 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [1,2,0,0,0]) :=
  Split43.five_cover 8 (by decide) 7 7 4 false 3 4 5 [1,2,0,0,0] (.cons (g12242s0) (.cons (g12242s1) (.cons (g12242s2) (.cons (g12242s3) (.cons (g12242s4) (.cons (g12242s5) (.cons (g12242s6) (.cons (g12242s7) .nil))))))))
certRow g12243 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [1,2,0,0,0]) using bank tags []
private abbrev rg12244 (i : Nat) := Split43.five 8 i 7 7 4 false 3 4 5 [2,0,0,0,1]
certRow g12244s0 on (rg12244 0) using bank tags [3,3,3,3]
certRow g12244s1 on (rg12244 1) using bank tags []
certRow g12244s2 on (rg12244 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,48,28,28,28,27,28,28,28]
certRow g12244s3 on (rg12244 3) using bank tags [3,3,3,3,3,3]
certRow g12244s4 on (rg12244 4) using bank tags []
certRow g12244s5 on (rg12244 5) using bank tags [3,28,48,28,28,28,9,28,28,28,28,27,28,28,28]
certRow g12244s6 on (rg12244 6) using bank tags [3,3]
certRow g12244s7 on (rg12244 7) using bank tags [28,28]
theorem g12244 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [2,0,0,0,1]) :=
  Split43.five_cover 8 (by decide) 7 7 4 false 3 4 5 [2,0,0,0,1] (.cons (g12244s0) (.cons (g12244s1) (.cons (g12244s2) (.cons (g12244s3) (.cons (g12244s4) (.cons (g12244s5) (.cons (g12244s6) (.cons (g12244s7) .nil))))))))
certRow g12245 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [2,0,0,0,1]) using bank tags []
private abbrev rg12246 (i : Nat) := Split43.five 8 i 7 7 4 false 3 4 5 [2,0,0,1,0]
certRow g12246s0 on (rg12246 0) using bank tags [3,3,3,3,28,28]
certRow g12246s1 on (rg12246 1) using bank tags [3,3,3,3,3]
certRow g12246s2 on (rg12246 2) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,27,28,28,28]
certRow g12246s3 on (rg12246 3) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28]
certRow g12246s4 on (rg12246 4) using bank tags []
certRow g12246s5 on (rg12246 5) using bank tags [3,3,28,28,28,28,28,28,28]
certRow g12246s6 on (rg12246 6) using bank tags [3,3]
certRow g12246s7 on (rg12246 7) using bank tags [3,3,28,28]
theorem g12246 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [2,0,0,1,0]) :=
  Split43.five_cover 8 (by decide) 7 7 4 false 3 4 5 [2,0,0,1,0] (.cons (g12246s0) (.cons (g12246s1) (.cons (g12246s2) (.cons (g12246s3) (.cons (g12246s4) (.cons (g12246s5) (.cons (g12246s6) (.cons (g12246s7) .nil))))))))
certRow g12247 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [2,0,0,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
