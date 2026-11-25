import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf695 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,1,1,4,0]
certRow f695s0 on (rf695 0) using bank tags []
certRow f695s1 on (rf695 1) using bank tags [28,28,28,28]
certRow f695s2 on (rf695 2) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f695s3 on (rf695 3) using bank tags [28,28,28,28]
certRow f695s4 on (rf695 4) using bank tags [28,28,28,28,28,28,18,77]
certRow f695s5 on (rf695 5) using bank tags [28,28,28,28,28,28,28]
certRow f695s6 on (rf695 6) using bank tags [28,28,28]
certRow f695s7 on (rf695 7) using bank tags [28,28,13,13,13,13,13,78,18,24]
theorem f695 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,1,1,4,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,1,1,4,0] (.cons (f695s0) (.cons (f695s1) (.cons (f695s2) (.cons (f695s3) (.cons (f695s4) (.cons (f695s5) (.cons (f695s6) (.cons (f695s7) .nil))))))))
private abbrev rf696 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [0,1,2,0,3]
certRow f696s0 on (rf696 0) using bank tags [3,3,3,3,3,28,3,3,28,3,3,28,28,28,28]
certRow f696s1 on (rf696 1) using bank tags [28,28]
certRow f696s2 on (rf696 2) using bank tags [28,28,28,28,28,28,28]
certRow f696s3 on (rf696 3) using bank tags [3,3,3,28,3,3,28,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,1,47]
certRow f696s4 on (rf696 4) using bank tags [1]
certRow f696s5 on (rf696 5) using bank tags [3,3,28,28]
certRow f696s6 on (rf696 6) using bank tags [28,28,3,3]
certRow f696s7 on (rf696 7) using bank tags [3,3]
certRow f696s8 on (rf696 8) using bank tags [28,28,28,28,28,28]
certRow f696s9 on (rf696 9) using bank tags [3,3,3,3,3,28,28,28]
certRow f696s10 on (rf696 10) using bank tags [28,28,28,28,28,28]
certRow f696s11 on (rf696 11) using bank tags [28,28,28,28,28,1,15,13,13,6,6,19,6,6,19,6,0,19,45,22] except [Floor44.e4846363331614]
theorem f696 (hard : BadRow [Floor44.e4846363331614]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,1,2,0,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,1,2,0,3] (.cons (f696s0) (.cons (f696s1) (.cons (f696s2) (.cons (f696s3) (.cons (f696s4) (.cons (f696s5) (.cons (f696s6) (.cons (f696s7) (.cons (f696s8) (.cons (f696s9) (.cons (f696s10) (.cons (f696s11 (.cons (hard.get (by decide : Floor44.e4846363331614 ∈ [Floor44.e4846363331614])) .nil)) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
