import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13310 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [1,2,1,0,0]
certRow g13310s0 on (rg13310 0) using bank tags [3,3,3,3,3,3,3,3,3]
certRow g13310s1 on (rg13310 1) using bank tags [3,3,3,3]
certRow g13310s2 on (rg13310 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,21,28,28,28,28,8,28,28,28,28,28,28,28,28,28,28,28,28,28,6]
certRow g13310s3 on (rg13310 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow g13310s4 on (rg13310 4) using bank tags [3]
certRow g13310s5 on (rg13310 5) using bank tags [3,3,3,3,3,3,28,28,28,28]
certRow g13310s6 on (rg13310 6) using bank tags [28,28,28]
certRow g13310s7 on (rg13310 7) using bank tags [3,20,20,20,30,1,1,6]
certRow g13310s8 on (rg13310 8) using bank tags []
certRow g13310s9 on (rg13310 9) using bank tags [3,3,3,3,3,3]
certRow g13310s10 on (rg13310 10) using bank tags [3]
certRow g13310s11 on (rg13310 11) using bank tags [3,3,3,8,28]
theorem g13310 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,2,1,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [1,2,1,0,0] (.cons (g13310s0) (.cons (g13310s1) (.cons (g13310s2) (.cons (g13310s3) (.cons (g13310s4) (.cons (g13310s5) (.cons (g13310s6) (.cons (g13310s7) (.cons (g13310s8) (.cons (g13310s9) (.cons (g13310s10) (.cons (g13310s11) .nil))))))))))))
certRow g13311 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,2,1,0,0]) using bank tags []
private abbrev rg13312 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [1,3,0,0,0]
certRow g13312s0 on (rg13312 0) using bank tags []
certRow g13312s1 on (rg13312 1) using bank tags [28,28,28,28]
certRow g13312s2 on (rg13312 2) using bank tags [1,28,28,28,21,28,28,28,28,206,28,28,28]
certRow g13312s3 on (rg13312 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13312s4 on (rg13312 4) using bank tags []
certRow g13312s5 on (rg13312 5) using bank tags []
certRow g13312s6 on (rg13312 6) using bank tags []
certRow g13312s7 on (rg13312 7) using bank tags [3,3]
certRow g13312s8 on (rg13312 8) using bank tags [1,28]
certRow g13312s9 on (rg13312 9) using bank tags [3,3,3]
certRow g13312s10 on (rg13312 10) using bank tags [3,3,3,3]
certRow g13312s11 on (rg13312 11) using bank tags [28,28,28]
theorem g13312 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,3,0,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [1,3,0,0,0] (.cons (g13312s0) (.cons (g13312s1) (.cons (g13312s2) (.cons (g13312s3) (.cons (g13312s4) (.cons (g13312s5) (.cons (g13312s6) (.cons (g13312s7) (.cons (g13312s8) (.cons (g13312s9) (.cons (g13312s10) (.cons (g13312s11) .nil))))))))))))
certRow g13313 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,3,0,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
