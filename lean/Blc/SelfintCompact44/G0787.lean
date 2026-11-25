import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14579 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,0,2,0,2]) using bank tags []
private abbrev rg14580 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,0,0,2,1,1]
certRow g14580s0 on (rg14580 0) using bank tags [6,6,6,28,28,28,1,6,1,6,1,6]
certRow g14580s1 on (rg14580 1) using bank tags []
certRow g14580s2 on (rg14580 2) using bank tags [13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,1,1,6,6,6,0,1,6,1,6,1,6] except [Floor44.e4846356814774]
certRow g14580s3 on (rg14580 3) using bank tags []
certRow g14580s4 on (rg14580 4) using bank tags [28,22,28,6,28,28,28,19,28,6,28,19,28]
certRow g14580s5 on (rg14580 5) using bank tags []
certRow g14580s6 on (rg14580 6) using bank tags [6,28,28,6,6,28,28,6,28,28,28,28,35,28,6,28,28,28]
certRow g14580s7 on (rg14580 7) using bank tags []
certRow g14580s8 on (rg14580 8) using bank tags [28,28,28,28]
certRow g14580s9 on (rg14580 9) using bank tags [28,28,28]
certRow g14580s10 on (rg14580 10) using bank tags [19,19,19,19,19,19]
certRow g14580s11 on (rg14580 11) using bank tags [1,1,1,1,1,28,28,19,1]
theorem g14580 (hard : BadRow [Floor44.e4846356814774]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,0,2,1,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,0,0,2,1,1] (.cons (g14580s0) (.cons (g14580s1) (.cons (g14580s2 (.cons (hard.get (by decide : Floor44.e4846356814774 ∈ [Floor44.e4846356814774])) .nil)) (.cons (g14580s3) (.cons (g14580s4) (.cons (g14580s5) (.cons (g14580s6) (.cons (g14580s7) (.cons (g14580s8) (.cons (g14580s9) (.cons (g14580s10) (.cons (g14580s11) .nil))))))))))))
certRow g14581 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,0,2,1,1]) using bank tags [1,1,1,1,1,1,1,1,1]
private abbrev rg14582 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,0,0,2,2,0]
certRow g14582s0 on (rg14582 0) using bank tags [30,30,35,31,35,6,6,28,28]
certRow g14582s1 on (rg14582 1) using bank tags [28,28,28,28,28]
certRow g14582s2 on (rg14582 2) using bank tags [28,6,6,28,28,28,1,1,1,1,1,19,29,0,19,19] except [Floor44.e4846434760826]
certRow g14582s3 on (rg14582 3) using bank tags [28]
certRow g14582s4 on (rg14582 4) using bank tags [28,28,28,28,28,28]
certRow g14582s5 on (rg14582 5) using bank tags []
certRow g14582s6 on (rg14582 6) using bank tags []
certRow g14582s7 on (rg14582 7) using bank tags [28,28,28,28,28,28,29,0] except [Floor44.e4846200953786]
theorem g14582 (hard : BadRow [Floor44.e4846434760826,Floor44.e4846200953786]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,0,2,2,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,0,0,2,2,0] (.cons (g14582s0) (.cons (g14582s1) (.cons (g14582s2 (.cons (hard.get (by decide : Floor44.e4846434760826 ∈ [Floor44.e4846434760826,Floor44.e4846200953786])) .nil)) (.cons (g14582s3) (.cons (g14582s4) (.cons (g14582s5) (.cons (g14582s6) (.cons (g14582s7 (.cons (hard.get (by decide : Floor44.e4846200953786 ∈ [Floor44.e4846434760826,Floor44.e4846200953786])) .nil)) .nil))))))))
certRow g14583 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,0,2,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
