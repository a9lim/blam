import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg12376 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [2,0,0,1,0]
certRow g12376s0 on (rg12376 0) using bank tags []
certRow g12376s1 on (rg12376 1) using bank tags []
certRow g12376s2 on (rg12376 2) using bank tags []
certRow g12376s3 on (rg12376 3) using bank tags []
certRow g12376s4 on (rg12376 4) using bank tags []
certRow g12376s5 on (rg12376 5) using bank tags []
certRow g12376s6 on (rg12376 6) using bank tags []
certRow g12376s7 on (rg12376 7) using bank tags []
certRow g12376s8 on (rg12376 8) using bank tags []
certRow g12376s9 on (rg12376 9) using bank tags []
certRow g12376s10 on (rg12376 10) using bank tags []
certRow g12376s11 on (rg12376 11) using bank tags []
theorem g12376 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [2,0,0,1,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [2,0,0,1,0] (.cons (g12376s0) (.cons (g12376s1) (.cons (g12376s2) (.cons (g12376s3) (.cons (g12376s4) (.cons (g12376s5) (.cons (g12376s6) (.cons (g12376s7) (.cons (g12376s8) (.cons (g12376s9) (.cons (g12376s10) (.cons (g12376s11) .nil))))))))))))
certRow g12377 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [2,0,0,1,0]) using bank tags []
private abbrev rg12378 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [2,0,1,0,0]
certRow g12378s0 on (rg12378 0) using bank tags []
certRow g12378s1 on (rg12378 1) using bank tags []
certRow g12378s2 on (rg12378 2) using bank tags []
certRow g12378s3 on (rg12378 3) using bank tags []
certRow g12378s4 on (rg12378 4) using bank tags []
certRow g12378s5 on (rg12378 5) using bank tags []
certRow g12378s6 on (rg12378 6) using bank tags []
certRow g12378s7 on (rg12378 7) using bank tags []
certRow g12378s8 on (rg12378 8) using bank tags []
certRow g12378s9 on (rg12378 9) using bank tags []
certRow g12378s10 on (rg12378 10) using bank tags []
certRow g12378s11 on (rg12378 11) using bank tags []
theorem g12378 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [2,0,1,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [2,0,1,0,0] (.cons (g12378s0) (.cons (g12378s1) (.cons (g12378s2) (.cons (g12378s3) (.cons (g12378s4) (.cons (g12378s5) (.cons (g12378s6) (.cons (g12378s7) (.cons (g12378s8) (.cons (g12378s9) (.cons (g12378s10) (.cons (g12378s11) .nil))))))))))))
certRow g12379 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [2,0,1,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
