import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg12380 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [2,1,0,0,0]
certRow g12380s0 on (rg12380 0) using bank tags []
certRow g12380s1 on (rg12380 1) using bank tags []
certRow g12380s2 on (rg12380 2) using bank tags []
certRow g12380s3 on (rg12380 3) using bank tags []
certRow g12380s4 on (rg12380 4) using bank tags []
certRow g12380s5 on (rg12380 5) using bank tags []
certRow g12380s6 on (rg12380 6) using bank tags []
certRow g12380s7 on (rg12380 7) using bank tags []
certRow g12380s8 on (rg12380 8) using bank tags []
certRow g12380s9 on (rg12380 9) using bank tags []
certRow g12380s10 on (rg12380 10) using bank tags []
certRow g12380s11 on (rg12380 11) using bank tags []
theorem g12380 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [2,1,0,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [2,1,0,0,0] (.cons (g12380s0) (.cons (g12380s1) (.cons (g12380s2) (.cons (g12380s3) (.cons (g12380s4) (.cons (g12380s5) (.cons (g12380s6) (.cons (g12380s7) (.cons (g12380s8) (.cons (g12380s9) (.cons (g12380s10) (.cons (g12380s11) .nil))))))))))))
certRow g12381 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [2,1,0,0,0]) using bank tags []
private abbrev rg12382 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [3,0,0,0,0]
certRow g12382s0 on (rg12382 0) using bank tags []
certRow g12382s1 on (rg12382 1) using bank tags []
certRow g12382s2 on (rg12382 2) using bank tags []
certRow g12382s3 on (rg12382 3) using bank tags []
certRow g12382s4 on (rg12382 4) using bank tags []
certRow g12382s5 on (rg12382 5) using bank tags []
certRow g12382s6 on (rg12382 6) using bank tags []
certRow g12382s7 on (rg12382 7) using bank tags []
certRow g12382s8 on (rg12382 8) using bank tags []
certRow g12382s9 on (rg12382 9) using bank tags []
certRow g12382s10 on (rg12382 10) using bank tags []
certRow g12382s11 on (rg12382 11) using bank tags []
theorem g12382 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [3,0,0,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [3,0,0,0,0] (.cons (g12382s0) (.cons (g12382s1) (.cons (g12382s2) (.cons (g12382s3) (.cons (g12382s4) (.cons (g12382s5) (.cons (g12382s6) (.cons (g12382s7) (.cons (g12382s8) (.cons (g12382s9) (.cons (g12382s10) (.cons (g12382s11) .nil))))))))))))
certRow g12383 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [3,0,0,0,0]) using bank tags []
certRow g12384 on (Grammar43.fiveRow 7 7 4 false 4 2 3 [0,0,4]) using bank tags []
certRow g12385 on (Grammar43.fiveRow 7 7 4 true 4 2 3 [0,0,4]) using bank tags []
certRow g12386 on (Grammar43.fiveRow 7 7 4 false 4 2 3 [0,1,3]) using bank tags []
certRow g12387 on (Grammar43.fiveRow 7 7 4 true 4 2 3 [0,1,3]) using bank tags []
end Blc.SelfintSingleObject.Compact44
