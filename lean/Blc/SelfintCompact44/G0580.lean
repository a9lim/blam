import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g12312 on (Grammar43.fiveRow 7 7 4 false 3 5 4 [3,0,0,0]) using bank tags []
certRow g12313 on (Grammar43.fiveRow 7 7 4 true 3 5 4 [3,0,0,0]) using bank tags []
private abbrev rg12314 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [0,0,0,0,3]
certRow g12314s0 on (rg12314 0) using bank tags []
certRow g12314s1 on (rg12314 1) using bank tags []
certRow g12314s2 on (rg12314 2) using bank tags []
certRow g12314s3 on (rg12314 3) using bank tags []
certRow g12314s4 on (rg12314 4) using bank tags []
certRow g12314s5 on (rg12314 5) using bank tags []
certRow g12314s6 on (rg12314 6) using bank tags []
certRow g12314s7 on (rg12314 7) using bank tags []
certRow g12314s8 on (rg12314 8) using bank tags []
certRow g12314s9 on (rg12314 9) using bank tags []
certRow g12314s10 on (rg12314 10) using bank tags []
certRow g12314s11 on (rg12314 11) using bank tags []
theorem g12314 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,0,0,0,3]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [0,0,0,0,3] (.cons (g12314s0) (.cons (g12314s1) (.cons (g12314s2) (.cons (g12314s3) (.cons (g12314s4) (.cons (g12314s5) (.cons (g12314s6) (.cons (g12314s7) (.cons (g12314s8) (.cons (g12314s9) (.cons (g12314s10) (.cons (g12314s11) .nil))))))))))))
certRow g12315 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,0,0,0,3]) using bank tags []
private abbrev rg12316 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [0,0,0,1,2]
certRow g12316s0 on (rg12316 0) using bank tags []
certRow g12316s1 on (rg12316 1) using bank tags []
certRow g12316s2 on (rg12316 2) using bank tags []
certRow g12316s3 on (rg12316 3) using bank tags []
certRow g12316s4 on (rg12316 4) using bank tags []
certRow g12316s5 on (rg12316 5) using bank tags []
certRow g12316s6 on (rg12316 6) using bank tags []
certRow g12316s7 on (rg12316 7) using bank tags []
certRow g12316s8 on (rg12316 8) using bank tags []
certRow g12316s9 on (rg12316 9) using bank tags []
certRow g12316s10 on (rg12316 10) using bank tags []
certRow g12316s11 on (rg12316 11) using bank tags []
theorem g12316 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,0,0,1,2]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [0,0,0,1,2] (.cons (g12316s0) (.cons (g12316s1) (.cons (g12316s2) (.cons (g12316s3) (.cons (g12316s4) (.cons (g12316s5) (.cons (g12316s6) (.cons (g12316s7) (.cons (g12316s8) (.cons (g12316s9) (.cons (g12316s10) (.cons (g12316s11) .nil))))))))))))
certRow g12317 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,0,0,1,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
