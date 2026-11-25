import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13439 (i : Nat) := Split43.five 24 i 8 5 4 true 3 2 5 [0,2,0,1,0]
certRow g13439s0 on (rg13439 0) using bank tags []
certRow g13439s1 on (rg13439 1) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13439s2 on (rg13439 2) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13439s3 on (rg13439 3) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13439s4 on (rg13439 4) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13439s5 on (rg13439 5) using bank tags []
certRow g13439s6 on (rg13439 6) using bank tags [28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1]
certRow g13439s7 on (rg13439 7) using bank tags []
certRow g13439s8 on (rg13439 8) using bank tags []
certRow g13439s9 on (rg13439 9) using bank tags []
certRow g13439s10 on (rg13439 10) using bank tags []
certRow g13439s11 on (rg13439 11) using bank tags []
certRow g13439s12 on (rg13439 12) using bank tags []
certRow g13439s13 on (rg13439 13) using bank tags []
certRow g13439s14 on (rg13439 14) using bank tags []
certRow g13439s15 on (rg13439 15) using bank tags []
certRow g13439s16 on (rg13439 16) using bank tags []
certRow g13439s17 on (rg13439 17) using bank tags []
certRow g13439s18 on (rg13439 18) using bank tags []
certRow g13439s19 on (rg13439 19) using bank tags [28,28,28,0,59,1,28,28,28,0,59,1,6,14,1,0,6,1,39,28,1,1,1,1,30,14,1,0,6,1,12,28,1,1,1,1] except [Floor44.e1197493468378,Floor44.e1197493464922,Floor44.e1196965248218,Floor44.e1196965244762]
certRow g13439s20 on (rg13439 20) using bank tags []
certRow g13439s21 on (rg13439 21) using bank tags []
certRow g13439s22 on (rg13439 22) using bank tags [32,1,55,6,6,1,6,1,1,1,1,1,17,1,1,6,6,1,12,1,1,1,1,1,13,1,11,6,13,1,12,1,14,1,1,1,17,1,1,6,6,1,6,1,1,1,1,1,13,1,11,6,13,1,12,1,14,1,1,1]
certRow g13439s23 on (rg13439 23) using bank tags []
theorem g13439 (hard : BadRow [Floor44.e1197493468378,Floor44.e1197493464922,Floor44.e1196965248218,Floor44.e1196965244762]) : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,2,0,1,0]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 3 2 5 [0,2,0,1,0] (.cons (g13439s0) (.cons (g13439s1) (.cons (g13439s2) (.cons (g13439s3) (.cons (g13439s4) (.cons (g13439s5) (.cons (g13439s6) (.cons (g13439s7) (.cons (g13439s8) (.cons (g13439s9) (.cons (g13439s10) (.cons (g13439s11) (.cons (g13439s12) (.cons (g13439s13) (.cons (g13439s14) (.cons (g13439s15) (.cons (g13439s16) (.cons (g13439s17) (.cons (g13439s18) (.cons (g13439s19 (.cons (hard.get (by decide : Floor44.e1197493468378 ∈ [Floor44.e1197493468378,Floor44.e1197493464922,Floor44.e1196965248218,Floor44.e1196965244762])) (.cons (hard.get (by decide : Floor44.e1197493464922 ∈ [Floor44.e1197493468378,Floor44.e1197493464922,Floor44.e1196965248218,Floor44.e1196965244762])) (.cons (hard.get (by decide : Floor44.e1196965248218 ∈ [Floor44.e1197493468378,Floor44.e1197493464922,Floor44.e1196965248218,Floor44.e1196965244762])) (.cons (hard.get (by decide : Floor44.e1196965244762 ∈ [Floor44.e1197493468378,Floor44.e1197493464922,Floor44.e1196965248218,Floor44.e1196965244762])) .nil))))) (.cons (g13439s20) (.cons (g13439s21) (.cons (g13439s22) (.cons (g13439s23) .nil))))))))))))))))))))))))
certRow g13440 on (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,2,1,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,29,29,29,6,29,29,29,35,29,29,29,29,29,6,29,29,29,6,29,29,29,29,29,6,29,29,29,6,29,29,29,29,29,0,29,29,29,0,29,29] except [Floor44.e4817622678762,Floor44.e4818159549674]
end Blc.SelfintSingleObject.Compact44
