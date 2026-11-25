import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14743 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,1,0,0,1,1]) using bank tags []
private abbrev rg14744 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [1,1,0,0,2,0]
certRow g14744s0 on (rg14744 0) using bank tags []
certRow g14744s1 on (rg14744 1) using bank tags [28,28,28,28]
certRow g14744s2 on (rg14744 2) using bank tags [28,28,28,28,28,28]
certRow g14744s3 on (rg14744 3) using bank tags [28,28,28,28,28]
certRow g14744s4 on (rg14744 4) using bank tags [1,1,1,28,28,28,1,28,28,28,28,28,28]
certRow g14744s5 on (rg14744 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14744s6 on (rg14744 6) using bank tags [28,28,28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28,28,28]
certRow g14744s7 on (rg14744 7) using bank tags []
certRow g14744s8 on (rg14744 8) using bank tags [13,13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,1,1,1,1,1,1,6,6,6,6,6,6,6,6,6,6,1,1,1,1,1,1,1,1,1,1]
certRow g14744s9 on (rg14744 9) using bank tags [28,28,28,1,28,28,28,28,28,28,28,28,28,28,1,28,28,28,28,28,28,28,28,28,28,1,28,28,28,1,1,1,1,1]
certRow g14744s10 on (rg14744 10) using bank tags []
certRow g14744s11 on (rg14744 11) using bank tags [28,28,28,1,28,28,28,28,23,23,23,23,23,1,1,1,1,1]
theorem g14744 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,1,0,0,2,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [1,1,0,0,2,0] (.cons (g14744s0) (.cons (g14744s1) (.cons (g14744s2) (.cons (g14744s3) (.cons (g14744s4) (.cons (g14744s5) (.cons (g14744s6) (.cons (g14744s7) (.cons (g14744s8) (.cons (g14744s9) (.cons (g14744s10) (.cons (g14744s11) .nil))))))))))))
certRow g14745 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,1,0,0,2,0]) using bank tags []
certRow g14746 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,1,0,1,0,1]) using bank tags []
certRow g14747 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,1,0,1,0,1]) using bank tags []
certRow g14748 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,1,0,1,1,0]) using bank tags []
certRow g14749 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,1,0,1,1,0]) using bank tags []
private abbrev rg14750 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [1,1,0,2,0,0]
certRow g14750s0 on (rg14750 0) using bank tags []
certRow g14750s1 on (rg14750 1) using bank tags [206,28,28,28,206,28,28,28]
certRow g14750s2 on (rg14750 2) using bank tags [28,28,28,28,28,28]
certRow g14750s3 on (rg14750 3) using bank tags [1,28,1,28,1,28,1,28,1,28,1,1,1,1]
certRow g14750s4 on (rg14750 4) using bank tags [28]
certRow g14750s5 on (rg14750 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14750s6 on (rg14750 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14750s7 on (rg14750 7) using bank tags [66,0,66,0] except [Floor44.e4845826448282,Floor44.e4845826403226]
certRow g14750s8 on (rg14750 8) using bank tags [13,13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,1,1,1,1,1,1,1,1,6,6,6,6,6,6,1,6,1,6,1,1,1,1,1,1,1,1,1,1,1]
certRow g14750s9 on (rg14750 9) using bank tags [206,28,28,28,1,28,28,28,28,28,206,28,28,28,28,28,1,28,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,1,1,1,1]
certRow g14750s10 on (rg14750 10) using bank tags []
certRow g14750s11 on (rg14750 11) using bank tags [206,28,28,28,1,28,28,28,28,28,23,23,23,23,23,1,1,1,1,1,1,1,1,28,28]
theorem g14750 (hard : BadRow [Floor44.e4845826448282,Floor44.e4845826403226]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,1,0,2,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [1,1,0,2,0,0] (.cons (g14750s0) (.cons (g14750s1) (.cons (g14750s2) (.cons (g14750s3) (.cons (g14750s4) (.cons (g14750s5) (.cons (g14750s6) (.cons (g14750s7 (.cons (hard.get (by decide : Floor44.e4845826448282 ∈ [Floor44.e4845826448282,Floor44.e4845826403226])) (.cons (hard.get (by decide : Floor44.e4845826403226 ∈ [Floor44.e4845826448282,Floor44.e4845826403226])) .nil))) (.cons (g14750s8) (.cons (g14750s9) (.cons (g14750s10) (.cons (g14750s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
