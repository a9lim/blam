import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg12346 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [0,2,0,0,1]
certRow g12346s0 on (rg12346 0) using bank tags []
certRow g12346s1 on (rg12346 1) using bank tags []
certRow g12346s2 on (rg12346 2) using bank tags []
certRow g12346s3 on (rg12346 3) using bank tags []
certRow g12346s4 on (rg12346 4) using bank tags []
certRow g12346s5 on (rg12346 5) using bank tags []
certRow g12346s6 on (rg12346 6) using bank tags []
certRow g12346s7 on (rg12346 7) using bank tags []
certRow g12346s8 on (rg12346 8) using bank tags []
certRow g12346s9 on (rg12346 9) using bank tags []
certRow g12346s10 on (rg12346 10) using bank tags []
certRow g12346s11 on (rg12346 11) using bank tags []
theorem g12346 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,2,0,0,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [0,2,0,0,1] (.cons (g12346s0) (.cons (g12346s1) (.cons (g12346s2) (.cons (g12346s3) (.cons (g12346s4) (.cons (g12346s5) (.cons (g12346s6) (.cons (g12346s7) (.cons (g12346s8) (.cons (g12346s9) (.cons (g12346s10) (.cons (g12346s11) .nil))))))))))))
certRow g12347 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,2,0,0,1]) using bank tags []
private abbrev rg12348 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [0,2,0,1,0]
certRow g12348s0 on (rg12348 0) using bank tags []
certRow g12348s1 on (rg12348 1) using bank tags []
certRow g12348s2 on (rg12348 2) using bank tags []
certRow g12348s3 on (rg12348 3) using bank tags []
certRow g12348s4 on (rg12348 4) using bank tags []
certRow g12348s5 on (rg12348 5) using bank tags []
certRow g12348s6 on (rg12348 6) using bank tags []
certRow g12348s7 on (rg12348 7) using bank tags []
certRow g12348s8 on (rg12348 8) using bank tags []
certRow g12348s9 on (rg12348 9) using bank tags []
certRow g12348s10 on (rg12348 10) using bank tags []
certRow g12348s11 on (rg12348 11) using bank tags []
theorem g12348 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,2,0,1,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [0,2,0,1,0] (.cons (g12348s0) (.cons (g12348s1) (.cons (g12348s2) (.cons (g12348s3) (.cons (g12348s4) (.cons (g12348s5) (.cons (g12348s6) (.cons (g12348s7) (.cons (g12348s8) (.cons (g12348s9) (.cons (g12348s10) (.cons (g12348s11) .nil))))))))))))
certRow g12349 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,2,0,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
