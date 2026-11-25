import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1160 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,1,2,3]
certRow f1160s0 on (rf1160 0) using bank tags [3,3]
certRow f1160s1 on (rf1160 1) using bank tags [3,3,3,3,3,3]
certRow f1160s2 on (rf1160 2) using bank tags [3,3,3,3,3,3,3]
certRow f1160s3 on (rf1160 3) using bank tags [3,3]
certRow f1160s4 on (rf1160 4) using bank tags [3,3,3,3,3,3]
certRow f1160s5 on (rf1160 5) using bank tags [3,3,3,3,3]
certRow f1160s6 on (rf1160 6) using bank tags []
certRow f1160s7 on (rf1160 7) using bank tags [3,3]
certRow f1160s8 on (rf1160 8) using bank tags [3]
certRow f1160s9 on (rf1160 9) using bank tags [3,3]
certRow f1160s10 on (rf1160 10) using bank tags []
certRow f1160s11 on (rf1160 11) using bank tags [3,3]
theorem f1160 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,1,2,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,1,2,3] (.cons (f1160s0) (.cons (f1160s1) (.cons (f1160s2) (.cons (f1160s3) (.cons (f1160s4) (.cons (f1160s5) (.cons (f1160s6) (.cons (f1160s7) (.cons (f1160s8) (.cons (f1160s9) (.cons (f1160s10) (.cons (f1160s11) .nil))))))))))))
private abbrev rf1161 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,1,3,2]
certRow f1161s0 on (rf1161 0) using bank tags [3,3]
certRow f1161s1 on (rf1161 1) using bank tags [3,3,3,3,3]
certRow f1161s2 on (rf1161 2) using bank tags [3,3,3,3]
certRow f1161s3 on (rf1161 3) using bank tags [3,3,3,3]
certRow f1161s4 on (rf1161 4) using bank tags [3,3,3,3,3,3]
certRow f1161s5 on (rf1161 5) using bank tags [3,3,3,3,3]
certRow f1161s6 on (rf1161 6) using bank tags []
certRow f1161s7 on (rf1161 7) using bank tags [3,3,3]
certRow f1161s8 on (rf1161 8) using bank tags []
certRow f1161s9 on (rf1161 9) using bank tags [3,3,3]
certRow f1161s10 on (rf1161 10) using bank tags []
certRow f1161s11 on (rf1161 11) using bank tags [3,3]
theorem f1161 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,1,3,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,1,3,2] (.cons (f1161s0) (.cons (f1161s1) (.cons (f1161s2) (.cons (f1161s3) (.cons (f1161s4) (.cons (f1161s5) (.cons (f1161s6) (.cons (f1161s7) (.cons (f1161s8) (.cons (f1161s9) (.cons (f1161s10) (.cons (f1161s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
