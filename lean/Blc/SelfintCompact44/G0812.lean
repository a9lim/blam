import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14680 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,2,0,2,0,0]
certRow g14680s0 on (rg14680 0) using bank tags [28,28]
certRow g14680s1 on (rg14680 1) using bank tags [6,6,28,14,14,28,28]
certRow g14680s2 on (rg14680 2) using bank tags [28,28,6,6,28,28,28,28,28,28,1,1,1,1,1,1,1]
certRow g14680s3 on (rg14680 3) using bank tags [6,6,6,6,6,6,6,28]
certRow g14680s4 on (rg14680 4) using bank tags [1,1,28,1,1,28,28]
certRow g14680s5 on (rg14680 5) using bank tags [22,22,22,22]
certRow g14680s6 on (rg14680 6) using bank tags [11,35,35,18,28,28]
certRow g14680s7 on (rg14680 7) using bank tags [28,28,29,0,29,0] except [Floor44.e4846201496042,Floor44.e4846201053674]
theorem g14680 (hard : BadRow [Floor44.e4846201496042,Floor44.e4846201053674]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,2,0,2,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,2,0,2,0,0] (.cons (g14680s0) (.cons (g14680s1) (.cons (g14680s2) (.cons (g14680s3) (.cons (g14680s4) (.cons (g14680s5) (.cons (g14680s6) (.cons (g14680s7 (.cons (hard.get (by decide : Floor44.e4846201496042 ∈ [Floor44.e4846201496042,Floor44.e4846201053674])) (.cons (hard.get (by decide : Floor44.e4846201053674 ∈ [Floor44.e4846201496042,Floor44.e4846201053674])) .nil))) .nil))))))))
certRow g14681 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,2,0,2,0,0]) using bank tags []
private abbrev rg14682 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,2,1,0,0,1]
certRow g14682s0 on (rg14682 0) using bank tags []
certRow g14682s1 on (rg14682 1) using bank tags [28,6,6,28,28]
certRow g14682s2 on (rg14682 2) using bank tags [13,13,13,13,13,13,13,13,13,13,13,13,13,13,35,19,35,35,6,35,35,6,6,19,35,6,35,19,6,6,6,6,6,19,6,19,6,35,19]
certRow g14682s3 on (rg14682 3) using bank tags [28,28,28,28]
certRow g14682s4 on (rg14682 4) using bank tags [28,28,28,28,28,28,28]
certRow g14682s5 on (rg14682 5) using bank tags [28,19,29,0] except [Floor44.e4846201500726]
certRow g14682s6 on (rg14682 6) using bank tags [0,35,6,28,28,28,8,28,28,28,28,28,28,22,22,6,28,28,28,6,28,6,28,28,28,28,28,28,28,28,28,28,28,28,28] except [Floor44.e4844817358038]
certRow g14682s7 on (rg14682 7) using bank tags []
certRow g14682s8 on (rg14682 8) using bank tags [1,1,28,28,28,28,28,28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28,28,28]
certRow g14682s9 on (rg14682 9) using bank tags [6,6,28,28,28,28,28,28,28,28,28,28,28,28,22,22,28,28,28,28,28,28,28,28,28]
certRow g14682s10 on (rg14682 10) using bank tags []
certRow g14682s11 on (rg14682 11) using bank tags [6,6,28,28,28,28,6,28,28,28,1,1,1,1,1,1,1,1,28]
theorem g14682 (hard : BadRow [Floor44.e4844817358038,Floor44.e4846201500726]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,2,1,0,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,2,1,0,0,1] (.cons (g14682s0) (.cons (g14682s1) (.cons (g14682s2) (.cons (g14682s3) (.cons (g14682s4) (.cons (g14682s5 (.cons (hard.get (by decide : Floor44.e4846201500726 ∈ [Floor44.e4844817358038,Floor44.e4846201500726])) .nil)) (.cons (g14682s6 (.cons (hard.get (by decide : Floor44.e4844817358038 ∈ [Floor44.e4844817358038,Floor44.e4846201500726])) .nil)) (.cons (g14682s7) (.cons (g14682s8) (.cons (g14682s9) (.cons (g14682s10) (.cons (g14682s11) .nil))))))))))))
certRow g14683 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,2,1,0,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
