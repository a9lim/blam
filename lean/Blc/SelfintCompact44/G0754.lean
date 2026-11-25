import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14028 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,1,2,0,0]) using bank tags [28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,6,29,29,13,29,6,29,27,6,29,29,13,29,6,29,27,6,29,29,13,29,6,29,27,0,29,29,6,29,0,29,6] except [Floor44.e5609323994786,Floor44.e4785136482794]
private abbrev rg14029 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 5 [1,1,2,0,0]
certRow g14029s0 on (rg14029 0) using bank tags []
certRow g14029s1 on (rg14029 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g14029s2 on (rg14029 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14029s3 on (rg14029 3) using bank tags []
certRow g14029s4 on (rg14029 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g14029s5 on (rg14029 5) using bank tags []
certRow g14029s6 on (rg14029 6) using bank tags [6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1]
certRow g14029s7 on (rg14029 7) using bank tags [6,1,1,1,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g14029s8 on (rg14029 8) using bank tags []
certRow g14029s9 on (rg14029 9) using bank tags []
certRow g14029s10 on (rg14029 10) using bank tags [28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1]
certRow g14029s11 on (rg14029 11) using bank tags []
theorem g14029 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [1,1,2,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 5 [1,1,2,0,0] (.cons (g14029s0) (.cons (g14029s1) (.cons (g14029s2) (.cons (g14029s3) (.cons (g14029s4) (.cons (g14029s5) (.cons (g14029s6) (.cons (g14029s7) (.cons (g14029s8) (.cons (g14029s9) (.cons (g14029s10) (.cons (g14029s11) .nil))))))))))))
private abbrev rg14030 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 5 [1,2,0,0,1]
certRow g14030s0 on (rg14030 0) using bank tags []
certRow g14030s1 on (rg14030 1) using bank tags [28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13]
certRow g14030s2 on (rg14030 2) using bank tags [28,28,28,6,28,28,28,6]
certRow g14030s3 on (rg14030 3) using bank tags [28,28,28,6,28,28,28,6]
certRow g14030s4 on (rg14030 4) using bank tags [28,28,28,6,28,28,28,6,28,28,28,32,28,28,28,6,28,28,28,24]
certRow g14030s5 on (rg14030 5) using bank tags []
certRow g14030s6 on (rg14030 6) using bank tags [35,29,29,13,29,35,29,27,19,19,29,13,19,19,29,27,19,19,29,13,19,19,29,27,19,19,29,13,19,19,29,27,19,19,29,13,19,19,29,27]
certRow g14030s7 on (rg14030 7) using bank tags []
certRow g14030s8 on (rg14030 8) using bank tags []
certRow g14030s9 on (rg14030 9) using bank tags []
certRow g14030s10 on (rg14030 10) using bank tags []
certRow g14030s11 on (rg14030 11) using bank tags []
theorem g14030 : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,2,0,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 5 [1,2,0,0,1] (.cons (g14030s0) (.cons (g14030s1) (.cons (g14030s2) (.cons (g14030s3) (.cons (g14030s4) (.cons (g14030s5) (.cons (g14030s6) (.cons (g14030s7) (.cons (g14030s8) (.cons (g14030s9) (.cons (g14030s10) (.cons (g14030s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
