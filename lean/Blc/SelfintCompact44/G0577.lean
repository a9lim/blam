import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg12248 (i : Nat) := Split43.five 8 i 7 7 4 false 3 4 5 [2,0,1,0,0]
certRow g12248s0 on (rg12248 0) using bank tags [20,28,23,28]
certRow g12248s1 on (rg12248 1) using bank tags [3,3,3,3,3]
certRow g12248s2 on (rg12248 2) using bank tags [3,3,3,3,3,3,48,28,28,28,48,28,28,28,28,28]
certRow g12248s3 on (rg12248 3) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow g12248s4 on (rg12248 4) using bank tags []
certRow g12248s5 on (rg12248 5) using bank tags [3,3,3,3,1,28,28,28,28,28,28,28,28,28]
certRow g12248s6 on (rg12248 6) using bank tags [3,3]
certRow g12248s7 on (rg12248 7) using bank tags [3,3,3,3,28,28]
theorem g12248 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [2,0,1,0,0]) :=
  Split43.five_cover 8 (by decide) 7 7 4 false 3 4 5 [2,0,1,0,0] (.cons (g12248s0) (.cons (g12248s1) (.cons (g12248s2) (.cons (g12248s3) (.cons (g12248s4) (.cons (g12248s5) (.cons (g12248s6) (.cons (g12248s7) .nil))))))))
certRow g12249 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [2,0,1,0,0]) using bank tags []
private abbrev rg12250 (i : Nat) := Split43.five 8 i 7 7 4 false 3 4 5 [2,1,0,0,0]
certRow g12250s0 on (rg12250 0) using bank tags [20,28]
certRow g12250s1 on (rg12250 1) using bank tags [3,3,3]
certRow g12250s2 on (rg12250 2) using bank tags [3,3,3,3,48,28,28,28,48,28,28,28,28,48,28,28,28]
certRow g12250s3 on (rg12250 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28]
certRow g12250s4 on (rg12250 4) using bank tags []
certRow g12250s5 on (rg12250 5) using bank tags [28,28,28,28]
certRow g12250s6 on (rg12250 6) using bank tags []
certRow g12250s7 on (rg12250 7) using bank tags [3,3]
theorem g12250 : BadRow (Grammar43.fiveRow 7 7 4 false 3 4 5 [2,1,0,0,0]) :=
  Split43.five_cover 8 (by decide) 7 7 4 false 3 4 5 [2,1,0,0,0] (.cons (g12250s0) (.cons (g12250s1) (.cons (g12250s2) (.cons (g12250s3) (.cons (g12250s4) (.cons (g12250s5) (.cons (g12250s6) (.cons (g12250s7) .nil))))))))
certRow g12251 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [2,1,0,0,0]) using bank tags []
certRow g12252 on (Grammar43.fiveRow 7 7 4 false 3 4 5 [3,0,0,0,0]) using bank tags []
certRow g12253 on (Grammar43.fiveRow 7 7 4 true 3 4 5 [3,0,0,0,0]) using bank tags []
certRow g12254 on (Grammar43.fiveRow 7 7 4 false 3 5 3 [0,0,3]) using bank tags []
certRow g12255 on (Grammar43.fiveRow 7 7 4 true 3 5 3 [0,0,3]) using bank tags []
certRow g12256 on (Grammar43.fiveRow 7 7 4 false 3 5 3 [0,1,2]) using bank tags []
certRow g12257 on (Grammar43.fiveRow 7 7 4 true 3 5 3 [0,1,2]) using bank tags []
certRow g12258 on (Grammar43.fiveRow 7 7 4 false 3 5 3 [0,2,1]) using bank tags []
certRow g12259 on (Grammar43.fiveRow 7 7 4 true 3 5 3 [0,2,1]) using bank tags []
certRow g12260 on (Grammar43.fiveRow 7 7 4 false 3 5 3 [0,3,0]) using bank tags []
certRow g12261 on (Grammar43.fiveRow 7 7 4 true 3 5 3 [0,3,0]) using bank tags []
certRow g12262 on (Grammar43.fiveRow 7 7 4 false 3 5 3 [1,0,2]) using bank tags []
certRow g12263 on (Grammar43.fiveRow 7 7 4 true 3 5 3 [1,0,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
