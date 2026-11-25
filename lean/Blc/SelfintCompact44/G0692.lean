import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13429 (i : Nat) := Split43.five 24 i 8 5 4 true 3 2 5 [0,1,0,2,0]
certRow g13429s0 on (rg13429 0) using bank tags []
certRow g13429s1 on (rg13429 1) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13429s2 on (rg13429 2) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13429s3 on (rg13429 3) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13429s4 on (rg13429 4) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13429s5 on (rg13429 5) using bank tags []
certRow g13429s6 on (rg13429 6) using bank tags [28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1]
certRow g13429s7 on (rg13429 7) using bank tags []
certRow g13429s8 on (rg13429 8) using bank tags []
certRow g13429s9 on (rg13429 9) using bank tags []
certRow g13429s10 on (rg13429 10) using bank tags []
certRow g13429s11 on (rg13429 11) using bank tags []
certRow g13429s12 on (rg13429 12) using bank tags []
certRow g13429s13 on (rg13429 13) using bank tags []
certRow g13429s14 on (rg13429 14) using bank tags []
certRow g13429s15 on (rg13429 15) using bank tags []
certRow g13429s16 on (rg13429 16) using bank tags []
certRow g13429s17 on (rg13429 17) using bank tags []
certRow g13429s18 on (rg13429 18) using bank tags []
certRow g13429s19 on (rg13429 19) using bank tags [28,28,28,0,59,1,28,28,28,0,59,1,7,14,7,0,1,1,10,28,1,1,1,1,7,14,7,0,1,1,1,28,10,1,1,1] except [Floor44.e1197493467578,Floor44.e1197493464762,Floor44.e1196965247418,Floor44.e1196965244602]
certRow g13429s20 on (rg13429 20) using bank tags []
certRow g13429s21 on (rg13429 21) using bank tags []
certRow g13429s22 on (rg13429 22) using bank tags [9,1,7,6,15,1,1,1,15,1,1,1,9,1,7,6,6,1,1,1,1,1,1,1,9,1,7,6,15,1,1,1,10,1,1,1,9,1,7,6,1,1,1,1,10,1,1,1,9,1,7,6,1,1,1,1,10,1,1,1]
certRow g13429s23 on (rg13429 23) using bank tags []
theorem g13429 (hard : BadRow [Floor44.e1197493467578,Floor44.e1197493464762,Floor44.e1196965247418,Floor44.e1196965244602]) : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,1,0,2,0]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 3 2 5 [0,1,0,2,0] (.cons (g13429s0) (.cons (g13429s1) (.cons (g13429s2) (.cons (g13429s3) (.cons (g13429s4) (.cons (g13429s5) (.cons (g13429s6) (.cons (g13429s7) (.cons (g13429s8) (.cons (g13429s9) (.cons (g13429s10) (.cons (g13429s11) (.cons (g13429s12) (.cons (g13429s13) (.cons (g13429s14) (.cons (g13429s15) (.cons (g13429s16) (.cons (g13429s17) (.cons (g13429s18) (.cons (g13429s19 (.cons (hard.get (by decide : Floor44.e1197493467578 ∈ [Floor44.e1197493467578,Floor44.e1197493464762,Floor44.e1196965247418,Floor44.e1196965244602])) (.cons (hard.get (by decide : Floor44.e1197493464762 ∈ [Floor44.e1197493467578,Floor44.e1197493464762,Floor44.e1196965247418,Floor44.e1196965244602])) (.cons (hard.get (by decide : Floor44.e1196965247418 ∈ [Floor44.e1197493467578,Floor44.e1197493464762,Floor44.e1196965247418,Floor44.e1196965244602])) (.cons (hard.get (by decide : Floor44.e1196965244602 ∈ [Floor44.e1197493467578,Floor44.e1197493464762,Floor44.e1196965247418,Floor44.e1196965244602])) .nil))))) (.cons (g13429s20) (.cons (g13429s21) (.cons (g13429s22) (.cons (g13429s23) .nil))))))))))))))))))))))))
certRow g13430 on (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,1,1,0,1]) using bank tags []
certRow g13431 on (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,1,1,0,1]) using bank tags []
certRow g13432 on (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,1,1,1,0]) using bank tags []
certRow g13433 on (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,1,1,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
