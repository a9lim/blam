import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14724 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [1,0,1,0,2,0]
certRow g14724s0 on (rg14724 0) using bank tags [28,28,28,28,28]
certRow g14724s1 on (rg14724 1) using bank tags [28,28,28,28]
certRow g14724s2 on (rg14724 2) using bank tags [28,28,28,28,1,1,1,1,1,39,1,39,1,1,1]
certRow g14724s3 on (rg14724 3) using bank tags [28,28,28,28,28]
certRow g14724s4 on (rg14724 4) using bank tags [1,1,28,28,28,28,28,28,28,28,28,28,13,13,13,13,13]
certRow g14724s5 on (rg14724 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14724s6 on (rg14724 6) using bank tags [28,28,28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28,28,28,28]
certRow g14724s7 on (rg14724 7) using bank tags []
certRow g14724s8 on (rg14724 8) using bank tags [13,13,13,13,13,13,13,13,13,13,13,13,13,13,35,35,19,35,19,35,19,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1,1,28,28]
certRow g14724s9 on (rg14724 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,6,6,6,6,6,1,1,1,1]
certRow g14724s10 on (rg14724 10) using bank tags []
certRow g14724s11 on (rg14724 11) using bank tags [28,28,28,28,28,28,28,23,23,23,23,23,62,19,6,6,28,28,28,28,6,6]
theorem g14724 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,1,0,2,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [1,0,1,0,2,0] (.cons (g14724s0) (.cons (g14724s1) (.cons (g14724s2) (.cons (g14724s3) (.cons (g14724s4) (.cons (g14724s5) (.cons (g14724s6) (.cons (g14724s7) (.cons (g14724s8) (.cons (g14724s9) (.cons (g14724s10) (.cons (g14724s11) .nil))))))))))))
certRow g14725 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,1,0,2,0]) using bank tags []
certRow g14726 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,1,1,0,1]) using bank tags []
certRow g14727 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,1,1,0,1]) using bank tags []
certRow g14728 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,1,1,1,0]) using bank tags []
certRow g14729 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,1,1,1,0]) using bank tags []
private abbrev rg14730 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [1,0,1,2,0,0]
certRow g14730s0 on (rg14730 0) using bank tags [28,28,28,28,28]
certRow g14730s1 on (rg14730 1) using bank tags [206,28,28,28,206,28,28,28]
certRow g14730s2 on (rg14730 2) using bank tags [28,28,28,28,1,1,1,1,1,1,1]
certRow g14730s3 on (rg14730 3) using bank tags [1,28,1,28,1,28,1,28,1,28,6,6]
certRow g14730s4 on (rg14730 4) using bank tags [28,13,13,13]
certRow g14730s5 on (rg14730 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14730s6 on (rg14730 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14730s7 on (rg14730 7) using bank tags [66,0] except [Floor44.e4845826399130]
certRow g14730s8 on (rg14730 8) using bank tags [13,13,13,13,13,13,13,13,13,35,35,6,35,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,1,28]
certRow g14730s9 on (rg14730 9) using bank tags [206,28,28,28,1,28,28,28,28,28,206,28,28,28,1,28,1,28,28,28,28,28,28,28,28,28,28,28,6,6,6,1,1,6]
certRow g14730s10 on (rg14730 10) using bank tags []
certRow g14730s11 on (rg14730 11) using bank tags [206,28,28,28,1,28,28,28,28,28,23,23,23,6,6,6,28,28,6,6,28]
theorem g14730 (hard : BadRow [Floor44.e4845826399130]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,1,2,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [1,0,1,2,0,0] (.cons (g14730s0) (.cons (g14730s1) (.cons (g14730s2) (.cons (g14730s3) (.cons (g14730s4) (.cons (g14730s5) (.cons (g14730s6) (.cons (g14730s7 (.cons (hard.get (by decide : Floor44.e4845826399130 ∈ [Floor44.e4845826399130])) .nil)) (.cons (g14730s8) (.cons (g14730s9) (.cons (g14730s10) (.cons (g14730s11) .nil))))))))))))
certRow g14731 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,1,2,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
