import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg12338 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [0,1,0,2,0]
certRow g12338s0 on (rg12338 0) using bank tags []
certRow g12338s1 on (rg12338 1) using bank tags []
certRow g12338s2 on (rg12338 2) using bank tags []
certRow g12338s3 on (rg12338 3) using bank tags []
certRow g12338s4 on (rg12338 4) using bank tags []
certRow g12338s5 on (rg12338 5) using bank tags []
certRow g12338s6 on (rg12338 6) using bank tags []
certRow g12338s7 on (rg12338 7) using bank tags []
certRow g12338s8 on (rg12338 8) using bank tags []
certRow g12338s9 on (rg12338 9) using bank tags []
certRow g12338s10 on (rg12338 10) using bank tags []
certRow g12338s11 on (rg12338 11) using bank tags []
theorem g12338 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,1,0,2,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [0,1,0,2,0] (.cons (g12338s0) (.cons (g12338s1) (.cons (g12338s2) (.cons (g12338s3) (.cons (g12338s4) (.cons (g12338s5) (.cons (g12338s6) (.cons (g12338s7) (.cons (g12338s8) (.cons (g12338s9) (.cons (g12338s10) (.cons (g12338s11) .nil))))))))))))
certRow g12339 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,1,0,2,0]) using bank tags []
certRow g12340 on (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,1,1,0,1]) using bank tags []
certRow g12341 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,1,1,0,1]) using bank tags []
certRow g12342 on (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,1,1,1,0]) using bank tags []
certRow g12343 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,1,1,1,0]) using bank tags []
private abbrev rg12344 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [0,1,2,0,0]
certRow g12344s0 on (rg12344 0) using bank tags []
certRow g12344s1 on (rg12344 1) using bank tags []
certRow g12344s2 on (rg12344 2) using bank tags []
certRow g12344s3 on (rg12344 3) using bank tags []
certRow g12344s4 on (rg12344 4) using bank tags []
certRow g12344s5 on (rg12344 5) using bank tags []
certRow g12344s6 on (rg12344 6) using bank tags []
certRow g12344s7 on (rg12344 7) using bank tags []
certRow g12344s8 on (rg12344 8) using bank tags []
certRow g12344s9 on (rg12344 9) using bank tags []
certRow g12344s10 on (rg12344 10) using bank tags []
certRow g12344s11 on (rg12344 11) using bank tags []
theorem g12344 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,1,2,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [0,1,2,0,0] (.cons (g12344s0) (.cons (g12344s1) (.cons (g12344s2) (.cons (g12344s3) (.cons (g12344s4) (.cons (g12344s5) (.cons (g12344s6) (.cons (g12344s7) (.cons (g12344s8) (.cons (g12344s9) (.cons (g12344s10) (.cons (g12344s11) .nil))))))))))))
certRow g12345 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,1,2,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
