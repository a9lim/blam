import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14684 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,2,1,0,1,0]
certRow g14684s0 on (rg14684 0) using bank tags []
certRow g14684s1 on (rg14684 1) using bank tags [28,28,6,6,28,28,28,0,0,19,0,19] except [Floor44.e4846201500514,Floor44.e4846201494882,Floor44.e4846201052514]
certRow g14684s2 on (rg14684 2) using bank tags [13,13,13,13,13,13,13,13,13,13,13,13,13,13,35,6,35,35,35,6,35,35,35,35,6,0,19,19,35,6,19,6,35,19,35,6,19,6,19,35,6] except [Floor44.e4846341676122]
certRow g14684s3 on (rg14684 3) using bank tags [28,28,28,28,28,28,28,28,28,1,1,82,44,22,23,22,44,22,23,0,29,0,29,0] except [Floor44.e4846199864154,Floor44.e4846201499866,Floor44.e4846201046874]
certRow g14684s4 on (rg14684 4) using bank tags [28,28,28,28,28,28,28]
certRow g14684s5 on (rg14684 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,19,29,0] except [Floor44.e4846201500730]
certRow g14684s6 on (rg14684 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14684s7 on (rg14684 7) using bank tags []
certRow g14684s8 on (rg14684 8) using bank tags [1,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14684s9 on (rg14684 9) using bank tags [6,6,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1]
certRow g14684s10 on (rg14684 10) using bank tags []
certRow g14684s11 on (rg14684 11) using bank tags [6,6,28,28,28,28,28,28,28,28,28,28,28,28,28]
theorem g14684 (hard : BadRow [Floor44.e4846341676122,Floor44.e4846201500730,Floor44.e4846201500514,Floor44.e4846201494882,Floor44.e4846201052514,Floor44.e4846199864154,Floor44.e4846201499866,Floor44.e4846201046874]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,2,1,0,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,2,1,0,1,0] (.cons (g14684s0) (.cons (g14684s1 (.cons (hard.get (by decide : Floor44.e4846201500514 ∈ [Floor44.e4846341676122,Floor44.e4846201500730,Floor44.e4846201500514,Floor44.e4846201494882,Floor44.e4846201052514,Floor44.e4846199864154,Floor44.e4846201499866,Floor44.e4846201046874])) (.cons (hard.get (by decide : Floor44.e4846201494882 ∈ [Floor44.e4846341676122,Floor44.e4846201500730,Floor44.e4846201500514,Floor44.e4846201494882,Floor44.e4846201052514,Floor44.e4846199864154,Floor44.e4846201499866,Floor44.e4846201046874])) (.cons (hard.get (by decide : Floor44.e4846201052514 ∈ [Floor44.e4846341676122,Floor44.e4846201500730,Floor44.e4846201500514,Floor44.e4846201494882,Floor44.e4846201052514,Floor44.e4846199864154,Floor44.e4846201499866,Floor44.e4846201046874])) .nil)))) (.cons (g14684s2 (.cons (hard.get (by decide : Floor44.e4846341676122 ∈ [Floor44.e4846341676122,Floor44.e4846201500730,Floor44.e4846201500514,Floor44.e4846201494882,Floor44.e4846201052514,Floor44.e4846199864154,Floor44.e4846201499866,Floor44.e4846201046874])) .nil)) (.cons (g14684s3 (.cons (hard.get (by decide : Floor44.e4846199864154 ∈ [Floor44.e4846341676122,Floor44.e4846201500730,Floor44.e4846201500514,Floor44.e4846201494882,Floor44.e4846201052514,Floor44.e4846199864154,Floor44.e4846201499866,Floor44.e4846201046874])) (.cons (hard.get (by decide : Floor44.e4846201499866 ∈ [Floor44.e4846341676122,Floor44.e4846201500730,Floor44.e4846201500514,Floor44.e4846201494882,Floor44.e4846201052514,Floor44.e4846199864154,Floor44.e4846201499866,Floor44.e4846201046874])) (.cons (hard.get (by decide : Floor44.e4846201046874 ∈ [Floor44.e4846341676122,Floor44.e4846201500730,Floor44.e4846201500514,Floor44.e4846201494882,Floor44.e4846201052514,Floor44.e4846199864154,Floor44.e4846201499866,Floor44.e4846201046874])) .nil)))) (.cons (g14684s4) (.cons (g14684s5 (.cons (hard.get (by decide : Floor44.e4846201500730 ∈ [Floor44.e4846341676122,Floor44.e4846201500730,Floor44.e4846201500514,Floor44.e4846201494882,Floor44.e4846201052514,Floor44.e4846199864154,Floor44.e4846201499866,Floor44.e4846201046874])) .nil)) (.cons (g14684s6) (.cons (g14684s7) (.cons (g14684s8) (.cons (g14684s9) (.cons (g14684s10) (.cons (g14684s11) .nil))))))))))))
certRow g14685 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,2,1,0,1,0]) using bank tags []
private abbrev rg14686 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,2,1,1,0,0]
certRow g14686s0 on (rg14686 0) using bank tags []
certRow g14686s1 on (rg14686 1) using bank tags [6,28,28,28,6,6,6,28,28,28,0,19,19] except [Floor44.e4846201500578]
certRow g14686s2 on (rg14686 2) using bank tags [13,13,13,13,13,13,13,13,13,13,6,6,35,35,35,19,35,19,6,0,19,19,19,19,35,19,19,35] except [Floor44.e4846341682058]
certRow g14686s3 on (rg14686 3) using bank tags [6,28,6,28,6,28,18,61,53,6,23,22,29,0] except [Floor44.e4846201499882]
certRow g14686s4 on (rg14686 4) using bank tags []
certRow g14686s5 on (rg14686 5) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g14686s6 on (rg14686 6) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g14686s7 on (rg14686 7) using bank tags []
certRow g14686s8 on (rg14686 8) using bank tags [1,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14686s9 on (rg14686 9) using bank tags [6,6,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14686s10 on (rg14686 10) using bank tags []
certRow g14686s11 on (rg14686 11) using bank tags [6,6,6,28,28,28,6,28,28,28,28,28,28,28]
theorem g14686 (hard : BadRow [Floor44.e4846341682058,Floor44.e4846201500578,Floor44.e4846201499882]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,2,1,1,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,2,1,1,0,0] (.cons (g14686s0) (.cons (g14686s1 (.cons (hard.get (by decide : Floor44.e4846201500578 ∈ [Floor44.e4846341682058,Floor44.e4846201500578,Floor44.e4846201499882])) .nil)) (.cons (g14686s2 (.cons (hard.get (by decide : Floor44.e4846341682058 ∈ [Floor44.e4846341682058,Floor44.e4846201500578,Floor44.e4846201499882])) .nil)) (.cons (g14686s3 (.cons (hard.get (by decide : Floor44.e4846201499882 ∈ [Floor44.e4846341682058,Floor44.e4846201500578,Floor44.e4846201499882])) .nil)) (.cons (g14686s4) (.cons (g14686s5) (.cons (g14686s6) (.cons (g14686s7) (.cons (g14686s8) (.cons (g14686s9) (.cons (g14686s10) (.cons (g14686s11) .nil))))))))))))
certRow g14687 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,2,1,1,0,0]) using bank tags []
certRow g14688 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,2,2,0,0,0]) using bank tags [6,6,6,6,6,28,6,6,28]
certRow g14689 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,2,2,0,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
