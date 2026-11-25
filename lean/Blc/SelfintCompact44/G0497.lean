import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11452 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,0,0,4,2]
certRow g11452s0 on (rg11452 0) using bank tags []
certRow g11452s1 on (rg11452 1) using bank tags []
certRow g11452s2 on (rg11452 2) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g11452s3 on (rg11452 3) using bank tags [28,28,28,28,28]
certRow g11452s4 on (rg11452 4) using bank tags [28,28,28,28,28,28]
certRow g11452s5 on (rg11452 5) using bank tags [28,28]
certRow g11452s6 on (rg11452 6) using bank tags [28,28,28,28]
certRow g11452s7 on (rg11452 7) using bank tags [28,28,28,28,28,28,28,28,28,13,13,6,1,1,6]
theorem g11452 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,0,4,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,0,0,4,2] (.cons (g11452s0) (.cons (g11452s1) (.cons (g11452s2) (.cons (g11452s3) (.cons (g11452s4) (.cons (g11452s5) (.cons (g11452s6) (.cons (g11452s7) .nil))))))))
certRow g11453 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,0,4,2]) using bank tags []
certRow g11454 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,0,5,1]) using bank tags []
certRow g11455 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,0,5,1]) using bank tags []
certRow g11456 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,0,6,0]) using bank tags []
certRow g11457 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,0,6,0]) using bank tags []
certRow g11458 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,1,0,5]) using bank tags []
certRow g11459 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,1,0,5]) using bank tags []
certRow g11460 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,1,1,4]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,58]
certRow g11461 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,1,1,4]) using bank tags []
private abbrev rg11462 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,0,1,2,3]
certRow g11462s0 on (rg11462 0) using bank tags [3]
certRow g11462s1 on (rg11462 1) using bank tags [3,3,3,3,3,3,27,28,14,24,28,19,19]
certRow g11462s2 on (rg11462 2) using bank tags [3,3,3,3,3,3,28,28,28,28]
certRow g11462s3 on (rg11462 3) using bank tags [3,3,28,28,3,3,3,3,1,27]
certRow g11462s4 on (rg11462 4) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,6,22]
certRow g11462s5 on (rg11462 5) using bank tags [1]
certRow g11462s6 on (rg11462 6) using bank tags [3,3,3,3,13,28]
certRow g11462s7 on (rg11462 7) using bank tags [3,3,3,3,28,28,3,3,3,3,3,3,3,3,28,28,28,13,13,26,6,6,13,6,27,13]
theorem g11462 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,0,1,2,3]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,0,1,2,3] (.cons (g11462s0) (.cons (g11462s1) (.cons (g11462s2) (.cons (g11462s3) (.cons (g11462s4) (.cons (g11462s5) (.cons (g11462s6) (.cons (g11462s7) .nil))))))))
certRow g11463 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,0,1,2,3]) using bank tags []
end Blc.SelfintSingleObject.Compact44
