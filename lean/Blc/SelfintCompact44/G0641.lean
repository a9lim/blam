import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13240 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,1,0,3,0]
certRow g13240s0 on (rg13240 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13240s1 on (rg13240 1) using bank tags [3,3,28,28]
certRow g13240s2 on (rg13240 2) using bank tags [3,28,28,3,3,28,28,28,28,3,3,28,28,28,28,28]
certRow g13240s3 on (rg13240 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,28,28,3,3,28,28,28,28,3,3,28,28,28,28,28]
certRow g13240s4 on (rg13240 4) using bank tags [28,28,28,28,13,13,16,16]
certRow g13240s5 on (rg13240 5) using bank tags [3,3,3,3,3,3,28,28,3,28,28]
certRow g13240s6 on (rg13240 6) using bank tags [3,3,28,28,3,3,3,3]
certRow g13240s7 on (rg13240 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow g13240s8 on (rg13240 8) using bank tags [3,3,3,28,3,28,3,3,3,3,28,27,28,27,28,27,28,27]
certRow g13240s9 on (rg13240 9) using bank tags [3,3,3,3,3,3,3]
certRow g13240s10 on (rg13240 10) using bank tags [3,3,3,28,28,28,28]
certRow g13240s11 on (rg13240 11) using bank tags [28,28,28,28,28,20,20,20,20,20,20,20,20,13,13,13,13,13,13,26,6,32,32,6]
theorem g13240 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,1,0,3,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,1,0,3,0] (.cons (g13240s0) (.cons (g13240s1) (.cons (g13240s2) (.cons (g13240s3) (.cons (g13240s4) (.cons (g13240s5) (.cons (g13240s6) (.cons (g13240s7) (.cons (g13240s8) (.cons (g13240s9) (.cons (g13240s10) (.cons (g13240s11) .nil))))))))))))
certRow g13241 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,1,0,3,0]) using bank tags []
private abbrev rg13242 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,1,1,0,2]
certRow g13242s0 on (rg13242 0) using bank tags [3,3,3]
certRow g13242s1 on (rg13242 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,13,13]
certRow g13242s2 on (rg13242 2) using bank tags [3,3,3,3,28,28,28,28]
certRow g13242s3 on (rg13242 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13242s4 on (rg13242 4) using bank tags []
certRow g13242s5 on (rg13242 5) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,27,27]
certRow g13242s6 on (rg13242 6) using bank tags [3,3,28]
certRow g13242s7 on (rg13242 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,3,3]
certRow g13242s8 on (rg13242 8) using bank tags []
certRow g13242s9 on (rg13242 9) using bank tags [28,28,3,3,3,3]
certRow g13242s10 on (rg13242 10) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow g13242s11 on (rg13242 11) using bank tags [28,28,20,20,20,20,20,20,20,20,20,6,18,6,78,13,13]
theorem g13242 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,1,1,0,2]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,1,1,0,2] (.cons (g13242s0) (.cons (g13242s1) (.cons (g13242s2) (.cons (g13242s3) (.cons (g13242s4) (.cons (g13242s5) (.cons (g13242s6) (.cons (g13242s7) (.cons (g13242s8) (.cons (g13242s9) (.cons (g13242s10) (.cons (g13242s11) .nil))))))))))))
certRow g13243 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,1,1,0,2]) using bank tags []
certRow g13244 on (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,1,1,1,1]) using bank tags []
certRow g13245 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,1,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
