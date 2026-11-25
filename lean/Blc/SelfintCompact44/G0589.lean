import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g12362 on (Grammar43.fiveRow 7 7 4 false 3 5 5 [1,0,1,1,0]) using bank tags []
certRow g12363 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [1,0,1,1,0]) using bank tags []
private abbrev rg12364 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [1,0,2,0,0]
certRow g12364s0 on (rg12364 0) using bank tags []
certRow g12364s1 on (rg12364 1) using bank tags []
certRow g12364s2 on (rg12364 2) using bank tags []
certRow g12364s3 on (rg12364 3) using bank tags []
certRow g12364s4 on (rg12364 4) using bank tags []
certRow g12364s5 on (rg12364 5) using bank tags []
certRow g12364s6 on (rg12364 6) using bank tags []
certRow g12364s7 on (rg12364 7) using bank tags []
certRow g12364s8 on (rg12364 8) using bank tags []
certRow g12364s9 on (rg12364 9) using bank tags []
certRow g12364s10 on (rg12364 10) using bank tags []
certRow g12364s11 on (rg12364 11) using bank tags []
theorem g12364 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [1,0,2,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [1,0,2,0,0] (.cons (g12364s0) (.cons (g12364s1) (.cons (g12364s2) (.cons (g12364s3) (.cons (g12364s4) (.cons (g12364s5) (.cons (g12364s6) (.cons (g12364s7) (.cons (g12364s8) (.cons (g12364s9) (.cons (g12364s10) (.cons (g12364s11) .nil))))))))))))
certRow g12365 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [1,0,2,0,0]) using bank tags []
certRow g12366 on (Grammar43.fiveRow 7 7 4 false 3 5 5 [1,1,0,0,1]) using bank tags []
certRow g12367 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [1,1,0,0,1]) using bank tags []
certRow g12368 on (Grammar43.fiveRow 7 7 4 false 3 5 5 [1,1,0,1,0]) using bank tags []
certRow g12369 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [1,1,0,1,0]) using bank tags []
certRow g12370 on (Grammar43.fiveRow 7 7 4 false 3 5 5 [1,1,1,0,0]) using bank tags []
certRow g12371 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [1,1,1,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
