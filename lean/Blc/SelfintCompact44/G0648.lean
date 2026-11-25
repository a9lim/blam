import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13270 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,3,1,0,0]
certRow g13270s0 on (rg13270 0) using bank tags [3,3,3,3,3,3,3,3,3]
certRow g13270s1 on (rg13270 1) using bank tags [28,3,28,3]
certRow g13270s2 on (rg13270 2) using bank tags [28,28,28,28]
certRow g13270s3 on (rg13270 3) using bank tags [3,3,3,3,28,28,28,28,28,28]
certRow g13270s4 on (rg13270 4) using bank tags [28,13]
certRow g13270s5 on (rg13270 5) using bank tags [3,3,3,3,1,28,28,28,28,28]
certRow g13270s6 on (rg13270 6) using bank tags [3,3,3,3,3]
certRow g13270s7 on (rg13270 7) using bank tags [3,3,3,6,28,28,28,3,3,3,3,3,3,3]
certRow g13270s8 on (rg13270 8) using bank tags [1,28,3,28,27]
certRow g13270s9 on (rg13270 9) using bank tags [3,3,3,3,3,3]
certRow g13270s10 on (rg13270 10) using bank tags [3,3]
certRow g13270s11 on (rg13270 11) using bank tags [28,28,28,6,28,20,20,20,13,13,13,13]
theorem g13270 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,3,1,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,3,1,0,0] (.cons (g13270s0) (.cons (g13270s1) (.cons (g13270s2) (.cons (g13270s3) (.cons (g13270s4) (.cons (g13270s5) (.cons (g13270s6) (.cons (g13270s7) (.cons (g13270s8) (.cons (g13270s9) (.cons (g13270s10) (.cons (g13270s11) .nil))))))))))))
certRow g13271 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,3,1,0,0]) using bank tags []
private abbrev rg13272 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,4,0,0,0]
certRow g13272s0 on (rg13272 0) using bank tags []
certRow g13272s1 on (rg13272 1) using bank tags []
certRow g13272s2 on (rg13272 2) using bank tags []
certRow g13272s3 on (rg13272 3) using bank tags []
certRow g13272s4 on (rg13272 4) using bank tags []
certRow g13272s5 on (rg13272 5) using bank tags []
certRow g13272s6 on (rg13272 6) using bank tags []
certRow g13272s7 on (rg13272 7) using bank tags []
certRow g13272s8 on (rg13272 8) using bank tags []
certRow g13272s9 on (rg13272 9) using bank tags []
certRow g13272s10 on (rg13272 10) using bank tags []
certRow g13272s11 on (rg13272 11) using bank tags []
theorem g13272 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,4,0,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,4,0,0,0] (.cons (g13272s0) (.cons (g13272s1) (.cons (g13272s2) (.cons (g13272s3) (.cons (g13272s4) (.cons (g13272s5) (.cons (g13272s6) (.cons (g13272s7) (.cons (g13272s8) (.cons (g13272s9) (.cons (g13272s10) (.cons (g13272s11) .nil))))))))))))
certRow g13273 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,4,0,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
