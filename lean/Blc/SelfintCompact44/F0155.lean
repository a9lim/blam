import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf790 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,0,0,2,2]
certRow f790s0 on (rf790 0) using bank tags [28,28]
certRow f790s1 on (rf790 1) using bank tags [3,3,3,3,3]
certRow f790s2 on (rf790 2) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f790s3 on (rf790 3) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f790s4 on (rf790 4) using bank tags [28,28,28,28,28]
certRow f790s5 on (rf790 5) using bank tags [3,3,3,3,28,28]
certRow f790s6 on (rf790 6) using bank tags []
certRow f790s7 on (rf790 7) using bank tags [3,3,3,3]
theorem f790 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,0,0,2,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,0,0,2,2] (.cons (f790s0) (.cons (f790s1) (.cons (f790s2) (.cons (f790s3) (.cons (f790s4) (.cons (f790s5) (.cons (f790s6) (.cons (f790s7) .nil))))))))
private abbrev rf791 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,0,0,3,1]
certRow f791s0 on (rf791 0) using bank tags []
certRow f791s1 on (rf791 1) using bank tags [28,28,28,28,28]
certRow f791s2 on (rf791 2) using bank tags [3,3,3,3,3,3,28,28,28]
certRow f791s3 on (rf791 3) using bank tags [28,28,3,28,28,28,3,3]
certRow f791s4 on (rf791 4) using bank tags []
certRow f791s5 on (rf791 5) using bank tags [28,28,3,28,28,28,28,28,28]
certRow f791s6 on (rf791 6) using bank tags [3,3,3,3]
certRow f791s7 on (rf791 7) using bank tags [28,28]
theorem f791 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,0,0,3,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,0,0,3,1] (.cons (f791s0) (.cons (f791s1) (.cons (f791s2) (.cons (f791s3) (.cons (f791s4) (.cons (f791s5) (.cons (f791s6) (.cons (f791s7) .nil))))))))
certRow f792 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,0,0,4,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
private abbrev rf793 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,0,1,0,3]
certRow f793s0 on (rf793 0) using bank tags [28,28,28,28]
certRow f793s1 on (rf793 1) using bank tags [3,3,3,3,3]
certRow f793s2 on (rf793 2) using bank tags [3,3,28,28,28,28,28,28,28,28]
certRow f793s3 on (rf793 3) using bank tags [3,3,3,28,3,3,28,28,28,28,28,28]
certRow f793s4 on (rf793 4) using bank tags []
certRow f793s5 on (rf793 5) using bank tags [3,3,28,28]
certRow f793s6 on (rf793 6) using bank tags [3,3,3,3,3,3,3]
certRow f793s7 on (rf793 7) using bank tags [3,3]
theorem f793 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,0,1,0,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,0,1,0,3] (.cons (f793s0) (.cons (f793s1) (.cons (f793s2) (.cons (f793s3) (.cons (f793s4) (.cons (f793s5) (.cons (f793s6) (.cons (f793s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
