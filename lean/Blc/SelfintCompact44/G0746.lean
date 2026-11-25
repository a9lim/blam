import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14003 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 5 [1,0,0,2,1]
certRow g14003s0 on (rg14003 0) using bank tags []
certRow g14003s1 on (rg14003 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g14003s2 on (rg14003 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14003s3 on (rg14003 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14003s4 on (rg14003 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g14003s5 on (rg14003 5) using bank tags []
certRow g14003s6 on (rg14003 6) using bank tags [19,1,1,1,1,1,19,1,1,1,1,1,19,1,1,1,1,1,6,1,1,1,1,1]
certRow g14003s7 on (rg14003 7) using bank tags []
certRow g14003s8 on (rg14003 8) using bank tags []
certRow g14003s9 on (rg14003 9) using bank tags []
certRow g14003s10 on (rg14003 10) using bank tags [1,1,1,1,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g14003s11 on (rg14003 11) using bank tags []
theorem g14003 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [1,0,0,2,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 5 [1,0,0,2,1] (.cons (g14003s0) (.cons (g14003s1) (.cons (g14003s2) (.cons (g14003s3) (.cons (g14003s4) (.cons (g14003s5) (.cons (g14003s6) (.cons (g14003s7) (.cons (g14003s8) (.cons (g14003s9) (.cons (g14003s10) (.cons (g14003s11) .nil))))))))))))
certRow g14004 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,0,0,3,0]) using bank tags []
certRow g14005 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [1,0,0,3,0]) using bank tags []
private abbrev rg14006 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 5 [1,0,1,0,2]
certRow g14006s0 on (rg14006 0) using bank tags []
certRow g14006s1 on (rg14006 1) using bank tags [28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13]
certRow g14006s2 on (rg14006 2) using bank tags [28,28,28,22,28,28,28,16]
certRow g14006s3 on (rg14006 3) using bank tags [28,28,28,13,28,28,28,0] except [Floor44.e4778689418862]
certRow g14006s4 on (rg14006 4) using bank tags [28,28,28,13,28,28,28,13,28,28,28,0,28,28,28,13,28,28,28,0] except [Floor44.e4778689418158,Floor44.e4778689394094]
certRow g14006s5 on (rg14006 5) using bank tags []
certRow g14006s6 on (rg14006 6) using bank tags [6,29,29,13,29,6,29,27,6,29,29,13,29,6,29,27,6,29,29,13,29,6,29,27,6,29,29,13,29,6,29,27,6,29,29,13,29,6,29,27,6,29,29,55,29,6,29,6,6,29,29,55,29,6,29,6]
certRow g14006s7 on (rg14006 7) using bank tags []
certRow g14006s8 on (rg14006 8) using bank tags []
certRow g14006s9 on (rg14006 9) using bank tags []
certRow g14006s10 on (rg14006 10) using bank tags [22,29,29,13,29,22,29,6,110,29,29,13,29,110,29,16]
certRow g14006s11 on (rg14006 11) using bank tags []
theorem g14006 (hard : BadRow [Floor44.e4778689418862,Floor44.e4778689418158,Floor44.e4778689394094]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,0,1,0,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 5 [1,0,1,0,2] (.cons (g14006s0) (.cons (g14006s1) (.cons (g14006s2) (.cons (g14006s3 (.cons (hard.get (by decide : Floor44.e4778689418862 ∈ [Floor44.e4778689418862,Floor44.e4778689418158,Floor44.e4778689394094])) .nil)) (.cons (g14006s4 (.cons (hard.get (by decide : Floor44.e4778689418158 ∈ [Floor44.e4778689418862,Floor44.e4778689418158,Floor44.e4778689394094])) (.cons (hard.get (by decide : Floor44.e4778689394094 ∈ [Floor44.e4778689418862,Floor44.e4778689418158,Floor44.e4778689394094])) .nil))) (.cons (g14006s5) (.cons (g14006s6) (.cons (g14006s7) (.cons (g14006s8) (.cons (g14006s9) (.cons (g14006s10) (.cons (g14006s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
