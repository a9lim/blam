import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13984 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 5 [0,2,1,0,1]
certRow g13984s0 on (rg13984 0) using bank tags []
certRow g13984s1 on (rg13984 1) using bank tags [28,28,28,15,28,28,28,1,28,28,28,15,28,28,28,1,28,28,28,1]
certRow g13984s2 on (rg13984 2) using bank tags [28,28,28,14,28,28,28,1]
certRow g13984s3 on (rg13984 3) using bank tags [28,28,28,1,28,28,28,1]
certRow g13984s4 on (rg13984 4) using bank tags [28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1]
certRow g13984s5 on (rg13984 5) using bank tags []
certRow g13984s6 on (rg13984 6) using bank tags [28,28,28,32,28,28,28,1,28,28,28,32,28,28,28,1,28,28,28,1]
certRow g13984s7 on (rg13984 7) using bank tags [6,29,29,51,29,6,29,6]
certRow g13984s8 on (rg13984 8) using bank tags []
certRow g13984s9 on (rg13984 9) using bank tags []
certRow g13984s10 on (rg13984 10) using bank tags [0,29,29,6,29,0,29,6,0,29,29,6,29,0,29,6,19,19,29,22,19,19,29,6,0,29,29,6,29,0,29,6,19,19,29,62,19,19,29,6] except [Floor44.e5609631937378,Floor44.e4785155729206,Floor44.e5609631931746,Floor44.e4785155728854,Floor44.e5609631489378,Floor44.e4785155701206]
certRow g13984s11 on (rg13984 11) using bank tags []
theorem g13984 (hard : BadRow [Floor44.e5609631937378,Floor44.e4785155729206,Floor44.e5609631931746,Floor44.e4785155728854,Floor44.e5609631489378,Floor44.e4785155701206]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,2,1,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 5 [0,2,1,0,1] (.cons (g13984s0) (.cons (g13984s1) (.cons (g13984s2) (.cons (g13984s3) (.cons (g13984s4) (.cons (g13984s5) (.cons (g13984s6) (.cons (g13984s7) (.cons (g13984s8) (.cons (g13984s9) (.cons (g13984s10 (.cons (hard.get (by decide : Floor44.e5609631937378 ∈ [Floor44.e5609631937378,Floor44.e4785155729206,Floor44.e5609631931746,Floor44.e4785155728854,Floor44.e5609631489378,Floor44.e4785155701206])) (.cons (hard.get (by decide : Floor44.e4785155729206 ∈ [Floor44.e5609631937378,Floor44.e4785155729206,Floor44.e5609631931746,Floor44.e4785155728854,Floor44.e5609631489378,Floor44.e4785155701206])) (.cons (hard.get (by decide : Floor44.e5609631931746 ∈ [Floor44.e5609631937378,Floor44.e4785155729206,Floor44.e5609631931746,Floor44.e4785155728854,Floor44.e5609631489378,Floor44.e4785155701206])) (.cons (hard.get (by decide : Floor44.e4785155728854 ∈ [Floor44.e5609631937378,Floor44.e4785155729206,Floor44.e5609631931746,Floor44.e4785155728854,Floor44.e5609631489378,Floor44.e4785155701206])) (.cons (hard.get (by decide : Floor44.e5609631489378 ∈ [Floor44.e5609631937378,Floor44.e4785155729206,Floor44.e5609631931746,Floor44.e4785155728854,Floor44.e5609631489378,Floor44.e4785155701206])) (.cons (hard.get (by decide : Floor44.e4785155701206 ∈ [Floor44.e5609631937378,Floor44.e4785155729206,Floor44.e5609631931746,Floor44.e4785155728854,Floor44.e5609631489378,Floor44.e4785155701206])) .nil))))))) (.cons (g13984s11) .nil))))))))))))
private abbrev rg13985 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 5 [0,2,1,0,1]
certRow g13985s0 on (rg13985 0) using bank tags []
certRow g13985s1 on (rg13985 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g13985s2 on (rg13985 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g13985s3 on (rg13985 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g13985s4 on (rg13985 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g13985s5 on (rg13985 5) using bank tags []
certRow g13985s6 on (rg13985 6) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g13985s7 on (rg13985 7) using bank tags [1,1,1,1,1,1,6,1,1,1,29,6,29,6,1,1]
certRow g13985s8 on (rg13985 8) using bank tags []
certRow g13985s9 on (rg13985 9) using bank tags []
certRow g13985s10 on (rg13985 10) using bank tags [35,1,1,1,1,1,35,1,1,1,1,1,19,1,1,1,1,1,6,1,1,1,1,1,19,1,1,1,1,1]
certRow g13985s11 on (rg13985 11) using bank tags []
theorem g13985 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,2,1,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 5 [0,2,1,0,1] (.cons (g13985s0) (.cons (g13985s1) (.cons (g13985s2) (.cons (g13985s3) (.cons (g13985s4) (.cons (g13985s5) (.cons (g13985s6) (.cons (g13985s7) (.cons (g13985s8) (.cons (g13985s9) (.cons (g13985s10) (.cons (g13985s11) .nil))))))))))))
certRow g13986 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,2,1,1,0]) using bank tags [28,28,28,15,28,28,28,15,28,28,28,15,28,28,28,14,28,28,28,14,28,28,28,1,28,28,28,1,28,28,28,14,28,28,28,1,28,28,28,1,28,28,28,32,28,28,28,32,28,28,28,32,0,29,29,6,29,0,29,6,19,19,29,0,19,19,29,53,19,19,29,22,19,19,29,6] except [Floor44.e5609631937442,Floor44.e4785155729210,Floor44.e4836695336410]
end Blc.SelfintSingleObject.Compact44
