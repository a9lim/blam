import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13879 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 4 [0,2,1,1]
certRow g13879s0 on (rg13879 0) using bank tags []
certRow g13879s1 on (rg13879 1) using bank tags []
certRow g13879s2 on (rg13879 2) using bank tags [28,59,59,59,1,1,1,1,14,57,1,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13879s3 on (rg13879 3) using bank tags [28,59,59,59,1,1,1,1,14,57,1,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,59,59,59,1,1,1,1,14,57,1,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13879s4 on (rg13879 4) using bank tags []
certRow g13879s5 on (rg13879 5) using bank tags []
certRow g13879s6 on (rg13879 6) using bank tags []
certRow g13879s7 on (rg13879 7) using bank tags []
certRow g13879s8 on (rg13879 8) using bank tags []
certRow g13879s9 on (rg13879 9) using bank tags []
certRow g13879s10 on (rg13879 10) using bank tags []
certRow g13879s11 on (rg13879 11) using bank tags []
theorem g13879 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 4 [0,2,1,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 4 [0,2,1,1] (.cons (g13879s0) (.cons (g13879s1) (.cons (g13879s2) (.cons (g13879s3) (.cons (g13879s4) (.cons (g13879s5) (.cons (g13879s6) (.cons (g13879s7) (.cons (g13879s8) (.cons (g13879s9) (.cons (g13879s10) (.cons (g13879s11) .nil))))))))))))
certRow g13880 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [0,2,2,0]) using bank tags []
certRow g13881 on (Grammar43.fiveRow 8 5 4 true 4 2 4 [0,2,2,0]) using bank tags []
certRow g13882 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [0,3,0,1]) using bank tags []
certRow g13883 on (Grammar43.fiveRow 8 5 4 true 4 2 4 [0,3,0,1]) using bank tags []
certRow g13884 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [0,3,1,0]) using bank tags []
certRow g13885 on (Grammar43.fiveRow 8 5 4 true 4 2 4 [0,3,1,0]) using bank tags []
certRow g13886 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [0,4,0,0]) using bank tags []
certRow g13887 on (Grammar43.fiveRow 8 5 4 true 4 2 4 [0,4,0,0]) using bank tags []
certRow g13888 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [1,0,0,3]) using bank tags []
certRow g13889 on (Grammar43.fiveRow 8 5 4 true 4 2 4 [1,0,0,3]) using bank tags []
end Blc.SelfintSingleObject.Compact44
