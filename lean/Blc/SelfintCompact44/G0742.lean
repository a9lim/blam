import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13980 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 5 [0,2,0,1,1]
certRow g13980s0 on (rg13980 0) using bank tags []
certRow g13980s1 on (rg13980 1) using bank tags [28,28,28,15,28,28,28,1,28,28,28,15,28,28,28,1,28,28,28,1]
certRow g13980s2 on (rg13980 2) using bank tags [28,28,28,14,28,28,28,1]
certRow g13980s3 on (rg13980 3) using bank tags [28,28,28,15,28,28,28,14]
certRow g13980s4 on (rg13980 4) using bank tags [28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1]
certRow g13980s5 on (rg13980 5) using bank tags []
certRow g13980s6 on (rg13980 6) using bank tags [28,28,28,32,28,28,28,1,28,28,28,32,28,28,28,1,28,28,28,1]
certRow g13980s7 on (rg13980 7) using bank tags [6,29,29,51,29,6,29,6,90,29,29,51,29,90,29,98]
certRow g13980s8 on (rg13980 8) using bank tags []
certRow g13980s9 on (rg13980 9) using bank tags []
certRow g13980s10 on (rg13980 10) using bank tags [35,29,29,6,29,35,29,1,35,29,29,6,29,35,29,1,6,29,29,6,29,6,29,1,0,29,29,6,29,0,29,1,0,29,29,6,29,0,29,1] except [Floor44.e5609631488866,Floor44.e4785155701174,Floor44.e5609631378274,Floor44.e4785155694262]
certRow g13980s11 on (rg13980 11) using bank tags []
theorem g13980 (hard : BadRow [Floor44.e5609631488866,Floor44.e4785155701174,Floor44.e5609631378274,Floor44.e4785155694262]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,2,0,1,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 5 [0,2,0,1,1] (.cons (g13980s0) (.cons (g13980s1) (.cons (g13980s2) (.cons (g13980s3) (.cons (g13980s4) (.cons (g13980s5) (.cons (g13980s6) (.cons (g13980s7) (.cons (g13980s8) (.cons (g13980s9) (.cons (g13980s10 (.cons (hard.get (by decide : Floor44.e5609631488866 ∈ [Floor44.e5609631488866,Floor44.e4785155701174,Floor44.e5609631378274,Floor44.e4785155694262])) (.cons (hard.get (by decide : Floor44.e4785155701174 ∈ [Floor44.e5609631488866,Floor44.e4785155701174,Floor44.e5609631378274,Floor44.e4785155694262])) (.cons (hard.get (by decide : Floor44.e5609631378274 ∈ [Floor44.e5609631488866,Floor44.e4785155701174,Floor44.e5609631378274,Floor44.e4785155694262])) (.cons (hard.get (by decide : Floor44.e4785155694262 ∈ [Floor44.e5609631488866,Floor44.e4785155701174,Floor44.e5609631378274,Floor44.e4785155694262])) .nil))))) (.cons (g13980s11) .nil))))))))))))
private abbrev rg13981 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 5 [0,2,0,1,1]
certRow g13981s0 on (rg13981 0) using bank tags []
certRow g13981s1 on (rg13981 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g13981s2 on (rg13981 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g13981s3 on (rg13981 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g13981s4 on (rg13981 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g13981s5 on (rg13981 5) using bank tags []
certRow g13981s6 on (rg13981 6) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g13981s7 on (rg13981 7) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,6,1,1,1,29,6,29,6,1,1,24,26,1,1,29,6,29,6,1,1]
certRow g13981s8 on (rg13981 8) using bank tags []
certRow g13981s9 on (rg13981 9) using bank tags []
certRow g13981s10 on (rg13981 10) using bank tags [6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1]
certRow g13981s11 on (rg13981 11) using bank tags []
theorem g13981 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,2,0,1,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 5 [0,2,0,1,1] (.cons (g13981s0) (.cons (g13981s1) (.cons (g13981s2) (.cons (g13981s3) (.cons (g13981s4) (.cons (g13981s5) (.cons (g13981s6) (.cons (g13981s7) (.cons (g13981s8) (.cons (g13981s9) (.cons (g13981s10) (.cons (g13981s11) .nil))))))))))))
certRow g13982 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,2,0,2,0]) using bank tags []
certRow g13983 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,2,0,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
