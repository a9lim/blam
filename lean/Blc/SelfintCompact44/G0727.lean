import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13904 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 4 [1,2,1,0]
certRow g13904s0 on (rg13904 0) using bank tags []
certRow g13904s1 on (rg13904 1) using bank tags [11,26,6,6,57,57,57,26,6,6,6,11,26,1,1,24,32,19,11,26,31,6,57,57,57,26,31,6,6,11,26,26,30,16,32,19]
certRow g13904s2 on (rg13904 2) using bank tags [11,22,30,22,57,57,57,30,30,22,6,11,22,6,6,24,6,19]
certRow g13904s3 on (rg13904 3) using bank tags []
certRow g13904s4 on (rg13904 4) using bank tags []
certRow g13904s5 on (rg13904 5) using bank tags [29,35,29,35,6,35,29,29,29,6,29,86,29,6,29,22,29,6,29,22,29,6,29,35,29,35,29,0,29,45,29,22,29,6,63,19] except [Floor44.e4777782480698]
certRow g13904s6 on (rg13904 6) using bank tags []
certRow g13904s7 on (rg13904 7) using bank tags []
certRow g13904s8 on (rg13904 8) using bank tags []
certRow g13904s9 on (rg13904 9) using bank tags []
certRow g13904s10 on (rg13904 10) using bank tags []
certRow g13904s11 on (rg13904 11) using bank tags []
theorem g13904 (hard : BadRow [Floor44.e4777782480698]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 4 [1,2,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 4 [1,2,1,0] (.cons (g13904s0) (.cons (g13904s1) (.cons (g13904s2) (.cons (g13904s3) (.cons (g13904s4) (.cons (g13904s5 (.cons (hard.get (by decide : Floor44.e4777782480698 ∈ [Floor44.e4777782480698])) .nil)) (.cons (g13904s6) (.cons (g13904s7) (.cons (g13904s8) (.cons (g13904s9) (.cons (g13904s10) (.cons (g13904s11) .nil))))))))))))
private abbrev rg13905 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 4 [1,2,1,0]
certRow g13905s0 on (rg13905 0) using bank tags []
certRow g13905s1 on (rg13905 1) using bank tags [28,59,59,59,1,1,1,1,14,57,26,15,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,59,59,59,1,1,1,1,14,57,26,15,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13905s2 on (rg13905 2) using bank tags [28,59,59,59,1,1,1,1,14,57,6,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13905s3 on (rg13905 3) using bank tags []
certRow g13905s4 on (rg13905 4) using bank tags []
certRow g13905s5 on (rg13905 5) using bank tags [6,1,1,1,1,1,1,1,29,12,6,1,29,12,6,1,3,1,1,1,6,1,1,1,1,1,60,28,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13905s6 on (rg13905 6) using bank tags []
certRow g13905s7 on (rg13905 7) using bank tags []
certRow g13905s8 on (rg13905 8) using bank tags []
certRow g13905s9 on (rg13905 9) using bank tags []
certRow g13905s10 on (rg13905 10) using bank tags []
certRow g13905s11 on (rg13905 11) using bank tags []
theorem g13905 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 4 [1,2,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 4 [1,2,1,0] (.cons (g13905s0) (.cons (g13905s1) (.cons (g13905s2) (.cons (g13905s3) (.cons (g13905s4) (.cons (g13905s5) (.cons (g13905s6) (.cons (g13905s7) (.cons (g13905s8) (.cons (g13905s9) (.cons (g13905s10) (.cons (g13905s11) .nil))))))))))))
certRow g13906 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [1,3,0,0]) using bank tags []
certRow g13907 on (Grammar43.fiveRow 8 5 4 true 4 2 4 [1,3,0,0]) using bank tags []
certRow g13908 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [2,0,0,2]) using bank tags []
certRow g13909 on (Grammar43.fiveRow 8 5 4 true 4 2 4 [2,0,0,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
