import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf738 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,0,0,3,2]
certRow f738s0 on (rf738 0) using bank tags [28,28]
certRow f738s1 on (rf738 1) using bank tags [28,28,28,28,28]
certRow f738s2 on (rf738 2) using bank tags [3,3,3,3,3,3,28,28,28,28,28,28,28,28]
certRow f738s3 on (rf738 3) using bank tags [3,28,28,3,3,28,28,28,3,3]
certRow f738s4 on (rf738 4) using bank tags [3,3,3,3,28,28,28,28,28]
certRow f738s5 on (rf738 5) using bank tags [3,28,28,3,28,28,28,28,28,28,28,28]
certRow f738s6 on (rf738 6) using bank tags [3,3,3]
certRow f738s7 on (rf738 7) using bank tags [3,28,3,28,1,1,1,19,77,6,77,19,6,19,6,6,1,1]
theorem f738 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,0,0,3,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,0,0,3,2] (.cons (f738s0) (.cons (f738s1) (.cons (f738s2) (.cons (f738s3) (.cons (f738s4) (.cons (f738s5) (.cons (f738s6) (.cons (f738s7) .nil))))))))
private abbrev rf739 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,0,0,4,1]
certRow f739s0 on (rf739 0) using bank tags []
certRow f739s1 on (rf739 1) using bank tags [28,28,28,28,28]
certRow f739s2 on (rf739 2) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f739s3 on (rf739 3) using bank tags [28,28,28,28,28,28,28]
certRow f739s4 on (rf739 4) using bank tags [28,28,28,28,28]
certRow f739s5 on (rf739 5) using bank tags [28,28,28,28,28,28,28,28]
certRow f739s6 on (rf739 6) using bank tags []
certRow f739s7 on (rf739 7) using bank tags [28,28,13,13,13,13,1,1,1,22,85,85,19,6,1]
theorem f739 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,0,0,4,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,0,0,4,1] (.cons (f739s0) (.cons (f739s1) (.cons (f739s2) (.cons (f739s3) (.cons (f739s4) (.cons (f739s5) (.cons (f739s6) (.cons (f739s7) .nil))))))))
private abbrev rf740 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,0,1,0,4]
certRow f740s0 on (rf740 0) using bank tags [28,28]
certRow f740s1 on (rf740 1) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f740s2 on (rf740 2) using bank tags [28,28,28,28,28,28,28]
certRow f740s3 on (rf740 3) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow f740s4 on (rf740 4) using bank tags [28,28,28,28,28]
certRow f740s5 on (rf740 5) using bank tags [28,28,28,28]
certRow f740s6 on (rf740 6) using bank tags []
certRow f740s7 on (rf740 7) using bank tags [28,28,13,13,13,13,13,13,13,1,32,1,1,1,22,19,6,6,6,6,6,6,6,1,1]
theorem f740 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,0,1,0,4]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,0,1,0,4] (.cons (f740s0) (.cons (f740s1) (.cons (f740s2) (.cons (f740s3) (.cons (f740s4) (.cons (f740s5) (.cons (f740s6) (.cons (f740s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
