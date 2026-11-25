import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13389 (i : Nat) := Split43.five 24 i 8 5 4 true 3 2 4 [1,0,2,0]
certRow g13389s0 on (rg13389 0) using bank tags []
certRow g13389s1 on (rg13389 1) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,11,14,11,1,1,57,14,6,13,26,1,1,57,1,13,13,26,1,1,57,14,1,1,1,28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,11,14,11,1,1,57,14,6,13,32,1,1,57,1,13,13,32,1,1,57,14,1,1,1]
certRow g13389s2 on (rg13389 2) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,22,14,24,1,1,57,14,1,11,1,1,1,57,1,13,11,6,1,1,57,15,1,1,1]
certRow g13389s3 on (rg13389 3) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,11,14,11,1,1,57,14,1,13,1,1,1,57,1,13,13,18,1,1,57,14,1,1,1,28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,6,14,24,1,1,57,14,1,11,1,1,1,57,1,13,11,6,1,1,57,15,1,1,1]
certRow g13389s4 on (rg13389 4) using bank tags []
certRow g13389s5 on (rg13389 5) using bank tags []
certRow g13389s6 on (rg13389 6) using bank tags []
certRow g13389s7 on (rg13389 7) using bank tags []
certRow g13389s8 on (rg13389 8) using bank tags []
certRow g13389s9 on (rg13389 9) using bank tags []
certRow g13389s10 on (rg13389 10) using bank tags []
certRow g13389s11 on (rg13389 11) using bank tags []
certRow g13389s12 on (rg13389 12) using bank tags []
certRow g13389s13 on (rg13389 13) using bank tags []
certRow g13389s14 on (rg13389 14) using bank tags []
certRow g13389s15 on (rg13389 15) using bank tags []
certRow g13389s16 on (rg13389 16) using bank tags []
certRow g13389s17 on (rg13389 17) using bank tags []
certRow g13389s18 on (rg13389 18) using bank tags []
certRow g13389s19 on (rg13389 19) using bank tags []
certRow g13389s20 on (rg13389 20) using bank tags []
certRow g13389s21 on (rg13389 21) using bank tags []
certRow g13389s22 on (rg13389 22) using bank tags []
certRow g13389s23 on (rg13389 23) using bank tags []
theorem g13389 : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 4 [1,0,2,0]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 3 2 4 [1,0,2,0] (.cons (g13389s0) (.cons (g13389s1) (.cons (g13389s2) (.cons (g13389s3) (.cons (g13389s4) (.cons (g13389s5) (.cons (g13389s6) (.cons (g13389s7) (.cons (g13389s8) (.cons (g13389s9) (.cons (g13389s10) (.cons (g13389s11) (.cons (g13389s12) (.cons (g13389s13) (.cons (g13389s14) (.cons (g13389s15) (.cons (g13389s16) (.cons (g13389s17) (.cons (g13389s18) (.cons (g13389s19) (.cons (g13389s20) (.cons (g13389s21) (.cons (g13389s22) (.cons (g13389s23) .nil))))))))))))))))))))))))
certRow g13390 on (Grammar43.fiveRow 8 5 4 false 3 2 4 [1,1,0,1]) using bank tags []
certRow g13391 on (Grammar43.fiveRow 8 5 4 true 3 2 4 [1,1,0,1]) using bank tags []
certRow g13392 on (Grammar43.fiveRow 8 5 4 false 3 2 4 [1,1,1,0]) using bank tags []
certRow g13393 on (Grammar43.fiveRow 8 5 4 true 3 2 4 [1,1,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
