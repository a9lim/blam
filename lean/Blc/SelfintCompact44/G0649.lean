import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13274 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [1,0,0,0,3]
certRow g13274s0 on (rg13274 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,6,28,28,28]
certRow g13274s1 on (rg13274 1) using bank tags [1,28,28,28,1,28,28,28,28,1,28,28,28]
certRow g13274s2 on (rg13274 2) using bank tags [3,28,3,3,28,3,3,3,3,1,28,28,28,28,28,1,28,28,28]
certRow g13274s3 on (rg13274 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3]
certRow g13274s4 on (rg13274 4) using bank tags [1,28,28,28,1,28,28,28,28,1,28,28,28]
certRow g13274s5 on (rg13274 5) using bank tags [3,3,3,3,3,28]
certRow g13274s6 on (rg13274 6) using bank tags [3,3,3,3,28]
certRow g13274s7 on (rg13274 7) using bank tags [3,3,28,28]
certRow g13274s8 on (rg13274 8) using bank tags [3,3,3,3,28,28]
certRow g13274s9 on (rg13274 9) using bank tags [3,3,3,3]
certRow g13274s10 on (rg13274 10) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,1,28,28,28]
certRow g13274s11 on (rg13274 11) using bank tags []
theorem g13274 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,0,0,0,3]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [1,0,0,0,3] (.cons (g13274s0) (.cons (g13274s1) (.cons (g13274s2) (.cons (g13274s3) (.cons (g13274s4) (.cons (g13274s5) (.cons (g13274s6) (.cons (g13274s7) (.cons (g13274s8) (.cons (g13274s9) (.cons (g13274s10) (.cons (g13274s11) .nil))))))))))))
certRow g13275 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,0,0,0,3]) using bank tags []
private abbrev rg13276 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [1,0,0,1,2]
certRow g13276s0 on (rg13276 0) using bank tags [3,3,3,3,3,3]
certRow g13276s1 on (rg13276 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28]
certRow g13276s2 on (rg13276 2) using bank tags [3,3,3,3,3,3,3,28,28,1,28,28,28,28]
certRow g13276s3 on (rg13276 3) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow g13276s4 on (rg13276 4) using bank tags []
certRow g13276s5 on (rg13276 5) using bank tags [3,1,28,28,28,28,1,28,28,28,28,28,1,28,28,28,28,28,28]
certRow g13276s6 on (rg13276 6) using bank tags [3,3,3,3,28]
certRow g13276s7 on (rg13276 7) using bank tags [3,3,20,20,20,20,20,6]
certRow g13276s8 on (rg13276 8) using bank tags [3,3,3,3,28]
certRow g13276s9 on (rg13276 9) using bank tags [28,28]
certRow g13276s10 on (rg13276 10) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13276s11 on (rg13276 11) using bank tags [27]
theorem g13276 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,0,0,1,2]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [1,0,0,1,2] (.cons (g13276s0) (.cons (g13276s1) (.cons (g13276s2) (.cons (g13276s3) (.cons (g13276s4) (.cons (g13276s5) (.cons (g13276s6) (.cons (g13276s7) (.cons (g13276s8) (.cons (g13276s9) (.cons (g13276s10) (.cons (g13276s11) .nil))))))))))))
certRow g13277 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,0,0,1,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
