import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14217 (i : Nat) := Split43.five 8 i 8 5 4 true 4 2 6 [1,0,0,1,0,2]
certRow g14217s0 on (rg14217 0) using bank tags []
certRow g14217s1 on (rg14217 1) using bank tags [1,1,1,1,1,1,1,29,1,29,1]
certRow g14217s2 on (rg14217 2) using bank tags []
certRow g14217s3 on (rg14217 3) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,1,1,1,1,29,1,29,1,29,1,29,1]
certRow g14217s4 on (rg14217 4) using bank tags []
certRow g14217s5 on (rg14217 5) using bank tags []
certRow g14217s6 on (rg14217 6) using bank tags []
certRow g14217s7 on (rg14217 7) using bank tags [29,1,29,1,29,1,29,1]
theorem g14217 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,0,0,1,0,2]) :=
  Split43.five_cover 8 (by decide) 8 5 4 true 4 2 6 [1,0,0,1,0,2] (.cons (g14217s0) (.cons (g14217s1) (.cons (g14217s2) (.cons (g14217s3) (.cons (g14217s4) (.cons (g14217s5) (.cons (g14217s6) (.cons (g14217s7) .nil))))))))
certRow g14218 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,0,0,1,1,1]) using bank tags []
certRow g14219 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,0,0,1,1,1]) using bank tags []
certRow g14220 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,0,0,1,2,0]) using bank tags []
certRow g14221 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,0,0,1,2,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,1,29,1,29,1,29,1,1,1,1,1,29,1,29,1,29,1,1,1,1,1,29,1,29,1]
certRow g14222 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,0,0,2,0,1]) using bank tags []
private abbrev rg14223 (i : Nat) := Split43.five 8 i 8 5 4 true 4 2 6 [1,0,0,2,0,1]
certRow g14223s0 on (rg14223 0) using bank tags []
certRow g14223s1 on (rg14223 1) using bank tags [1,1,1,1,1,1,1,29,1,29,1]
certRow g14223s2 on (rg14223 2) using bank tags []
certRow g14223s3 on (rg14223 3) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,1,1,1,1,29,1,29,1,29,1,29,1]
certRow g14223s4 on (rg14223 4) using bank tags []
certRow g14223s5 on (rg14223 5) using bank tags []
certRow g14223s6 on (rg14223 6) using bank tags []
certRow g14223s7 on (rg14223 7) using bank tags [29,1,29,1,29,1,29,1]
theorem g14223 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,0,0,2,0,1]) :=
  Split43.five_cover 8 (by decide) 8 5 4 true 4 2 6 [1,0,0,2,0,1] (.cons (g14223s0) (.cons (g14223s1) (.cons (g14223s2) (.cons (g14223s3) (.cons (g14223s4) (.cons (g14223s5) (.cons (g14223s6) (.cons (g14223s7) .nil))))))))
certRow g14224 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,0,0,2,1,0]) using bank tags []
certRow g14225 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,0,0,2,1,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,1,29,1,29,1,29,1,1,1,1,1,29,1,29,1,29,1,1,1,1,1,29,1,29,1]
certRow g14226 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,0,0,3,0,0]) using bank tags []
certRow g14227 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [1,0,0,3,0,0]) using bank tags []
certRow g14228 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [1,0,1,0,0,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
