import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14574 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,0,0,1,2,1]
certRow g14574s0 on (rg14574 0) using bank tags [6,6,6,28,28,28,1,6,1,6,1,6]
certRow g14574s1 on (rg14574 1) using bank tags []
certRow g14574s2 on (rg14574 2) using bank tags [13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,1,1,1,6,6,6,0,1,6,1,6,1,6] except [Floor44.e4846356814710]
certRow g14574s3 on (rg14574 3) using bank tags []
certRow g14574s4 on (rg14574 4) using bank tags [28,28,6,28,28,28,1,28,1,28,1,28]
certRow g14574s5 on (rg14574 5) using bank tags []
certRow g14574s6 on (rg14574 6) using bank tags [1,28,28,28,1,1,28,28,6,28,28,28,6,6,28,28,28,28,6,28,28,28]
certRow g14574s7 on (rg14574 7) using bank tags []
certRow g14574s8 on (rg14574 8) using bank tags [28,28,28,28,28]
certRow g14574s9 on (rg14574 9) using bank tags [28,28,28,28]
certRow g14574s10 on (rg14574 10) using bank tags [19,19,19,19,19,19]
certRow g14574s11 on (rg14574 11) using bank tags [1,1,1,1,1,28,28,1,1]
theorem g14574 (hard : BadRow [Floor44.e4846356814710]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,0,1,2,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,0,0,1,2,1] (.cons (g14574s0) (.cons (g14574s1) (.cons (g14574s2 (.cons (hard.get (by decide : Floor44.e4846356814710 ∈ [Floor44.e4846356814710])) .nil)) (.cons (g14574s3) (.cons (g14574s4) (.cons (g14574s5) (.cons (g14574s6) (.cons (g14574s7) (.cons (g14574s8) (.cons (g14574s9) (.cons (g14574s10) (.cons (g14574s11) .nil))))))))))))
certRow g14575 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,0,1,2,1]) using bank tags [1,1,1,57,57,57,1,1,1]
private abbrev rg14576 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,0,0,1,3,0]
certRow g14576s0 on (rg14576 0) using bank tags [28,28]
certRow g14576s1 on (rg14576 1) using bank tags [28,28,28]
certRow g14576s2 on (rg14576 2) using bank tags [28,28,28,28,28,28,1,1,1,6,6,6,19,19,0,19,0,29,0,29,0,19,19,19,19] except [Floor44.e4846360468730,Floor44.e4846356814714,Floor44.e4846434758906,Floor44.e4846435966202]
certRow g14576s3 on (rg14576 3) using bank tags [28]
certRow g14576s4 on (rg14576 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14576s5 on (rg14576 5) using bank tags []
certRow g14576s6 on (rg14576 6) using bank tags []
certRow g14576s7 on (rg14576 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,29,0] except [Floor44.e4846205819770]
theorem g14576 (hard : BadRow [Floor44.e4846360468730,Floor44.e4846356814714,Floor44.e4846434758906,Floor44.e4846435966202,Floor44.e4846205819770]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,0,1,3,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,0,0,1,3,0] (.cons (g14576s0) (.cons (g14576s1) (.cons (g14576s2 (.cons (hard.get (by decide : Floor44.e4846360468730 ∈ [Floor44.e4846360468730,Floor44.e4846356814714,Floor44.e4846434758906,Floor44.e4846435966202,Floor44.e4846205819770])) (.cons (hard.get (by decide : Floor44.e4846356814714 ∈ [Floor44.e4846360468730,Floor44.e4846356814714,Floor44.e4846434758906,Floor44.e4846435966202,Floor44.e4846205819770])) (.cons (hard.get (by decide : Floor44.e4846434758906 ∈ [Floor44.e4846360468730,Floor44.e4846356814714,Floor44.e4846434758906,Floor44.e4846435966202,Floor44.e4846205819770])) (.cons (hard.get (by decide : Floor44.e4846435966202 ∈ [Floor44.e4846360468730,Floor44.e4846356814714,Floor44.e4846434758906,Floor44.e4846435966202,Floor44.e4846205819770])) .nil))))) (.cons (g14576s3) (.cons (g14576s4) (.cons (g14576s5) (.cons (g14576s6) (.cons (g14576s7 (.cons (hard.get (by decide : Floor44.e4846205819770 ∈ [Floor44.e4846360468730,Floor44.e4846356814714,Floor44.e4846434758906,Floor44.e4846435966202,Floor44.e4846205819770])) .nil)) .nil))))))))
certRow g14577 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,0,1,3,0]) using bank tags []
private abbrev rg14578 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,0,0,2,0,2]
certRow g14578s0 on (rg14578 0) using bank tags [35,35,35,35,35,6,6,28,28]
certRow g14578s1 on (rg14578 1) using bank tags [28,28,28,28,28,6,6,28,28,28]
certRow g14578s2 on (rg14578 2) using bank tags [6,6,6,6,6,6,6,28,28,28,6,6,28,28,28,6,6,28,28,28,28,1,1,1,1,1,1,1,1,1,1,19,19,29,0,29,0,19,19,19,19] except [Floor44.e4846434760814,Floor44.e4846434748334]
certRow g14578s3 on (rg14578 3) using bank tags [28,28]
certRow g14578s4 on (rg14578 4) using bank tags [28,28,28,28,28,1,1,28,28,28,28,28]
certRow g14578s5 on (rg14578 5) using bank tags []
certRow g14578s6 on (rg14578 6) using bank tags []
certRow g14578s7 on (rg14578 7) using bank tags [28,28,28,28,28]
theorem g14578 (hard : BadRow [Floor44.e4846434760814,Floor44.e4846434748334]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,0,2,0,2]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,0,0,2,0,2] (.cons (g14578s0) (.cons (g14578s1) (.cons (g14578s2 (.cons (hard.get (by decide : Floor44.e4846434760814 ∈ [Floor44.e4846434760814,Floor44.e4846434748334])) (.cons (hard.get (by decide : Floor44.e4846434748334 ∈ [Floor44.e4846434760814,Floor44.e4846434748334])) .nil))) (.cons (g14578s3) (.cons (g14578s4) (.cons (g14578s5) (.cons (g14578s6) (.cons (g14578s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
