import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13224 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,0,2,1,1]
certRow g13224s0 on (rg13224 0) using bank tags [3,28]
certRow g13224s1 on (rg13224 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,3,3]
certRow g13224s2 on (rg13224 2) using bank tags [3,3,3,3,28,28,28,28,28,28,28,28,24]
certRow g13224s3 on (rg13224 3) using bank tags [3,3,3,3,3,3,3,27,27]
certRow g13224s4 on (rg13224 4) using bank tags [3,28,3]
certRow g13224s5 on (rg13224 5) using bank tags [28,28,28,28,28,28,28,28,28,3,3]
certRow g13224s6 on (rg13224 6) using bank tags [3,3,3,3,3,27]
certRow g13224s7 on (rg13224 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,3,3,3,3,3,3]
certRow g13224s8 on (rg13224 8) using bank tags [3,3,3,28,28]
certRow g13224s9 on (rg13224 9) using bank tags [3,3,28,28]
certRow g13224s10 on (rg13224 10) using bank tags [3,3,3,28,28]
certRow g13224s11 on (rg13224 11) using bank tags [3,3,3,20,20,20,20,20,20,20,20,20,20,20,20,20,1,1,15,1,27,13,27,13,19,19,19,19]
theorem g13224 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,0,2,1,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,0,2,1,1] (.cons (g13224s0) (.cons (g13224s1) (.cons (g13224s2) (.cons (g13224s3) (.cons (g13224s4) (.cons (g13224s5) (.cons (g13224s6) (.cons (g13224s7) (.cons (g13224s8) (.cons (g13224s9) (.cons (g13224s10) (.cons (g13224s11) .nil))))))))))))
certRow g13225 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,0,2,1,1]) using bank tags []
private abbrev rg13226 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,0,2,2,0]
certRow g13226s0 on (rg13226 0) using bank tags [3,3,3,3,3,3,3]
certRow g13226s1 on (rg13226 1) using bank tags [3,3,28]
certRow g13226s2 on (rg13226 2) using bank tags [3,3,3,3,28,28,28,28]
certRow g13226s3 on (rg13226 3) using bank tags [3,3,3,3,3,3,28,28,28,28,28,28]
certRow g13226s4 on (rg13226 4) using bank tags [28,28,24,24]
certRow g13226s5 on (rg13226 5) using bank tags [28,28]
certRow g13226s6 on (rg13226 6) using bank tags [3,3,3,3]
certRow g13226s7 on (rg13226 7) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28,28]
certRow g13226s8 on (rg13226 8) using bank tags [3,3,3,3,3,28,27,28,27]
certRow g13226s9 on (rg13226 9) using bank tags [3,3]
certRow g13226s10 on (rg13226 10) using bank tags [3,3,28,28]
certRow g13226s11 on (rg13226 11) using bank tags [28,28,20,20,20,1,26,1,1]
theorem g13226 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,0,2,2,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,0,2,2,0] (.cons (g13226s0) (.cons (g13226s1) (.cons (g13226s2) (.cons (g13226s3) (.cons (g13226s4) (.cons (g13226s5) (.cons (g13226s6) (.cons (g13226s7) (.cons (g13226s8) (.cons (g13226s9) (.cons (g13226s10) (.cons (g13226s11) .nil))))))))))))
certRow g13227 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,0,2,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
