import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g12219 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [0,2,0,1,0]) using bank tags []
private abbrev rg12220 (i : Nat) := Split43.five 8 i 7 7 4 false 3 4 5 [0,2,1,0,0]
certRow g12220s0 on (rg12220 0) using bank tags [6,28,28,29,48]
certRow g12220s1 on (rg12220 1) using bank tags [3,3,3]
certRow g12220s2 on (rg12220 2) using bank tags [3,3,28,28,28,28,3]
certRow g12220s3 on (rg12220 3) using bank tags [3,3,3,3,28,28,28]
certRow g12220s4 on (rg12220 4) using bank tags [3,3,3,3,3,28,100]
certRow g12220s5 on (rg12220 5) using bank tags [3,3,3,3,6,28,28,28,28,28]
certRow g12220s6 on (rg12220 6) using bank tags []
certRow g12220s7 on (rg12220 7) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,48,48,48,29,48,29,48,29,48,29,48]
theorem g12220 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [0,2,1,0,0]) :=
  Split43.five_cover 8 (by decide) 7 7 4 false 3 4 5 [0,2,1,0,0] (.cons (g12220s0) (.cons (g12220s1) (.cons (g12220s2) (.cons (g12220s3) (.cons (g12220s4) (.cons (g12220s5) (.cons (g12220s6) (.cons (g12220s7) .nil))))))))
certRow g12221 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [0,2,1,0,0]) using bank tags []
certRow g12222 on (Grammar43.fiveRow 7 7 4 false 3 4 5 [0,3,0,0,0]) using bank tags []
certRow g12223 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [0,3,0,0,0]) using bank tags []
private abbrev rg12224 (i : Nat) := Split43.five 8 i 7 7 4 false 3 4 5 [1,0,0,0,2]
certRow g12224s0 on (rg12224 0) using bank tags [3,3,3,3]
certRow g12224s1 on (rg12224 1) using bank tags []
certRow g12224s2 on (rg12224 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,1,28,28,28,6,28,28,28]
certRow g12224s3 on (rg12224 3) using bank tags [3,3,3,3,3,3,3]
certRow g12224s4 on (rg12224 4) using bank tags []
certRow g12224s5 on (rg12224 5) using bank tags [3,28,1,28,28,28,1,28,28,28,28,1,28,28,28]
certRow g12224s6 on (rg12224 6) using bank tags [3,3]
certRow g12224s7 on (rg12224 7) using bank tags [28,28]
theorem g12224 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [1,0,0,0,2]) :=
  Split43.five_cover 8 (by decide) 7 7 4 false 3 4 5 [1,0,0,0,2] (.cons (g12224s0) (.cons (g12224s1) (.cons (g12224s2) (.cons (g12224s3) (.cons (g12224s4) (.cons (g12224s5) (.cons (g12224s6) (.cons (g12224s7) .nil))))))))
certRow g12225 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [1,0,0,0,2]) using bank tags []
certRow g12226 on (Grammar43.fiveRow 7 7 4 false 3 4 5 [1,0,0,1,1]) using bank tags []
certRow g12227 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [1,0,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
