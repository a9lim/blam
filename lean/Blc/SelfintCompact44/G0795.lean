import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14610 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,0,2,0,0,2]
certRow g14610s0 on (rg14610 0) using bank tags []
certRow g14610s1 on (rg14610 1) using bank tags [6,6,28,6,6,28]
certRow g14610s2 on (rg14610 2) using bank tags [22,22,22,22,28,28,28,28,1,1,1,1,1,1,1,1,1,1,1,19,19,29,0,29,0] except [Floor44.e4846434883694,Floor44.e4846434773102]
certRow g14610s3 on (rg14610 3) using bank tags [28,28,28,28,28]
certRow g14610s4 on (rg14610 4) using bank tags [35,35,22,22,35,6,6,28,28,28]
certRow g14610s5 on (rg14610 5) using bank tags []
certRow g14610s6 on (rg14610 6) using bank tags [6,6,6,6,6,6,6,28,6,6,28,6,6,28,28,28]
certRow g14610s7 on (rg14610 7) using bank tags []
certRow g14610s8 on (rg14610 8) using bank tags [28,28,1,1,28,28,28,28,1,1,28,28,28]
certRow g14610s9 on (rg14610 9) using bank tags [28,28,22,22,28,28,28,28,6,6,28]
certRow g14610s10 on (rg14610 10) using bank tags [19,19,19,19]
certRow g14610s11 on (rg14610 11) using bank tags [28,28]
theorem g14610 (hard : BadRow [Floor44.e4846434883694,Floor44.e4846434773102]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,2,0,0,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,0,2,0,0,2] (.cons (g14610s0) (.cons (g14610s1) (.cons (g14610s2 (.cons (hard.get (by decide : Floor44.e4846434883694 ∈ [Floor44.e4846434883694,Floor44.e4846434773102])) (.cons (hard.get (by decide : Floor44.e4846434773102 ∈ [Floor44.e4846434883694,Floor44.e4846434773102])) .nil))) (.cons (g14610s3) (.cons (g14610s4) (.cons (g14610s5) (.cons (g14610s6) (.cons (g14610s7) (.cons (g14610s8) (.cons (g14610s9) (.cons (g14610s10) (.cons (g14610s11) .nil))))))))))))
certRow g14611 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,2,0,0,2]) using bank tags []
private abbrev rg14612 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,0,2,0,1,1]
certRow g14612s0 on (rg14612 0) using bank tags [1,1,22,6,18,28,28,28,28,28,6,6,6,6,6,6,6,6,6,6]
certRow g14612s1 on (rg14612 1) using bank tags []
certRow g14612s2 on (rg14612 2) using bank tags [28,28,28,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,1,1,1,1,1,1,1,1,6,6,6,6,6,19,0,0,6,6,6,6,6,0,6,35,6,22,29,0] except [Floor44.e4846356822454,Floor44.e4846356815542,Floor44.e4846434482806,Floor44.e4846434771382]
certRow g14612s3 on (rg14612 3) using bank tags []
certRow g14612s4 on (rg14612 4) using bank tags [28,28,28,6,28,28,28,28,35,28,62,28,19,28,65,28,19,28]
certRow g14612s5 on (rg14612 5) using bank tags []
certRow g14612s6 on (rg14612 6) using bank tags [28,28,28,28,28,28,28,6,22,28,28,28,28,28,28,28,28,6,28,28,28,28]
certRow g14612s7 on (rg14612 7) using bank tags []
certRow g14612s8 on (rg14612 8) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow g14612s9 on (rg14612 9) using bank tags [28,28,28,28,28,28,28,28]
certRow g14612s10 on (rg14612 10) using bank tags [19,19,19,19,19,19,19,19,19,19,19,19]
certRow g14612s11 on (rg14612 11) using bank tags [28,1,1,1,1,1,1,1,1,1,28,28,28,28,6,1,19,1]
theorem g14612 (hard : BadRow [Floor44.e4846356822454,Floor44.e4846356815542,Floor44.e4846434482806,Floor44.e4846434771382]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,2,0,1,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,0,2,0,1,1] (.cons (g14612s0) (.cons (g14612s1) (.cons (g14612s2 (.cons (hard.get (by decide : Floor44.e4846356822454 ∈ [Floor44.e4846356822454,Floor44.e4846356815542,Floor44.e4846434482806,Floor44.e4846434771382])) (.cons (hard.get (by decide : Floor44.e4846356815542 ∈ [Floor44.e4846356822454,Floor44.e4846356815542,Floor44.e4846434482806,Floor44.e4846434771382])) (.cons (hard.get (by decide : Floor44.e4846434482806 ∈ [Floor44.e4846356822454,Floor44.e4846356815542,Floor44.e4846434482806,Floor44.e4846434771382])) (.cons (hard.get (by decide : Floor44.e4846434771382 ∈ [Floor44.e4846356822454,Floor44.e4846356815542,Floor44.e4846434482806,Floor44.e4846434771382])) .nil))))) (.cons (g14612s3) (.cons (g14612s4) (.cons (g14612s5) (.cons (g14612s6) (.cons (g14612s7) (.cons (g14612s8) (.cons (g14612s9) (.cons (g14612s10) (.cons (g14612s11) .nil))))))))))))
certRow g14613 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,2,0,1,1]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
end Blc.SelfintSingleObject.Compact44
