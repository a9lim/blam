import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1164 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,2,0,4]
certRow f1164s0 on (rf1164 0) using bank tags [3,3,3]
certRow f1164s1 on (rf1164 1) using bank tags [3,3,3,3,3,3,3,3]
certRow f1164s2 on (rf1164 2) using bank tags [3,3]
certRow f1164s3 on (rf1164 3) using bank tags [3,3]
certRow f1164s4 on (rf1164 4) using bank tags [3,3,3,3,3]
certRow f1164s5 on (rf1164 5) using bank tags [3,3,3,3,3,3]
certRow f1164s6 on (rf1164 6) using bank tags []
certRow f1164s7 on (rf1164 7) using bank tags [3,3]
certRow f1164s8 on (rf1164 8) using bank tags [3]
certRow f1164s9 on (rf1164 9) using bank tags [3,3,3]
certRow f1164s10 on (rf1164 10) using bank tags []
certRow f1164s11 on (rf1164 11) using bank tags [3]
theorem f1164 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,2,0,4]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,2,0,4] (.cons (f1164s0) (.cons (f1164s1) (.cons (f1164s2) (.cons (f1164s3) (.cons (f1164s4) (.cons (f1164s5) (.cons (f1164s6) (.cons (f1164s7) (.cons (f1164s8) (.cons (f1164s9) (.cons (f1164s10) (.cons (f1164s11) .nil))))))))))))
private abbrev rf1165 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,2,1,3]
certRow f1165s0 on (rf1165 0) using bank tags [3,3,3,3]
certRow f1165s1 on (rf1165 1) using bank tags [3,3,3,3,3,3,3,3]
certRow f1165s2 on (rf1165 2) using bank tags [3,3,3,3,3,3]
certRow f1165s3 on (rf1165 3) using bank tags [3,3]
certRow f1165s4 on (rf1165 4) using bank tags [3,3,3,3,3,3]
certRow f1165s5 on (rf1165 5) using bank tags [3,3,3,3,3,3]
certRow f1165s6 on (rf1165 6) using bank tags []
certRow f1165s7 on (rf1165 7) using bank tags [3,3,3,3]
certRow f1165s8 on (rf1165 8) using bank tags [3]
certRow f1165s9 on (rf1165 9) using bank tags [3,3,3,3]
certRow f1165s10 on (rf1165 10) using bank tags []
certRow f1165s11 on (rf1165 11) using bank tags [3]
theorem f1165 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,2,1,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,2,1,3] (.cons (f1165s0) (.cons (f1165s1) (.cons (f1165s2) (.cons (f1165s3) (.cons (f1165s4) (.cons (f1165s5) (.cons (f1165s6) (.cons (f1165s7) (.cons (f1165s8) (.cons (f1165s9) (.cons (f1165s10) (.cons (f1165s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
