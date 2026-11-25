import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13216 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,0,1,1,2]
certRow g13216s0 on (rg13216 0) using bank tags []
certRow g13216s1 on (rg13216 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,3]
certRow g13216s2 on (rg13216 2) using bank tags [3,3,3,28,28,28]
certRow g13216s3 on (rg13216 3) using bank tags [3,3,3,3,3,3,27]
certRow g13216s4 on (rg13216 4) using bank tags []
certRow g13216s5 on (rg13216 5) using bank tags [28,28,28,28,28,28,28,28,28,22,28,28,28,28,3]
certRow g13216s6 on (rg13216 6) using bank tags [3,3]
certRow g13216s7 on (rg13216 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,3,3,3]
certRow g13216s8 on (rg13216 8) using bank tags [3,28]
certRow g13216s9 on (rg13216 9) using bank tags [28]
certRow g13216s10 on (rg13216 10) using bank tags [3,3,3,3]
certRow g13216s11 on (rg13216 11) using bank tags [20,20,20,20,20,20,20,20,20,1,1,1,27,13,19,19]
theorem g13216 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,0,1,1,2]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,0,1,1,2] (.cons (g13216s0) (.cons (g13216s1) (.cons (g13216s2) (.cons (g13216s3) (.cons (g13216s4) (.cons (g13216s5) (.cons (g13216s6) (.cons (g13216s7) (.cons (g13216s8) (.cons (g13216s9) (.cons (g13216s10) (.cons (g13216s11) .nil))))))))))))
certRow g13217 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,0,1,1,2]) using bank tags []
private abbrev rg13218 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,0,1,2,1]
certRow g13218s0 on (rg13218 0) using bank tags [3,28]
certRow g13218s1 on (rg13218 1) using bank tags [3,3,3,3,3,3,3,3,3,28,3]
certRow g13218s2 on (rg13218 2) using bank tags [3,3,3,28,28,28,28,28,28,28,24]
certRow g13218s3 on (rg13218 3) using bank tags [3,3,3,3,3,3,27]
certRow g13218s4 on (rg13218 4) using bank tags [3,28,3]
certRow g13218s5 on (rg13218 5) using bank tags [28,28,22,28,28,28,28,3]
certRow g13218s6 on (rg13218 6) using bank tags [3,3,3,27]
certRow g13218s7 on (rg13218 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,3,3,3]
certRow g13218s8 on (rg13218 8) using bank tags [3,3,3,28]
certRow g13218s9 on (rg13218 9) using bank tags [3,3,28]
certRow g13218s10 on (rg13218 10) using bank tags [3,3,3,3,28,28]
certRow g13218s11 on (rg13218 11) using bank tags [3,3,3,20,20,20,20,20,20,20,20,20,26,1,1,27,13,19,19]
theorem g13218 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,0,1,2,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,0,1,2,1] (.cons (g13218s0) (.cons (g13218s1) (.cons (g13218s2) (.cons (g13218s3) (.cons (g13218s4) (.cons (g13218s5) (.cons (g13218s6) (.cons (g13218s7) (.cons (g13218s8) (.cons (g13218s9) (.cons (g13218s10) (.cons (g13218s11) .nil))))))))))))
certRow g13219 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,0,1,2,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
