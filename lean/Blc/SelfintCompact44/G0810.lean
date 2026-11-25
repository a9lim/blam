import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14672 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,2,0,0,1,1]
certRow g14672s0 on (rg14672 0) using bank tags []
certRow g14672s1 on (rg14672 1) using bank tags []
certRow g14672s2 on (rg14672 2) using bank tags [28,28,28,28,13,13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,1,6,6,1,1,22,6,19,1,1,1,22,1,1,86]
certRow g14672s3 on (rg14672 3) using bank tags []
certRow g14672s4 on (rg14672 4) using bank tags [206,28,28,28,22,28,28,28,28,28]
certRow g14672s5 on (rg14672 5) using bank tags []
certRow g14672s6 on (rg14672 6) using bank tags [26,0,28,28,28,28,206,28,28,28,6,6,28,28,28,28,28,28,206,28,28,28,6,28,28,28,28,28] except [Floor44.e4844817356470]
certRow g14672s7 on (rg14672 7) using bank tags []
certRow g14672s8 on (rg14672 8) using bank tags [28,28,28,28,28,28,28,28,32,1,28,28,28,28,28,28,28]
certRow g14672s9 on (rg14672 9) using bank tags [28,28,28,28,28,28,28,28,32,0,28,28,28,28,28,28,28] except [Floor44.e4844829939382]
certRow g14672s10 on (rg14672 10) using bank tags []
certRow g14672s11 on (rg14672 11) using bank tags [14,28,28,28,1,1,1,1,1,1,1,1,1,1]
theorem g14672 (hard : BadRow [Floor44.e4844829939382,Floor44.e4844817356470]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,2,0,0,1,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,2,0,0,1,1] (.cons (g14672s0) (.cons (g14672s1) (.cons (g14672s2) (.cons (g14672s3) (.cons (g14672s4) (.cons (g14672s5) (.cons (g14672s6 (.cons (hard.get (by decide : Floor44.e4844817356470 ∈ [Floor44.e4844829939382,Floor44.e4844817356470])) .nil)) (.cons (g14672s7) (.cons (g14672s8) (.cons (g14672s9 (.cons (hard.get (by decide : Floor44.e4844829939382 ∈ [Floor44.e4844829939382,Floor44.e4844817356470])) .nil)) (.cons (g14672s10) (.cons (g14672s11) .nil))))))))))))
certRow g14673 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,2,0,0,1,1]) using bank tags []
private abbrev rg14674 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,2,0,0,2,0]
certRow g14674s0 on (rg14674 0) using bank tags [30,1,35,35,207,6,6,28]
certRow g14674s1 on (rg14674 1) using bank tags [6,6,28,28,28,14,14,28,28,28,28,28]
certRow g14674s2 on (rg14674 2) using bank tags [28,28,6,22,28,28,28,28,1,1,28,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g14674s3 on (rg14674 3) using bank tags [6,6,6,6,6,6,6,28,28,28]
certRow g14674s4 on (rg14674 4) using bank tags [1,1,28,28,28,1,1,28,28,28,28,28]
certRow g14674s5 on (rg14674 5) using bank tags [22,22,28,22,22,28]
certRow g14674s6 on (rg14674 6) using bank tags [35,22,35,35,28,28]
certRow g14674s7 on (rg14674 7) using bank tags [28,28,28,28,28,28,28,29,0,29,0] except [Floor44.e4846201495994,Floor44.e4846201053626]
theorem g14674 (hard : BadRow [Floor44.e4846201495994,Floor44.e4846201053626]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,2,0,0,2,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,2,0,0,2,0] (.cons (g14674s0) (.cons (g14674s1) (.cons (g14674s2) (.cons (g14674s3) (.cons (g14674s4) (.cons (g14674s5) (.cons (g14674s6) (.cons (g14674s7 (.cons (hard.get (by decide : Floor44.e4846201495994 ∈ [Floor44.e4846201495994,Floor44.e4846201053626])) (.cons (hard.get (by decide : Floor44.e4846201053626 ∈ [Floor44.e4846201495994,Floor44.e4846201053626])) .nil))) .nil))))))))
certRow g14675 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,2,0,0,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
