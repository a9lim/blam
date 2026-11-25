import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg12372 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [1,2,0,0,0]
certRow g12372s0 on (rg12372 0) using bank tags []
certRow g12372s1 on (rg12372 1) using bank tags []
certRow g12372s2 on (rg12372 2) using bank tags []
certRow g12372s3 on (rg12372 3) using bank tags []
certRow g12372s4 on (rg12372 4) using bank tags []
certRow g12372s5 on (rg12372 5) using bank tags []
certRow g12372s6 on (rg12372 6) using bank tags []
certRow g12372s7 on (rg12372 7) using bank tags []
certRow g12372s8 on (rg12372 8) using bank tags []
certRow g12372s9 on (rg12372 9) using bank tags []
certRow g12372s10 on (rg12372 10) using bank tags []
certRow g12372s11 on (rg12372 11) using bank tags []
theorem g12372 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [1,2,0,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [1,2,0,0,0] (.cons (g12372s0) (.cons (g12372s1) (.cons (g12372s2) (.cons (g12372s3) (.cons (g12372s4) (.cons (g12372s5) (.cons (g12372s6) (.cons (g12372s7) (.cons (g12372s8) (.cons (g12372s9) (.cons (g12372s10) (.cons (g12372s11) .nil))))))))))))
certRow g12373 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [1,2,0,0,0]) using bank tags []
private abbrev rg12374 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [2,0,0,0,1]
certRow g12374s0 on (rg12374 0) using bank tags []
certRow g12374s1 on (rg12374 1) using bank tags []
certRow g12374s2 on (rg12374 2) using bank tags []
certRow g12374s3 on (rg12374 3) using bank tags []
certRow g12374s4 on (rg12374 4) using bank tags []
certRow g12374s5 on (rg12374 5) using bank tags []
certRow g12374s6 on (rg12374 6) using bank tags []
certRow g12374s7 on (rg12374 7) using bank tags []
certRow g12374s8 on (rg12374 8) using bank tags []
certRow g12374s9 on (rg12374 9) using bank tags []
certRow g12374s10 on (rg12374 10) using bank tags []
certRow g12374s11 on (rg12374 11) using bank tags []
theorem g12374 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [2,0,0,0,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [2,0,0,0,1] (.cons (g12374s0) (.cons (g12374s1) (.cons (g12374s2) (.cons (g12374s3) (.cons (g12374s4) (.cons (g12374s5) (.cons (g12374s6) (.cons (g12374s7) (.cons (g12374s8) (.cons (g12374s9) (.cons (g12374s10) (.cons (g12374s11) .nil))))))))))))
certRow g12375 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [2,0,0,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
