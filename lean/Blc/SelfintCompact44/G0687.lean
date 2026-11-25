import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13418 (i : Nat) := Split43.five 12 i 8 5 4 false 3 2 5 [0,0,2,0,1]
certRow g13418s0 on (rg13418 0) using bank tags []
certRow g13418s1 on (rg13418 1) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g13418s2 on (rg13418 2) using bank tags [28,28,28,28]
certRow g13418s3 on (rg13418 3) using bank tags [28,28,28,28]
certRow g13418s4 on (rg13418 4) using bank tags [28,28,28,28,28,28,28,28,28,28,29,29,19,19,29,29,19,19,29,29,29,29,19,19,29,29,19,19,29,29]
certRow g13418s5 on (rg13418 5) using bank tags []
certRow g13418s6 on (rg13418 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g13418s7 on (rg13418 7) using bank tags []
certRow g13418s8 on (rg13418 8) using bank tags []
certRow g13418s9 on (rg13418 9) using bank tags []
certRow g13418s10 on (rg13418 10) using bank tags [28,28,28,28,29,29,29,1,29,29,29,1,29,29,29,29,29,1,29,29,29,1,29,29,29,29,29,1,29,29,29,1,29,29,29,29,29,1,29,29,29,1,29,29,29,29,29,1,29,29,29,1,29,29,29,29,19,19,29,29,19,19,29,29,29,29,19,19,29,29,19,19,29,29,29,29,29,0,29,29,29,0,29,29,29,29,29,0,29,29,29,0,29,29] except [Floor44.e4817624502070,Floor44.e4818161372982,Floor44.e4817624501206,Floor44.e4818161372118]
certRow g13418s11 on (rg13418 11) using bank tags []
theorem g13418 (hard : BadRow [Floor44.e4817624502070,Floor44.e4818161372982,Floor44.e4817624501206,Floor44.e4818161372118]) : BadRow (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,0,2,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 3 2 5 [0,0,2,0,1] (.cons (g13418s0) (.cons (g13418s1) (.cons (g13418s2) (.cons (g13418s3) (.cons (g13418s4) (.cons (g13418s5) (.cons (g13418s6) (.cons (g13418s7) (.cons (g13418s8) (.cons (g13418s9) (.cons (g13418s10 (.cons (hard.get (by decide : Floor44.e4817624502070 ∈ [Floor44.e4817624502070,Floor44.e4818161372982,Floor44.e4817624501206,Floor44.e4818161372118])) (.cons (hard.get (by decide : Floor44.e4818161372982 ∈ [Floor44.e4817624502070,Floor44.e4818161372982,Floor44.e4817624501206,Floor44.e4818161372118])) (.cons (hard.get (by decide : Floor44.e4817624501206 ∈ [Floor44.e4817624502070,Floor44.e4818161372982,Floor44.e4817624501206,Floor44.e4818161372118])) (.cons (hard.get (by decide : Floor44.e4818161372118 ∈ [Floor44.e4817624502070,Floor44.e4818161372982,Floor44.e4817624501206,Floor44.e4818161372118])) .nil))))) (.cons (g13418s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
