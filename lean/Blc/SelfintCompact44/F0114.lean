import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf668 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,0,0,2,4]
certRow f668s0 on (rf668 0) using bank tags []
certRow f668s1 on (rf668 1) using bank tags [28,28,28,28,28,28,28,28,19,19]
certRow f668s2 on (rf668 2) using bank tags [28,28]
certRow f668s3 on (rf668 3) using bank tags [28,28,28]
certRow f668s4 on (rf668 4) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f668s5 on (rf668 5) using bank tags [28]
certRow f668s6 on (rf668 6) using bank tags []
certRow f668s7 on (rf668 7) using bank tags [28,28,28,28,28,13,13,13,6,22,22,13,6,245,6]
theorem f668 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,0,0,2,4]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,0,0,2,4] (.cons (f668s0) (.cons (f668s1) (.cons (f668s2) (.cons (f668s3) (.cons (f668s4) (.cons (f668s5) (.cons (f668s6) (.cons (f668s7) .nil))))))))
private abbrev rf669 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,0,0,3,3]
certRow f669s0 on (rf669 0) using bank tags []
certRow f669s1 on (rf669 1) using bank tags [28,28,28,28,28,19,19]
certRow f669s2 on (rf669 2) using bank tags [28,28,28,28,28]
certRow f669s3 on (rf669 3) using bank tags [28,28,28,28,28,28]
certRow f669s4 on (rf669 4) using bank tags []
certRow f669s5 on (rf669 5) using bank tags [28,28]
certRow f669s6 on (rf669 6) using bank tags []
certRow f669s7 on (rf669 7) using bank tags [28,28,28,28,28,28,28,28,28,28,22,22,22,6,22,22,6,6,6,6]
theorem f669 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,0,0,3,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,0,0,3,3] (.cons (f669s0) (.cons (f669s1) (.cons (f669s2) (.cons (f669s3) (.cons (f669s4) (.cons (f669s5) (.cons (f669s6) (.cons (f669s7) .nil))))))))
private abbrev rf670 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,0,0,4,2]
certRow f670s0 on (rf670 0) using bank tags []
certRow f670s1 on (rf670 1) using bank tags [28,28,28,19,19]
certRow f670s2 on (rf670 2) using bank tags [28,28,28,28,28,28,28]
certRow f670s3 on (rf670 3) using bank tags [28,28,28]
certRow f670s4 on (rf670 4) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f670s5 on (rf670 5) using bank tags [28]
certRow f670s6 on (rf670 6) using bank tags []
certRow f670s7 on (rf670 7) using bank tags [28,28,28,28,28,13,13,13,22,22,6,13,6,6,6]
theorem f670 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,0,0,4,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,0,0,4,2] (.cons (f670s0) (.cons (f670s1) (.cons (f670s2) (.cons (f670s3) (.cons (f670s4) (.cons (f670s5) (.cons (f670s6) (.cons (f670s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
