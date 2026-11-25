import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13972 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 5 [0,1,2,0,1]
certRow g13972s0 on (rg13972 0) using bank tags []
certRow g13972s1 on (rg13972 1) using bank tags [28,28,28,14,28,28,28,14,28,28,28,1,28,28,28,1,28,28,28,32]
certRow g13972s2 on (rg13972 2) using bank tags [28,28,28,1,28,28,28,1]
certRow g13972s3 on (rg13972 3) using bank tags [28,28,28,1,28,28,28,1]
certRow g13972s4 on (rg13972 4) using bank tags [28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1]
certRow g13972s5 on (rg13972 5) using bank tags []
certRow g13972s6 on (rg13972 6) using bank tags [28,28,28,26,28,28,28,26,28,28,28,1,28,28,28,1,28,28,28,26,1,29,29,1,29,1,29,1,1,29,29,1,29,1,29,1]
certRow g13972s7 on (rg13972 7) using bank tags [6,29,29,51,29,6,29,6]
certRow g13972s8 on (rg13972 8) using bank tags []
certRow g13972s9 on (rg13972 9) using bank tags []
certRow g13972s10 on (rg13972 10) using bank tags [1,29,29,10,29,1,29,6,1,29,29,10,29,1,29,6,35,29,29,6,29,35,29,6,22,29,29,6,29,22,29,6,19,19,29,6,19,19,29,6,0,29,29,6,29,0,29,6,19,19,29,62,19,19,29,18,19,19,19,29,30,19,19,29,28,19,19,19,29,30,19,19,29,28] except [Floor44.e5609631464802,Floor44.e4785155699670]
certRow g13972s11 on (rg13972 11) using bank tags []
theorem g13972 (hard : BadRow [Floor44.e5609631464802,Floor44.e4785155699670]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,1,2,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 5 [0,1,2,0,1] (.cons (g13972s0) (.cons (g13972s1) (.cons (g13972s2) (.cons (g13972s3) (.cons (g13972s4) (.cons (g13972s5) (.cons (g13972s6) (.cons (g13972s7) (.cons (g13972s8) (.cons (g13972s9) (.cons (g13972s10 (.cons (hard.get (by decide : Floor44.e5609631464802 ∈ [Floor44.e5609631464802,Floor44.e4785155699670])) (.cons (hard.get (by decide : Floor44.e4785155699670 ∈ [Floor44.e5609631464802,Floor44.e4785155699670])) .nil))) (.cons (g13972s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
