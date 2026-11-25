import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1200 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [2,0,0,4]
certRow f1200s0 on (rf1200 0) using bank tags [3,3]
certRow f1200s1 on (rf1200 1) using bank tags [3,3,3,3]
certRow f1200s2 on (rf1200 2) using bank tags [3]
certRow f1200s3 on (rf1200 3) using bank tags [3,3]
certRow f1200s4 on (rf1200 4) using bank tags [3,3]
certRow f1200s5 on (rf1200 5) using bank tags []
certRow f1200s6 on (rf1200 6) using bank tags []
certRow f1200s7 on (rf1200 7) using bank tags []
certRow f1200s8 on (rf1200 8) using bank tags [3]
certRow f1200s9 on (rf1200 9) using bank tags [3,3]
certRow f1200s10 on (rf1200 10) using bank tags []
certRow f1200s11 on (rf1200 11) using bank tags [3]
theorem f1200 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [2,0,0,4]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [2,0,0,4] (.cons (f1200s0) (.cons (f1200s1) (.cons (f1200s2) (.cons (f1200s3) (.cons (f1200s4) (.cons (f1200s5) (.cons (f1200s6) (.cons (f1200s7) (.cons (f1200s8) (.cons (f1200s9) (.cons (f1200s10) (.cons (f1200s11) .nil))))))))))))
private abbrev rf1201 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [2,0,1,3]
certRow f1201s0 on (rf1201 0) using bank tags [3,3,3,3]
certRow f1201s1 on (rf1201 1) using bank tags [3,3,3,3]
certRow f1201s2 on (rf1201 2) using bank tags [3,3]
certRow f1201s3 on (rf1201 3) using bank tags [3,3]
certRow f1201s4 on (rf1201 4) using bank tags [3,3,3]
certRow f1201s5 on (rf1201 5) using bank tags [3]
certRow f1201s6 on (rf1201 6) using bank tags []
certRow f1201s7 on (rf1201 7) using bank tags []
certRow f1201s8 on (rf1201 8) using bank tags [3]
certRow f1201s9 on (rf1201 9) using bank tags [3,3,3,3,3,3]
certRow f1201s10 on (rf1201 10) using bank tags []
certRow f1201s11 on (rf1201 11) using bank tags [3]
theorem f1201 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [2,0,1,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [2,0,1,3] (.cons (f1201s0) (.cons (f1201s1) (.cons (f1201s2) (.cons (f1201s3) (.cons (f1201s4) (.cons (f1201s5) (.cons (f1201s6) (.cons (f1201s7) (.cons (f1201s8) (.cons (f1201s9) (.cons (f1201s10) (.cons (f1201s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
