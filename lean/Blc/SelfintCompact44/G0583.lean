import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg12328 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [0,0,2,0,1]
certRow g12328s0 on (rg12328 0) using bank tags []
certRow g12328s1 on (rg12328 1) using bank tags []
certRow g12328s2 on (rg12328 2) using bank tags []
certRow g12328s3 on (rg12328 3) using bank tags []
certRow g12328s4 on (rg12328 4) using bank tags []
certRow g12328s5 on (rg12328 5) using bank tags []
certRow g12328s6 on (rg12328 6) using bank tags []
certRow g12328s7 on (rg12328 7) using bank tags []
certRow g12328s8 on (rg12328 8) using bank tags []
certRow g12328s9 on (rg12328 9) using bank tags []
certRow g12328s10 on (rg12328 10) using bank tags []
certRow g12328s11 on (rg12328 11) using bank tags []
theorem g12328 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,0,2,0,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [0,0,2,0,1] (.cons (g12328s0) (.cons (g12328s1) (.cons (g12328s2) (.cons (g12328s3) (.cons (g12328s4) (.cons (g12328s5) (.cons (g12328s6) (.cons (g12328s7) (.cons (g12328s8) (.cons (g12328s9) (.cons (g12328s10) (.cons (g12328s11) .nil))))))))))))
certRow g12329 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,0,2,0,1]) using bank tags []
private abbrev rg12330 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [0,0,2,1,0]
certRow g12330s0 on (rg12330 0) using bank tags []
certRow g12330s1 on (rg12330 1) using bank tags []
certRow g12330s2 on (rg12330 2) using bank tags []
certRow g12330s3 on (rg12330 3) using bank tags []
certRow g12330s4 on (rg12330 4) using bank tags []
certRow g12330s5 on (rg12330 5) using bank tags []
certRow g12330s6 on (rg12330 6) using bank tags []
certRow g12330s7 on (rg12330 7) using bank tags []
certRow g12330s8 on (rg12330 8) using bank tags []
certRow g12330s9 on (rg12330 9) using bank tags []
certRow g12330s10 on (rg12330 10) using bank tags []
certRow g12330s11 on (rg12330 11) using bank tags []
theorem g12330 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,0,2,1,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [0,0,2,1,0] (.cons (g12330s0) (.cons (g12330s1) (.cons (g12330s2) (.cons (g12330s3) (.cons (g12330s4) (.cons (g12330s5) (.cons (g12330s6) (.cons (g12330s7) (.cons (g12330s8) (.cons (g12330s9) (.cons (g12330s10) (.cons (g12330s11) .nil))))))))))))
certRow g12331 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,0,2,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
