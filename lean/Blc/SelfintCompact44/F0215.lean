import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1152 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,0,1,5]
certRow f1152s0 on (rf1152 0) using bank tags [3,3]
certRow f1152s1 on (rf1152 1) using bank tags [3,3,3,3,3,3,3]
certRow f1152s2 on (rf1152 2) using bank tags []
certRow f1152s3 on (rf1152 3) using bank tags [3,3,3,3]
certRow f1152s4 on (rf1152 4) using bank tags [3,3]
certRow f1152s5 on (rf1152 5) using bank tags [3,3]
certRow f1152s6 on (rf1152 6) using bank tags []
certRow f1152s7 on (rf1152 7) using bank tags [3]
certRow f1152s8 on (rf1152 8) using bank tags []
certRow f1152s9 on (rf1152 9) using bank tags [3,3]
certRow f1152s10 on (rf1152 10) using bank tags []
certRow f1152s11 on (rf1152 11) using bank tags []
theorem f1152 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,0,1,5]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,0,1,5] (.cons (f1152s0) (.cons (f1152s1) (.cons (f1152s2) (.cons (f1152s3) (.cons (f1152s4) (.cons (f1152s5) (.cons (f1152s6) (.cons (f1152s7) (.cons (f1152s8) (.cons (f1152s9) (.cons (f1152s10) (.cons (f1152s11) .nil))))))))))))
private abbrev rf1153 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,0,2,4]
certRow f1153s0 on (rf1153 0) using bank tags [3,3]
certRow f1153s1 on (rf1153 1) using bank tags [3,3,3,3,3,3,3,3,3]
certRow f1153s2 on (rf1153 2) using bank tags [3,3]
certRow f1153s3 on (rf1153 3) using bank tags [3,3]
certRow f1153s4 on (rf1153 4) using bank tags [3,3,3,3,3,3]
certRow f1153s5 on (rf1153 5) using bank tags [3,3,3,3]
certRow f1153s6 on (rf1153 6) using bank tags []
certRow f1153s7 on (rf1153 7) using bank tags [3,3]
certRow f1153s8 on (rf1153 8) using bank tags []
certRow f1153s9 on (rf1153 9) using bank tags [3,3,3]
certRow f1153s10 on (rf1153 10) using bank tags []
certRow f1153s11 on (rf1153 11) using bank tags []
theorem f1153 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,0,2,4]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,0,2,4] (.cons (f1153s0) (.cons (f1153s1) (.cons (f1153s2) (.cons (f1153s3) (.cons (f1153s4) (.cons (f1153s5) (.cons (f1153s6) (.cons (f1153s7) (.cons (f1153s8) (.cons (f1153s9) (.cons (f1153s10) (.cons (f1153s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
