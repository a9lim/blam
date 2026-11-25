import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14751 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,1,0,2,0,0]) using bank tags []
certRow g14752 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,1,1,0,0,1]) using bank tags []
certRow g14753 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,1,1,0,0,1]) using bank tags []
certRow g14754 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,1,1,0,1,0]) using bank tags []
certRow g14755 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,1,1,0,1,0]) using bank tags []
certRow g14756 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,1,1,1,0,0]) using bank tags []
certRow g14757 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,1,1,1,0,0]) using bank tags []
private abbrev rg14758 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [1,1,2,0,0,0]
certRow g14758s0 on (rg14758 0) using bank tags []
certRow g14758s1 on (rg14758 1) using bank tags []
certRow g14758s2 on (rg14758 2) using bank tags []
certRow g14758s3 on (rg14758 3) using bank tags [1,28,1,28,1,28,1,1]
certRow g14758s4 on (rg14758 4) using bank tags []
certRow g14758s5 on (rg14758 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow g14758s6 on (rg14758 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14758s7 on (rg14758 7) using bank tags [66,0] except [Floor44.e4845826449050]
certRow g14758s8 on (rg14758 8) using bank tags [13,13,13,13,13,13,13,13,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,6,1,1,1,1,1,1,1]
certRow g14758s9 on (rg14758 9) using bank tags [1,28,28,28,8,28,28,28,28,206,28,28,28,1,28,28,28,1,28,1,28,28,28,28,28,28,28,28,206,28,28,28,1,28,28,28,28,28,1,1,1,1]
certRow g14758s10 on (rg14758 10) using bank tags []
certRow g14758s11 on (rg14758 11) using bank tags [1,28,28,28,8,28,28,28,28,206,28,28,28,23,23,23,1,1,1,1,1,28]
theorem g14758 (hard : BadRow [Floor44.e4845826449050]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,1,2,0,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [1,1,2,0,0,0] (.cons (g14758s0) (.cons (g14758s1) (.cons (g14758s2) (.cons (g14758s3) (.cons (g14758s4) (.cons (g14758s5) (.cons (g14758s6) (.cons (g14758s7 (.cons (hard.get (by decide : Floor44.e4845826449050 ∈ [Floor44.e4845826449050])) .nil)) (.cons (g14758s8) (.cons (g14758s9) (.cons (g14758s10) (.cons (g14758s11) .nil))))))))))))
certRow g14759 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,1,2,0,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
