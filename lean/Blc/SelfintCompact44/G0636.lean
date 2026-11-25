import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13220 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,0,1,3,0]
certRow g13220s0 on (rg13220 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3]
certRow g13220s1 on (rg13220 1) using bank tags [3,28,3,3]
certRow g13220s2 on (rg13220 2) using bank tags [3,28,28,3,28,28]
certRow g13220s3 on (rg13220 3) using bank tags [3,3,3,3,3,3,28,28,3,28,28,28,28,27]
certRow g13220s4 on (rg13220 4) using bank tags [28,28,13,24]
certRow g13220s5 on (rg13220 5) using bank tags [28,3]
certRow g13220s6 on (rg13220 6) using bank tags [3,3,3,3,3,3]
certRow g13220s7 on (rg13220 7) using bank tags [3,3,3,3,3,28,3,3,3,3,3,3,3,3,3,3,28,28,3,3,3]
certRow g13220s8 on (rg13220 8) using bank tags [3,3,3,3,28,3,28,3,3,28,27,28,27]
certRow g13220s9 on (rg13220 9) using bank tags [3,3,3,3]
certRow g13220s10 on (rg13220 10) using bank tags [3,28,28,28]
certRow g13220s11 on (rg13220 11) using bank tags [28,28,28,20,20,20,20,20,13,13,20,26,1,27,13,19,19]
theorem g13220 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,0,1,3,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,0,1,3,0] (.cons (g13220s0) (.cons (g13220s1) (.cons (g13220s2) (.cons (g13220s3) (.cons (g13220s4) (.cons (g13220s5) (.cons (g13220s6) (.cons (g13220s7) (.cons (g13220s8) (.cons (g13220s9) (.cons (g13220s10) (.cons (g13220s11) .nil))))))))))))
certRow g13221 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,0,1,3,0]) using bank tags []
private abbrev rg13222 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,0,2,0,2]
certRow g13222s0 on (rg13222 0) using bank tags [3,3,3,3,3,3,3,3,3,3,28]
certRow g13222s1 on (rg13222 1) using bank tags [3,3,3,3,3,3,3,3,3,3,28,3,3]
certRow g13222s2 on (rg13222 2) using bank tags [3,3,3,3,28,28,28,28]
certRow g13222s3 on (rg13222 3) using bank tags [3,3,3,3,3,3,3,3,27,27]
certRow g13222s4 on (rg13222 4) using bank tags [28,28,28,28,28,28,28]
certRow g13222s5 on (rg13222 5) using bank tags [28,28,28,28,28,28,3,3]
certRow g13222s6 on (rg13222 6) using bank tags [3,3,3,3]
certRow g13222s7 on (rg13222 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,3,3,3,3,3,3]
certRow g13222s8 on (rg13222 8) using bank tags [3,28,28]
certRow g13222s9 on (rg13222 9) using bank tags [3,28,28]
certRow g13222s10 on (rg13222 10) using bank tags [3,3,3,3,3,3]
certRow g13222s11 on (rg13222 11) using bank tags [20,20,20,20,20,20,20,20,20,20,20,15,1,1,1,27,13,27,13,19,19,19,19]
theorem g13222 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,0,2,0,2]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,0,2,0,2] (.cons (g13222s0) (.cons (g13222s1) (.cons (g13222s2) (.cons (g13222s3) (.cons (g13222s4) (.cons (g13222s5) (.cons (g13222s6) (.cons (g13222s7) (.cons (g13222s8) (.cons (g13222s9) (.cons (g13222s10) (.cons (g13222s11) .nil))))))))))))
certRow g13223 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,0,2,0,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
