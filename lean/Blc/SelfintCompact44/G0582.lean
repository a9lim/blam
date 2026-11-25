import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg12322 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [0,0,1,0,2]
certRow g12322s0 on (rg12322 0) using bank tags []
certRow g12322s1 on (rg12322 1) using bank tags []
certRow g12322s2 on (rg12322 2) using bank tags []
certRow g12322s3 on (rg12322 3) using bank tags []
certRow g12322s4 on (rg12322 4) using bank tags []
certRow g12322s5 on (rg12322 5) using bank tags []
certRow g12322s6 on (rg12322 6) using bank tags []
certRow g12322s7 on (rg12322 7) using bank tags []
certRow g12322s8 on (rg12322 8) using bank tags []
certRow g12322s9 on (rg12322 9) using bank tags []
certRow g12322s10 on (rg12322 10) using bank tags []
certRow g12322s11 on (rg12322 11) using bank tags []
theorem g12322 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,0,1,0,2]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [0,0,1,0,2] (.cons (g12322s0) (.cons (g12322s1) (.cons (g12322s2) (.cons (g12322s3) (.cons (g12322s4) (.cons (g12322s5) (.cons (g12322s6) (.cons (g12322s7) (.cons (g12322s8) (.cons (g12322s9) (.cons (g12322s10) (.cons (g12322s11) .nil))))))))))))
certRow g12323 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,0,1,0,2]) using bank tags []
certRow g12324 on (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,0,1,1,1]) using bank tags []
certRow g12325 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,0,1,1,1]) using bank tags []
private abbrev rg12326 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [0,0,1,2,0]
certRow g12326s0 on (rg12326 0) using bank tags []
certRow g12326s1 on (rg12326 1) using bank tags []
certRow g12326s2 on (rg12326 2) using bank tags []
certRow g12326s3 on (rg12326 3) using bank tags []
certRow g12326s4 on (rg12326 4) using bank tags []
certRow g12326s5 on (rg12326 5) using bank tags []
certRow g12326s6 on (rg12326 6) using bank tags []
certRow g12326s7 on (rg12326 7) using bank tags []
certRow g12326s8 on (rg12326 8) using bank tags []
certRow g12326s9 on (rg12326 9) using bank tags []
certRow g12326s10 on (rg12326 10) using bank tags []
certRow g12326s11 on (rg12326 11) using bank tags []
theorem g12326 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,0,1,2,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [0,0,1,2,0] (.cons (g12326s0) (.cons (g12326s1) (.cons (g12326s2) (.cons (g12326s3) (.cons (g12326s4) (.cons (g12326s5) (.cons (g12326s6) (.cons (g12326s7) (.cons (g12326s8) (.cons (g12326s9) (.cons (g12326s10) (.cons (g12326s11) .nil))))))))))))
certRow g12327 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,0,1,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
