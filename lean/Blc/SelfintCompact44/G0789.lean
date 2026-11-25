import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14590 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,0,1,0,0,3]
certRow g14590s0 on (rg14590 0) using bank tags []
certRow g14590s1 on (rg14590 1) using bank tags [28,28,28,28,28,28,28]
certRow g14590s2 on (rg14590 2) using bank tags [28,28,28,28,28,28,28,1,1,1,1,1,1,1,6,6,6,6,6,19,19,29,0,29,0,19,19,19,19] except [Floor44.e4846434857182,Floor44.e4846434767070]
certRow g14590s3 on (rg14590 3) using bank tags [28,28]
certRow g14590s4 on (rg14590 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14590s5 on (rg14590 5) using bank tags [28,28,28,28,28,28]
certRow g14590s6 on (rg14590 6) using bank tags []
certRow g14590s7 on (rg14590 7) using bank tags [28,28,28,28,28]
theorem g14590 (hard : BadRow [Floor44.e4846434857182,Floor44.e4846434767070]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,1,0,0,3]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,0,1,0,0,3] (.cons (g14590s0) (.cons (g14590s1) (.cons (g14590s2 (.cons (hard.get (by decide : Floor44.e4846434857182 ∈ [Floor44.e4846434857182,Floor44.e4846434767070])) (.cons (hard.get (by decide : Floor44.e4846434767070 ∈ [Floor44.e4846434857182,Floor44.e4846434767070])) .nil))) (.cons (g14590s3) (.cons (g14590s4) (.cons (g14590s5) (.cons (g14590s6) (.cons (g14590s7) .nil))))))))
certRow g14591 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,1,0,0,3]) using bank tags []
private abbrev rg14592 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,0,1,0,1,2]
certRow g14592s0 on (rg14592 0) using bank tags [1,1,1,1,1,28,28,28,28,28,6,6,6,6,6,6,6,6,6,6,19,29,6]
certRow g14592s1 on (rg14592 1) using bank tags []
certRow g14592s2 on (rg14592 2) using bank tags [6,1,28,28,28,28,28,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,1,1,1,1,1,1,1,1,1,6,6,6,6,6,19,19,0,19,6,6,6,6,6,35,6,22,6,75,22,6,29,0,0,0] except [Floor44.e4846360726382,Floor44.e4846434763630,Floor44.e4836603686426,Floor44.e4846436223854]
certRow g14592s3 on (rg14592 3) using bank tags []
certRow g14592s4 on (rg14592 4) using bank tags [28,28,28,28,28,28,28,1,28,1,28,1,28,1,28,1,28,6,1]
certRow g14592s5 on (rg14592 5) using bank tags []
certRow g14592s6 on (rg14592 6) using bank tags [28,28,28,28,28,28,28,28,27,27,28,28,28,28,28,28,6,22,28,28,28,28,28,28,28,28,28,28]
certRow g14592s7 on (rg14592 7) using bank tags []
certRow g14592s8 on (rg14592 8) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,0,19,19] except [Floor44.e4845892012910]
certRow g14592s9 on (rg14592 9) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g14592s10 on (rg14592 10) using bank tags [1,1,28,1,19,19,19,19,19,19,19,19,19,19,19,19,19,19,19,19]
certRow g14592s11 on (rg14592 11) using bank tags [28]
theorem g14592 (hard : BadRow [Floor44.e4846360726382,Floor44.e4846434763630,Floor44.e4836603686426,Floor44.e4846436223854,Floor44.e4845892012910]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,1,0,1,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,0,1,0,1,2] (.cons (g14592s0) (.cons (g14592s1) (.cons (g14592s2 (.cons (hard.get (by decide : Floor44.e4846360726382 ∈ [Floor44.e4846360726382,Floor44.e4846434763630,Floor44.e4836603686426,Floor44.e4846436223854,Floor44.e4845892012910])) (.cons (hard.get (by decide : Floor44.e4846434763630 ∈ [Floor44.e4846360726382,Floor44.e4846434763630,Floor44.e4836603686426,Floor44.e4846436223854,Floor44.e4845892012910])) (.cons (hard.get (by decide : Floor44.e4836603686426 ∈ [Floor44.e4846360726382,Floor44.e4846434763630,Floor44.e4836603686426,Floor44.e4846436223854,Floor44.e4845892012910])) (.cons (hard.get (by decide : Floor44.e4846436223854 ∈ [Floor44.e4846360726382,Floor44.e4846434763630,Floor44.e4836603686426,Floor44.e4846436223854,Floor44.e4845892012910])) .nil))))) (.cons (g14592s3) (.cons (g14592s4) (.cons (g14592s5) (.cons (g14592s6) (.cons (g14592s7) (.cons (g14592s8 (.cons (hard.get (by decide : Floor44.e4845892012910 ∈ [Floor44.e4846360726382,Floor44.e4846434763630,Floor44.e4836603686426,Floor44.e4846436223854,Floor44.e4845892012910])) .nil)) (.cons (g14592s9) (.cons (g14592s10) (.cons (g14592s11) .nil))))))))))))
certRow g14593 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,1,0,1,2]) using bank tags [14,14,14,1,1,1,57,57,57,1,1,1,57,57,57]
end Blc.SelfintSingleObject.Compact44
