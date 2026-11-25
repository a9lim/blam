import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14022 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 5 [1,1,0,2,0]
certRow g14022s0 on (rg14022 0) using bank tags []
certRow g14022s1 on (rg14022 1) using bank tags [28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13]
certRow g14022s2 on (rg14022 2) using bank tags [28,28,28,13,28,28,28,13]
certRow g14022s3 on (rg14022 3) using bank tags [28,28,28,13,28,28,28,13]
certRow g14022s4 on (rg14022 4) using bank tags [28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13]
certRow g14022s5 on (rg14022 5) using bank tags []
certRow g14022s6 on (rg14022 6) using bank tags [6,29,29,13,29,6,29,27,6,29,29,13,29,6,29,27,6,29,29,13,29,6,29,27,6,29,29,13,29,6,29,27,6,29,29,13,29,6,29,27]
certRow g14022s7 on (rg14022 7) using bank tags [40,29,29,6,29,40,29,6,40,29,29,6,29,40,29,75]
certRow g14022s8 on (rg14022 8) using bank tags []
certRow g14022s9 on (rg14022 9) using bank tags []
certRow g14022s10 on (rg14022 10) using bank tags []
certRow g14022s11 on (rg14022 11) using bank tags []
theorem g14022 : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,1,0,2,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 5 [1,1,0,2,0] (.cons (g14022s0) (.cons (g14022s1) (.cons (g14022s2) (.cons (g14022s3) (.cons (g14022s4) (.cons (g14022s5) (.cons (g14022s6) (.cons (g14022s7) (.cons (g14022s8) (.cons (g14022s9) (.cons (g14022s10) (.cons (g14022s11) .nil))))))))))))
private abbrev rg14023 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 5 [1,1,0,2,0]
certRow g14023s0 on (rg14023 0) using bank tags []
certRow g14023s1 on (rg14023 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g14023s2 on (rg14023 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14023s3 on (rg14023 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14023s4 on (rg14023 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g14023s5 on (rg14023 5) using bank tags []
certRow g14023s6 on (rg14023 6) using bank tags [6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1]
certRow g14023s7 on (rg14023 7) using bank tags [6,1,1,1,1,1,6,1,1,1,1,1,1,1,1,1,29,1,29,1,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g14023s8 on (rg14023 8) using bank tags []
certRow g14023s9 on (rg14023 9) using bank tags []
certRow g14023s10 on (rg14023 10) using bank tags [28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1]
certRow g14023s11 on (rg14023 11) using bank tags []
theorem g14023 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [1,1,0,2,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 5 [1,1,0,2,0] (.cons (g14023s0) (.cons (g14023s1) (.cons (g14023s2) (.cons (g14023s3) (.cons (g14023s4) (.cons (g14023s5) (.cons (g14023s6) (.cons (g14023s7) (.cons (g14023s8) (.cons (g14023s9) (.cons (g14023s10) (.cons (g14023s11) .nil))))))))))))
certRow g14024 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,1,1,0,1]) using bank tags []
certRow g14025 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [1,1,1,0,1]) using bank tags []
certRow g14026 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,1,1,1,0]) using bank tags []
certRow g14027 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [1,1,1,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
