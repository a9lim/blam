import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g13424 on (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,1,0,0,2]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,29,29,29,1,29,29,29,6,29,29,29,29,29,1,29,29,29,6,29,29,29,29,29,1,29,29,29,6,29,29,29,29,29,1,29,29,29,6,29,29,29,29,29,1,29,29,29,6,29,29]
private abbrev rg13425 (i : Nat) := Split43.five 12 i 8 5 4 true 3 2 5 [0,1,0,0,2]
certRow g13425s0 on (rg13425 0) using bank tags []
certRow g13425s1 on (rg13425 1) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13425s2 on (rg13425 2) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13425s3 on (rg13425 3) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13425s4 on (rg13425 4) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13425s5 on (rg13425 5) using bank tags []
certRow g13425s6 on (rg13425 6) using bank tags [28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1]
certRow g13425s7 on (rg13425 7) using bank tags []
certRow g13425s8 on (rg13425 8) using bank tags []
certRow g13425s9 on (rg13425 9) using bank tags []
certRow g13425s10 on (rg13425 10) using bank tags [9,1,7,6,6,1,51,1,1,1,1,1,9,1,7,6,6,1,17,1,1,1,1,1,9,1,7,6,1,1,1,1,10,1,1,1,9,1,7,6,1,1,17,1,10,1,1,1,9,1,7,6,1,1,1,1,10,1,1,1]
certRow g13425s11 on (rg13425 11) using bank tags []
theorem g13425 : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,1,0,0,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 3 2 5 [0,1,0,0,2] (.cons (g13425s0) (.cons (g13425s1) (.cons (g13425s2) (.cons (g13425s3) (.cons (g13425s4) (.cons (g13425s5) (.cons (g13425s6) (.cons (g13425s7) (.cons (g13425s8) (.cons (g13425s9) (.cons (g13425s10) (.cons (g13425s11) .nil))))))))))))
certRow g13426 on (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,1,0,1,1]) using bank tags []
certRow g13427 on (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,1,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
