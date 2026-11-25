import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13970 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 5 [0,1,1,2,0]
certRow g13970s0 on (rg13970 0) using bank tags []
certRow g13970s1 on (rg13970 1) using bank tags [28,28,28,14,28,28,28,14,28,28,28,14]
certRow g13970s2 on (rg13970 2) using bank tags [28,28,28,1,28,28,28,1]
certRow g13970s3 on (rg13970 3) using bank tags [28,28,28,14,28,28,28,1]
certRow g13970s4 on (rg13970 4) using bank tags [28,28,28,1,28,28,28,14,28,28,28,1]
certRow g13970s5 on (rg13970 5) using bank tags []
certRow g13970s6 on (rg13970 6) using bank tags [28,28,28,26,28,28,28,15,28,28,28,26,1,29,29,1,29,1,29,1]
certRow g13970s7 on (rg13970 7) using bank tags []
certRow g13970s8 on (rg13970 8) using bank tags []
certRow g13970s9 on (rg13970 9) using bank tags []
certRow g13970s10 on (rg13970 10) using bank tags [1,29,29,10,29,1,29,0,35,29,29,6,29,35,29,6,19,19,29,22,19,19,29,16,19,19,29,108,19,19,29,87,19,19,19,29,16,19,19,29,28] except [Floor44.e4778693955194]
certRow g13970s11 on (rg13970 11) using bank tags []
theorem g13970 (hard : BadRow [Floor44.e4778693955194]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,1,1,2,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 5 [0,1,1,2,0] (.cons (g13970s0) (.cons (g13970s1) (.cons (g13970s2) (.cons (g13970s3) (.cons (g13970s4) (.cons (g13970s5) (.cons (g13970s6) (.cons (g13970s7) (.cons (g13970s8) (.cons (g13970s9) (.cons (g13970s10 (.cons (hard.get (by decide : Floor44.e4778693955194 ∈ [Floor44.e4778693955194])) .nil)) (.cons (g13970s11) .nil))))))))))))
private abbrev rg13971 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 5 [0,1,1,2,0]
certRow g13971s0 on (rg13971 0) using bank tags []
certRow g13971s1 on (rg13971 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g13971s2 on (rg13971 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g13971s3 on (rg13971 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g13971s4 on (rg13971 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,27,57,1,1,29,1,29,1,1,1]
certRow g13971s5 on (rg13971 5) using bank tags []
certRow g13971s6 on (rg13971 6) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,1,1,1,1,1,1]
certRow g13971s7 on (rg13971 7) using bank tags []
certRow g13971s8 on (rg13971 8) using bank tags []
certRow g13971s9 on (rg13971 9) using bank tags []
certRow g13971s10 on (rg13971 10) using bank tags [1,1,1,1,1,1,6,1,1,1,1,1,19,1,1,1,1,1,19,1,1,1,1,1,19,12,19,1,1,1,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g13971s11 on (rg13971 11) using bank tags []
theorem g13971 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,1,1,2,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 5 [0,1,1,2,0] (.cons (g13971s0) (.cons (g13971s1) (.cons (g13971s2) (.cons (g13971s3) (.cons (g13971s4) (.cons (g13971s5) (.cons (g13971s6) (.cons (g13971s7) (.cons (g13971s8) (.cons (g13971s9) (.cons (g13971s10) (.cons (g13971s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
