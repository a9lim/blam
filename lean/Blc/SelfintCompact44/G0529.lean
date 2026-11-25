import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11664 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,1,1,0,3]
certRow g11664s0 on (rg11664 0) using bank tags []
certRow g11664s1 on (rg11664 1) using bank tags [28,28,28,28,27,27]
certRow g11664s2 on (rg11664 2) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g11664s3 on (rg11664 3) using bank tags [3,3,3,3,3,3,3,28]
certRow g11664s4 on (rg11664 4) using bank tags [3,3,3,3,28,28,28,28,28,28,28,28]
certRow g11664s5 on (rg11664 5) using bank tags [3,3,28]
certRow g11664s6 on (rg11664 6) using bank tags [3,3,3,3,3,3,3,28,28,28]
certRow g11664s7 on (rg11664 7) using bank tags [20,20,20,20,20,24,24,19,18,19,1,28,28,28,28,1,1,1,13,13,13,13,19,19,19,19]
theorem g11664 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,1,1,0,3]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,1,1,0,3] (.cons (g11664s0) (.cons (g11664s1) (.cons (g11664s2) (.cons (g11664s3) (.cons (g11664s4) (.cons (g11664s5) (.cons (g11664s6) (.cons (g11664s7) .nil))))))))
certRow g11665 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,1,1,0,3]) using bank tags []
certRow g11666 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,1,1,1,2]) using bank tags [28,28,1,28,28,28,28,28,28,24,11,13,18,19,11,28,1,13,19]
certRow g11667 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,1,1,1,2]) using bank tags []
certRow g11668 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,1,1,2,1]) using bank tags [28,28,24,24,19,11,11,28,13,19,27]
certRow g11669 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,1,1,2,1]) using bank tags []
private abbrev rg11670 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,1,1,3,0]
certRow g11670s0 on (rg11670 0) using bank tags []
certRow g11670s1 on (rg11670 1) using bank tags [28,28,28,28,28,27]
certRow g11670s2 on (rg11670 2) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28,28,1]
certRow g11670s3 on (rg11670 3) using bank tags [3,3,3,3,3,3,3]
certRow g11670s4 on (rg11670 4) using bank tags [3,3,3,3,28,28,28,28,28,28,28,28,28,45]
certRow g11670s5 on (rg11670 5) using bank tags [3,3,28,28,28]
certRow g11670s6 on (rg11670 6) using bank tags [3,3,3,3,3,3,3,28,28,28]
certRow g11670s7 on (rg11670 7) using bank tags [20,20,20,24,13,28,26,1,1,1,13,19]
theorem g11670 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,1,1,3,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,1,1,3,0] (.cons (g11670s0) (.cons (g11670s1) (.cons (g11670s2) (.cons (g11670s3) (.cons (g11670s4) (.cons (g11670s5) (.cons (g11670s6) (.cons (g11670s7) .nil))))))))
certRow g11671 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,1,1,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
