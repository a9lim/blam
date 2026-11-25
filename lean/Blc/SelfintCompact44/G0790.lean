import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14594 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,0,1,0,2,1]
certRow g14594s0 on (rg14594 0) using bank tags [1,1,1,1,1,28,28,28,28,28,6,6,6,6,6,6,6,6,6,6,19,29,6]
certRow g14594s1 on (rg14594 1) using bank tags []
certRow g14594s2 on (rg14594 2) using bank tags [6,6,28,28,28,28,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,1,1,1,1,1,1,1,1,6,6,6,6,6,19,0,19,0,0,6,6,6,6,6,22,6,22,6,22,19,19,170,0] except [Floor44.e4846360726390,Floor44.e4846356820854,Floor44.e4846356815222,Floor44.e4846436223862]
certRow g14594s3 on (rg14594 3) using bank tags []
certRow g14594s4 on (rg14594 4) using bank tags [28,28,28,28,28,28,28,1,28,1,28,1,28,1,28,1,28,19,1]
certRow g14594s5 on (rg14594 5) using bank tags []
certRow g14594s6 on (rg14594 6) using bank tags [28,28,28,28,28,1,1,28,28,28,28,6,22,28,28,28,28,28,28,28,28,28,28]
certRow g14594s7 on (rg14594 7) using bank tags []
certRow g14594s8 on (rg14594 8) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,1,0,19,19] except [Floor44.e4845892012918]
certRow g14594s9 on (rg14594 9) using bank tags [28,28,28,28,28,28]
certRow g14594s10 on (rg14594 10) using bank tags [1,19,28,1,19,19,19,19,19,19,19,19,19,19,19,19,19,19]
certRow g14594s11 on (rg14594 11) using bank tags [1,1,1,1,1,1,1,1,1,28,28,28,28,1,1,1,1]
theorem g14594 (hard : BadRow [Floor44.e4846360726390,Floor44.e4846356820854,Floor44.e4846356815222,Floor44.e4846436223862,Floor44.e4845892012918]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,1,0,2,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,0,1,0,2,1] (.cons (g14594s0) (.cons (g14594s1) (.cons (g14594s2 (.cons (hard.get (by decide : Floor44.e4846360726390 ∈ [Floor44.e4846360726390,Floor44.e4846356820854,Floor44.e4846356815222,Floor44.e4846436223862,Floor44.e4845892012918])) (.cons (hard.get (by decide : Floor44.e4846356820854 ∈ [Floor44.e4846360726390,Floor44.e4846356820854,Floor44.e4846356815222,Floor44.e4846436223862,Floor44.e4845892012918])) (.cons (hard.get (by decide : Floor44.e4846356815222 ∈ [Floor44.e4846360726390,Floor44.e4846356820854,Floor44.e4846356815222,Floor44.e4846436223862,Floor44.e4845892012918])) (.cons (hard.get (by decide : Floor44.e4846436223862 ∈ [Floor44.e4846360726390,Floor44.e4846356820854,Floor44.e4846356815222,Floor44.e4846436223862,Floor44.e4845892012918])) .nil))))) (.cons (g14594s3) (.cons (g14594s4) (.cons (g14594s5) (.cons (g14594s6) (.cons (g14594s7) (.cons (g14594s8 (.cons (hard.get (by decide : Floor44.e4845892012918 ∈ [Floor44.e4846360726390,Floor44.e4846356820854,Floor44.e4846356815222,Floor44.e4846436223862,Floor44.e4845892012918])) .nil)) (.cons (g14594s9) (.cons (g14594s10) (.cons (g14594s11) .nil))))))))))))
certRow g14595 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,1,0,2,1]) using bank tags [1,1,1,1,1,1,57,57,57,57,57,57,57,57,57]
private abbrev rg14596 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,0,1,0,3,0]
certRow g14596s0 on (rg14596 0) using bank tags []
certRow g14596s1 on (rg14596 1) using bank tags [28,28,28,28,28,28]
certRow g14596s2 on (rg14596 2) using bank tags [28,28,28,28,28,28,28,1,1,1,1,1,1,1,1,6,6,6,6,6,19,19,0,0,29,0,29,0] except [Floor44.e4846356820858,Floor44.e4846356815226,Floor44.e4846434857210,Floor44.e4846434767098]
certRow g14596s3 on (rg14596 3) using bank tags [28,28,28,28,28,29,0,29,0,29,0] except [Floor44.e4846200996730,Floor44.e4846205825914,Floor44.e4846205820282]
certRow g14596s4 on (rg14596 4) using bank tags []
certRow g14596s5 on (rg14596 5) using bank tags []
certRow g14596s6 on (rg14596 6) using bank tags [28,28,28]
certRow g14596s7 on (rg14596 7) using bank tags []
certRow g14596s8 on (rg14596 8) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14596s9 on (rg14596 9) using bank tags [28,28,28,28,28,28,28,28]
certRow g14596s10 on (rg14596 10) using bank tags [19,19,19,19]
certRow g14596s11 on (rg14596 11) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
theorem g14596 (hard : BadRow [Floor44.e4846356820858,Floor44.e4846356815226,Floor44.e4846434857210,Floor44.e4846434767098,Floor44.e4846200996730,Floor44.e4846205825914,Floor44.e4846205820282]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,1,0,3,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,0,1,0,3,0] (.cons (g14596s0) (.cons (g14596s1) (.cons (g14596s2 (.cons (hard.get (by decide : Floor44.e4846356820858 ∈ [Floor44.e4846356820858,Floor44.e4846356815226,Floor44.e4846434857210,Floor44.e4846434767098,Floor44.e4846200996730,Floor44.e4846205825914,Floor44.e4846205820282])) (.cons (hard.get (by decide : Floor44.e4846356815226 ∈ [Floor44.e4846356820858,Floor44.e4846356815226,Floor44.e4846434857210,Floor44.e4846434767098,Floor44.e4846200996730,Floor44.e4846205825914,Floor44.e4846205820282])) (.cons (hard.get (by decide : Floor44.e4846434857210 ∈ [Floor44.e4846356820858,Floor44.e4846356815226,Floor44.e4846434857210,Floor44.e4846434767098,Floor44.e4846200996730,Floor44.e4846205825914,Floor44.e4846205820282])) (.cons (hard.get (by decide : Floor44.e4846434767098 ∈ [Floor44.e4846356820858,Floor44.e4846356815226,Floor44.e4846434857210,Floor44.e4846434767098,Floor44.e4846200996730,Floor44.e4846205825914,Floor44.e4846205820282])) .nil))))) (.cons (g14596s3 (.cons (hard.get (by decide : Floor44.e4846200996730 ∈ [Floor44.e4846356820858,Floor44.e4846356815226,Floor44.e4846434857210,Floor44.e4846434767098,Floor44.e4846200996730,Floor44.e4846205825914,Floor44.e4846205820282])) (.cons (hard.get (by decide : Floor44.e4846205825914 ∈ [Floor44.e4846356820858,Floor44.e4846356815226,Floor44.e4846434857210,Floor44.e4846434767098,Floor44.e4846200996730,Floor44.e4846205825914,Floor44.e4846205820282])) (.cons (hard.get (by decide : Floor44.e4846205820282 ∈ [Floor44.e4846356820858,Floor44.e4846356815226,Floor44.e4846434857210,Floor44.e4846434767098,Floor44.e4846200996730,Floor44.e4846205825914,Floor44.e4846205820282])) .nil)))) (.cons (g14596s4) (.cons (g14596s5) (.cons (g14596s6) (.cons (g14596s7) (.cons (g14596s8) (.cons (g14596s9) (.cons (g14596s10) (.cons (g14596s11) .nil))))))))))))
certRow g14597 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,1,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
