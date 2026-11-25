import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg12228 (i : Nat) := Split43.five 8 i 7 7 4 false 3 4 5 [1,0,0,2,0]
certRow g12228s0 on (rg12228 0) using bank tags [3,3,3,3,28,28]
certRow g12228s1 on (rg12228 1) using bank tags [3,3,3,3,3]
certRow g12228s2 on (rg12228 2) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,1,28,28,28]
certRow g12228s3 on (rg12228 3) using bank tags [3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow g12228s4 on (rg12228 4) using bank tags []
certRow g12228s5 on (rg12228 5) using bank tags [3,3,28,28,28,28,28,28,28]
certRow g12228s6 on (rg12228 6) using bank tags [3,3]
certRow g12228s7 on (rg12228 7) using bank tags [3,3,28,28]
theorem g12228 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [1,0,0,2,0]) :=
  Split43.five_cover 8 (by decide) 7 7 4 false 3 4 5 [1,0,0,2,0] (.cons (g12228s0) (.cons (g12228s1) (.cons (g12228s2) (.cons (g12228s3) (.cons (g12228s4) (.cons (g12228s5) (.cons (g12228s6) (.cons (g12228s7) .nil))))))))
certRow g12229 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [1,0,0,2,0]) using bank tags []
certRow g12230 on (Grammar43.fiveRow 7 7 4 false 3 4 5 [1,0,1,0,1]) using bank tags []
certRow g12231 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [1,0,1,0,1]) using bank tags []
certRow g12232 on (Grammar43.fiveRow 7 7 4 false 3 4 5 [1,0,1,1,0]) using bank tags []
certRow g12233 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [1,0,1,1,0]) using bank tags []
private abbrev rg12234 (i : Nat) := Split43.five 8 i 7 7 4 false 3 4 5 [1,0,2,0,0]
certRow g12234s0 on (rg12234 0) using bank tags [1,28,1,28]
certRow g12234s1 on (rg12234 1) using bank tags [3,3,3,3,3]
certRow g12234s2 on (rg12234 2) using bank tags [3,3,3,3,3,3,57,28,28,28,1,28,28,28,28,28]
certRow g12234s3 on (rg12234 3) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow g12234s4 on (rg12234 4) using bank tags []
certRow g12234s5 on (rg12234 5) using bank tags [3,3,3,3,57,28,28,28,28,28,28,28,28,28]
certRow g12234s6 on (rg12234 6) using bank tags [3,3]
certRow g12234s7 on (rg12234 7) using bank tags [3,3,3,3,28,28]
theorem g12234 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [1,0,2,0,0]) :=
  Split43.five_cover 8 (by decide) 7 7 4 false 3 4 5 [1,0,2,0,0] (.cons (g12234s0) (.cons (g12234s1) (.cons (g12234s2) (.cons (g12234s3) (.cons (g12234s4) (.cons (g12234s5) (.cons (g12234s6) (.cons (g12234s7) .nil))))))))
certRow g12235 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [1,0,2,0,0]) using bank tags []
certRow g12236 on (Grammar43.fiveRow 7 7 4 false 3 4 5 [1,1,0,0,1]) using bank tags []
certRow g12237 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [1,1,0,0,1]) using bank tags []
certRow g12238 on (Grammar43.fiveRow 7 7 4 false 3 4 5 [1,1,0,1,0]) using bank tags []
certRow g12239 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [1,1,0,1,0]) using bank tags []
certRow g12240 on (Grammar43.fiveRow 7 7 4 false 3 4 5 [1,1,1,0,0]) using bank tags []
certRow g12241 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [1,1,1,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
