import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13377 (i : Nat) := Split43.five 24 i 8 5 4 true 3 2 4 [0,1,2,0]
certRow g13377s0 on (rg13377 0) using bank tags []
certRow g13377s1 on (rg13377 1) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,15,14,15,1,1,57,14,1,14,26,1,1,57,1,14,14,26,1,1,57,14,1,1,1]
certRow g13377s2 on (rg13377 2) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,6,14,1,1,1,57,14,6,35,32,1,1,57,1,14,6,6,1,1,57,1,1,1,1]
certRow g13377s3 on (rg13377 3) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,6,14,1,1,1,57,14,1,22,37,1,1,57,1,14,6,37,1,1,57,1,1,1,1]
certRow g13377s4 on (rg13377 4) using bank tags []
certRow g13377s5 on (rg13377 5) using bank tags [28,59,28,59,28,59,13,14,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,57,57,6,14,32,1,1,57,15,1,26,1,1,1,57,6,6,26,30,1,1,57,26,1,1,1]
certRow g13377s6 on (rg13377 6) using bank tags []
certRow g13377s7 on (rg13377 7) using bank tags []
certRow g13377s8 on (rg13377 8) using bank tags []
certRow g13377s9 on (rg13377 9) using bank tags []
certRow g13377s10 on (rg13377 10) using bank tags []
certRow g13377s11 on (rg13377 11) using bank tags []
certRow g13377s12 on (rg13377 12) using bank tags []
certRow g13377s13 on (rg13377 13) using bank tags []
certRow g13377s14 on (rg13377 14) using bank tags []
certRow g13377s15 on (rg13377 15) using bank tags []
certRow g13377s16 on (rg13377 16) using bank tags []
certRow g13377s17 on (rg13377 17) using bank tags [7,8,27,57,7,10,16,32,49,15,1,1,1,1,28,59,15,15,26,26,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,54,32,54,6,6,31,50,22,12,22,1,1,1,1,6,1,6,1,6,6,6,14,6,6,1,1,1,1,30,1,1,1,1,32,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13377s18 on (rg13377 18) using bank tags []
certRow g13377s19 on (rg13377 19) using bank tags []
certRow g13377s20 on (rg13377 20) using bank tags []
certRow g13377s21 on (rg13377 21) using bank tags []
certRow g13377s22 on (rg13377 22) using bank tags []
certRow g13377s23 on (rg13377 23) using bank tags []
theorem g13377 : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 4 [0,1,2,0]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 3 2 4 [0,1,2,0] (.cons (g13377s0) (.cons (g13377s1) (.cons (g13377s2) (.cons (g13377s3) (.cons (g13377s4) (.cons (g13377s5) (.cons (g13377s6) (.cons (g13377s7) (.cons (g13377s8) (.cons (g13377s9) (.cons (g13377s10) (.cons (g13377s11) (.cons (g13377s12) (.cons (g13377s13) (.cons (g13377s14) (.cons (g13377s15) (.cons (g13377s16) (.cons (g13377s17) (.cons (g13377s18) (.cons (g13377s19) (.cons (g13377s20) (.cons (g13377s21) (.cons (g13377s22) (.cons (g13377s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
