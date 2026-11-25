import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13278 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [1,0,0,2,1]
certRow g13278s0 on (rg13278 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,8,28,28,28]
certRow g13278s1 on (rg13278 1) using bank tags [3,3,3,3,3,28,28,28]
certRow g13278s2 on (rg13278 2) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g13278s3 on (rg13278 3) using bank tags [3,3,3,3,3,3,3,3,3]
certRow g13278s4 on (rg13278 4) using bank tags [28,28,28,28,28]
certRow g13278s5 on (rg13278 5) using bank tags [3,3,28,28,28,28,28]
certRow g13278s6 on (rg13278 6) using bank tags [3,3,3,3,3,28,28]
certRow g13278s7 on (rg13278 7) using bank tags [3,3,20,20,20,20,20,18]
certRow g13278s8 on (rg13278 8) using bank tags [3,3,3,3,3,3,28,28]
certRow g13278s9 on (rg13278 9) using bank tags [3,3,3,3,28,28]
certRow g13278s10 on (rg13278 10) using bank tags [3,3,3,3,3,3,3,3,28,28]
certRow g13278s11 on (rg13278 11) using bank tags [3,3,3,3,3,27]
theorem g13278 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,0,0,2,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [1,0,0,2,1] (.cons (g13278s0) (.cons (g13278s1) (.cons (g13278s2) (.cons (g13278s3) (.cons (g13278s4) (.cons (g13278s5) (.cons (g13278s6) (.cons (g13278s7) (.cons (g13278s8) (.cons (g13278s9) (.cons (g13278s10) (.cons (g13278s11) .nil))))))))))))
certRow g13279 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,0,0,2,1]) using bank tags []
private abbrev rg13280 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [1,0,0,3,0]
certRow g13280s0 on (rg13280 0) using bank tags [3,3,3,3,3]
certRow g13280s1 on (rg13280 1) using bank tags [3,28,3,28,3,3,3,28,28,28]
certRow g13280s2 on (rg13280 2) using bank tags [3,28,28,3,3,28,28,28,28,3,3,3,28,28,28,28,28,28,28]
certRow g13280s3 on (rg13280 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow g13280s4 on (rg13280 4) using bank tags []
certRow g13280s5 on (rg13280 5) using bank tags [3,3,3,3,3,3,28,28,3,28,28,28,28,28]
certRow g13280s6 on (rg13280 6) using bank tags [3,3,3,28,28]
certRow g13280s7 on (rg13280 7) using bank tags [3,3,3,3,28,28]
certRow g13280s8 on (rg13280 8) using bank tags [3,3,3,3,3,28,3,28,28]
certRow g13280s9 on (rg13280 9) using bank tags [3,3,3,3,3]
certRow g13280s10 on (rg13280 10) using bank tags [3,3,3,3,3,3,3,1,28,28,28,28,28]
certRow g13280s11 on (rg13280 11) using bank tags [28,28,28,28,28]
theorem g13280 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,0,0,3,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [1,0,0,3,0] (.cons (g13280s0) (.cons (g13280s1) (.cons (g13280s2) (.cons (g13280s3) (.cons (g13280s4) (.cons (g13280s5) (.cons (g13280s6) (.cons (g13280s7) (.cons (g13280s8) (.cons (g13280s9) (.cons (g13280s10) (.cons (g13280s11) .nil))))))))))))
certRow g13281 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,0,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
