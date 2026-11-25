import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1216 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [3,0,1,2]
certRow f1216s0 on (rf1216 0) using bank tags [3]
certRow f1216s1 on (rf1216 1) using bank tags [3,3]
certRow f1216s2 on (rf1216 2) using bank tags [3,3]
certRow f1216s3 on (rf1216 3) using bank tags [3,3]
certRow f1216s4 on (rf1216 4) using bank tags [3,3]
certRow f1216s5 on (rf1216 5) using bank tags []
certRow f1216s6 on (rf1216 6) using bank tags []
certRow f1216s7 on (rf1216 7) using bank tags []
certRow f1216s8 on (rf1216 8) using bank tags []
certRow f1216s9 on (rf1216 9) using bank tags [3,3,3,3,3,3,3]
certRow f1216s10 on (rf1216 10) using bank tags []
certRow f1216s11 on (rf1216 11) using bank tags [3,3]
theorem f1216 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [3,0,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [3,0,1,2] (.cons (f1216s0) (.cons (f1216s1) (.cons (f1216s2) (.cons (f1216s3) (.cons (f1216s4) (.cons (f1216s5) (.cons (f1216s6) (.cons (f1216s7) (.cons (f1216s8) (.cons (f1216s9) (.cons (f1216s10) (.cons (f1216s11) .nil))))))))))))
private abbrev rf1217 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [3,0,2,1]
certRow f1217s0 on (rf1217 0) using bank tags []
certRow f1217s1 on (rf1217 1) using bank tags [3,3]
certRow f1217s2 on (rf1217 2) using bank tags [3,3]
certRow f1217s3 on (rf1217 3) using bank tags []
certRow f1217s4 on (rf1217 4) using bank tags [3,3]
certRow f1217s5 on (rf1217 5) using bank tags [3,3]
certRow f1217s6 on (rf1217 6) using bank tags []
certRow f1217s7 on (rf1217 7) using bank tags []
certRow f1217s8 on (rf1217 8) using bank tags []
certRow f1217s9 on (rf1217 9) using bank tags [3,3,3,3,3,3]
certRow f1217s10 on (rf1217 10) using bank tags []
certRow f1217s11 on (rf1217 11) using bank tags [3,3]
theorem f1217 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [3,0,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [3,0,2,1] (.cons (f1217s0) (.cons (f1217s1) (.cons (f1217s2) (.cons (f1217s3) (.cons (f1217s4) (.cons (f1217s5) (.cons (f1217s6) (.cons (f1217s7) (.cons (f1217s8) (.cons (f1217s9) (.cons (f1217s10) (.cons (f1217s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
