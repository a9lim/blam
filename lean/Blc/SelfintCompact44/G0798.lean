import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14623 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,3,0,0,1]) using bank tags []
private abbrev rg14624 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,0,3,0,1,0]
certRow g14624s0 on (rg14624 0) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g14624s1 on (rg14624 1) using bank tags [28,28]
certRow g14624s2 on (rg14624 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,1,1,6,6,6,6,6,0,0] except [Floor44.e4846356823258,Floor44.e4846356815706]
certRow g14624s3 on (rg14624 3) using bank tags []
certRow g14624s4 on (rg14624 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14624s5 on (rg14624 5) using bank tags []
certRow g14624s6 on (rg14624 6) using bank tags [28,28,28,28,28,28]
certRow g14624s7 on (rg14624 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,29,0,29,0,29,0] except [Floor44.e4846200954714,Floor44.e4846205828314,Floor44.e4846205820762]
theorem g14624 (hard : BadRow [Floor44.e4846356823258,Floor44.e4846356815706,Floor44.e4846200954714,Floor44.e4846205828314,Floor44.e4846205820762]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,3,0,1,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,0,3,0,1,0] (.cons (g14624s0) (.cons (g14624s1) (.cons (g14624s2 (.cons (hard.get (by decide : Floor44.e4846356823258 ∈ [Floor44.e4846356823258,Floor44.e4846356815706,Floor44.e4846200954714,Floor44.e4846205828314,Floor44.e4846205820762])) (.cons (hard.get (by decide : Floor44.e4846356815706 ∈ [Floor44.e4846356823258,Floor44.e4846356815706,Floor44.e4846200954714,Floor44.e4846205828314,Floor44.e4846205820762])) .nil))) (.cons (g14624s3) (.cons (g14624s4) (.cons (g14624s5) (.cons (g14624s6) (.cons (g14624s7 (.cons (hard.get (by decide : Floor44.e4846200954714 ∈ [Floor44.e4846356823258,Floor44.e4846356815706,Floor44.e4846200954714,Floor44.e4846205828314,Floor44.e4846205820762])) (.cons (hard.get (by decide : Floor44.e4846205828314 ∈ [Floor44.e4846356823258,Floor44.e4846356815706,Floor44.e4846200954714,Floor44.e4846205828314,Floor44.e4846205820762])) (.cons (hard.get (by decide : Floor44.e4846205820762 ∈ [Floor44.e4846356823258,Floor44.e4846356815706,Floor44.e4846200954714,Floor44.e4846205828314,Floor44.e4846205820762])) .nil)))) .nil))))))))
certRow g14625 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,3,0,1,0]) using bank tags []
private abbrev rg14626 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,0,3,1,0,0]
certRow g14626s0 on (rg14626 0) using bank tags [28]
certRow g14626s1 on (rg14626 1) using bank tags [28]
certRow g14626s2 on (rg14626 2) using bank tags [28,28,28,28,28,6,6,6,0] except [Floor44.e4846356823274]
certRow g14626s3 on (rg14626 3) using bank tags []
certRow g14626s4 on (rg14626 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14626s5 on (rg14626 5) using bank tags []
certRow g14626s6 on (rg14626 6) using bank tags [28,28,28,28,28,28]
certRow g14626s7 on (rg14626 7) using bank tags [28,28,28,28,28,28,28,29,0] except [Floor44.e4846205828330]
theorem g14626 (hard : BadRow [Floor44.e4846356823274,Floor44.e4846205828330]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,3,1,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,0,3,1,0,0] (.cons (g14626s0) (.cons (g14626s1) (.cons (g14626s2 (.cons (hard.get (by decide : Floor44.e4846356823274 ∈ [Floor44.e4846356823274,Floor44.e4846205828330])) .nil)) (.cons (g14626s3) (.cons (g14626s4) (.cons (g14626s5) (.cons (g14626s6) (.cons (g14626s7 (.cons (hard.get (by decide : Floor44.e4846205828330 ∈ [Floor44.e4846356823274,Floor44.e4846205828330])) .nil)) .nil))))))))
certRow g14627 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,3,1,0,0]) using bank tags []
certRow g14628 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,4,0,0,0]) using bank tags []
certRow g14629 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,4,0,0,0]) using bank tags []
private abbrev rg14630 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,1,0,0,0,3]
certRow g14630s0 on (rg14630 0) using bank tags []
certRow g14630s1 on (rg14630 1) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g14630s2 on (rg14630 2) using bank tags [6,6,6,6,6,6,6,6,6]
certRow g14630s3 on (rg14630 3) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g14630s4 on (rg14630 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14630s5 on (rg14630 5) using bank tags [28,28,28,28,28,28]
certRow g14630s6 on (rg14630 6) using bank tags []
certRow g14630s7 on (rg14630 7) using bank tags [28,28,28,28,28]
theorem g14630 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,1,0,0,0,3]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,1,0,0,0,3] (.cons (g14630s0) (.cons (g14630s1) (.cons (g14630s2) (.cons (g14630s3) (.cons (g14630s4) (.cons (g14630s5) (.cons (g14630s6) (.cons (g14630s7) .nil))))))))
certRow g14631 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,1,0,0,0,3]) using bank tags []
end Blc.SelfintSingleObject.Compact44
