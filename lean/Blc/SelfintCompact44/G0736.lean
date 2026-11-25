import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13966 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 5 [0,1,1,0,2]
certRow g13966s0 on (rg13966 0) using bank tags []
certRow g13966s1 on (rg13966 1) using bank tags [28,28,28,14,28,28,28,14,28,28,28,14,28,28,28,14,28,28,28,14]
certRow g13966s2 on (rg13966 2) using bank tags [28,28,28,1,28,28,28,1]
certRow g13966s3 on (rg13966 3) using bank tags [28,28,28,14,28,28,28,1]
certRow g13966s4 on (rg13966 4) using bank tags [28,28,28,14,28,28,28,14,28,28,28,1,28,28,28,14,28,28,28,1]
certRow g13966s5 on (rg13966 5) using bank tags []
certRow g13966s6 on (rg13966 6) using bank tags [28,28,28,15,28,28,28,15,28,28,28,15,28,28,28,15,28,28,28,15,1,29,29,1,29,1,29,1,1,29,29,1,29,1,29,1]
certRow g13966s7 on (rg13966 7) using bank tags []
certRow g13966s8 on (rg13966 8) using bank tags []
certRow g13966s9 on (rg13966 9) using bank tags []
certRow g13966s10 on (rg13966 10) using bank tags [1,29,29,8,29,1,29,0,1,29,29,8,29,1,29,16,35,29,29,6,29,35,29,6,35,29,29,6,29,35,29,6,19,19,29,108,19,19,29,87,0,29,29,6,29,0,29,6,19,19,29,108,19,19,29,87,19,19,19,29,16,19,19,29,28,19,19,19,29,16,19,19,29,28] except [Floor44.e4778693955182,Floor44.e5609631464162,Floor44.e4785155699630]
certRow g13966s11 on (rg13966 11) using bank tags []
theorem g13966 (hard : BadRow [Floor44.e4778693955182,Floor44.e5609631464162,Floor44.e4785155699630]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,1,1,0,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 5 [0,1,1,0,2] (.cons (g13966s0) (.cons (g13966s1) (.cons (g13966s2) (.cons (g13966s3) (.cons (g13966s4) (.cons (g13966s5) (.cons (g13966s6) (.cons (g13966s7) (.cons (g13966s8) (.cons (g13966s9) (.cons (g13966s10 (.cons (hard.get (by decide : Floor44.e4778693955182 ∈ [Floor44.e4778693955182,Floor44.e5609631464162,Floor44.e4785155699630])) (.cons (hard.get (by decide : Floor44.e5609631464162 ∈ [Floor44.e4778693955182,Floor44.e5609631464162,Floor44.e4785155699630])) (.cons (hard.get (by decide : Floor44.e4785155699630 ∈ [Floor44.e4778693955182,Floor44.e5609631464162,Floor44.e4785155699630])) .nil)))) (.cons (g13966s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
