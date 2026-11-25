import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf748 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,0,2,3,0]
certRow f748s0 on (rf748 0) using bank tags [28,28]
certRow f748s1 on (rf748 1) using bank tags [3]
certRow f748s2 on (rf748 2) using bank tags [3,3,3,28,3,3,3,3,28,28,3,28,28,28,28]
certRow f748s3 on (rf748 3) using bank tags [3,28,3,3,3,28]
certRow f748s4 on (rf748 4) using bank tags [3,3,3,3,19,6]
certRow f748s5 on (rf748 5) using bank tags [3,28,28,28,28,28,28,28,28,28]
certRow f748s6 on (rf748 6) using bank tags [3,3,3]
certRow f748s7 on (rf748 7) using bank tags [1,1,19,6]
theorem f748 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,0,2,3,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,0,2,3,0] (.cons (f748s0) (.cons (f748s1) (.cons (f748s2) (.cons (f748s3) (.cons (f748s4) (.cons (f748s5) (.cons (f748s6) (.cons (f748s7) .nil))))))))
private abbrev rf749 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,0,3,0,2]
certRow f749s0 on (rf749 0) using bank tags [3,3]
certRow f749s1 on (rf749 1) using bank tags [28,28,28,28,28,28,28]
certRow f749s2 on (rf749 2) using bank tags [3,3,3,3,3,28,28,28,28,28,28]
certRow f749s3 on (rf749 3) using bank tags [28,28,28,3,28,28,3]
certRow f749s4 on (rf749 4) using bank tags [3,3,3,3,3,3,3,28,28,28]
certRow f749s5 on (rf749 5) using bank tags [28,28,28,28,28]
certRow f749s6 on (rf749 6) using bank tags [3,3,3,3,3]
certRow f749s7 on (rf749 7) using bank tags [28,28,1,49,1,1,1,6,19,6,6,0,6] except [Floor44.e4845195697806]
theorem f749 (hard : BadRow [Floor44.e4845195697806]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,0,3,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,0,3,0,2] (.cons (f749s0) (.cons (f749s1) (.cons (f749s2) (.cons (f749s3) (.cons (f749s4) (.cons (f749s5) (.cons (f749s6) (.cons (f749s7 (.cons (hard.get (by decide : Floor44.e4845195697806 ∈ [Floor44.e4845195697806])) .nil)) .nil))))))))
private abbrev rf750 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [1,0,3,1,1]
certRow f750s0 on (rf750 0) using bank tags [3,3,3,3,3,3,28,28,28,28,28]
certRow f750s1 on (rf750 1) using bank tags [3,3,3,3,3,28,28,28]
certRow f750s2 on (rf750 2) using bank tags [3,3,28,28,28,28,28]
certRow f750s3 on (rf750 3) using bank tags [3,3,3,3,28,28,28,28,28,28,3,28,28,3,28,28,3,1,26,1,1,26,1,6,6,6,35,77]
certRow f750s4 on (rf750 4) using bank tags [3,3,3,3,3]
certRow f750s5 on (rf750 5) using bank tags [3,3,28,28,28,28]
certRow f750s6 on (rf750 6) using bank tags [18]
certRow f750s7 on (rf750 7) using bank tags [28,28,28,28]
certRow f750s8 on (rf750 8) using bank tags [3,3]
certRow f750s9 on (rf750 9) using bank tags [28,28,28,28,28,3,3,28,28,28,28]
certRow f750s10 on (rf750 10) using bank tags [3,28,28,3,3,28,28,28,3,3]
certRow f750s11 on (rf750 11) using bank tags []
theorem f750 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,0,3,1,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,0,3,1,1] (.cons (f750s0) (.cons (f750s1) (.cons (f750s2) (.cons (f750s3) (.cons (f750s4) (.cons (f750s5) (.cons (f750s6) (.cons (f750s7) (.cons (f750s8) (.cons (f750s9) (.cons (f750s10) (.cons (f750s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
