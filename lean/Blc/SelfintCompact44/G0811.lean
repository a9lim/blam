import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14676 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,2,0,1,0,1]
certRow g14676s0 on (rg14676 0) using bank tags []
certRow g14676s1 on (rg14676 1) using bank tags [28,28,28,28]
certRow g14676s2 on (rg14676 2) using bank tags [28,28,28,28,13,13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,1,1,1,1,1,1,35,22,1,1,6,22,6,6,1,1,1,1,1,22,1,1,16,22]
certRow g14676s3 on (rg14676 3) using bank tags [28,28,28,28,28,28,28]
certRow g14676s4 on (rg14676 4) using bank tags [28,28,28,28,28]
certRow g14676s5 on (rg14676 5) using bank tags [28,28,19,19,29,0,29,0] except [Floor44.e4846201498678,Floor44.e4846201056310]
certRow g14676s6 on (rg14676 6) using bank tags [35,15,28,28,28,28,28,28,28,28,28,28,22,35,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14676s7 on (rg14676 7) using bank tags []
certRow g14676s8 on (rg14676 8) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,26,28,28,28,28,28,28,28,28,28,28]
certRow g14676s9 on (rg14676 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,22,26,28,28,28,28,28,28,28,28,28,28]
certRow g14676s10 on (rg14676 10) using bank tags []
certRow g14676s11 on (rg14676 11) using bank tags [28,28,28,28,28,28,1,1,1,1,1,1,1,1,1,1,1,1,1,28,28]
theorem g14676 (hard : BadRow [Floor44.e4846201498678,Floor44.e4846201056310]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,2,0,1,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,2,0,1,0,1] (.cons (g14676s0) (.cons (g14676s1) (.cons (g14676s2) (.cons (g14676s3) (.cons (g14676s4) (.cons (g14676s5 (.cons (hard.get (by decide : Floor44.e4846201498678 ∈ [Floor44.e4846201498678,Floor44.e4846201056310])) (.cons (hard.get (by decide : Floor44.e4846201056310 ∈ [Floor44.e4846201498678,Floor44.e4846201056310])) .nil))) (.cons (g14676s6) (.cons (g14676s7) (.cons (g14676s8) (.cons (g14676s9) (.cons (g14676s10) (.cons (g14676s11) .nil))))))))))))
certRow g14677 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,2,0,1,0,1]) using bank tags []
private abbrev rg14678 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,2,0,1,1,0]
certRow g14678s0 on (rg14678 0) using bank tags []
certRow g14678s1 on (rg14678 1) using bank tags [28,28,28,28,28,28,0,0,0,0,86] except [Floor44.e4846201497442,Floor44.e4846201494370,Floor44.e4846201055074,Floor44.e4846201052002]
certRow g14678s2 on (rg14678 2) using bank tags [28,28,28,28,13,13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,1,1,1,1,1,1,1,1,35,0,1,1,1,1,6,35,1,1,1,1,1,6] except [Floor44.e4846339892698]
certRow g14678s3 on (rg14678 3) using bank tags [28,28,28,28,28,28,28,28,28,28,28,1,28,1,1,6,1,6,54,6,44,22,44,214,29,0] except [Floor44.e4846201046746]
certRow g14678s4 on (rg14678 4) using bank tags [28,28,28,28,28]
certRow g14678s5 on (rg14678 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,19,19,29,0,29,0] except [Floor44.e4846201498682,Floor44.e4846201056314]
certRow g14678s6 on (rg14678 6) using bank tags [28,28,28,28,28,28,28,28]
certRow g14678s7 on (rg14678 7) using bank tags []
certRow g14678s8 on (rg14678 8) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14678s9 on (rg14678 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1]
certRow g14678s10 on (rg14678 10) using bank tags []
certRow g14678s11 on (rg14678 11) using bank tags [28,28,28,28,28,28,28,28,28,28]
theorem g14678 (hard : BadRow [Floor44.e4846339892698,Floor44.e4846201498682,Floor44.e4846201056314,Floor44.e4846201497442,Floor44.e4846201494370,Floor44.e4846201055074,Floor44.e4846201052002,Floor44.e4846201046746]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,2,0,1,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,2,0,1,1,0] (.cons (g14678s0) (.cons (g14678s1 (.cons (hard.get (by decide : Floor44.e4846201497442 ∈ [Floor44.e4846339892698,Floor44.e4846201498682,Floor44.e4846201056314,Floor44.e4846201497442,Floor44.e4846201494370,Floor44.e4846201055074,Floor44.e4846201052002,Floor44.e4846201046746])) (.cons (hard.get (by decide : Floor44.e4846201494370 ∈ [Floor44.e4846339892698,Floor44.e4846201498682,Floor44.e4846201056314,Floor44.e4846201497442,Floor44.e4846201494370,Floor44.e4846201055074,Floor44.e4846201052002,Floor44.e4846201046746])) (.cons (hard.get (by decide : Floor44.e4846201055074 ∈ [Floor44.e4846339892698,Floor44.e4846201498682,Floor44.e4846201056314,Floor44.e4846201497442,Floor44.e4846201494370,Floor44.e4846201055074,Floor44.e4846201052002,Floor44.e4846201046746])) (.cons (hard.get (by decide : Floor44.e4846201052002 ∈ [Floor44.e4846339892698,Floor44.e4846201498682,Floor44.e4846201056314,Floor44.e4846201497442,Floor44.e4846201494370,Floor44.e4846201055074,Floor44.e4846201052002,Floor44.e4846201046746])) .nil))))) (.cons (g14678s2 (.cons (hard.get (by decide : Floor44.e4846339892698 ∈ [Floor44.e4846339892698,Floor44.e4846201498682,Floor44.e4846201056314,Floor44.e4846201497442,Floor44.e4846201494370,Floor44.e4846201055074,Floor44.e4846201052002,Floor44.e4846201046746])) .nil)) (.cons (g14678s3 (.cons (hard.get (by decide : Floor44.e4846201046746 ∈ [Floor44.e4846339892698,Floor44.e4846201498682,Floor44.e4846201056314,Floor44.e4846201497442,Floor44.e4846201494370,Floor44.e4846201055074,Floor44.e4846201052002,Floor44.e4846201046746])) .nil)) (.cons (g14678s4) (.cons (g14678s5 (.cons (hard.get (by decide : Floor44.e4846201498682 ∈ [Floor44.e4846339892698,Floor44.e4846201498682,Floor44.e4846201056314,Floor44.e4846201497442,Floor44.e4846201494370,Floor44.e4846201055074,Floor44.e4846201052002,Floor44.e4846201046746])) (.cons (hard.get (by decide : Floor44.e4846201056314 ∈ [Floor44.e4846339892698,Floor44.e4846201498682,Floor44.e4846201056314,Floor44.e4846201497442,Floor44.e4846201494370,Floor44.e4846201055074,Floor44.e4846201052002,Floor44.e4846201046746])) .nil))) (.cons (g14678s6) (.cons (g14678s7) (.cons (g14678s8) (.cons (g14678s9) (.cons (g14678s10) (.cons (g14678s11) .nil))))))))))))
certRow g14679 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,2,0,1,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
