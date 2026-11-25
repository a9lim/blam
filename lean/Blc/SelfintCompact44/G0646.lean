import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13262 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,2,1,1,0]
certRow g13262s0 on (rg13262 0) using bank tags [3,3,3,3,3,3,3]
certRow g13262s1 on (rg13262 1) using bank tags [3,3,3,3,28,28]
certRow g13262s2 on (rg13262 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28]
certRow g13262s3 on (rg13262 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28]
certRow g13262s4 on (rg13262 4) using bank tags [28,28,65,24]
certRow g13262s5 on (rg13262 5) using bank tags [3,3,3,3,3,3,3,3,28,28,28,28]
certRow g13262s6 on (rg13262 6) using bank tags [3,3,28,28,28,28,28,3,3]
certRow g13262s7 on (rg13262 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow g13262s8 on (rg13262 8) using bank tags [3,3,3,3,3,28,27,28,27]
certRow g13262s9 on (rg13262 9) using bank tags [3,3,3,3,3]
certRow g13262s10 on (rg13262 10) using bank tags [3,3,28,28,28]
certRow g13262s11 on (rg13262 11) using bank tags [3,3,3,28,28,20,20,20,20,20,20,20,61,6,6,11,11,62,11]
theorem g13262 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,2,1,1,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,2,1,1,0] (.cons (g13262s0) (.cons (g13262s1) (.cons (g13262s2) (.cons (g13262s3) (.cons (g13262s4) (.cons (g13262s5) (.cons (g13262s6) (.cons (g13262s7) (.cons (g13262s8) (.cons (g13262s9) (.cons (g13262s10) (.cons (g13262s11) .nil))))))))))))
certRow g13263 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,2,1,1,0]) using bank tags []
private abbrev rg13264 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,2,2,0,0]
certRow g13264s0 on (rg13264 0) using bank tags [3,3,3]
certRow g13264s1 on (rg13264 1) using bank tags [3,3,3,3]
certRow g13264s2 on (rg13264 2) using bank tags []
certRow g13264s3 on (rg13264 3) using bank tags [28,28,28]
certRow g13264s4 on (rg13264 4) using bank tags []
certRow g13264s5 on (rg13264 5) using bank tags [3,3,3,28,28,28,28]
certRow g13264s6 on (rg13264 6) using bank tags [3,3,3,3,6]
certRow g13264s7 on (rg13264 7) using bank tags [206,28,28,28]
certRow g13264s8 on (rg13264 8) using bank tags []
certRow g13264s9 on (rg13264 9) using bank tags [3,3,3,3]
certRow g13264s10 on (rg13264 10) using bank tags [3]
certRow g13264s11 on (rg13264 11) using bank tags [6,28,1,28]
theorem g13264 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,2,2,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,2,2,0,0] (.cons (g13264s0) (.cons (g13264s1) (.cons (g13264s2) (.cons (g13264s3) (.cons (g13264s4) (.cons (g13264s5) (.cons (g13264s6) (.cons (g13264s7) (.cons (g13264s8) (.cons (g13264s9) (.cons (g13264s10) (.cons (g13264s11) .nil))))))))))))
certRow g13265 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,2,2,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
