import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13326 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [2,1,0,0,1]
certRow g13326s0 on (rg13326 0) using bank tags [3,3,3,3]
certRow g13326s1 on (rg13326 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow g13326s2 on (rg13326 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,1,28,28,28,28,1,28,28,28,28,28,1,28,28,28,28,28,28,28,28,28]
certRow g13326s3 on (rg13326 3) using bank tags [3,3,3,3,3,3,3,3,3]
certRow g13326s4 on (rg13326 4) using bank tags [28,28,28,28]
certRow g13326s5 on (rg13326 5) using bank tags [3,3,23,28,28,28,28,9,28,28,28,28,28,28,28,28,28,28]
certRow g13326s6 on (rg13326 6) using bank tags [3,28]
certRow g13326s7 on (rg13326 7) using bank tags [3,3,3,28]
certRow g13326s8 on (rg13326 8) using bank tags [3,3,3,3,3]
certRow g13326s9 on (rg13326 9) using bank tags [28,28]
certRow g13326s10 on (rg13326 10) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,9,28]
certRow g13326s11 on (rg13326 11) using bank tags [3,3,3]
theorem g13326 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [2,1,0,0,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [2,1,0,0,1] (.cons (g13326s0) (.cons (g13326s1) (.cons (g13326s2) (.cons (g13326s3) (.cons (g13326s4) (.cons (g13326s5) (.cons (g13326s6) (.cons (g13326s7) (.cons (g13326s8) (.cons (g13326s9) (.cons (g13326s10) (.cons (g13326s11) .nil))))))))))))
certRow g13327 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [2,1,0,0,1]) using bank tags []
private abbrev rg13328 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [2,1,0,1,0]
certRow g13328s0 on (rg13328 0) using bank tags [3,3,3,3,3]
certRow g13328s1 on (rg13328 1) using bank tags [3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow g13328s2 on (rg13328 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,1,28,28,28,28,28,28,28,28,28]
certRow g13328s3 on (rg13328 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow g13328s4 on (rg13328 4) using bank tags []
certRow g13328s5 on (rg13328 5) using bank tags [3,3,3,3,28,28,28,28,28,28,28,28]
certRow g13328s6 on (rg13328 6) using bank tags [3,3,28,28]
certRow g13328s7 on (rg13328 7) using bank tags [3,3,3,3,3,28,28]
certRow g13328s8 on (rg13328 8) using bank tags [3,3,3,3,3,3]
certRow g13328s9 on (rg13328 9) using bank tags [3,3,3,3,3,3,28,28]
certRow g13328s10 on (rg13328 10) using bank tags [3,3,3,3,3,3,3,28,28,28]
certRow g13328s11 on (rg13328 11) using bank tags [3,3,3,3,3,28]
theorem g13328 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [2,1,0,1,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [2,1,0,1,0] (.cons (g13328s0) (.cons (g13328s1) (.cons (g13328s2) (.cons (g13328s3) (.cons (g13328s4) (.cons (g13328s5) (.cons (g13328s6) (.cons (g13328s7) (.cons (g13328s8) (.cons (g13328s9) (.cons (g13328s10) (.cons (g13328s11) .nil))))))))))))
certRow g13329 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [2,1,0,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
