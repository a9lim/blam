import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13385 (i : Nat) := Split43.five 24 i 8 5 4 true 3 2 4 [1,0,0,2]
certRow g13385s0 on (rg13385 0) using bank tags []
certRow g13385s1 on (rg13385 1) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,11,14,11,1,1,57,14,6,13,26,1,1,57,1,13,13,26,1,1,57,14,1,1,1,28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,11,14,11,1,1,57,14,6,13,32,1,1,57,1,13,13,26,1,1,57,14,1,1,1]
certRow g13385s2 on (rg13385 2) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,22,14,24,1,1,57,14,1,11,1,1,1,57,1,13,11,22,1,1,57,15,1,1,1]
certRow g13385s3 on (rg13385 3) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,32,14,24,1,1,57,14,1,11,1,1,1,57,1,13,11,32,1,1,57,15,1,1,1,28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,24,14,6,1,1,57,14,1,22,1,1,1,57,1,13,6,6,1,1,57,1,1,1,1]
certRow g13385s4 on (rg13385 4) using bank tags []
certRow g13385s5 on (rg13385 5) using bank tags []
certRow g13385s6 on (rg13385 6) using bank tags []
certRow g13385s7 on (rg13385 7) using bank tags []
certRow g13385s8 on (rg13385 8) using bank tags []
certRow g13385s9 on (rg13385 9) using bank tags []
certRow g13385s10 on (rg13385 10) using bank tags []
certRow g13385s11 on (rg13385 11) using bank tags []
certRow g13385s12 on (rg13385 12) using bank tags []
certRow g13385s13 on (rg13385 13) using bank tags []
certRow g13385s14 on (rg13385 14) using bank tags []
certRow g13385s15 on (rg13385 15) using bank tags []
certRow g13385s16 on (rg13385 16) using bank tags []
certRow g13385s17 on (rg13385 17) using bank tags []
certRow g13385s18 on (rg13385 18) using bank tags []
certRow g13385s19 on (rg13385 19) using bank tags []
certRow g13385s20 on (rg13385 20) using bank tags []
certRow g13385s21 on (rg13385 21) using bank tags []
certRow g13385s22 on (rg13385 22) using bank tags []
certRow g13385s23 on (rg13385 23) using bank tags []
theorem g13385 : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 4 [1,0,0,2]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 3 2 4 [1,0,0,2] (.cons (g13385s0) (.cons (g13385s1) (.cons (g13385s2) (.cons (g13385s3) (.cons (g13385s4) (.cons (g13385s5) (.cons (g13385s6) (.cons (g13385s7) (.cons (g13385s8) (.cons (g13385s9) (.cons (g13385s10) (.cons (g13385s11) (.cons (g13385s12) (.cons (g13385s13) (.cons (g13385s14) (.cons (g13385s15) (.cons (g13385s16) (.cons (g13385s17) (.cons (g13385s18) (.cons (g13385s19) (.cons (g13385s20) (.cons (g13385s21) (.cons (g13385s22) (.cons (g13385s23) .nil))))))))))))))))))))))))
certRow g13386 on (Grammar43.fiveRow 8 5 4 false 3 2 4 [1,0,1,1]) using bank tags []
certRow g13387 on (Grammar43.fiveRow 8 5 4 true 3 2 4 [1,0,1,1]) using bank tags []
certRow g13388 on (Grammar43.fiveRow 8 5 4 false 3 2 4 [1,0,2,0]) using bank tags [28,28,57,1,28,28,57,11,13,28,28,13,28,28,57,1,28,28,57,11,13,28,28,13,28,28,57,1,28,28,57,24,11,28,28,11,28,28,57,1,28,28,57,11,13,28,28,13,28,28,57,1,28,28,57,24,11,28,28,11]
end Blc.SelfintSingleObject.Compact44
