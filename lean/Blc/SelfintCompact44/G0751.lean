import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14014 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 5 [1,0,2,1,0]
certRow g14014s0 on (rg14014 0) using bank tags []
certRow g14014s1 on (rg14014 1) using bank tags [28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13]
certRow g14014s2 on (rg14014 2) using bank tags [28,28,28,6,28,28,28,6]
certRow g14014s3 on (rg14014 3) using bank tags [28,28,28,6,28,28,28,6]
certRow g14014s4 on (rg14014 4) using bank tags [28,28,28,13,28,28,28,13,28,28,28,6,28,28,28,0,28,28,28,97] except [Floor44.e4778689416666]
certRow g14014s5 on (rg14014 5) using bank tags []
certRow g14014s6 on (rg14014 6) using bank tags [35,29,29,13,29,35,29,27,19,19,29,13,19,19,29,27,19,19,29,13,19,19,29,27,6,29,29,1,29,6,29,6]
certRow g14014s7 on (rg14014 7) using bank tags [19,19,29,61,19,19,29,90]
certRow g14014s8 on (rg14014 8) using bank tags []
certRow g14014s9 on (rg14014 9) using bank tags []
certRow g14014s10 on (rg14014 10) using bank tags [22,29,29,13,29,22,29,6]
certRow g14014s11 on (rg14014 11) using bank tags []
theorem g14014 (hard : BadRow [Floor44.e4778689416666]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,0,2,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 5 [1,0,2,1,0] (.cons (g14014s0) (.cons (g14014s1) (.cons (g14014s2) (.cons (g14014s3) (.cons (g14014s4 (.cons (hard.get (by decide : Floor44.e4778689416666 ∈ [Floor44.e4778689416666])) .nil)) (.cons (g14014s5) (.cons (g14014s6) (.cons (g14014s7) (.cons (g14014s8) (.cons (g14014s9) (.cons (g14014s10) (.cons (g14014s11) .nil))))))))))))
private abbrev rg14015 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 5 [1,0,2,1,0]
certRow g14015s0 on (rg14015 0) using bank tags []
certRow g14015s1 on (rg14015 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g14015s2 on (rg14015 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14015s3 on (rg14015 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14015s4 on (rg14015 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g14015s5 on (rg14015 5) using bank tags []
certRow g14015s6 on (rg14015 6) using bank tags [6,1,1,1,1,1,19,1,1,1,1,1,19,1,1,1,1,1,6,1,1,1,1,1]
certRow g14015s7 on (rg14015 7) using bank tags [19,1,1,1,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g14015s8 on (rg14015 8) using bank tags []
certRow g14015s9 on (rg14015 9) using bank tags []
certRow g14015s10 on (rg14015 10) using bank tags [1,1,1,1,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g14015s11 on (rg14015 11) using bank tags []
theorem g14015 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [1,0,2,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 5 [1,0,2,1,0] (.cons (g14015s0) (.cons (g14015s1) (.cons (g14015s2) (.cons (g14015s3) (.cons (g14015s4) (.cons (g14015s5) (.cons (g14015s6) (.cons (g14015s7) (.cons (g14015s8) (.cons (g14015s9) (.cons (g14015s10) (.cons (g14015s11) .nil))))))))))))
certRow g14016 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,0,3,0,0]) using bank tags []
certRow g14017 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [1,0,3,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
