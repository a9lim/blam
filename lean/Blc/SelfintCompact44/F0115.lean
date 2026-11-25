import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf671 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,0,1,1,4]
certRow f671s0 on (rf671 0) using bank tags [28,28,28,28]
certRow f671s1 on (rf671 1) using bank tags [28,28,28,28,28,28,28,28,19,19]
certRow f671s2 on (rf671 2) using bank tags [28,28,28,28,28,28]
certRow f671s3 on (rf671 3) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow f671s4 on (rf671 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow f671s5 on (rf671 5) using bank tags [28,28]
certRow f671s6 on (rf671 6) using bank tags [28,28,28]
certRow f671s7 on (rf671 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,13,13,13,13,13,13,13,13,13,26,1,1,1,1,84,6,22]
theorem f671 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,0,1,1,4]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,0,1,1,4] (.cons (f671s0) (.cons (f671s1) (.cons (f671s2) (.cons (f671s3) (.cons (f671s4) (.cons (f671s5) (.cons (f671s6) (.cons (f671s7) .nil))))))))
private abbrev rf672 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,0,1,2,3]
certRow f672s0 on (rf672 0) using bank tags [28,28,1]
certRow f672s1 on (rf672 1) using bank tags [3,3,3,3,3]
certRow f672s2 on (rf672 2) using bank tags [28,28,28,28,28,28,28,28,28,28,3,28,28,28,28,28,28]
certRow f672s3 on (rf672 3) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,28,28]
certRow f672s4 on (rf672 4) using bank tags [3,3,3,3,3,28,28,28,3,28,28,28,28,28,28,28]
certRow f672s5 on (rf672 5) using bank tags [3]
certRow f672s6 on (rf672 6) using bank tags []
certRow f672s7 on (rf672 7) using bank tags [3,3,3,3,3,3,3,3,3,28,3,28,28,28,28,28,28,3,3,13,13,13,22,1,1,1,1,1,1]
theorem f672 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,0,1,2,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,0,1,2,3] (.cons (f672s0) (.cons (f672s1) (.cons (f672s2) (.cons (f672s3) (.cons (f672s4) (.cons (f672s5) (.cons (f672s6) (.cons (f672s7) .nil))))))))
private abbrev rf673 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [0,0,1,3,2]
certRow f673s0 on (rf673 0) using bank tags [3,3,28,28,28,3,3,3,28,28,28,28,28,28,28]
certRow f673s1 on (rf673 1) using bank tags [28,28,28,28,28,28,28]
certRow f673s2 on (rf673 2) using bank tags [28,28,28,28,28,28,28,28]
certRow f673s3 on (rf673 3) using bank tags [3,3,28,28,28,3,3,28,3,3,3,3,28,3,28,28,28,28,28,28,28,28,3,28]
certRow f673s4 on (rf673 4) using bank tags []
certRow f673s5 on (rf673 5) using bank tags [3,28]
certRow f673s6 on (rf673 6) using bank tags [3,1]
certRow f673s7 on (rf673 7) using bank tags [3,3,28,3,28]
certRow f673s8 on (rf673 8) using bank tags [28,28]
certRow f673s9 on (rf673 9) using bank tags [28,28,28,28,28,19]
certRow f673s10 on (rf673 10) using bank tags [3,3,28,3,3,3,28,28]
certRow f673s11 on (rf673 11) using bank tags [3,28,13,13,13,22,26,31,1,1,1,1,1,1,82,252]
theorem f673 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,0,1,3,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,0,1,3,2] (.cons (f673s0) (.cons (f673s1) (.cons (f673s2) (.cons (f673s3) (.cons (f673s4) (.cons (f673s5) (.cons (f673s6) (.cons (f673s7) (.cons (f673s8) (.cons (f673s9) (.cons (f673s10) (.cons (f673s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
