import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g13207 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,0,0,1,3]) using bank tags []
private abbrev rg13208 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,0,0,2,2]
certRow g13208s0 on (rg13208 0) using bank tags [3,3,3,3,3,3,3,3]
certRow g13208s1 on (rg13208 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13208s2 on (rg13208 2) using bank tags [3,3,28,28]
certRow g13208s3 on (rg13208 3) using bank tags [3,3,3,3,27,27]
certRow g13208s4 on (rg13208 4) using bank tags [28,28,22,28,28,28]
certRow g13208s5 on (rg13208 5) using bank tags [28,28,22,28,28,28,3,3]
certRow g13208s6 on (rg13208 6) using bank tags [3,3,3,3]
certRow g13208s7 on (rg13208 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,3,3,3,3,3,3]
certRow g13208s8 on (rg13208 8) using bank tags [28,28]
certRow g13208s9 on (rg13208 9) using bank tags [28,28]
certRow g13208s10 on (rg13208 10) using bank tags [3,3,3,3]
certRow g13208s11 on (rg13208 11) using bank tags [20,20,20,20,20,20,20,20,20,20,1,1,27,13,27,13,19,19,19,19]
theorem g13208 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,0,0,2,2]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,0,0,2,2] (.cons (g13208s0) (.cons (g13208s1) (.cons (g13208s2) (.cons (g13208s3) (.cons (g13208s4) (.cons (g13208s5) (.cons (g13208s6) (.cons (g13208s7) (.cons (g13208s8) (.cons (g13208s9) (.cons (g13208s10) (.cons (g13208s11) .nil))))))))))))
certRow g13209 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,0,0,2,2]) using bank tags []
private abbrev rg13210 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,0,0,3,1]
certRow g13210s0 on (rg13210 0) using bank tags [3,3,3,3,3,3,3]
certRow g13210s1 on (rg13210 1) using bank tags [3,28,3,3,28,3,3,3,3,1,28,28,28,3,3,3,3,3]
certRow g13210s2 on (rg13210 2) using bank tags [3,28,28]
certRow g13210s3 on (rg13210 3) using bank tags [3,3,3,3,3,28,28,27,27]
certRow g13210s4 on (rg13210 4) using bank tags []
certRow g13210s5 on (rg13210 5) using bank tags [28,28,6,28,28,28,3,3]
certRow g13210s6 on (rg13210 6) using bank tags [3,3,3,3,3]
certRow g13210s7 on (rg13210 7) using bank tags [28,3,3,3,3,3,3,3,3,3,3,3,3,28,3,3,3,3,3,3]
certRow g13210s8 on (rg13210 8) using bank tags [3,3,28]
certRow g13210s9 on (rg13210 9) using bank tags [28]
certRow g13210s10 on (rg13210 10) using bank tags [3,3,3,3,3,3,3,3,3,3,3]
certRow g13210s11 on (rg13210 11) using bank tags [20,20,20,20,20,20,20,20,13,20,20,1,27,13,27,13,19,19,19,19]
theorem g13210 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,0,0,3,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,0,0,3,1] (.cons (g13210s0) (.cons (g13210s1) (.cons (g13210s2) (.cons (g13210s3) (.cons (g13210s4) (.cons (g13210s5) (.cons (g13210s6) (.cons (g13210s7) (.cons (g13210s8) (.cons (g13210s9) (.cons (g13210s10) (.cons (g13210s11) .nil))))))))))))
certRow g13211 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,0,0,3,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
