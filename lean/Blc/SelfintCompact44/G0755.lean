import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14031 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 5 [1,2,0,0,1]
certRow g14031s0 on (rg14031 0) using bank tags []
certRow g14031s1 on (rg14031 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g14031s2 on (rg14031 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14031s3 on (rg14031 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14031s4 on (rg14031 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g14031s5 on (rg14031 5) using bank tags []
certRow g14031s6 on (rg14031 6) using bank tags [6,1,1,1,1,1,19,1,1,1,1,1,19,1,1,1,1,1,19,1,1,1,1,1,19,1,1,1,1,1]
certRow g14031s7 on (rg14031 7) using bank tags []
certRow g14031s8 on (rg14031 8) using bank tags []
certRow g14031s9 on (rg14031 9) using bank tags []
certRow g14031s10 on (rg14031 10) using bank tags [28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1]
certRow g14031s11 on (rg14031 11) using bank tags []
theorem g14031 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [1,2,0,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 5 [1,2,0,0,1] (.cons (g14031s0) (.cons (g14031s1) (.cons (g14031s2) (.cons (g14031s3) (.cons (g14031s4) (.cons (g14031s5) (.cons (g14031s6) (.cons (g14031s7) (.cons (g14031s8) (.cons (g14031s9) (.cons (g14031s10) (.cons (g14031s11) .nil))))))))))))
private abbrev rg14032 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 5 [1,2,0,1,0]
certRow g14032s0 on (rg14032 0) using bank tags []
certRow g14032s1 on (rg14032 1) using bank tags [28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13]
certRow g14032s2 on (rg14032 2) using bank tags [28,28,28,6,28,28,28,6]
certRow g14032s3 on (rg14032 3) using bank tags [28,28,28,6,28,28,28,6]
certRow g14032s4 on (rg14032 4) using bank tags [28,28,28,13,28,28,28,13,28,28,28,6,28,28,28,0,28,28,28,6] except [Floor44.e4778689417050]
certRow g14032s5 on (rg14032 5) using bank tags []
certRow g14032s6 on (rg14032 6) using bank tags [35,29,29,13,29,35,29,27,6,29,29,13,29,6,29,27,19,19,29,13,19,19,29,27,6,29,29,13,29,6,29,27,19,19,29,13,19,19,29,27]
certRow g14032s7 on (rg14032 7) using bank tags [35,29,29,85,29,35,29,22,19,19,29,0,19,19,29,68] except [Floor44.e4836676087642]
certRow g14032s8 on (rg14032 8) using bank tags []
certRow g14032s9 on (rg14032 9) using bank tags []
certRow g14032s10 on (rg14032 10) using bank tags []
certRow g14032s11 on (rg14032 11) using bank tags []
theorem g14032 (hard : BadRow [Floor44.e4778689417050,Floor44.e4836676087642]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,2,0,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 5 [1,2,0,1,0] (.cons (g14032s0) (.cons (g14032s1) (.cons (g14032s2) (.cons (g14032s3) (.cons (g14032s4 (.cons (hard.get (by decide : Floor44.e4778689417050 ∈ [Floor44.e4778689417050,Floor44.e4836676087642])) .nil)) (.cons (g14032s5) (.cons (g14032s6) (.cons (g14032s7 (.cons (hard.get (by decide : Floor44.e4836676087642 ∈ [Floor44.e4778689417050,Floor44.e4836676087642])) .nil)) (.cons (g14032s8) (.cons (g14032s9) (.cons (g14032s10) (.cons (g14032s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
