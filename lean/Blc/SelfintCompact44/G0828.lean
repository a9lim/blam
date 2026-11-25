import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14766 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [1,2,1,0,0,0]
certRow g14766s0 on (rg14766 0) using bank tags []
certRow g14766s1 on (rg14766 1) using bank tags []
certRow g14766s2 on (rg14766 2) using bank tags []
certRow g14766s3 on (rg14766 3) using bank tags [1,28,1,28,1,28,6,6]
certRow g14766s4 on (rg14766 4) using bank tags [28]
certRow g14766s5 on (rg14766 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow g14766s6 on (rg14766 6) using bank tags [1,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14766s7 on (rg14766 7) using bank tags [66,0] except [Floor44.e4845826461338]
certRow g14766s8 on (rg14766 8) using bank tags [13,13,13,13,13,13,13,13,13,1,1,1,1,1,1,1,1,1,1,1,1,1,6,6,6,6,6,6,6,6,6]
certRow g14766s9 on (rg14766 9) using bank tags [1,1,1,1,1,1,28,28,28,1,28,28,28,28,1,28,28,28,1,28,28,28,8,28,25,28,28,28,28,28,28,28,28,28,8,8,1,28,28,28,8,28,28,28,28,28,28,6,6,6,6]
certRow g14766s10 on (rg14766 10) using bank tags []
certRow g14766s11 on (rg14766 11) using bank tags [1,28,28,28,1,28,28,28,28,1,28,28,28,23,23,23,6,6,6,6,6,28]
theorem g14766 (hard : BadRow [Floor44.e4845826461338]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,2,1,0,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [1,2,1,0,0,0] (.cons (g14766s0) (.cons (g14766s1) (.cons (g14766s2) (.cons (g14766s3) (.cons (g14766s4) (.cons (g14766s5) (.cons (g14766s6) (.cons (g14766s7 (.cons (hard.get (by decide : Floor44.e4845826461338 ∈ [Floor44.e4845826461338])) .nil)) (.cons (g14766s8) (.cons (g14766s9) (.cons (g14766s10) (.cons (g14766s11) .nil))))))))))))
certRow g14767 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,2,1,0,0,0]) using bank tags []
certRow g14768 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,3,0,0,0,0]) using bank tags []
certRow g14769 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,3,0,0,0,0]) using bank tags []
private abbrev rg14770 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [2,0,0,0,0,2]
certRow g14770s0 on (rg14770 0) using bank tags [1,1,6,6,1]
certRow g14770s1 on (rg14770 1) using bank tags [1,1,1,1,1,1,1,28,28,1,1,28,28,28]
certRow g14770s2 on (rg14770 2) using bank tags []
certRow g14770s3 on (rg14770 3) using bank tags [13,13,13,13,13,13,13,28,28]
certRow g14770s4 on (rg14770 4) using bank tags []
certRow g14770s5 on (rg14770 5) using bank tags [13,13,28,9,9,28]
certRow g14770s6 on (rg14770 6) using bank tags [1,1,22,6]
certRow g14770s7 on (rg14770 7) using bank tags [28,28,28,28,28]
theorem g14770 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [2,0,0,0,0,2]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [2,0,0,0,0,2] (.cons (g14770s0) (.cons (g14770s1) (.cons (g14770s2) (.cons (g14770s3) (.cons (g14770s4) (.cons (g14770s5) (.cons (g14770s6) (.cons (g14770s7) .nil))))))))
certRow g14771 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [2,0,0,0,0,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
