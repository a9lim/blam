import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13873 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 4 [0,1,2,1]
certRow g13873s0 on (rg13873 0) using bank tags []
certRow g13873s1 on (rg13873 1) using bank tags []
certRow g13873s2 on (rg13873 2) using bank tags [28,59,59,59,1,1,1,1,14,57,1,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13873s3 on (rg13873 3) using bank tags [28,59,59,59,1,1,1,1,14,57,1,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,59,59,59,1,1,1,1,14,57,1,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13873s4 on (rg13873 4) using bank tags []
certRow g13873s5 on (rg13873 5) using bank tags []
certRow g13873s6 on (rg13873 6) using bank tags []
certRow g13873s7 on (rg13873 7) using bank tags []
certRow g13873s8 on (rg13873 8) using bank tags []
certRow g13873s9 on (rg13873 9) using bank tags []
certRow g13873s10 on (rg13873 10) using bank tags []
certRow g13873s11 on (rg13873 11) using bank tags []
theorem g13873 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 4 [0,1,2,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 4 [0,1,2,1] (.cons (g13873s0) (.cons (g13873s1) (.cons (g13873s2) (.cons (g13873s3) (.cons (g13873s4) (.cons (g13873s5) (.cons (g13873s6) (.cons (g13873s7) (.cons (g13873s8) (.cons (g13873s9) (.cons (g13873s10) (.cons (g13873s11) .nil))))))))))))
certRow g13874 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [0,1,3,0]) using bank tags []
certRow g13875 on (Grammar43.fiveRow 8 5 4 true 4 2 4 [0,1,3,0]) using bank tags []
certRow g13876 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [0,2,0,2]) using bank tags []
certRow g13877 on (Grammar43.fiveRow 8 5 4 true 4 2 4 [0,2,0,2]) using bank tags []
certRow g13878 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [0,2,1,1]) using bank tags [14,32,1,1,57,57,57,15,1,1,1,14,32,1,1,11,6,19,14,6,21,1,57,57,57,6,21,55,1,14,6,1,1,11,6,19,14,6,1,1,57,57,57,6,1,1,1,14,6,1,1,11,36,19]
end Blc.SelfintSingleObject.Compact44
