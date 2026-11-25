import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg12350 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [0,2,1,0,0]
certRow g12350s0 on (rg12350 0) using bank tags []
certRow g12350s1 on (rg12350 1) using bank tags []
certRow g12350s2 on (rg12350 2) using bank tags []
certRow g12350s3 on (rg12350 3) using bank tags []
certRow g12350s4 on (rg12350 4) using bank tags []
certRow g12350s5 on (rg12350 5) using bank tags []
certRow g12350s6 on (rg12350 6) using bank tags []
certRow g12350s7 on (rg12350 7) using bank tags []
certRow g12350s8 on (rg12350 8) using bank tags []
certRow g12350s9 on (rg12350 9) using bank tags []
certRow g12350s10 on (rg12350 10) using bank tags []
certRow g12350s11 on (rg12350 11) using bank tags []
theorem g12350 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,2,1,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [0,2,1,0,0] (.cons (g12350s0) (.cons (g12350s1) (.cons (g12350s2) (.cons (g12350s3) (.cons (g12350s4) (.cons (g12350s5) (.cons (g12350s6) (.cons (g12350s7) (.cons (g12350s8) (.cons (g12350s9) (.cons (g12350s10) (.cons (g12350s11) .nil))))))))))))
certRow g12351 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,2,1,0,0]) using bank tags []
private abbrev rg12352 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [0,3,0,0,0]
certRow g12352s0 on (rg12352 0) using bank tags []
certRow g12352s1 on (rg12352 1) using bank tags []
certRow g12352s2 on (rg12352 2) using bank tags []
certRow g12352s3 on (rg12352 3) using bank tags []
certRow g12352s4 on (rg12352 4) using bank tags []
certRow g12352s5 on (rg12352 5) using bank tags []
certRow g12352s6 on (rg12352 6) using bank tags []
certRow g12352s7 on (rg12352 7) using bank tags []
certRow g12352s8 on (rg12352 8) using bank tags []
certRow g12352s9 on (rg12352 9) using bank tags []
certRow g12352s10 on (rg12352 10) using bank tags []
certRow g12352s11 on (rg12352 11) using bank tags []
theorem g12352 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,3,0,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [0,3,0,0,0] (.cons (g12352s0) (.cons (g12352s1) (.cons (g12352s2) (.cons (g12352s3) (.cons (g12352s4) (.cons (g12352s5) (.cons (g12352s6) (.cons (g12352s7) (.cons (g12352s8) (.cons (g12352s9) (.cons (g12352s10) (.cons (g12352s11) .nil))))))))))))
certRow g12353 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,3,0,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
