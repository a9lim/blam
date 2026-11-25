import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11768 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [2,1,2,0,1]
certRow g11768s0 on (rg11768 0) using bank tags [1,1,11,11,11,28,28,26,1,26,1,1,28,28]
certRow g11768s1 on (rg11768 1) using bank tags [28,28,28,28,28,28,28,27,27,28,27,28,27]
certRow g11768s2 on (rg11768 2) using bank tags [26,1,28,26,1,1,28,28,28,14,14,14,1,28,14,1,28,14,1,28]
certRow g11768s3 on (rg11768 3) using bank tags [3,3,3,3,3,3,3,3,3]
certRow g11768s4 on (rg11768 4) using bank tags []
certRow g11768s5 on (rg11768 5) using bank tags [3,3,3,28,27,27,27]
certRow g11768s6 on (rg11768 6) using bank tags [3,3,3,3,3,3,3,28,28,27]
certRow g11768s7 on (rg11768 7) using bank tags [3,3,28,28,27,27]
certRow g11768s8 on (rg11768 8) using bank tags [28,28]
certRow g11768s9 on (rg11768 9) using bank tags [28]
certRow g11768s10 on (rg11768 10) using bank tags [3,3,3,3,28,27]
certRow g11768s11 on (rg11768 11) using bank tags [15,1,27]
theorem g11768 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,1,2,0,1]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [2,1,2,0,1] (.cons (g11768s0) (.cons (g11768s1) (.cons (g11768s2) (.cons (g11768s3) (.cons (g11768s4) (.cons (g11768s5) (.cons (g11768s6) (.cons (g11768s7) (.cons (g11768s8) (.cons (g11768s9) (.cons (g11768s10) (.cons (g11768s11) .nil))))))))))))
certRow g11769 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,1,2,0,1]) using bank tags []
private abbrev rg11770 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,1,2,1,0]
certRow g11770s0 on (rg11770 0) using bank tags []
certRow g11770s1 on (rg11770 1) using bank tags [28,28,28,28,27]
certRow g11770s2 on (rg11770 2) using bank tags [3,3,28,28,1,28,28,28,1,1,28,28,14,14,14,1,28,28,14,1,28,28,14,1,28,27]
certRow g11770s3 on (rg11770 3) using bank tags [3,3,3,3,3,3,3,3,3]
certRow g11770s4 on (rg11770 4) using bank tags [26,1,11,28,1,1,1,28,28,28,28,28,15,1,28,27,27,28,27]
certRow g11770s5 on (rg11770 5) using bank tags [3,3,3,28,28,27,27,27,28,28,28,28]
certRow g11770s6 on (rg11770 6) using bank tags [3,3,3,3,3,3,3,28,28,27,27]
certRow g11770s7 on (rg11770 7) using bank tags [27,27]
theorem g11770 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,1,2,1,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,1,2,1,0] (.cons (g11770s0) (.cons (g11770s1) (.cons (g11770s2) (.cons (g11770s3) (.cons (g11770s4) (.cons (g11770s5) (.cons (g11770s6) (.cons (g11770s7) .nil))))))))
certRow g11771 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,1,2,1,0]) using bank tags []
private abbrev rg11772 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,1,3,0,0]
certRow g11772s0 on (rg11772 0) using bank tags [3,3]
certRow g11772s1 on (rg11772 1) using bank tags [3,3,3,3,3,3,3,28]
certRow g11772s2 on (rg11772 2) using bank tags [3,3,3,3,3,3,3,206,1,20,20,1,1,1,1,28,14,1]
certRow g11772s3 on (rg11772 3) using bank tags [3,3,3]
certRow g11772s4 on (rg11772 4) using bank tags [3,3,3,3,3,13,13,13,30,1,15,1,1,1,206,1]
certRow g11772s5 on (rg11772 5) using bank tags [28,28]
certRow g11772s6 on (rg11772 6) using bank tags [1,1]
certRow g11772s7 on (rg11772 7) using bank tags [3,3,3,3,3,1]
theorem g11772 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,1,3,0,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,1,3,0,0] (.cons (g11772s0) (.cons (g11772s1) (.cons (g11772s2) (.cons (g11772s3) (.cons (g11772s4) (.cons (g11772s5) (.cons (g11772s6) (.cons (g11772s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
