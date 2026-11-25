import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg12318 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [0,0,0,2,1]
certRow g12318s0 on (rg12318 0) using bank tags []
certRow g12318s1 on (rg12318 1) using bank tags []
certRow g12318s2 on (rg12318 2) using bank tags []
certRow g12318s3 on (rg12318 3) using bank tags []
certRow g12318s4 on (rg12318 4) using bank tags []
certRow g12318s5 on (rg12318 5) using bank tags []
certRow g12318s6 on (rg12318 6) using bank tags []
certRow g12318s7 on (rg12318 7) using bank tags []
certRow g12318s8 on (rg12318 8) using bank tags []
certRow g12318s9 on (rg12318 9) using bank tags []
certRow g12318s10 on (rg12318 10) using bank tags []
certRow g12318s11 on (rg12318 11) using bank tags []
theorem g12318 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,0,0,2,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [0,0,0,2,1] (.cons (g12318s0) (.cons (g12318s1) (.cons (g12318s2) (.cons (g12318s3) (.cons (g12318s4) (.cons (g12318s5) (.cons (g12318s6) (.cons (g12318s7) (.cons (g12318s8) (.cons (g12318s9) (.cons (g12318s10) (.cons (g12318s11) .nil))))))))))))
certRow g12319 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,0,0,2,1]) using bank tags []
private abbrev rg12320 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [0,0,0,3,0]
certRow g12320s0 on (rg12320 0) using bank tags []
certRow g12320s1 on (rg12320 1) using bank tags []
certRow g12320s2 on (rg12320 2) using bank tags []
certRow g12320s3 on (rg12320 3) using bank tags []
certRow g12320s4 on (rg12320 4) using bank tags []
certRow g12320s5 on (rg12320 5) using bank tags []
certRow g12320s6 on (rg12320 6) using bank tags []
certRow g12320s7 on (rg12320 7) using bank tags []
certRow g12320s8 on (rg12320 8) using bank tags []
certRow g12320s9 on (rg12320 9) using bank tags []
certRow g12320s10 on (rg12320 10) using bank tags []
certRow g12320s11 on (rg12320 11) using bank tags []
theorem g12320 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [0,0,0,3,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [0,0,0,3,0] (.cons (g12320s0) (.cons (g12320s1) (.cons (g12320s2) (.cons (g12320s3) (.cons (g12320s4) (.cons (g12320s5) (.cons (g12320s6) (.cons (g12320s7) (.cons (g12320s8) (.cons (g12320s9) (.cons (g12320s10) (.cons (g12320s11) .nil))))))))))))
certRow g12321 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [0,0,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
