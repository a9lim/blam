import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11734 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [2,0,1,0,3]
certRow g11734s0 on (rg11734 0) using bank tags [3,3,13,13,13,13,13,61,19,26,1,11,1,11,1,1,28,28,27,27,27,27,27,27,27]
certRow g11734s1 on (rg11734 1) using bank tags [3,3,3,3,3,3,3]
certRow g11734s2 on (rg11734 2) using bank tags [3,3,3,3,3,3,3,26,1,11,1,11,28,28,28,28,28,1,28,28,1,1]
certRow g11734s3 on (rg11734 3) using bank tags [3,3,3,3,28]
certRow g11734s4 on (rg11734 4) using bank tags [3,3,3,3,3]
certRow g11734s5 on (rg11734 5) using bank tags [3,28,28,28,28,28,27]
certRow g11734s6 on (rg11734 6) using bank tags [28,28,27,27]
certRow g11734s7 on (rg11734 7) using bank tags [3,3]
certRow g11734s8 on (rg11734 8) using bank tags [28,27,27,28,28,28,28]
certRow g11734s9 on (rg11734 9) using bank tags [27]
certRow g11734s10 on (rg11734 10) using bank tags [1,1,28,28,28]
certRow g11734s11 on (rg11734 11) using bank tags [3,3,3,3,3]
theorem g11734 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,0,1,0,3]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [2,0,1,0,3] (.cons (g11734s0) (.cons (g11734s1) (.cons (g11734s2) (.cons (g11734s3) (.cons (g11734s4) (.cons (g11734s5) (.cons (g11734s6) (.cons (g11734s7) (.cons (g11734s8) (.cons (g11734s9) (.cons (g11734s10) (.cons (g11734s11) .nil))))))))))))
certRow g11735 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,0,1,0,3]) using bank tags []
private abbrev rg11736 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,0,1,1,2]
certRow g11736s0 on (rg11736 0) using bank tags [3,28,28]
certRow g11736s1 on (rg11736 1) using bank tags [28,28,28]
certRow g11736s2 on (rg11736 2) using bank tags [3,28,1,24,1,11,24,28,28,1,28,1,1,1,1,27,27,27]
certRow g11736s3 on (rg11736 3) using bank tags [3,3,3,3,3]
certRow g11736s4 on (rg11736 4) using bank tags [15,1,1,1,24,1,11,24,28,28,28,28]
certRow g11736s5 on (rg11736 5) using bank tags [28,28,27,27,27,27,27,27,27,27,27,27,27,27]
certRow g11736s6 on (rg11736 6) using bank tags [3,3,3,3,3,28,28,28,27]
certRow g11736s7 on (rg11736 7) using bank tags []
theorem g11736 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,0,1,1,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,0,1,1,2] (.cons (g11736s0) (.cons (g11736s1) (.cons (g11736s2) (.cons (g11736s3) (.cons (g11736s4) (.cons (g11736s5) (.cons (g11736s6) (.cons (g11736s7) .nil))))))))
certRow g11737 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,0,1,1,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
