import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g13199 on (Grammar43.fiveRow 7 7 4 true 4 5 4 [3,0,1,0]) using bank tags []
certRow g13200 on (Grammar43.fiveRow 7 7 4 false 4 5 4 [3,1,0,0]) using bank tags []
certRow g13201 on (Grammar43.fiveRow 7 7 4 true 4 5 4 [3,1,0,0]) using bank tags []
certRow g13202 on (Grammar43.fiveRow 7 7 4 false 4 5 4 [4,0,0,0]) using bank tags []
certRow g13203 on (Grammar43.fiveRow 7 7 4 true 4 5 4 [4,0,0,0]) using bank tags []
private abbrev rg13204 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,0,0,0,4]
certRow g13204s0 on (rg13204 0) using bank tags []
certRow g13204s1 on (rg13204 1) using bank tags []
certRow g13204s2 on (rg13204 2) using bank tags []
certRow g13204s3 on (rg13204 3) using bank tags []
certRow g13204s4 on (rg13204 4) using bank tags []
certRow g13204s5 on (rg13204 5) using bank tags []
certRow g13204s6 on (rg13204 6) using bank tags []
certRow g13204s7 on (rg13204 7) using bank tags []
certRow g13204s8 on (rg13204 8) using bank tags []
certRow g13204s9 on (rg13204 9) using bank tags []
certRow g13204s10 on (rg13204 10) using bank tags []
certRow g13204s11 on (rg13204 11) using bank tags []
theorem g13204 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,0,0,0,4]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,0,0,0,4] (.cons (g13204s0) (.cons (g13204s1) (.cons (g13204s2) (.cons (g13204s3) (.cons (g13204s4) (.cons (g13204s5) (.cons (g13204s6) (.cons (g13204s7) (.cons (g13204s8) (.cons (g13204s9) (.cons (g13204s10) (.cons (g13204s11) .nil))))))))))))
certRow g13205 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,0,0,0,4]) using bank tags []
private abbrev rg13206 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,0,0,1,3]
certRow g13206s0 on (rg13206 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13206s1 on (rg13206 1) using bank tags [28,28,1,28,28,28,3,3,3,3,3]
certRow g13206s2 on (rg13206 2) using bank tags [3,28,28]
certRow g13206s3 on (rg13206 3) using bank tags [3,3,3,28,28,27,27]
certRow g13206s4 on (rg13206 4) using bank tags [28,28,22,28,28,28]
certRow g13206s5 on (rg13206 5) using bank tags [3,3]
certRow g13206s6 on (rg13206 6) using bank tags [3,3,3,3,3]
certRow g13206s7 on (rg13206 7) using bank tags [28,3,3,3,3,3,3,3,3,3,3,3,3,28,3,3,3,3,3,3]
certRow g13206s8 on (rg13206 8) using bank tags [3,3,28]
certRow g13206s9 on (rg13206 9) using bank tags [28]
certRow g13206s10 on (rg13206 10) using bank tags [3,3,3,3,3,3]
certRow g13206s11 on (rg13206 11) using bank tags [20,20,20,20,20,20,20,20,13,20,20,1,27,13,27,13,19,19,19,19]
theorem g13206 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,0,0,1,3]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,0,0,1,3] (.cons (g13206s0) (.cons (g13206s1) (.cons (g13206s2) (.cons (g13206s3) (.cons (g13206s4) (.cons (g13206s5) (.cons (g13206s6) (.cons (g13206s7) (.cons (g13206s8) (.cons (g13206s9) (.cons (g13206s10) (.cons (g13206s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
