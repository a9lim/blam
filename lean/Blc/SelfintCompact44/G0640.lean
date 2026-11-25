import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13236 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,1,0,1,2]
certRow g13236s0 on (rg13236 0) using bank tags [3,3]
certRow g13236s1 on (rg13236 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,13]
certRow g13236s2 on (rg13236 2) using bank tags [3,3,3,3,28,28,28,28]
certRow g13236s3 on (rg13236 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13236s4 on (rg13236 4) using bank tags []
certRow g13236s5 on (rg13236 5) using bank tags [3,1,28,28,28,28,1,28,28,28,28,28,28,28,28,28,28,28,27]
certRow g13236s6 on (rg13236 6) using bank tags [3,28]
certRow g13236s7 on (rg13236 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,3]
certRow g13236s8 on (rg13236 8) using bank tags [3,3]
certRow g13236s9 on (rg13236 9) using bank tags [28,3,3]
certRow g13236s10 on (rg13236 10) using bank tags [3,3,3,3,3,3,3,3]
certRow g13236s11 on (rg13236 11) using bank tags [28,20,20,20,20,20,20,20,20,20,6,32,6,78,13]
theorem g13236 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,1,0,1,2]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,1,0,1,2] (.cons (g13236s0) (.cons (g13236s1) (.cons (g13236s2) (.cons (g13236s3) (.cons (g13236s4) (.cons (g13236s5) (.cons (g13236s6) (.cons (g13236s7) (.cons (g13236s8) (.cons (g13236s9) (.cons (g13236s10) (.cons (g13236s11) .nil))))))))))))
certRow g13237 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,1,0,1,2]) using bank tags []
private abbrev rg13238 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,1,0,2,1]
certRow g13238s0 on (rg13238 0) using bank tags [3,3,3,28,28]
certRow g13238s1 on (rg13238 1) using bank tags [3,3,3,3,3,3,3,3,28,28,13]
certRow g13238s2 on (rg13238 2) using bank tags [3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,16,16]
certRow g13238s3 on (rg13238 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13238s4 on (rg13238 4) using bank tags [3,3,28,28,3,3]
certRow g13238s5 on (rg13238 5) using bank tags [3,3,28,28,28,28,28,28,28,27]
certRow g13238s6 on (rg13238 6) using bank tags [3,28,28,3,3,27,27]
certRow g13238s7 on (rg13238 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,3]
certRow g13238s8 on (rg13238 8) using bank tags [3,3,3,3]
certRow g13238s9 on (rg13238 9) using bank tags [3,3,3,3,28,3,3]
certRow g13238s10 on (rg13238 10) using bank tags [3,3,3,3,3,3,28,28]
certRow g13238s11 on (rg13238 11) using bank tags [3,3,3,3,3,28,20,20,20,20,20,20,20,20,20,20,20,26,6,32,62,32,6,13]
theorem g13238 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,1,0,2,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,1,0,2,1] (.cons (g13238s0) (.cons (g13238s1) (.cons (g13238s2) (.cons (g13238s3) (.cons (g13238s4) (.cons (g13238s5) (.cons (g13238s6) (.cons (g13238s7) (.cons (g13238s8) (.cons (g13238s9) (.cons (g13238s10) (.cons (g13238s11) .nil))))))))))))
certRow g13239 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,1,0,2,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
