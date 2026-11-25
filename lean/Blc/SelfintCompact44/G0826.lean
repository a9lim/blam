import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14760 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [1,2,0,0,0,1]
certRow g14760s0 on (rg14760 0) using bank tags []
certRow g14760s1 on (rg14760 1) using bank tags [1,1,28,28,28]
certRow g14760s2 on (rg14760 2) using bank tags [28,28,28,28]
certRow g14760s3 on (rg14760 3) using bank tags [28,28,28]
certRow g14760s4 on (rg14760 4) using bank tags [206,28,28,28,1,28,28,28,28,28]
certRow g14760s5 on (rg14760 5) using bank tags []
certRow g14760s6 on (rg14760 6) using bank tags [1,28,28,28,8,28,28,28,28,206,28,28,28,1,28,28,28,1,28,1,28,28,28,28,28,28,28,28,206,28,28,28,1,28,28,28,28,28]
certRow g14760s7 on (rg14760 7) using bank tags []
certRow g14760s8 on (rg14760 8) using bank tags [13,13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,19,1,19,1,19,6,6,19,35,19,22,19,0,19,35,19,19,6,19,19,19,22,19,22] except [Floor44.e4845195965206]
certRow g14760s9 on (rg14760 9) using bank tags [1,1,1,1,1,1,1,28,28,28,28,1,28,28,28,8,8,28,28,28,28,28,28,206,28,28,28,1,28,28,28,8,28,28,28,28,206,28,28,28]
certRow g14760s10 on (rg14760 10) using bank tags []
certRow g14760s11 on (rg14760 11) using bank tags [28,28,6,28,28,28]
theorem g14760 (hard : BadRow [Floor44.e4845195965206]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,2,0,0,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [1,2,0,0,0,1] (.cons (g14760s0) (.cons (g14760s1) (.cons (g14760s2) (.cons (g14760s3) (.cons (g14760s4) (.cons (g14760s5) (.cons (g14760s6) (.cons (g14760s7) (.cons (g14760s8 (.cons (hard.get (by decide : Floor44.e4845195965206 ∈ [Floor44.e4845195965206])) .nil)) (.cons (g14760s9) (.cons (g14760s10) (.cons (g14760s11) .nil))))))))))))
certRow g14761 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,2,0,0,0,1]) using bank tags []
private abbrev rg14762 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [1,2,0,0,1,0]
certRow g14762s0 on (rg14762 0) using bank tags []
certRow g14762s1 on (rg14762 1) using bank tags [1,1,28,28,28,28,28]
certRow g14762s2 on (rg14762 2) using bank tags [28,28,28,28]
certRow g14762s3 on (rg14762 3) using bank tags [28,28,28,28,28,28,28,28]
certRow g14762s4 on (rg14762 4) using bank tags [206,28,28,28,1,28,28,28,28,28]
certRow g14762s5 on (rg14762 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14762s6 on (rg14762 6) using bank tags [26,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14762s7 on (rg14762 7) using bank tags []
certRow g14762s8 on (rg14762 8) using bank tags [13,13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,19,1,1,19,1,19,19,6,6,19,19,19,22,19,22,35,19,19,19,19,35,22,22,19,6]
certRow g14762s9 on (rg14762 9) using bank tags [1,1,1,30,1,1,1,28,28,28,28,28,28,28,28,28,28,8,8,28,28,28,28,28,28,28,28,28,206,28,28,28,28,28,28,28,28,8,8,28,28,28,28,206,28,28,28,35,19,19,19,19]
certRow g14762s10 on (rg14762 10) using bank tags []
certRow g14762s11 on (rg14762 11) using bank tags [28,28,28,28,28,28,28,23,23,23,23,23,62,82,62,19,82]
theorem g14762 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,2,0,0,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [1,2,0,0,1,0] (.cons (g14762s0) (.cons (g14762s1) (.cons (g14762s2) (.cons (g14762s3) (.cons (g14762s4) (.cons (g14762s5) (.cons (g14762s6) (.cons (g14762s7) (.cons (g14762s8) (.cons (g14762s9) (.cons (g14762s10) (.cons (g14762s11) .nil))))))))))))
certRow g14763 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,2,0,0,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
