import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13232 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,0,4,0,0]
certRow g13232s0 on (rg13232 0) using bank tags []
certRow g13232s1 on (rg13232 1) using bank tags []
certRow g13232s2 on (rg13232 2) using bank tags []
certRow g13232s3 on (rg13232 3) using bank tags []
certRow g13232s4 on (rg13232 4) using bank tags []
certRow g13232s5 on (rg13232 5) using bank tags []
certRow g13232s6 on (rg13232 6) using bank tags []
certRow g13232s7 on (rg13232 7) using bank tags []
certRow g13232s8 on (rg13232 8) using bank tags []
certRow g13232s9 on (rg13232 9) using bank tags []
certRow g13232s10 on (rg13232 10) using bank tags []
certRow g13232s11 on (rg13232 11) using bank tags []
theorem g13232 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,0,4,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,0,4,0,0] (.cons (g13232s0) (.cons (g13232s1) (.cons (g13232s2) (.cons (g13232s3) (.cons (g13232s4) (.cons (g13232s5) (.cons (g13232s6) (.cons (g13232s7) (.cons (g13232s8) (.cons (g13232s9) (.cons (g13232s10) (.cons (g13232s11) .nil))))))))))))
certRow g13233 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,0,4,0,0]) using bank tags []
private abbrev rg13234 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,1,0,0,3]
certRow g13234s0 on (rg13234 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow g13234s1 on (rg13234 1) using bank tags [1,28,28,28,1,28,28,28,28,28]
certRow g13234s2 on (rg13234 2) using bank tags [3,28,3,28,3,3,3,28,28,28,28,28,28,28,28]
certRow g13234s3 on (rg13234 3) using bank tags [3,3,3,3,3,3,3,3,3,3,28,3,28,3,3,3,28,28,28]
certRow g13234s4 on (rg13234 4) using bank tags [1,28,28,28,1,28,28,28,28,28]
certRow g13234s5 on (rg13234 5) using bank tags [3,3,3,3,3,28]
certRow g13234s6 on (rg13234 6) using bank tags [28]
certRow g13234s7 on (rg13234 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow g13234s8 on (rg13234 8) using bank tags [3,3]
certRow g13234s9 on (rg13234 9) using bank tags [3,3]
certRow g13234s10 on (rg13234 10) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28]
certRow g13234s11 on (rg13234 11) using bank tags [20,20,20,20,20,20,20,20,20,20,13,13,13,13,13,6,6,6,6,6]
theorem g13234 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,1,0,0,3]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,1,0,0,3] (.cons (g13234s0) (.cons (g13234s1) (.cons (g13234s2) (.cons (g13234s3) (.cons (g13234s4) (.cons (g13234s5) (.cons (g13234s6) (.cons (g13234s7) (.cons (g13234s8) (.cons (g13234s9) (.cons (g13234s10) (.cons (g13234s11) .nil))))))))))))
certRow g13235 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,1,0,0,3]) using bank tags []
end Blc.SelfintSingleObject.Compact44
