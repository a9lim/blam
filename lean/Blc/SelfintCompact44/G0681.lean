import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13399 (i : Nat) := Split43.five 24 i 8 5 4 true 3 2 4 [2,0,1,0]
certRow g13399s0 on (rg13399 0) using bank tags []
certRow g13399s1 on (rg13399 1) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,27,27,13,13,11,1,1,27,13,13,11,24,1,1,57,1,14,6,26,1,1,57,14,1,1,1,28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,27,27,13,13,11,1,1,27,13,13,11,18,1,1,57,1,14,6,32,1,1,57,14,1,1,1]
certRow g13399s2 on (rg13399 2) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,27,27,11,13,24,1,1,27,13,11,6,16,1,1,57,1,14,1,1,1,1,57,15,1,1,1]
certRow g13399s3 on (rg13399 3) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,27,27,13,13,11,1,1,27,13,13,11,16,1,1,57,1,14,1,1,1,1,57,14,1,1,1,28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,27,27,11,13,24,1,1,27,13,11,6,36,1,1,57,1,14,1,1,1,1,57,15,1,1,1]
certRow g13399s4 on (rg13399 4) using bank tags []
certRow g13399s5 on (rg13399 5) using bank tags []
certRow g13399s6 on (rg13399 6) using bank tags []
certRow g13399s7 on (rg13399 7) using bank tags []
certRow g13399s8 on (rg13399 8) using bank tags []
certRow g13399s9 on (rg13399 9) using bank tags []
certRow g13399s10 on (rg13399 10) using bank tags []
certRow g13399s11 on (rg13399 11) using bank tags []
certRow g13399s12 on (rg13399 12) using bank tags []
certRow g13399s13 on (rg13399 13) using bank tags []
certRow g13399s14 on (rg13399 14) using bank tags []
certRow g13399s15 on (rg13399 15) using bank tags []
certRow g13399s16 on (rg13399 16) using bank tags []
certRow g13399s17 on (rg13399 17) using bank tags []
certRow g13399s18 on (rg13399 18) using bank tags []
certRow g13399s19 on (rg13399 19) using bank tags []
certRow g13399s20 on (rg13399 20) using bank tags []
certRow g13399s21 on (rg13399 21) using bank tags []
certRow g13399s22 on (rg13399 22) using bank tags []
certRow g13399s23 on (rg13399 23) using bank tags []
theorem g13399 : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 4 [2,0,1,0]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 3 2 4 [2,0,1,0] (.cons (g13399s0) (.cons (g13399s1) (.cons (g13399s2) (.cons (g13399s3) (.cons (g13399s4) (.cons (g13399s5) (.cons (g13399s6) (.cons (g13399s7) (.cons (g13399s8) (.cons (g13399s9) (.cons (g13399s10) (.cons (g13399s11) (.cons (g13399s12) (.cons (g13399s13) (.cons (g13399s14) (.cons (g13399s15) (.cons (g13399s16) (.cons (g13399s17) (.cons (g13399s18) (.cons (g13399s19) (.cons (g13399s20) (.cons (g13399s21) (.cons (g13399s22) (.cons (g13399s23) .nil))))))))))))))))))))))))
certRow g13400 on (Grammar43.fiveRow 8 5 4 false 3 2 4 [2,1,0,0]) using bank tags [28,28,27,13,28,28,27,13,24,28,28,11,28,28,27,13,28,28,27,13,6,28,28,11,28,28,27,13,28,28,27,13,24,28,28,11]
end Blc.SelfintSingleObject.Compact44
