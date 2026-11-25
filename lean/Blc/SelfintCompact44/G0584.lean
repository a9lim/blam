import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg12332 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [0,0,3,0,0]
certRow g12332s0 on (rg12332 0) using bank tags []
certRow g12332s1 on (rg12332 1) using bank tags []
certRow g12332s2 on (rg12332 2) using bank tags []
certRow g12332s3 on (rg12332 3) using bank tags []
certRow g12332s4 on (rg12332 4) using bank tags []
certRow g12332s5 on (rg12332 5) using bank tags []
certRow g12332s6 on (rg12332 6) using bank tags []
certRow g12332s7 on (rg12332 7) using bank tags []
certRow g12332s8 on (rg12332 8) using bank tags []
certRow g12332s9 on (rg12332 9) using bank tags []
certRow g12332s10 on (rg12332 10) using bank tags []
certRow g12332s11 on (rg12332 11) using bank tags []
theorem g12332 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,0,3,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [0,0,3,0,0] (.cons (g12332s0) (.cons (g12332s1) (.cons (g12332s2) (.cons (g12332s3) (.cons (g12332s4) (.cons (g12332s5) (.cons (g12332s6) (.cons (g12332s7) (.cons (g12332s8) (.cons (g12332s9) (.cons (g12332s10) (.cons (g12332s11) .nil))))))))))))
certRow g12333 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,0,3,0,0]) using bank tags []
private abbrev rg12334 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [0,1,0,0,2]
certRow g12334s0 on (rg12334 0) using bank tags []
certRow g12334s1 on (rg12334 1) using bank tags []
certRow g12334s2 on (rg12334 2) using bank tags []
certRow g12334s3 on (rg12334 3) using bank tags []
certRow g12334s4 on (rg12334 4) using bank tags []
certRow g12334s5 on (rg12334 5) using bank tags []
certRow g12334s6 on (rg12334 6) using bank tags []
certRow g12334s7 on (rg12334 7) using bank tags []
certRow g12334s8 on (rg12334 8) using bank tags []
certRow g12334s9 on (rg12334 9) using bank tags []
certRow g12334s10 on (rg12334 10) using bank tags []
certRow g12334s11 on (rg12334 11) using bank tags []
theorem g12334 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,1,0,0,2]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [0,1,0,0,2] (.cons (g12334s0) (.cons (g12334s1) (.cons (g12334s2) (.cons (g12334s3) (.cons (g12334s4) (.cons (g12334s5) (.cons (g12334s6) (.cons (g12334s7) (.cons (g12334s8) (.cons (g12334s9) (.cons (g12334s10) (.cons (g12334s11) .nil))))))))))))
certRow g12335 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,1,0,0,2]) using bank tags []
certRow g12336 on (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,1,0,1,1]) using bank tags []
certRow g12337 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,1,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
