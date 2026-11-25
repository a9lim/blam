import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11814 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [3,1,0,0,2]
certRow g11814s0 on (rg11814 0) using bank tags [3,3,28]
certRow g11814s1 on (rg11814 1) using bank tags [3,3,3,3,3,3,3,1,9]
certRow g11814s2 on (rg11814 2) using bank tags [3,3,3,3,3,3,3,1,1,28,1]
certRow g11814s3 on (rg11814 3) using bank tags [3,3,26,1,15,1,1,28,28]
certRow g11814s4 on (rg11814 4) using bank tags [3,3,3,3,3]
certRow g11814s5 on (rg11814 5) using bank tags [28]
certRow g11814s6 on (rg11814 6) using bank tags [26,1,15,1,1]
certRow g11814s7 on (rg11814 7) using bank tags [3,3,3,3,3,28,28]
theorem g11814 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,1,0,0,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [3,1,0,0,2] (.cons (g11814s0) (.cons (g11814s1) (.cons (g11814s2) (.cons (g11814s3) (.cons (g11814s4) (.cons (g11814s5) (.cons (g11814s6) (.cons (g11814s7) .nil))))))))
certRow g11815 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,1,0,0,2]) using bank tags []
certRow g11816 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,1,0,1,1]) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g11817 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,1,0,1,1]) using bank tags []
private abbrev rg11818 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [3,1,0,2,0]
certRow g11818s0 on (rg11818 0) using bank tags [3,3,28]
certRow g11818s1 on (rg11818 1) using bank tags [3,3,3,3,3,3,3]
certRow g11818s2 on (rg11818 2) using bank tags [3,3,3,3,3,3,3,28,28,28]
certRow g11818s3 on (rg11818 3) using bank tags [3,3,28,28,1,15,1,15,1,28,28,28]
certRow g11818s4 on (rg11818 4) using bank tags [3,3,3,3,3]
certRow g11818s5 on (rg11818 5) using bank tags [28]
certRow g11818s6 on (rg11818 6) using bank tags [1,15,1,15,1]
certRow g11818s7 on (rg11818 7) using bank tags [3,3,3,3,3,28,28]
theorem g11818 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,1,0,2,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [3,1,0,2,0] (.cons (g11818s0) (.cons (g11818s1) (.cons (g11818s2) (.cons (g11818s3) (.cons (g11818s4) (.cons (g11818s5) (.cons (g11818s6) (.cons (g11818s7) .nil))))))))
certRow g11819 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,1,0,2,0]) using bank tags []
certRow g11820 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,1,1,0,1]) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow g11821 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,1,1,0,1]) using bank tags []
certRow g11822 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,1,1,1,0]) using bank tags [28,28,28,28,28,28]
certRow g11823 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,1,1,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
