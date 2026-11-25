import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13397 (i : Nat) := Split43.five 24 i 8 5 4 true 3 2 4 [2,0,0,1]
certRow g13397s0 on (rg13397 0) using bank tags []
certRow g13397s1 on (rg13397 1) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,27,27,13,13,11,1,1,27,13,13,11,24,1,1,57,1,14,6,26,1,1,57,14,1,1,1,28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,27,27,13,13,11,1,1,27,13,13,11,24,1,1,57,1,14,6,32,1,1,57,14,1,1,1]
certRow g13397s2 on (rg13397 2) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,27,27,11,13,24,1,1,27,13,11,6,16,1,1,57,1,14,1,1,1,1,57,15,1,1,1]
certRow g13397s3 on (rg13397 3) using bank tags [28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,27,27,11,13,24,1,1,27,13,11,32,18,1,1,57,1,14,1,1,1,1,57,15,1,1,1,28,59,28,59,28,59,27,57,59,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,27,27,6,13,6,1,1,27,13,6,24,6,1,1,57,1,14,1,1,1,1,57,1,1,1,1]
certRow g13397s4 on (rg13397 4) using bank tags []
certRow g13397s5 on (rg13397 5) using bank tags []
certRow g13397s6 on (rg13397 6) using bank tags []
certRow g13397s7 on (rg13397 7) using bank tags []
certRow g13397s8 on (rg13397 8) using bank tags []
certRow g13397s9 on (rg13397 9) using bank tags []
certRow g13397s10 on (rg13397 10) using bank tags []
certRow g13397s11 on (rg13397 11) using bank tags []
certRow g13397s12 on (rg13397 12) using bank tags []
certRow g13397s13 on (rg13397 13) using bank tags []
certRow g13397s14 on (rg13397 14) using bank tags []
certRow g13397s15 on (rg13397 15) using bank tags []
certRow g13397s16 on (rg13397 16) using bank tags []
certRow g13397s17 on (rg13397 17) using bank tags []
certRow g13397s18 on (rg13397 18) using bank tags []
certRow g13397s19 on (rg13397 19) using bank tags []
certRow g13397s20 on (rg13397 20) using bank tags []
certRow g13397s21 on (rg13397 21) using bank tags []
certRow g13397s22 on (rg13397 22) using bank tags []
certRow g13397s23 on (rg13397 23) using bank tags []
theorem g13397 : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 4 [2,0,0,1]) :=
  Split43.five_cover 24 (by decide) 8 5 4 true 3 2 4 [2,0,0,1] (.cons (g13397s0) (.cons (g13397s1) (.cons (g13397s2) (.cons (g13397s3) (.cons (g13397s4) (.cons (g13397s5) (.cons (g13397s6) (.cons (g13397s7) (.cons (g13397s8) (.cons (g13397s9) (.cons (g13397s10) (.cons (g13397s11) (.cons (g13397s12) (.cons (g13397s13) (.cons (g13397s14) (.cons (g13397s15) (.cons (g13397s16) (.cons (g13397s17) (.cons (g13397s18) (.cons (g13397s19) (.cons (g13397s20) (.cons (g13397s21) (.cons (g13397s22) (.cons (g13397s23) .nil))))))))))))))))))))))))
certRow g13398 on (Grammar43.fiveRow 8 5 4 false 3 2 4 [2,0,1,0]) using bank tags [28,28,27,13,28,28,27,13,1,28,28,11,28,28,27,13,28,28,27,13,1,28,28,11,28,28,27,11,28,28,27,11,1,28,28,24,28,28,27,13,28,28,27,13,1,28,28,11,28,28,27,11,28,28,27,11,1,28,28,24]
end Blc.SelfintSingleObject.Compact44
