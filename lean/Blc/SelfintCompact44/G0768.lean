import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14243 (i : Nat) := Split43.five 8 i 8 5 4 true 4 2 6 [1,0,2,0,1,0]
certRow g14243s0 on (rg14243 0) using bank tags []
certRow g14243s1 on (rg14243 1) using bank tags [1,1,1,1,1]
certRow g14243s2 on (rg14243 2) using bank tags []
certRow g14243s3 on (rg14243 3) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,1,1,29,1,29,1]
certRow g14243s4 on (rg14243 4) using bank tags []
certRow g14243s5 on (rg14243 5) using bank tags []
certRow g14243s6 on (rg14243 6) using bank tags [1,1,1,1,1,1,1,29,1,29,1,29,1,29,1]
certRow g14243s7 on (rg14243 7) using bank tags []
theorem g14243 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,0,2,0,1,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 true 4 2 6 [1,0,2,0,1,0] (.cons (g14243s0) (.cons (g14243s1) (.cons (g14243s2) (.cons (g14243s3) (.cons (g14243s4) (.cons (g14243s5) (.cons (g14243s6) (.cons (g14243s7) .nil))))))))
certRow g14244 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,0,2,1,0,0]) using bank tags []
certRow g14245 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,0,2,1,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,29,1,1,1,1,29,1,1,1,1,1,29,1,29,1,29,1]
certRow g14246 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,0,3,0,0,0]) using bank tags []
certRow g14247 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,0,3,0,0,0]) using bank tags []
certRow g14248 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,1,0,0,0,2]) using bank tags []
certRow g14249 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,1,0,0,0,2]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14250 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,1,0,0,1,1]) using bank tags []
certRow g14251 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,1,0,0,1,1]) using bank tags []
certRow g14252 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,1,0,0,2,0]) using bank tags []
certRow g14253 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,1,0,0,2,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,1,1]
certRow g14254 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,1,0,1,0,1]) using bank tags []
certRow g14255 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,1,0,1,0,1]) using bank tags []
certRow g14256 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,1,0,1,1,0]) using bank tags []
certRow g14257 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,1,0,1,1,0]) using bank tags []
certRow g14258 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,1,0,2,0,0]) using bank tags []
certRow g14259 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,1,0,2,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,29,1,29,1,1,1,1,1,1,29,1,29,1]
certRow g14260 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,1,1,0,0,1]) using bank tags []
certRow g14261 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,1,1,0,0,1]) using bank tags []
certRow g14262 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,1,1,0,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
