import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g11773 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,1,3,0,0]) using bank tags []
private abbrev rg11774 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,2,0,0,2]
certRow g11774s0 on (rg11774 0) using bank tags [3]
certRow g11774s1 on (rg11774 1) using bank tags [28,11,19,28]
certRow g11774s2 on (rg11774 2) using bank tags [3,20,20,26,1,15,1,1,13,13,13,13,13,27,27]
certRow g11774s3 on (rg11774 3) using bank tags [3,3]
certRow g11774s4 on (rg11774 4) using bank tags [26,1,15,1,1,11,11,11,19,24,19,28,24,19]
certRow g11774s5 on (rg11774 5) using bank tags [3,19,27,27,27,27]
certRow g11774s6 on (rg11774 6) using bank tags [28,27]
certRow g11774s7 on (rg11774 7) using bank tags [3,3]
theorem g11774 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,2,0,0,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,2,0,0,2] (.cons (g11774s0) (.cons (g11774s1) (.cons (g11774s2) (.cons (g11774s3) (.cons (g11774s4) (.cons (g11774s5) (.cons (g11774s6) (.cons (g11774s7) .nil))))))))
certRow g11775 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,2,0,0,2]) using bank tags []
private abbrev rg11776 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,2,0,1,1]
certRow g11776s0 on (rg11776 0) using bank tags [11,19]
certRow g11776s1 on (rg11776 1) using bank tags [28,11,19]
certRow g11776s2 on (rg11776 2) using bank tags [3,3,3,3,1,15,26,1,28,15,1,26,1,28,13,13,13,13,13,13,13,13,13,13,13,28]
certRow g11776s3 on (rg11776 3) using bank tags [3,3,3,3,3,3,3,3,11,11,19,24,19]
certRow g11776s4 on (rg11776 4) using bank tags [1,1,1,1,1,1,15,26,1,15,1,26,1,28,28]
certRow g11776s5 on (rg11776 5) using bank tags [19,19,19,28,11,11,11,19,28,24,19,28,24,19,28]
certRow g11776s6 on (rg11776 6) using bank tags [3,3,3,3,3]
certRow g11776s7 on (rg11776 7) using bank tags [28,28]
theorem g11776 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,2,0,1,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,2,0,1,1] (.cons (g11776s0) (.cons (g11776s1) (.cons (g11776s2) (.cons (g11776s3) (.cons (g11776s4) (.cons (g11776s5) (.cons (g11776s6) (.cons (g11776s7) .nil))))))))
certRow g11777 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,2,0,1,1]) using bank tags []
private abbrev rg11778 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,2,0,2,0]
certRow g11778s0 on (rg11778 0) using bank tags [3,11,19]
certRow g11778s1 on (rg11778 1) using bank tags [28,28,28,27]
certRow g11778s2 on (rg11778 2) using bank tags [20,20,15,15,1,13,13,13,13,13,13,27,27]
certRow g11778s3 on (rg11778 3) using bank tags [3,3,3]
certRow g11778s4 on (rg11778 4) using bank tags [15,15,1,11,11,19,27,24,19,27]
certRow g11778s5 on (rg11778 5) using bank tags [3,19,19,28,28,28]
certRow g11778s6 on (rg11778 6) using bank tags [28,27,27]
certRow g11778s7 on (rg11778 7) using bank tags [3,3]
theorem g11778 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,2,0,2,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,2,0,2,0] (.cons (g11778s0) (.cons (g11778s1) (.cons (g11778s2) (.cons (g11778s3) (.cons (g11778s4) (.cons (g11778s5) (.cons (g11778s6) (.cons (g11778s7) .nil))))))))
certRow g11779 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,2,0,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
