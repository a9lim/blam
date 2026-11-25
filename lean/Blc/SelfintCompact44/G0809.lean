import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14666 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,1,2,1,0,0]
certRow g14666s0 on (rg14666 0) using bank tags []
certRow g14666s1 on (rg14666 1) using bank tags [1,28,28,28,1,1,1,28,28,28,0,19,19,19,19] except [Floor44.e4846201402274]
certRow g14666s2 on (rg14666 2) using bank tags [1,1,1,1,1,1,1,13,13,13,13,13,13,13,13,13,13,6,6,6,6,6,6,6,6,22,19,6,19,6,35,19,19,19,19,6,19,19,6,6,6,35,29,0,19,19,29,0,19,19,19,19,0] except [Floor44.e4846363332194,Floor44.e4846363331466,Floor44.e4846357855466]
certRow g14666s3 on (rg14666 3) using bank tags [1,28,1,28,1,28,6,6,6,6,31,22,22,35,29,0,35,0] except [Floor44.e4846201401578,Floor44.e4846206860522]
certRow g14666s4 on (rg14666 4) using bank tags []
certRow g14666s5 on (rg14666 5) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g14666s6 on (rg14666 6) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g14666s7 on (rg14666 7) using bank tags []
certRow g14666s8 on (rg14666 8) using bank tags [1,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,14,14,14,1,1,1,1,1,28]
certRow g14666s9 on (rg14666 9) using bank tags [1,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1]
certRow g14666s10 on (rg14666 10) using bank tags []
certRow g14666s11 on (rg14666 11) using bank tags [1,1,1,28,28,28,8,28,28,28,28,28,28,28,28,28]
theorem g14666 (hard : BadRow [Floor44.e4846363332194,Floor44.e4846363331466,Floor44.e4846357855466,Floor44.e4846201402274,Floor44.e4846201401578,Floor44.e4846206860522]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,1,2,1,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,1,2,1,0,0] (.cons (g14666s0) (.cons (g14666s1 (.cons (hard.get (by decide : Floor44.e4846201402274 ∈ [Floor44.e4846363332194,Floor44.e4846363331466,Floor44.e4846357855466,Floor44.e4846201402274,Floor44.e4846201401578,Floor44.e4846206860522])) .nil)) (.cons (g14666s2 (.cons (hard.get (by decide : Floor44.e4846363332194 ∈ [Floor44.e4846363332194,Floor44.e4846363331466,Floor44.e4846357855466,Floor44.e4846201402274,Floor44.e4846201401578,Floor44.e4846206860522])) (.cons (hard.get (by decide : Floor44.e4846363331466 ∈ [Floor44.e4846363332194,Floor44.e4846363331466,Floor44.e4846357855466,Floor44.e4846201402274,Floor44.e4846201401578,Floor44.e4846206860522])) (.cons (hard.get (by decide : Floor44.e4846357855466 ∈ [Floor44.e4846363332194,Floor44.e4846363331466,Floor44.e4846357855466,Floor44.e4846201402274,Floor44.e4846201401578,Floor44.e4846206860522])) .nil)))) (.cons (g14666s3 (.cons (hard.get (by decide : Floor44.e4846201401578 ∈ [Floor44.e4846363332194,Floor44.e4846363331466,Floor44.e4846357855466,Floor44.e4846201402274,Floor44.e4846201401578,Floor44.e4846206860522])) (.cons (hard.get (by decide : Floor44.e4846206860522 ∈ [Floor44.e4846363332194,Floor44.e4846363331466,Floor44.e4846357855466,Floor44.e4846201402274,Floor44.e4846201401578,Floor44.e4846206860522])) .nil))) (.cons (g14666s4) (.cons (g14666s5) (.cons (g14666s6) (.cons (g14666s7) (.cons (g14666s8) (.cons (g14666s9) (.cons (g14666s10) (.cons (g14666s11) .nil))))))))))))
certRow g14667 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,1,2,1,0,0]) using bank tags []
certRow g14668 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,1,3,0,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14669 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,1,3,0,0,0]) using bank tags []
private abbrev rg14670 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,2,0,0,0,2]
certRow g14670s0 on (rg14670 0) using bank tags [35,35,6,6,6,6,6,28]
certRow g14670s1 on (rg14670 1) using bank tags [22,22,28,28,14,14,28,28,28]
certRow g14670s2 on (rg14670 2) using bank tags [1,1,1,1,1,28,1,1,28,1,1,1,1,1,1,1,1,1]
certRow g14670s3 on (rg14670 3) using bank tags [6,6,6,6,6,6,22,28,28]
certRow g14670s4 on (rg14670 4) using bank tags [1,1,28,28,17,1,28,28,28]
certRow g14670s5 on (rg14670 5) using bank tags [22,43,28,22,22,28]
certRow g14670s6 on (rg14670 6) using bank tags [22,6,35,6,28,28]
certRow g14670s7 on (rg14670 7) using bank tags [28,28,28,28,28]
theorem g14670 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,2,0,0,0,2]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,2,0,0,0,2] (.cons (g14670s0) (.cons (g14670s1) (.cons (g14670s2) (.cons (g14670s3) (.cons (g14670s4) (.cons (g14670s5) (.cons (g14670s6) (.cons (g14670s7) .nil))))))))
certRow g14671 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,2,0,0,0,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
