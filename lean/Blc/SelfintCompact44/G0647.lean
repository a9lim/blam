import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13266 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,3,0,0,1]
certRow g13266s0 on (rg13266 0) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow g13266s1 on (rg13266 1) using bank tags [3,206,28,28,28,1,28,3,3,28,28,3,3,28,28,3,28,28]
certRow g13266s2 on (rg13266 2) using bank tags [28,28,28,28,28]
certRow g13266s3 on (rg13266 3) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow g13266s4 on (rg13266 4) using bank tags []
certRow g13266s5 on (rg13266 5) using bank tags [3,28,206,6,28,28,28,28]
certRow g13266s6 on (rg13266 6) using bank tags [3]
certRow g13266s7 on (rg13266 7) using bank tags [28,3,3,3,3,3,3,3,3,3,3]
certRow g13266s8 on (rg13266 8) using bank tags [3,3,3]
certRow g13266s9 on (rg13266 9) using bank tags []
certRow g13266s10 on (rg13266 10) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,3]
certRow g13266s11 on (rg13266 11) using bank tags [20,20,20,20,20,13,13,13,13,13]
theorem g13266 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,3,0,0,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,3,0,0,1] (.cons (g13266s0) (.cons (g13266s1) (.cons (g13266s2) (.cons (g13266s3) (.cons (g13266s4) (.cons (g13266s5) (.cons (g13266s6) (.cons (g13266s7) (.cons (g13266s8) (.cons (g13266s9) (.cons (g13266s10) (.cons (g13266s11) .nil))))))))))))
certRow g13267 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,3,0,0,1]) using bank tags []
private abbrev rg13268 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,3,0,1,0]
certRow g13268s0 on (rg13268 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13268s1 on (rg13268 1) using bank tags [3,28,28,3,28,28]
certRow g13268s2 on (rg13268 2) using bank tags [28,28,28,28,28,28]
certRow g13268s3 on (rg13268 3) using bank tags [3,3,3,3,3,3,28,28,28,28,28,28,28,28]
certRow g13268s4 on (rg13268 4) using bank tags [28,28,13,13]
certRow g13268s5 on (rg13268 5) using bank tags [3,3,28,28,28,28]
certRow g13268s6 on (rg13268 6) using bank tags [3,3,3,3]
certRow g13268s7 on (rg13268 7) using bank tags [3,3,3,3,28,28,3,3,3,3,3,3,3,3,3,3,3]
certRow g13268s8 on (rg13268 8) using bank tags [3,3,3,28,28,3,3,28,27,28,27]
certRow g13268s9 on (rg13268 9) using bank tags [3,3,3,3,3,3,3,3]
certRow g13268s10 on (rg13268 10) using bank tags [3,3,3,3,28,28,3]
certRow g13268s11 on (rg13268 11) using bank tags [28,28,28,28,28,28,20,20,20,20,20,13,13,13,13,13,13]
theorem g13268 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,3,0,1,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,3,0,1,0] (.cons (g13268s0) (.cons (g13268s1) (.cons (g13268s2) (.cons (g13268s3) (.cons (g13268s4) (.cons (g13268s5) (.cons (g13268s6) (.cons (g13268s7) (.cons (g13268s8) (.cons (g13268s9) (.cons (g13268s10) (.cons (g13268s11) .nil))))))))))))
certRow g13269 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,3,0,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
