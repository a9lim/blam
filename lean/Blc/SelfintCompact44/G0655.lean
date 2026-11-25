import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13306 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [1,2,0,0,1]
certRow g13306s0 on (rg13306 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13306s1 on (rg13306 1) using bank tags [3,3,3,3,3,3,3,3,28,28]
certRow g13306s2 on (rg13306 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,1,28,28,28,28,8,28,28,28,28,28,206,28,28,28,28,28,28,28,28,28]
certRow g13306s3 on (rg13306 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13306s4 on (rg13306 4) using bank tags [28,28,28,28]
certRow g13306s5 on (rg13306 5) using bank tags [3,3,28,28,28,28,28,28,28,28]
certRow g13306s6 on (rg13306 6) using bank tags [28]
certRow g13306s7 on (rg13306 7) using bank tags [3,20,20,20,20,20,16,11,45,19,11]
certRow g13306s8 on (rg13306 8) using bank tags [3,3,3,3]
certRow g13306s9 on (rg13306 9) using bank tags []
certRow g13306s10 on (rg13306 10) using bank tags [3,3,3,3,3,3,3,3,3,3,1,28]
certRow g13306s11 on (rg13306 11) using bank tags [3,3,3]
theorem g13306 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,2,0,0,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [1,2,0,0,1] (.cons (g13306s0) (.cons (g13306s1) (.cons (g13306s2) (.cons (g13306s3) (.cons (g13306s4) (.cons (g13306s5) (.cons (g13306s6) (.cons (g13306s7) (.cons (g13306s8) (.cons (g13306s9) (.cons (g13306s10) (.cons (g13306s11) .nil))))))))))))
certRow g13307 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,2,0,0,1]) using bank tags []
private abbrev rg13308 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [1,2,0,1,0]
certRow g13308s0 on (rg13308 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13308s1 on (rg13308 1) using bank tags [3,3,3,3,28,28]
certRow g13308s2 on (rg13308 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,206,28,28,28,28,28,28,28,28,28,61,19]
certRow g13308s3 on (rg13308 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28]
certRow g13308s4 on (rg13308 4) using bank tags [3,3]
certRow g13308s5 on (rg13308 5) using bank tags [3,3,3,3,28,28,28,28]
certRow g13308s6 on (rg13308 6) using bank tags [28,28]
certRow g13308s7 on (rg13308 7) using bank tags [3,3,3,3,3,20,20,20,20,20,16,16,19,11,45,19]
certRow g13308s8 on (rg13308 8) using bank tags [3,3,3,3,3]
certRow g13308s9 on (rg13308 9) using bank tags [3,3,3,3,3,3,3]
certRow g13308s10 on (rg13308 10) using bank tags [3,3,3,28,28,28]
certRow g13308s11 on (rg13308 11) using bank tags [3,3,3,3,3]
theorem g13308 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,2,0,1,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [1,2,0,1,0] (.cons (g13308s0) (.cons (g13308s1) (.cons (g13308s2) (.cons (g13308s3) (.cons (g13308s4) (.cons (g13308s5) (.cons (g13308s6) (.cons (g13308s7) (.cons (g13308s8) (.cons (g13308s9) (.cons (g13308s10) (.cons (g13308s11) .nil))))))))))))
certRow g13309 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,2,0,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
