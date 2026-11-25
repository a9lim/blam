import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13381 (i : Nat) := Split43.five 24 i 8 5 4 true 3 2 4 [0,2,1,0]
certRow g13381s0 on (rg13381 0) using bank tags []
certRow g13381s1 on (rg13381 1) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,14,14,15,1,1,57,14,14,15,26,1,1,57,1,14,1,26,1,1,57,14,1,1,1]
certRow g13381s2 on (rg13381 2) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,6,14,1,1,1,57,14,6,6,6,1,1,57,1,14,6,32,1,1,57,1,1,1,1]
certRow g13381s3 on (rg13381 3) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,6,14,1,1,1,57,14,6,6,36,1,1,57,1,14,1,36,1,1,57,1,1,1,1]
certRow g13381s4 on (rg13381 4) using bank tags []
certRow g13381s5 on (rg13381 5) using bank tags [28,59,28,59,28,59,13,14,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,6,14,32,1,1,57,15,1,6,1,1,1,57,1,6,6,31,1,1,57,26,1,1,1]
certRow g13381s6 on (rg13381 6) using bank tags []
certRow g13381s7 on (rg13381 7) using bank tags []
certRow g13381s8 on (rg13381 8) using bank tags []
certRow g13381s9 on (rg13381 9) using bank tags []
certRow g13381s10 on (rg13381 10) using bank tags []
certRow g13381s11 on (rg13381 11) using bank tags []
certRow g13381s12 on (rg13381 12) using bank tags []
certRow g13381s13 on (rg13381 13) using bank tags []
certRow g13381s14 on (rg13381 14) using bank tags []
certRow g13381s15 on (rg13381 15) using bank tags []
certRow g13381s16 on (rg13381 16) using bank tags []
certRow g13381s17 on (rg13381 17) using bank tags [16,32,27,57,6,1,6,1,1,1,1,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,35,32,6,6,6,6,6,35,12,35,1,1,1,1,6,1,6,1,6,6,6,14,6,6,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13381s18 on (rg13381 18) using bank tags []
certRow g13381s19 on (rg13381 19) using bank tags []
certRow g13381s20 on (rg13381 20) using bank tags []
certRow g13381s21 on (rg13381 21) using bank tags []
certRow g13381s22 on (rg13381 22) using bank tags []
certRow g13381s23 on (rg13381 23) using bank tags []
theorem g13381 : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 4 [0,2,1,0]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 3 2 4 [0,2,1,0] (.cons (g13381s0) (.cons (g13381s1) (.cons (g13381s2) (.cons (g13381s3) (.cons (g13381s4) (.cons (g13381s5) (.cons (g13381s6) (.cons (g13381s7) (.cons (g13381s8) (.cons (g13381s9) (.cons (g13381s10) (.cons (g13381s11) (.cons (g13381s12) (.cons (g13381s13) (.cons (g13381s14) (.cons (g13381s15) (.cons (g13381s16) (.cons (g13381s17) (.cons (g13381s18) (.cons (g13381s19) (.cons (g13381s20) (.cons (g13381s21) (.cons (g13381s22) (.cons (g13381s23) .nil))))))))))))))))))))))))
certRow g13382 on (Grammar43.fiveRow 8 5 4 false 3 2 4 [0,3,0,0]) using bank tags []
certRow g13383 on (Grammar43.fiveRow 8 5 4 true 3 2 4 [0,3,0,0]) using bank tags []
certRow g13384 on (Grammar43.fiveRow 8 5 4 false 3 2 4 [1,0,0,2]) using bank tags [28,28,57,1,28,28,57,11,13,28,28,13,28,28,57,1,28,28,57,11,13,28,28,13,28,28,57,1,28,28,57,24,11,28,28,11,28,28,57,1,28,28,57,24,11,28,28,11,28,28,57,1,28,28,57,6,6,28,28,6]
end Blc.SelfintSingleObject.Compact44
