import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g13866 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [0,0,4,0]) using bank tags []
certRow g13867 on (Grammar43.fiveRow 8 5 4 true 4 2 4 [0,0,4,0]) using bank tags []
certRow g13868 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [0,1,0,3]) using bank tags []
certRow g13869 on (Grammar43.fiveRow 8 5 4 true 4 2 4 [0,1,0,3]) using bank tags []
certRow g13870 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [0,1,1,2]) using bank tags [15,32,1,1,57,57,57,1,1,1,1,15,32,1,1,6,6,19,15,6,1,1,57,57,57,15,1,1,1,15,6,1,1,32,30,19,14,6,1,1,57,57,57,1,1,1,1,14,6,1,1,24,6,19]
private abbrev rg13871 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 4 [0,1,1,2]
certRow g13871s0 on (rg13871 0) using bank tags []
certRow g13871s1 on (rg13871 1) using bank tags []
certRow g13871s2 on (rg13871 2) using bank tags [28,59,59,59,1,1,1,1,14,57,1,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13871s3 on (rg13871 3) using bank tags [28,59,59,59,1,1,1,1,14,57,1,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,59,59,59,1,1,1,1,14,57,1,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13871s4 on (rg13871 4) using bank tags []
certRow g13871s5 on (rg13871 5) using bank tags []
certRow g13871s6 on (rg13871 6) using bank tags []
certRow g13871s7 on (rg13871 7) using bank tags []
certRow g13871s8 on (rg13871 8) using bank tags []
certRow g13871s9 on (rg13871 9) using bank tags []
certRow g13871s10 on (rg13871 10) using bank tags []
certRow g13871s11 on (rg13871 11) using bank tags []
theorem g13871 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 4 [0,1,1,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 4 [0,1,1,2] (.cons (g13871s0) (.cons (g13871s1) (.cons (g13871s2) (.cons (g13871s3) (.cons (g13871s4) (.cons (g13871s5) (.cons (g13871s6) (.cons (g13871s7) (.cons (g13871s8) (.cons (g13871s9) (.cons (g13871s10) (.cons (g13871s11) .nil))))))))))))
certRow g13872 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [0,1,2,1]) using bank tags [14,32,21,1,57,57,57,1,21,17,1,14,32,1,1,6,6,19,15,6,1,1,57,57,57,1,1,1,1,15,6,1,1,11,6,19,14,6,1,1,57,57,57,1,1,1,1,14,6,1,1,6,6,19]
end Blc.SelfintSingleObject.Compact44
