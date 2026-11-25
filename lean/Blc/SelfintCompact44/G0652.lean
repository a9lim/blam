import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13288 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [1,0,2,0,1]
certRow g13288s0 on (rg13288 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13288s1 on (rg13288 1) using bank tags [3,3,3,3,3,3,3,28]
certRow g13288s2 on (rg13288 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,206,28,28,28,28,1,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g13288s3 on (rg13288 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13288s4 on (rg13288 4) using bank tags [28,28,28,28,28,28]
certRow g13288s5 on (rg13288 5) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow g13288s6 on (rg13288 6) using bank tags [3,3,3,3,3,3,206,28,28,28,28]
certRow g13288s7 on (rg13288 7) using bank tags [3,3,3,3,20,20,20,20,20,20,20,20,20,24,19]
certRow g13288s8 on (rg13288 8) using bank tags [3,3,3,3,3,3,3,28,28]
certRow g13288s9 on (rg13288 9) using bank tags [28,28]
certRow g13288s10 on (rg13288 10) using bank tags [3,3,3,3,3,3,3,3,1,28,1,28]
certRow g13288s11 on (rg13288 11) using bank tags [3,3,3,3,3,27,27]
theorem g13288 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,0,2,0,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [1,0,2,0,1] (.cons (g13288s0) (.cons (g13288s1) (.cons (g13288s2) (.cons (g13288s3) (.cons (g13288s4) (.cons (g13288s5) (.cons (g13288s6) (.cons (g13288s7) (.cons (g13288s8) (.cons (g13288s9) (.cons (g13288s10) (.cons (g13288s11) .nil))))))))))))
certRow g13289 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,0,2,0,1]) using bank tags []
private abbrev rg13290 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [1,0,2,1,0]
certRow g13290s0 on (rg13290 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13290s1 on (rg13290 1) using bank tags [3,3,3,3,3,3,28]
certRow g13290s2 on (rg13290 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,19]
certRow g13290s3 on (rg13290 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow g13290s4 on (rg13290 4) using bank tags [3]
certRow g13290s5 on (rg13290 5) using bank tags [3,3,3,3,3,3,3,3,28,28,28,28,28,28]
certRow g13290s6 on (rg13290 6) using bank tags [3,3,3,3,28,28,28,28,28]
certRow g13290s7 on (rg13290 7) using bank tags [3,3,3,3,3,3,3,20,20,20,20,20,19,19]
certRow g13290s8 on (rg13290 8) using bank tags [3,3,3,3,3,3,28]
certRow g13290s9 on (rg13290 9) using bank tags [3,3,3,3,3,3,28,28]
certRow g13290s10 on (rg13290 10) using bank tags [3,28,28,28,28]
certRow g13290s11 on (rg13290 11) using bank tags [3,3,3,3,3,27]
theorem g13290 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,0,2,1,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [1,0,2,1,0] (.cons (g13290s0) (.cons (g13290s1) (.cons (g13290s2) (.cons (g13290s3) (.cons (g13290s4) (.cons (g13290s5) (.cons (g13290s6) (.cons (g13290s7) (.cons (g13290s8) (.cons (g13290s9) (.cons (g13290s10) (.cons (g13290s11) .nil))))))))))))
certRow g13291 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,0,2,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
