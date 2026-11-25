import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13258 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,2,0,2,0]
certRow g13258s0 on (rg13258 0) using bank tags [3,3,3,3,3,3,3,3,3]
certRow g13258s1 on (rg13258 1) using bank tags [3,3,3,3,28,28]
certRow g13258s2 on (rg13258 2) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow g13258s3 on (rg13258 3) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow g13258s4 on (rg13258 4) using bank tags [28,28,18,24]
certRow g13258s5 on (rg13258 5) using bank tags [3,3,3,3,3,28,28,28,28]
certRow g13258s6 on (rg13258 6) using bank tags [3,3,3,3,28,28,3,3]
certRow g13258s7 on (rg13258 7) using bank tags [3,3,28,28,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow g13258s8 on (rg13258 8) using bank tags [3,3,3,3,3,28,27,28,27]
certRow g13258s9 on (rg13258 9) using bank tags [3]
certRow g13258s10 on (rg13258 10) using bank tags [3,3,3,3,28,28]
certRow g13258s11 on (rg13258 11) using bank tags [28,20,20,20,1,1,11,31,11]
theorem g13258 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,2,0,2,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,2,0,2,0] (.cons (g13258s0) (.cons (g13258s1) (.cons (g13258s2) (.cons (g13258s3) (.cons (g13258s4) (.cons (g13258s5) (.cons (g13258s6) (.cons (g13258s7) (.cons (g13258s8) (.cons (g13258s9) (.cons (g13258s10) (.cons (g13258s11) .nil))))))))))))
certRow g13259 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,2,0,2,0]) using bank tags []
private abbrev rg13260 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,2,1,0,1]
certRow g13260s0 on (rg13260 0) using bank tags [3,3,3,3]
certRow g13260s1 on (rg13260 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow g13260s2 on (rg13260 2) using bank tags [3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,65]
certRow g13260s3 on (rg13260 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13260s4 on (rg13260 4) using bank tags [3,28,28,3]
certRow g13260s5 on (rg13260 5) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g13260s6 on (rg13260 6) using bank tags [6,28,28,28,28,3,27]
certRow g13260s7 on (rg13260 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28]
certRow g13260s8 on (rg13260 8) using bank tags [3,3]
certRow g13260s9 on (rg13260 9) using bank tags [3]
certRow g13260s10 on (rg13260 10) using bank tags [3,3,3,3,3,3,3,3,3,6,28]
certRow g13260s11 on (rg13260 11) using bank tags [3,3,3,20,20,20,20,20,20,20,20,20,20,6,6,119,11,6,11,11,11]
theorem g13260 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,2,1,0,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,2,1,0,1] (.cons (g13260s0) (.cons (g13260s1) (.cons (g13260s2) (.cons (g13260s3) (.cons (g13260s4) (.cons (g13260s5) (.cons (g13260s6) (.cons (g13260s7) (.cons (g13260s8) (.cons (g13260s9) (.cons (g13260s10) (.cons (g13260s11) .nil))))))))))))
certRow g13261 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,2,1,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
