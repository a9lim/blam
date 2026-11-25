import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14229 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,0,1,0,0,2]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,1,1,1,1,1,1,1]
certRow g14230 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,0,1,0,1,1]) using bank tags []
certRow g14231 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,0,1,0,1,1]) using bank tags []
certRow g14232 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,0,1,0,2,0]) using bank tags []
private abbrev rg14233 (i : Nat) := Split43.five 8 i 8 5 4 true 4 2 6 [1,0,1,0,2,0]
certRow g14233s0 on (rg14233 0) using bank tags []
certRow g14233s1 on (rg14233 1) using bank tags [1,1,1,1,1]
certRow g14233s2 on (rg14233 2) using bank tags []
certRow g14233s3 on (rg14233 3) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,1,1,29,1,29,1]
certRow g14233s4 on (rg14233 4) using bank tags []
certRow g14233s5 on (rg14233 5) using bank tags []
certRow g14233s6 on (rg14233 6) using bank tags [1,1,1,1,1,1,1,29,1,29,1,29,1,29,1]
certRow g14233s7 on (rg14233 7) using bank tags []
theorem g14233 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,0,1,0,2,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 true 4 2 6 [1,0,1,0,2,0] (.cons (g14233s0) (.cons (g14233s1) (.cons (g14233s2) (.cons (g14233s3) (.cons (g14233s4) (.cons (g14233s5) (.cons (g14233s6) (.cons (g14233s7) .nil))))))))
certRow g14234 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,0,1,1,0,1]) using bank tags []
certRow g14235 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,0,1,1,0,1]) using bank tags []
certRow g14236 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,0,1,1,1,0]) using bank tags []
certRow g14237 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,0,1,1,1,0]) using bank tags []
certRow g14238 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,0,1,2,0,0]) using bank tags []
certRow g14239 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,0,1,2,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,29,1,1,1,1,29,1,1,1,1,1,29,1,29,1,29,1]
certRow g14240 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,0,2,0,0,1]) using bank tags []
certRow g14241 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,0,2,0,0,1]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,1,1,1,1,1,1,1]
certRow g14242 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,0,2,0,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
