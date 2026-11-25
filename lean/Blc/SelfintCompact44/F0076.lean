import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf410 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,2,1,0,0,1]
certRow f410s0 on (rf410 0) using bank tags [3,3,3,3]
certRow f410s1 on (rf410 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,0,0,0,0] except [Floor44.e4846201500486,Floor44.e4846201494854,Floor44.e4846201052486,Floor44.e4846166449478]
certRow f410s2 on (rf410 2) using bank tags [3,3,3,3,3,28,28,28,28,35,35,35,35,6,24,24,35,24,35,6,35,24,24]
certRow f410s3 on (rf410 3) using bank tags [3,3,3,3,28,28,28,28]
certRow f410s4 on (rf410 4) using bank tags [3,3,3,3,3,28,28,28]
certRow f410s5 on (rf410 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,0,0] except [Floor44.e4845899510982,Floor44.e4846201500870]
certRow f410s6 on (rf410 6) using bank tags [28,28,28,28,28,28,28]
certRow f410s7 on (rf410 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f410s8 on (rf410 8) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f410s9 on (rf410 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f410s10 on (rf410 10) using bank tags []
certRow f410s11 on (rf410 11) using bank tags [28,28,28,28,28]
theorem f410 (hard : BadRow [Floor44.e4845899510982,Floor44.e4846201500870,Floor44.e4846201500486,Floor44.e4846201494854,Floor44.e4846201052486,Floor44.e4846166449478]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,2,1,0,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,2,1,0,0,1] (.cons (f410s0) (.cons (f410s1 (.cons (hard.get (by decide : Floor44.e4846201500486 ∈ [Floor44.e4845899510982,Floor44.e4846201500870,Floor44.e4846201500486,Floor44.e4846201494854,Floor44.e4846201052486,Floor44.e4846166449478])) (.cons (hard.get (by decide : Floor44.e4846201494854 ∈ [Floor44.e4845899510982,Floor44.e4846201500870,Floor44.e4846201500486,Floor44.e4846201494854,Floor44.e4846201052486,Floor44.e4846166449478])) (.cons (hard.get (by decide : Floor44.e4846201052486 ∈ [Floor44.e4845899510982,Floor44.e4846201500870,Floor44.e4846201500486,Floor44.e4846201494854,Floor44.e4846201052486,Floor44.e4846166449478])) (.cons (hard.get (by decide : Floor44.e4846166449478 ∈ [Floor44.e4845899510982,Floor44.e4846201500870,Floor44.e4846201500486,Floor44.e4846201494854,Floor44.e4846201052486,Floor44.e4846166449478])) .nil))))) (.cons (f410s2) (.cons (f410s3) (.cons (f410s4) (.cons (f410s5 (.cons (hard.get (by decide : Floor44.e4845899510982 ∈ [Floor44.e4845899510982,Floor44.e4846201500870,Floor44.e4846201500486,Floor44.e4846201494854,Floor44.e4846201052486,Floor44.e4846166449478])) (.cons (hard.get (by decide : Floor44.e4846201500870 ∈ [Floor44.e4845899510982,Floor44.e4846201500870,Floor44.e4846201500486,Floor44.e4846201494854,Floor44.e4846201052486,Floor44.e4846166449478])) .nil))) (.cons (f410s6) (.cons (f410s7) (.cons (f410s8) (.cons (f410s9) (.cons (f410s10) (.cons (f410s11) .nil))))))))))))
private abbrev rf411 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,2,1,0,1,0]
certRow f411s0 on (rf411 0) using bank tags [3,3,3,3,3,3]
certRow f411s1 on (rf411 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28]
certRow f411s2 on (rf411 2) using bank tags [3,3,3,3,3,28,28,28,28,35,35,6,24,24,24,35,6,24,35,24]
certRow f411s3 on (rf411 3) using bank tags [3,3,3,3,0,0,0,0,0,0] except [Floor44.e4846201500442,Floor44.e4846201494810,Floor44.e4846201048282,Floor44.e4846201052442,Floor44.e4846200939354,Floor44.e4846166449434]
certRow f411s4 on (rf411 4) using bank tags [3,3,3,3,3,28,28,28]
certRow f411s5 on (rf411 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f411s6 on (rf411 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f411s7 on (rf411 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f411s8 on (rf411 8) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28]
certRow f411s9 on (rf411 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow f411s10 on (rf411 10) using bank tags []
certRow f411s11 on (rf411 11) using bank tags [28,28,28,3,3,3,3,3,28,28,28,28,28,28]
theorem f411 (hard : BadRow [Floor44.e4846201500442,Floor44.e4846201494810,Floor44.e4846201048282,Floor44.e4846201052442,Floor44.e4846200939354,Floor44.e4846166449434]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,2,1,0,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,2,1,0,1,0] (.cons (f411s0) (.cons (f411s1) (.cons (f411s2) (.cons (f411s3 (.cons (hard.get (by decide : Floor44.e4846201500442 ∈ [Floor44.e4846201500442,Floor44.e4846201494810,Floor44.e4846201048282,Floor44.e4846201052442,Floor44.e4846200939354,Floor44.e4846166449434])) (.cons (hard.get (by decide : Floor44.e4846201494810 ∈ [Floor44.e4846201500442,Floor44.e4846201494810,Floor44.e4846201048282,Floor44.e4846201052442,Floor44.e4846200939354,Floor44.e4846166449434])) (.cons (hard.get (by decide : Floor44.e4846201048282 ∈ [Floor44.e4846201500442,Floor44.e4846201494810,Floor44.e4846201048282,Floor44.e4846201052442,Floor44.e4846200939354,Floor44.e4846166449434])) (.cons (hard.get (by decide : Floor44.e4846201052442 ∈ [Floor44.e4846201500442,Floor44.e4846201494810,Floor44.e4846201048282,Floor44.e4846201052442,Floor44.e4846200939354,Floor44.e4846166449434])) (.cons (hard.get (by decide : Floor44.e4846200939354 ∈ [Floor44.e4846201500442,Floor44.e4846201494810,Floor44.e4846201048282,Floor44.e4846201052442,Floor44.e4846200939354,Floor44.e4846166449434])) (.cons (hard.get (by decide : Floor44.e4846166449434 ∈ [Floor44.e4846201500442,Floor44.e4846201494810,Floor44.e4846201048282,Floor44.e4846201052442,Floor44.e4846200939354,Floor44.e4846166449434])) .nil))))))) (.cons (f411s4) (.cons (f411s5) (.cons (f411s6) (.cons (f411s7) (.cons (f411s8) (.cons (f411s9) (.cons (f411s10) (.cons (f411s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
