import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1188 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,1,3,1]
certRow f1188s0 on (rf1188 0) using bank tags [3]
certRow f1188s1 on (rf1188 1) using bank tags [3,3]
certRow f1188s2 on (rf1188 2) using bank tags [3,3,3]
certRow f1188s3 on (rf1188 3) using bank tags []
certRow f1188s4 on (rf1188 4) using bank tags [3,3,3]
certRow f1188s5 on (rf1188 5) using bank tags [3]
certRow f1188s6 on (rf1188 6) using bank tags []
certRow f1188s7 on (rf1188 7) using bank tags [3]
certRow f1188s8 on (rf1188 8) using bank tags []
certRow f1188s9 on (rf1188 9) using bank tags [3,3,3,3,3,3]
certRow f1188s10 on (rf1188 10) using bank tags []
certRow f1188s11 on (rf1188 11) using bank tags [3,3]
theorem f1188 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,1,3,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,1,3,1] (.cons (f1188s0) (.cons (f1188s1) (.cons (f1188s2) (.cons (f1188s3) (.cons (f1188s4) (.cons (f1188s5) (.cons (f1188s6) (.cons (f1188s7) (.cons (f1188s8) (.cons (f1188s9) (.cons (f1188s10) (.cons (f1188s11) .nil))))))))))))
private abbrev rf1189 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,1,4,0]
certRow f1189s0 on (rf1189 0) using bank tags [3]
certRow f1189s1 on (rf1189 1) using bank tags [3,3]
certRow f1189s2 on (rf1189 2) using bank tags [3,3,3]
certRow f1189s3 on (rf1189 3) using bank tags [3]
certRow f1189s4 on (rf1189 4) using bank tags []
certRow f1189s5 on (rf1189 5) using bank tags [3,3]
certRow f1189s6 on (rf1189 6) using bank tags []
certRow f1189s7 on (rf1189 7) using bank tags [3]
certRow f1189s8 on (rf1189 8) using bank tags []
certRow f1189s9 on (rf1189 9) using bank tags [3,3]
certRow f1189s10 on (rf1189 10) using bank tags []
certRow f1189s11 on (rf1189 11) using bank tags []
theorem f1189 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,1,4,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,1,4,0] (.cons (f1189s0) (.cons (f1189s1) (.cons (f1189s2) (.cons (f1189s3) (.cons (f1189s4) (.cons (f1189s5) (.cons (f1189s6) (.cons (f1189s7) (.cons (f1189s8) (.cons (f1189s9) (.cons (f1189s10) (.cons (f1189s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
