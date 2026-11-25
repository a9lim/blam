import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13892 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 4 [1,0,2,1]
certRow g13892s0 on (rg13892 0) using bank tags []
certRow g13892s1 on (rg13892 1) using bank tags [15,32,17,6,57,57,57,26,17,6,6,15,32,26,32,24,26,19,15,32,1,6,57,57,57,15,1,6,6,15,32,1,1,24,30,19]
certRow g13892s2 on (rg13892 2) using bank tags [15,6,25,6,57,57,57,1,25,32,6,15,6,6,22,24,22,19]
certRow g13892s3 on (rg13892 3) using bank tags [15,6,1,6,57,57,57,1,1,6,6,15,6,6,6,24,6,19,15,65,1,6,57,57,57,26,1,6,6,15,65,6,82,24,45,19]
certRow g13892s4 on (rg13892 4) using bank tags []
certRow g13892s5 on (rg13892 5) using bank tags [19,19,19,19,19,19,19,19,19,19,29,6,19,19,29,6,19,19,19,19,29,1,19,19,19,19,19,19,29,32,19,19,29,24,19,19]
certRow g13892s6 on (rg13892 6) using bank tags []
certRow g13892s7 on (rg13892 7) using bank tags []
certRow g13892s8 on (rg13892 8) using bank tags []
certRow g13892s9 on (rg13892 9) using bank tags []
certRow g13892s10 on (rg13892 10) using bank tags []
certRow g13892s11 on (rg13892 11) using bank tags []
theorem g13892 : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 4 [1,0,2,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 4 [1,0,2,1] (.cons (g13892s0) (.cons (g13892s1) (.cons (g13892s2) (.cons (g13892s3) (.cons (g13892s4) (.cons (g13892s5) (.cons (g13892s6) (.cons (g13892s7) (.cons (g13892s8) (.cons (g13892s9) (.cons (g13892s10) (.cons (g13892s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
