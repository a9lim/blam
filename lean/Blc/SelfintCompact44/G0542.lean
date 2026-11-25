import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11756 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,1,0,1,2]
certRow g11756s0 on (rg11756 0) using bank tags [3,28]
certRow g11756s1 on (rg11756 1) using bank tags [28,28,28,28]
certRow g11756s2 on (rg11756 2) using bank tags [3,3,3,3,3,26,28,26,1,28,1,28,28,28,1,28,28,28,1,1,1,27,27,27]
certRow g11756s3 on (rg11756 3) using bank tags [3,3,3,3,3,3,3,3]
certRow g11756s4 on (rg11756 4) using bank tags [26,1,11,1,11,28,26,26,1,28,28,28,28,28,28,28]
certRow g11756s5 on (rg11756 5) using bank tags [3,3,27,27,27,27,27,27,27,27,27,27,27,27,27]
certRow g11756s6 on (rg11756 6) using bank tags [3,3,3,3,3,3,3,28,28]
certRow g11756s7 on (rg11756 7) using bank tags [27,27]
theorem g11756 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,1,0,1,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,1,0,1,2] (.cons (g11756s0) (.cons (g11756s1) (.cons (g11756s2) (.cons (g11756s3) (.cons (g11756s4) (.cons (g11756s5) (.cons (g11756s6) (.cons (g11756s7) .nil))))))))
certRow g11757 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,1,0,1,2]) using bank tags []
private abbrev rg11758 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [2,1,0,2,1]
certRow g11758s0 on (rg11758 0) using bank tags [1,1,11,11,11,28,1,15,1,15,1,28,28]
certRow g11758s1 on (rg11758 1) using bank tags [28,28,28,28,28,28,28,28,28,27,28,27,27,27]
certRow g11758s2 on (rg11758 2) using bank tags [1,15,1,28,15,1,28,1,28,28,28,14,1,28,28,14,28,14,1,1,28,1,28,28]
certRow g11758s3 on (rg11758 3) using bank tags [3,3,3,3,3,3,3]
certRow g11758s4 on (rg11758 4) using bank tags []
certRow g11758s5 on (rg11758 5) using bank tags [3,3,28,27,27]
certRow g11758s6 on (rg11758 6) using bank tags [3,3,3,3,3,3,3,28,28]
certRow g11758s7 on (rg11758 7) using bank tags [3,3,28,28,27,27]
certRow g11758s8 on (rg11758 8) using bank tags [3,28,28,28,28,27,28,27]
certRow g11758s9 on (rg11758 9) using bank tags [28,28,27,28,27]
certRow g11758s10 on (rg11758 10) using bank tags [3,3,3,3,3,27,27,27]
certRow g11758s11 on (rg11758 11) using bank tags [1,26,27,27,27]
theorem g11758 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,1,0,2,1]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [2,1,0,2,1] (.cons (g11758s0) (.cons (g11758s1) (.cons (g11758s2) (.cons (g11758s3) (.cons (g11758s4) (.cons (g11758s5) (.cons (g11758s6) (.cons (g11758s7) (.cons (g11758s8) (.cons (g11758s9) (.cons (g11758s10) (.cons (g11758s11) .nil))))))))))))
certRow g11759 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,1,0,2,1]) using bank tags []
private abbrev rg11760 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,1,0,3,0]
certRow g11760s0 on (rg11760 0) using bank tags [3,3,28,28,27,28,27]
certRow g11760s1 on (rg11760 1) using bank tags [3,3,3,3,3,3,3,28,28]
certRow g11760s2 on (rg11760 2) using bank tags [3,3,3,3,3,3,3,28,20,20,15,15,1,28,14,1,28,14,1,1,28,28,1]
certRow g11760s3 on (rg11760 3) using bank tags [3,3,3,3,3]
certRow g11760s4 on (rg11760 4) using bank tags [3,3,3,3,3,13,13,13,13,13,26,1,15,26,1,1,1,15,1,1,1,27,27,27]
certRow g11760s5 on (rg11760 5) using bank tags [3,28,27,27,28,28,28]
certRow g11760s6 on (rg11760 6) using bank tags []
certRow g11760s7 on (rg11760 7) using bank tags [3,3,3,3,3,3,3,1,1]
theorem g11760 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,1,0,3,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,1,0,3,0] (.cons (g11760s0) (.cons (g11760s1) (.cons (g11760s2) (.cons (g11760s3) (.cons (g11760s4) (.cons (g11760s5) (.cons (g11760s6) (.cons (g11760s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
