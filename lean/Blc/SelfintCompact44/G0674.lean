import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13379 (i : Nat) := Split43.five 24 i 8 5 4 true 3 2 4 [0,2,0,1]
certRow g13379s0 on (rg13379 0) using bank tags []
certRow g13379s1 on (rg13379 1) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,14,14,15,1,1,57,14,14,15,26,1,1,57,1,14,1,26,1,1,57,14,1,1,1,28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,15,14,26,1,1,57,14,15,32,26,1,1,57,1,14,1,1,1,1,57,15,1,1,1]
certRow g13379s2 on (rg13379 2) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,22,14,1,1,1,57,14,6,6,22,1,1,57,1,14,6,32,1,1,57,1,1,1,1]
certRow g13379s3 on (rg13379 3) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,22,14,1,1,1,57,14,22,6,32,1,1,57,1,14,1,6,1,1,57,1,1,1,1,28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,22,14,1,1,1,57,14,22,6,6,1,1,57,1,14,1,36,1,1,57,1,1,1,1]
certRow g13379s4 on (rg13379 4) using bank tags []
certRow g13379s5 on (rg13379 5) using bank tags [28,59,28,59,28,59,13,14,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,6,14,32,1,1,57,15,1,22,1,1,1,57,1,6,6,6,1,1,57,26,1,1,1,28,59,28,59,28,59,13,14,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,6,14,31,1,1,57,15,1,32,15,1,1,57,1,6,6,6,1,1,57,30,1,1,1]
certRow g13379s6 on (rg13379 6) using bank tags []
certRow g13379s7 on (rg13379 7) using bank tags []
certRow g13379s8 on (rg13379 8) using bank tags []
certRow g13379s9 on (rg13379 9) using bank tags []
certRow g13379s10 on (rg13379 10) using bank tags []
certRow g13379s11 on (rg13379 11) using bank tags []
certRow g13379s12 on (rg13379 12) using bank tags []
certRow g13379s13 on (rg13379 13) using bank tags []
certRow g13379s14 on (rg13379 14) using bank tags []
certRow g13379s15 on (rg13379 15) using bank tags []
certRow g13379s16 on (rg13379 16) using bank tags []
certRow g13379s17 on (rg13379 17) using bank tags [55,17,27,57,1,1,6,1,1,1,1,1,16,30,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,22,32,6,6,22,6,1,0,12,6,1,1,1,1,6,1,22,1,1,6,6,14,1,6,1,1,1,1,6,1,6,1,6,1,6,1,6,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,14,27,57,11,15,24,26,11,14,1,1,0,1,28,59,14,14,15,15,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,26,32,32,6,12,30,32,0,12,0,1,1,1,1,26,1,6,1,1,6,12,14,1,6,1,1,1,1,26,1,6,1,6,26,12,1,12,1,1,1,1,1,26,1,1,1,1,1,1,1,1,1] except [Floor44.e1195796860726,Floor44.e1400258628458,Floor44.e1195796859862,Floor44.e1192575634390]
certRow g13379s18 on (rg13379 18) using bank tags []
certRow g13379s19 on (rg13379 19) using bank tags []
certRow g13379s20 on (rg13379 20) using bank tags []
certRow g13379s21 on (rg13379 21) using bank tags []
certRow g13379s22 on (rg13379 22) using bank tags []
certRow g13379s23 on (rg13379 23) using bank tags []
theorem g13379 (hard : BadRow [Floor44.e1195796860726,Floor44.e1400258628458,Floor44.e1195796859862,Floor44.e1192575634390]) : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 4 [0,2,0,1]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 3 2 4 [0,2,0,1] (.cons (g13379s0) (.cons (g13379s1) (.cons (g13379s2) (.cons (g13379s3) (.cons (g13379s4) (.cons (g13379s5) (.cons (g13379s6) (.cons (g13379s7) (.cons (g13379s8) (.cons (g13379s9) (.cons (g13379s10) (.cons (g13379s11) (.cons (g13379s12) (.cons (g13379s13) (.cons (g13379s14) (.cons (g13379s15) (.cons (g13379s16) (.cons (g13379s17 (.cons (hard.get (by decide : Floor44.e1195796860726 ∈ [Floor44.e1195796860726,Floor44.e1400258628458,Floor44.e1195796859862,Floor44.e1192575634390])) (.cons (hard.get (by decide : Floor44.e1400258628458 ∈ [Floor44.e1195796860726,Floor44.e1400258628458,Floor44.e1195796859862,Floor44.e1192575634390])) (.cons (hard.get (by decide : Floor44.e1195796859862 ∈ [Floor44.e1195796860726,Floor44.e1400258628458,Floor44.e1195796859862,Floor44.e1192575634390])) (.cons (hard.get (by decide : Floor44.e1192575634390 ∈ [Floor44.e1195796860726,Floor44.e1400258628458,Floor44.e1195796859862,Floor44.e1192575634390])) .nil))))) (.cons (g13379s18) (.cons (g13379s19) (.cons (g13379s20) (.cons (g13379s21) (.cons (g13379s22) (.cons (g13379s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
