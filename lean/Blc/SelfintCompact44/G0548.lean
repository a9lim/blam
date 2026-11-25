import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g11797 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,0,0,1,2]) using bank tags []
private abbrev rg11798 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [3,0,0,2,1]
certRow g11798s0 on (rg11798 0) using bank tags [3,3]
certRow g11798s1 on (rg11798 1) using bank tags [3,3,3,3,3,3,3,28,28]
certRow g11798s2 on (rg11798 2) using bank tags [3,3,28,28,3,3,3,3,3,28,28,13]
certRow g11798s3 on (rg11798 3) using bank tags [3,3,24,24,19,24,19,28,28,28]
certRow g11798s4 on (rg11798 4) using bank tags [3,3,3,3,3]
certRow g11798s5 on (rg11798 5) using bank tags [28,28]
certRow g11798s6 on (rg11798 6) using bank tags [24,24,19,24,19,28,28]
certRow g11798s7 on (rg11798 7) using bank tags [3,3,3,3,3,19]
theorem g11798 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,0,0,2,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [3,0,0,2,1] (.cons (g11798s0) (.cons (g11798s1) (.cons (g11798s2) (.cons (g11798s3) (.cons (g11798s4) (.cons (g11798s5) (.cons (g11798s6) (.cons (g11798s7) .nil))))))))
certRow g11799 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,0,0,2,1]) using bank tags []
certRow g11800 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,0,0,3,0]) using bank tags [1,1,28,28,28,13,13,28,28,28,15,1,28,28]
certRow g11801 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,0,0,3,0]) using bank tags []
private abbrev rg11802 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [3,0,1,0,2]
certRow g11802s0 on (rg11802 0) using bank tags [3,3,28]
certRow g11802s1 on (rg11802 1) using bank tags [3,3,3,3,3,3,3]
certRow g11802s2 on (rg11802 2) using bank tags [3,3,28,28,3,3,3,3,3,1,24,28,28,28]
certRow g11802s3 on (rg11802 3) using bank tags [3,3,26,1,11,1,11,28,28,28,28,28]
certRow g11802s4 on (rg11802 4) using bank tags [3,3,3,3,3]
certRow g11802s5 on (rg11802 5) using bank tags [28,28,28]
certRow g11802s6 on (rg11802 6) using bank tags [26,1,11,1,11,28,28]
certRow g11802s7 on (rg11802 7) using bank tags [3,3,3,3,3,28,28]
theorem g11802 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,0,1,0,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [3,0,1,0,2] (.cons (g11802s0) (.cons (g11802s1) (.cons (g11802s2) (.cons (g11802s3) (.cons (g11802s4) (.cons (g11802s5) (.cons (g11802s6) (.cons (g11802s7) .nil))))))))
certRow g11803 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,0,1,0,2]) using bank tags []
certRow g11804 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,0,1,1,1]) using bank tags [28,28,28,28]
certRow g11805 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,0,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
