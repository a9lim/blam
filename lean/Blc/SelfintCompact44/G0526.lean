import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11644 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,0,3,1,1]
certRow g11644s0 on (rg11644 0) using bank tags []
certRow g11644s1 on (rg11644 1) using bank tags [28]
certRow g11644s2 on (rg11644 2) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,18]
certRow g11644s3 on (rg11644 3) using bank tags [3,3,3,3,3,3,3]
certRow g11644s4 on (rg11644 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,27,27]
certRow g11644s5 on (rg11644 5) using bank tags [28,28,28,28,28,28,28,28]
certRow g11644s6 on (rg11644 6) using bank tags [3,3,3,3,3,28,28]
certRow g11644s7 on (rg11644 7) using bank tags [28,28,20,20,20,1,13,1,45,6,26,27,27]
theorem g11644 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,3,1,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,0,3,1,1] (.cons (g11644s0) (.cons (g11644s1) (.cons (g11644s2) (.cons (g11644s3) (.cons (g11644s4) (.cons (g11644s5) (.cons (g11644s6) (.cons (g11644s7) .nil))))))))
certRow g11645 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,3,1,1]) using bank tags []
private abbrev rg11646 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [1,0,3,2,0]
certRow g11646s0 on (rg11646 0) using bank tags [3,3,3,3,28,28,28,28,28,28,28,1,28,1,1]
certRow g11646s1 on (rg11646 1) using bank tags [3,3,3,3,3,3,3,28,28,27]
certRow g11646s2 on (rg11646 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,57,28,1]
certRow g11646s3 on (rg11646 3) using bank tags [3,3,3,3,28,28,13,13,13,1,13,13,44,24,28]
certRow g11646s4 on (rg11646 4) using bank tags [3,3,3,3,3]
certRow g11646s5 on (rg11646 5) using bank tags [3,3,28,28,28,28,28]
certRow g11646s6 on (rg11646 6) using bank tags [3,3,28,11]
certRow g11646s7 on (rg11646 7) using bank tags [3,28,28,28]
certRow g11646s8 on (rg11646 8) using bank tags [3,28,28,6]
certRow g11646s9 on (rg11646 9) using bank tags [28,28,28,57,28,57]
certRow g11646s10 on (rg11646 10) using bank tags [3,3,3,28,28,57]
certRow g11646s11 on (rg11646 11) using bank tags [3,3,3,3,3,28]
theorem g11646 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,3,2,0]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [1,0,3,2,0] (.cons (g11646s0) (.cons (g11646s1) (.cons (g11646s2) (.cons (g11646s3) (.cons (g11646s4) (.cons (g11646s5) (.cons (g11646s6) (.cons (g11646s7) (.cons (g11646s8) (.cons (g11646s9) (.cons (g11646s10) (.cons (g11646s11) .nil))))))))))))
certRow g11647 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,3,2,0]) using bank tags []
private abbrev rg11648 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,0,4,0,1]
certRow g11648s0 on (rg11648 0) using bank tags [28]
certRow g11648s1 on (rg11648 1) using bank tags []
certRow g11648s2 on (rg11648 2) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g11648s3 on (rg11648 3) using bank tags [28,28,28,28,28,28,28,28]
certRow g11648s4 on (rg11648 4) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g11648s5 on (rg11648 5) using bank tags [28,28,28,28,28,28]
certRow g11648s6 on (rg11648 6) using bank tags [28,28,28,28,28,28,28]
certRow g11648s7 on (rg11648 7) using bank tags [1,6,18,24,6,6,27,27]
theorem g11648 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,4,0,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,0,4,0,1] (.cons (g11648s0) (.cons (g11648s1) (.cons (g11648s2) (.cons (g11648s3) (.cons (g11648s4) (.cons (g11648s5) (.cons (g11648s6) (.cons (g11648s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
