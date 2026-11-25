import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13246 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,1,1,2,0]
certRow g13246s0 on (rg13246 0) using bank tags [3,3,3,3,3]
certRow g13246s1 on (rg13246 1) using bank tags [3,3,3,28,28,28,13]
certRow g13246s2 on (rg13246 2) using bank tags [3,3,3,28,28,28,28,28,28]
certRow g13246s3 on (rg13246 3) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,3]
certRow g13246s4 on (rg13246 4) using bank tags [28,16]
certRow g13246s5 on (rg13246 5) using bank tags [3,3,3,3,28,28,28,27]
certRow g13246s6 on (rg13246 6) using bank tags [3,3,28,28,3]
certRow g13246s7 on (rg13246 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,3]
certRow g13246s8 on (rg13246 8) using bank tags [3,3,3,28,27]
certRow g13246s9 on (rg13246 9) using bank tags [3,3,3,3,3,3,28,3,3]
certRow g13246s10 on (rg13246 10) using bank tags [3,3,3,28,28]
certRow g13246s11 on (rg13246 11) using bank tags [3,3,3,28,28,28,28,20,20,20,20,20,20,18,61,18,13]
theorem g13246 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,1,1,2,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,1,1,2,0] (.cons (g13246s0) (.cons (g13246s1) (.cons (g13246s2) (.cons (g13246s3) (.cons (g13246s4) (.cons (g13246s5) (.cons (g13246s6) (.cons (g13246s7) (.cons (g13246s8) (.cons (g13246s9) (.cons (g13246s10) (.cons (g13246s11) .nil))))))))))))
certRow g13247 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,1,1,2,0]) using bank tags []
private abbrev rg13248 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,1,2,0,1]
certRow g13248s0 on (rg13248 0) using bank tags [3,3,3,3,3]
certRow g13248s1 on (rg13248 1) using bank tags [3,3,3,3,3,3,3,3,3,3,28,13,13]
certRow g13248s2 on (rg13248 2) using bank tags [3,3,3,3,28,28,28,28,28,28,28,28,16]
certRow g13248s3 on (rg13248 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13248s4 on (rg13248 4) using bank tags [3,28,28,3]
certRow g13248s5 on (rg13248 5) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,27,27]
certRow g13248s6 on (rg13248 6) using bank tags [3,3,206,28,28,28,28,3,27]
certRow g13248s7 on (rg13248 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,3,3]
certRow g13248s8 on (rg13248 8) using bank tags [3,3]
certRow g13248s9 on (rg13248 9) using bank tags [3,28,28,3,3,3,3]
certRow g13248s10 on (rg13248 10) using bank tags [3,3,3,3,3,3,1,28]
certRow g13248s11 on (rg13248 11) using bank tags [3,3,3,28,28,20,20,20,20,20,20,20,20,20,20,24,24,24,18,13,13]
theorem g13248 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,1,2,0,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,1,2,0,1] (.cons (g13248s0) (.cons (g13248s1) (.cons (g13248s2) (.cons (g13248s3) (.cons (g13248s4) (.cons (g13248s5) (.cons (g13248s6) (.cons (g13248s7) (.cons (g13248s8) (.cons (g13248s9) (.cons (g13248s10) (.cons (g13248s11) .nil))))))))))))
certRow g13249 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,1,2,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
