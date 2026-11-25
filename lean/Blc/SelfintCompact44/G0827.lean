import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14764 (i : Nat) := Split43.five 24 i 8 5 4 false 4 3 6 [1,2,0,1,0,0]
certRow g14764s0 on (rg14764 0) using bank tags []
certRow g14764s1 on (rg14764 1) using bank tags []
certRow g14764s2 on (rg14764 2) using bank tags []
certRow g14764s3 on (rg14764 3) using bank tags []
certRow g14764s4 on (rg14764 4) using bank tags []
certRow g14764s5 on (rg14764 5) using bank tags []
certRow g14764s6 on (rg14764 6) using bank tags []
certRow g14764s7 on (rg14764 7) using bank tags [66,0,19,19] except [Floor44.e4845826461082]
certRow g14764s8 on (rg14764 8) using bank tags []
certRow g14764s9 on (rg14764 9) using bank tags [1,1,1,1,1,1,1,1,28,28,28,1,28,28,28,28,28,28,8,8,1,28,28,28,28,28,8,28,25,28,28,28,28,28,28,28,28,8,8,28,28,28,28,28,28,28,28,28,28]
certRow g14764s10 on (rg14764 10) using bank tags []
certRow g14764s11 on (rg14764 11) using bank tags [1,28,28,28,1,28,28,28,28,28]
certRow g14764s12 on (rg14764 12) using bank tags []
certRow g14764s13 on (rg14764 13) using bank tags [1,1,1,28,28,28,1,28,28,28]
certRow g14764s14 on (rg14764 14) using bank tags [28,28,28,28]
certRow g14764s15 on (rg14764 15) using bank tags [1,28,1,28,1,28,1,28,1,28,6,6,19,19]
certRow g14764s16 on (rg14764 16) using bank tags [28]
certRow g14764s17 on (rg14764 17) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14764s18 on (rg14764 18) using bank tags [1,15,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14764s19 on (rg14764 19) using bank tags []
certRow g14764s20 on (rg14764 20) using bank tags [13,13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,1,1,1,1,1,1,1,1,19,19,19,19,6,6,6,6,19,19,35,35,19,6,19,6,6,19,6,6,19]
certRow g14764s21 on (rg14764 21) using bank tags [35,6,19,6,19,6,19]
certRow g14764s22 on (rg14764 22) using bank tags []
certRow g14764s23 on (rg14764 23) using bank tags [23,23,23,23,23,6,62,19,6,62,19,6,19,28,28]
theorem g14764 (hard : BadRow [Floor44.e4845826461082]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,2,0,1,0,0]) :=
  Split43.five_cover 24 (by decide) 8 5 4 false 4 3 6 [1,2,0,1,0,0] (.cons (g14764s0) (.cons (g14764s1) (.cons (g14764s2) (.cons (g14764s3) (.cons (g14764s4) (.cons (g14764s5) (.cons (g14764s6) (.cons (g14764s7 (.cons (hard.get (by decide : Floor44.e4845826461082 ∈ [Floor44.e4845826461082])) .nil)) (.cons (g14764s8) (.cons (g14764s9) (.cons (g14764s10) (.cons (g14764s11) (.cons (g14764s12) (.cons (g14764s13) (.cons (g14764s14) (.cons (g14764s15) (.cons (g14764s16) (.cons (g14764s17) (.cons (g14764s18) (.cons (g14764s19) (.cons (g14764s20) (.cons (g14764s21) (.cons (g14764s22) (.cons (g14764s23) .nil))))))))))))))))))))))))
certRow g14765 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,2,0,1,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
