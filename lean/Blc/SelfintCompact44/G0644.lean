import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13254 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,2,0,0,2]
certRow g13254s0 on (rg13254 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow g13254s1 on (rg13254 1) using bank tags [3,3,3,3,3,3,28,28]
certRow g13254s2 on (rg13254 2) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow g13254s3 on (rg13254 3) using bank tags [3,3,3,3,3,3,3,3,3]
certRow g13254s4 on (rg13254 4) using bank tags [206,28,28,28,22,28,28,28,28,28]
certRow g13254s5 on (rg13254 5) using bank tags [3,3,3,3,1,1,28,28,28,28]
certRow g13254s6 on (rg13254 6) using bank tags [3,28]
certRow g13254s7 on (rg13254 7) using bank tags [3,3,28,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow g13254s8 on (rg13254 8) using bank tags [3]
certRow g13254s9 on (rg13254 9) using bank tags [3,3]
certRow g13254s10 on (rg13254 10) using bank tags [3,3,3,3,3]
certRow g13254s11 on (rg13254 11) using bank tags [20,20,20,20,20,1,11,11,11,11]
theorem g13254 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,2,0,0,2]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,2,0,0,2] (.cons (g13254s0) (.cons (g13254s1) (.cons (g13254s2) (.cons (g13254s3) (.cons (g13254s4) (.cons (g13254s5) (.cons (g13254s6) (.cons (g13254s7) (.cons (g13254s8) (.cons (g13254s9) (.cons (g13254s10) (.cons (g13254s11) .nil))))))))))))
certRow g13255 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,2,0,0,2]) using bank tags []
private abbrev rg13256 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,2,0,1,1]
certRow g13256s0 on (rg13256 0) using bank tags [3,3,3,28,28]
certRow g13256s1 on (rg13256 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow g13256s2 on (rg13256 2) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,18,24]
certRow g13256s3 on (rg13256 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13256s4 on (rg13256 4) using bank tags [3,3,28,28,3,3]
certRow g13256s5 on (rg13256 5) using bank tags [3,3,3,206,28,28,28,28,22,28,28,28,28,28,28,28]
certRow g13256s6 on (rg13256 6) using bank tags [28,28,28,3,3,27,27]
certRow g13256s7 on (rg13256 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28]
certRow g13256s8 on (rg13256 8) using bank tags [3,3,3,3]
certRow g13256s9 on (rg13256 9) using bank tags [3,3,3,3]
certRow g13256s10 on (rg13256 10) using bank tags [3,3,3,3,3,3,3,28,28]
certRow g13256s11 on (rg13256 11) using bank tags [3,3,3,3,3,20,20,20,20,20,20,20,20,20,20,20,20,20,1,1,1,11,11,31,11,11,11,11]
theorem g13256 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,2,0,1,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,2,0,1,1] (.cons (g13256s0) (.cons (g13256s1) (.cons (g13256s2) (.cons (g13256s3) (.cons (g13256s4) (.cons (g13256s5) (.cons (g13256s6) (.cons (g13256s7) (.cons (g13256s8) (.cons (g13256s9) (.cons (g13256s10) (.cons (g13256s11) .nil))))))))))))
certRow g13257 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,2,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
