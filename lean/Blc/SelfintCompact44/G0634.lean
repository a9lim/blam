import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13212 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,0,0,4,0]
certRow g13212s0 on (rg13212 0) using bank tags []
certRow g13212s1 on (rg13212 1) using bank tags []
certRow g13212s2 on (rg13212 2) using bank tags []
certRow g13212s3 on (rg13212 3) using bank tags []
certRow g13212s4 on (rg13212 4) using bank tags []
certRow g13212s5 on (rg13212 5) using bank tags []
certRow g13212s6 on (rg13212 6) using bank tags []
certRow g13212s7 on (rg13212 7) using bank tags []
certRow g13212s8 on (rg13212 8) using bank tags []
certRow g13212s9 on (rg13212 9) using bank tags []
certRow g13212s10 on (rg13212 10) using bank tags []
certRow g13212s11 on (rg13212 11) using bank tags []
theorem g13212 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,0,0,4,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,0,0,4,0] (.cons (g13212s0) (.cons (g13212s1) (.cons (g13212s2) (.cons (g13212s3) (.cons (g13212s4) (.cons (g13212s5) (.cons (g13212s6) (.cons (g13212s7) (.cons (g13212s8) (.cons (g13212s9) (.cons (g13212s10) (.cons (g13212s11) .nil))))))))))))
certRow g13213 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,0,0,4,0]) using bank tags []
private abbrev rg13214 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,0,1,0,3]
certRow g13214s0 on (rg13214 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28]
certRow g13214s1 on (rg13214 1) using bank tags [28,28,28,28,28,28,28,3,3,3,3,3,3,3,3,3,3]
certRow g13214s2 on (rg13214 2) using bank tags [3,3,28,28,28,28]
certRow g13214s3 on (rg13214 3) using bank tags [3,3,3,3,3,3,3,3,28,28,28,28,27,27,27,27]
certRow g13214s4 on (rg13214 4) using bank tags [28,28,28,28,28,28,28]
certRow g13214s5 on (rg13214 5) using bank tags [3,3,3,3]
certRow g13214s6 on (rg13214 6) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow g13214s7 on (rg13214 7) using bank tags [3,3,28,28,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13214s8 on (rg13214 8) using bank tags [3,3,3,3,3,28,28]
certRow g13214s9 on (rg13214 9) using bank tags [3,28,28]
certRow g13214s10 on (rg13214 10) using bank tags [3,3,3,3,3,3,3,28]
certRow g13214s11 on (rg13214 11) using bank tags [20,20,20,20,20,20,20,20,20,20,20,20,20,20,13,13,20,20,20,20,1,1,27,13,27,13,27,13,27,13,19,19,19,19,19,19,19,19]
theorem g13214 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,0,1,0,3]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,0,1,0,3] (.cons (g13214s0) (.cons (g13214s1) (.cons (g13214s2) (.cons (g13214s3) (.cons (g13214s4) (.cons (g13214s5) (.cons (g13214s6) (.cons (g13214s7) (.cons (g13214s8) (.cons (g13214s9) (.cons (g13214s10) (.cons (g13214s11) .nil))))))))))))
certRow g13215 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,0,1,0,3]) using bank tags []
end Blc.SelfintSingleObject.Compact44
