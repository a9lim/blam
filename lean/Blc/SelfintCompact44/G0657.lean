import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13314 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [2,0,0,0,2]
certRow g13314s0 on (rg13314 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,205,28,28,28]
certRow g13314s1 on (rg13314 1) using bank tags []
certRow g13314s2 on (rg13314 2) using bank tags [3,3,3,3,3,3,3,28,28,1,28,28,28]
certRow g13314s3 on (rg13314 3) using bank tags [3,3,3,3]
certRow g13314s4 on (rg13314 4) using bank tags [1,28,28,28,9,28,28,28,28,205,28,28,28]
certRow g13314s5 on (rg13314 5) using bank tags [3,3,3,3]
certRow g13314s6 on (rg13314 6) using bank tags [3,3,28]
certRow g13314s7 on (rg13314 7) using bank tags [3,3]
certRow g13314s8 on (rg13314 8) using bank tags [28,28]
certRow g13314s9 on (rg13314 9) using bank tags [3,3,3,3]
certRow g13314s10 on (rg13314 10) using bank tags []
certRow g13314s11 on (rg13314 11) using bank tags []
theorem g13314 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [2,0,0,0,2]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [2,0,0,0,2] (.cons (g13314s0) (.cons (g13314s1) (.cons (g13314s2) (.cons (g13314s3) (.cons (g13314s4) (.cons (g13314s5) (.cons (g13314s6) (.cons (g13314s7) (.cons (g13314s8) (.cons (g13314s9) (.cons (g13314s10) (.cons (g13314s11) .nil))))))))))))
certRow g13315 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [2,0,0,0,2]) using bank tags []
private abbrev rg13316 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [2,0,0,1,1]
certRow g13316s0 on (rg13316 0) using bank tags [3,3,3,3,3,205,28,28,28]
certRow g13316s1 on (rg13316 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28]
certRow g13316s2 on (rg13316 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,1,28,28,28,28,28,28,28,28,28]
certRow g13316s3 on (rg13316 3) using bank tags [3,3,3]
certRow g13316s4 on (rg13316 4) using bank tags [28,28,28,28,28]
certRow g13316s5 on (rg13316 5) using bank tags [3,3,3,1,28,28,28,28,9,28,28,28,28,28,205,28,28,28,28,28,28]
certRow g13316s6 on (rg13316 6) using bank tags [3,3,3,3,3,28,28,28]
certRow g13316s7 on (rg13316 7) using bank tags [3,3]
certRow g13316s8 on (rg13316 8) using bank tags [3,3,3,3,3,28,28,28]
certRow g13316s9 on (rg13316 9) using bank tags [3,3,3,3,28,28]
certRow g13316s10 on (rg13316 10) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow g13316s11 on (rg13316 11) using bank tags [3,3,3,3,3]
theorem g13316 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [2,0,0,1,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [2,0,0,1,1] (.cons (g13316s0) (.cons (g13316s1) (.cons (g13316s2) (.cons (g13316s3) (.cons (g13316s4) (.cons (g13316s5) (.cons (g13316s6) (.cons (g13316s7) (.cons (g13316s8) (.cons (g13316s9) (.cons (g13316s10) (.cons (g13316s11) .nil))))))))))))
certRow g13317 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [2,0,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
