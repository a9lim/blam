import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11738 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [2,0,1,2,1]
certRow g11738s0 on (rg11738 0) using bank tags [1,15,1,1,1,11,24,11,11,24,28,28,28,28]
certRow g11738s1 on (rg11738 1) using bank tags [46,28,28,28,1,28,28,28,27,27,27]
certRow g11738s2 on (rg11738 2) using bank tags [1,1,11,24,11,11,24,28,28,28,28,14,1,28,28,14,14,1,1,28,1]
certRow g11738s3 on (rg11738 3) using bank tags [3,3,3,3,3]
certRow g11738s4 on (rg11738 4) using bank tags []
certRow g11738s5 on (rg11738 5) using bank tags [28,28,28,28,27,27]
certRow g11738s6 on (rg11738 6) using bank tags [3,3,3,3,3,28,28,28,28,28,27,27]
certRow g11738s7 on (rg11738 7) using bank tags [3,3,28,28]
certRow g11738s8 on (rg11738 8) using bank tags [3,28,28,27,28,28,27]
certRow g11738s9 on (rg11738 9) using bank tags [28,28,27]
certRow g11738s10 on (rg11738 10) using bank tags [3,3,3,27,27,27]
certRow g11738s11 on (rg11738 11) using bank tags [1,1,27,27,27]
theorem g11738 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,0,1,2,1]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [2,0,1,2,1] (.cons (g11738s0) (.cons (g11738s1) (.cons (g11738s2) (.cons (g11738s3) (.cons (g11738s4) (.cons (g11738s5) (.cons (g11738s6) (.cons (g11738s7) (.cons (g11738s8) (.cons (g11738s9) (.cons (g11738s10) (.cons (g11738s11) .nil))))))))))))
certRow g11739 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,0,1,2,1]) using bank tags []
private abbrev rg11740 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,0,1,3,0]
certRow g11740s0 on (rg11740 0) using bank tags [3,3,28,28,27,28,27]
certRow g11740s1 on (rg11740 1) using bank tags [3,3,3,3,3,3,3,28,28]
certRow g11740s2 on (rg11740 2) using bank tags [3,3,3,3,3,3,3,28,28,1,11,11,28,28,28,14,1,28,14,1,1,28]
certRow g11740s3 on (rg11740 3) using bank tags [3,3,3,3]
certRow g11740s4 on (rg11740 4) using bank tags [3,3,3,3,3,13,13,13,1,1,30,1,11,11,28,27,1,1,27,27,27]
certRow g11740s5 on (rg11740 5) using bank tags [3,28,28,28,27,27,28,28,28,28]
certRow g11740s6 on (rg11740 6) using bank tags [27]
certRow g11740s7 on (rg11740 7) using bank tags [3,3,3,3,3,3,3,1]
theorem g11740 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,0,1,3,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,0,1,3,0] (.cons (g11740s0) (.cons (g11740s1) (.cons (g11740s2) (.cons (g11740s3) (.cons (g11740s4) (.cons (g11740s5) (.cons (g11740s6) (.cons (g11740s7) .nil))))))))
certRow g11741 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,0,1,3,0]) using bank tags []
private abbrev rg11742 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,0,2,0,2]
certRow g11742s0 on (rg11742 0) using bank tags [3]
certRow g11742s1 on (rg11742 1) using bank tags [28,28,28,27]
certRow g11742s2 on (rg11742 2) using bank tags [3,3,3,28,28,26,1,11,11,1,11,11,28,28,28,28,14,28,28,14,1,1,1,27]
certRow g11742s3 on (rg11742 3) using bank tags [3,3,3,3,3]
certRow g11742s4 on (rg11742 4) using bank tags [26,1,11,11,1,11,11,28,28,28,15,1,28,27,27,26,27,28,27]
certRow g11742s5 on (rg11742 5) using bank tags [3,3,3,28,28,28,28,27,27,27,27,27,27,27]
certRow g11742s6 on (rg11742 6) using bank tags [27,27]
certRow g11742s7 on (rg11742 7) using bank tags [3,3]
theorem g11742 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,0,2,0,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,0,2,0,2] (.cons (g11742s0) (.cons (g11742s1) (.cons (g11742s2) (.cons (g11742s3) (.cons (g11742s4) (.cons (g11742s5) (.cons (g11742s6) (.cons (g11742s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
