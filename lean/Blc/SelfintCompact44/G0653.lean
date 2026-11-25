import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13292 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [1,0,3,0,0]
certRow g13292s0 on (rg13292 0) using bank tags [3,3,3]
certRow g13292s1 on (rg13292 1) using bank tags [3,28,28,3,3,28,28,28,28,3,3]
certRow g13292s2 on (rg13292 2) using bank tags [3,206,28,28,28,1,28,3,3,28,28,3,3,28,28,3,206,1,28,28,28,28]
certRow g13292s3 on (rg13292 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28]
certRow g13292s4 on (rg13292 4) using bank tags []
certRow g13292s5 on (rg13292 5) using bank tags [3,3,3,3,3,3,3,206,28,28,28,28,28,28,28,28]
certRow g13292s6 on (rg13292 6) using bank tags [3,3,206]
certRow g13292s7 on (rg13292 7) using bank tags [3,3,3,3,28,28]
certRow g13292s8 on (rg13292 8) using bank tags [1,28,1,28]
certRow g13292s9 on (rg13292 9) using bank tags [3,3,3,3,3,3,3,3,3]
certRow g13292s10 on (rg13292 10) using bank tags [3,3,3,3,3,3,3,3]
certRow g13292s11 on (rg13292 11) using bank tags [28,28,28,28,28,1,28,1,28]
theorem g13292 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,0,3,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [1,0,3,0,0] (.cons (g13292s0) (.cons (g13292s1) (.cons (g13292s2) (.cons (g13292s3) (.cons (g13292s4) (.cons (g13292s5) (.cons (g13292s6) (.cons (g13292s7) (.cons (g13292s8) (.cons (g13292s9) (.cons (g13292s10) (.cons (g13292s11) .nil))))))))))))
certRow g13293 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,0,3,0,0]) using bank tags []
private abbrev rg13294 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [1,1,0,0,2]
certRow g13294s0 on (rg13294 0) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow g13294s1 on (rg13294 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow g13294s2 on (rg13294 2) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow g13294s3 on (rg13294 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13294s4 on (rg13294 4) using bank tags []
certRow g13294s5 on (rg13294 5) using bank tags [3,3,1,28,28,28,28,1,28,28,28,28,28,28,28,28,28,28]
certRow g13294s6 on (rg13294 6) using bank tags [3,28]
certRow g13294s7 on (rg13294 7) using bank tags [3,3,28,20,20,20,20,20,32,6,1,1,1]
certRow g13294s8 on (rg13294 8) using bank tags [3,3,3]
certRow g13294s9 on (rg13294 9) using bank tags [28,28]
certRow g13294s10 on (rg13294 10) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13294s11 on (rg13294 11) using bank tags []
theorem g13294 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,1,0,0,2]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [1,1,0,0,2] (.cons (g13294s0) (.cons (g13294s1) (.cons (g13294s2) (.cons (g13294s3) (.cons (g13294s4) (.cons (g13294s5) (.cons (g13294s6) (.cons (g13294s7) (.cons (g13294s8) (.cons (g13294s9) (.cons (g13294s10) (.cons (g13294s11) .nil))))))))))))
certRow g13295 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,1,0,0,2]) using bank tags []
certRow g13296 on (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,1,0,1,1]) using bank tags []
certRow g13297 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,1,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
