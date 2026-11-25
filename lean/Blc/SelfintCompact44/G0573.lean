import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg12214 (i : Nat) := Split43.five 8 i 7 7 4 false 3 4 5 [0,1,2,0,0]
certRow g12214s0 on (rg12214 0) using bank tags [1,28,28,29,48]
certRow g12214s1 on (rg12214 1) using bank tags [3,3,3]
certRow g12214s2 on (rg12214 2) using bank tags [3,3,28,28,28,28,3]
certRow g12214s3 on (rg12214 3) using bank tags [3,3,3,3,28,28,28]
certRow g12214s4 on (rg12214 4) using bank tags [3,3,3,3,3,28,100]
certRow g12214s5 on (rg12214 5) using bank tags [3,3,3,3,57,28,28,28,28,28]
certRow g12214s6 on (rg12214 6) using bank tags []
certRow g12214s7 on (rg12214 7) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,48,48,48,29,48,29,48,29,48,29,48]
theorem g12214 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [0,1,2,0,0]) :=
  Split43.five_cover 8 (by decide) 7 7 4 false 3 4 5 [0,1,2,0,0] (.cons (g12214s0) (.cons (g12214s1) (.cons (g12214s2) (.cons (g12214s3) (.cons (g12214s4) (.cons (g12214s5) (.cons (g12214s6) (.cons (g12214s7) .nil))))))))
certRow g12215 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [0,1,2,0,0]) using bank tags []
private abbrev rg12216 (i : Nat) := Split43.five 8 i 7 7 4 false 3 4 5 [0,2,0,0,1]
certRow g12216s0 on (rg12216 0) using bank tags [3,3]
certRow g12216s1 on (rg12216 1) using bank tags []
certRow g12216s2 on (rg12216 2) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow g12216s3 on (rg12216 3) using bank tags [3,3,3,3,3]
certRow g12216s4 on (rg12216 4) using bank tags [3,3,3,3,3]
certRow g12216s5 on (rg12216 5) using bank tags [3,28,57,28,28,28,6,28,28,28,28,28]
certRow g12216s6 on (rg12216 6) using bank tags []
certRow g12216s7 on (rg12216 7) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,48,48,48,48,48,29,48,29,48,29,48,29,48,29,48]
theorem g12216 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [0,2,0,0,1]) :=
  Split43.five_cover 8 (by decide) 7 7 4 false 3 4 5 [0,2,0,0,1] (.cons (g12216s0) (.cons (g12216s1) (.cons (g12216s2) (.cons (g12216s3) (.cons (g12216s4) (.cons (g12216s5) (.cons (g12216s6) (.cons (g12216s7) .nil))))))))
certRow g12217 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [0,2,0,0,1]) using bank tags []
private abbrev rg12218 (i : Nat) := Split43.five 12 i 7 7 4 false 3 4 5 [0,2,0,1,0]
certRow g12218s0 on (rg12218 0) using bank tags [3,3,3,3,3,3,28,100,28,100]
certRow g12218s1 on (rg12218 1) using bank tags [28,28]
certRow g12218s2 on (rg12218 2) using bank tags [28,28,28,28,28,28]
certRow g12218s3 on (rg12218 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28]
certRow g12218s4 on (rg12218 4) using bank tags [28,28]
certRow g12218s5 on (rg12218 5) using bank tags [3,3,28,28]
certRow g12218s6 on (rg12218 6) using bank tags [3,3]
certRow g12218s7 on (rg12218 7) using bank tags [3,3,3,3]
certRow g12218s8 on (rg12218 8) using bank tags [3,3,28,28,3,3,29,48,29,48]
certRow g12218s9 on (rg12218 9) using bank tags [3,3,3,3,3]
certRow g12218s10 on (rg12218 10) using bank tags [3,3,28,28]
certRow g12218s11 on (rg12218 11) using bank tags [28,28,28,28,28,48,48,48,48,48,29,48,29,48,29,48,29,48,29,48,29,48]
theorem g12218 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [0,2,0,1,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 4 5 [0,2,0,1,0] (.cons (g12218s0) (.cons (g12218s1) (.cons (g12218s2) (.cons (g12218s3) (.cons (g12218s4) (.cons (g12218s5) (.cons (g12218s6) (.cons (g12218s7) (.cons (g12218s8) (.cons (g12218s9) (.cons (g12218s10) (.cons (g12218s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
