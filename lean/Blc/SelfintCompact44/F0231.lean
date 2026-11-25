import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1184 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,0,5,0]
certRow f1184s0 on (rf1184 0) using bank tags []
certRow f1184s1 on (rf1184 1) using bank tags [3,3]
certRow f1184s2 on (rf1184 2) using bank tags [3,3,3]
certRow f1184s3 on (rf1184 3) using bank tags [3,3,3,3]
certRow f1184s4 on (rf1184 4) using bank tags [3]
certRow f1184s5 on (rf1184 5) using bank tags [3,3]
certRow f1184s6 on (rf1184 6) using bank tags []
certRow f1184s7 on (rf1184 7) using bank tags []
certRow f1184s8 on (rf1184 8) using bank tags []
certRow f1184s9 on (rf1184 9) using bank tags [3,3]
certRow f1184s10 on (rf1184 10) using bank tags []
certRow f1184s11 on (rf1184 11) using bank tags []
theorem f1184 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,0,5,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,0,5,0] (.cons (f1184s0) (.cons (f1184s1) (.cons (f1184s2) (.cons (f1184s3) (.cons (f1184s4) (.cons (f1184s5) (.cons (f1184s6) (.cons (f1184s7) (.cons (f1184s8) (.cons (f1184s9) (.cons (f1184s10) (.cons (f1184s11) .nil))))))))))))
private abbrev rf1185 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,1,0,4]
certRow f1185s0 on (rf1185 0) using bank tags [3,3]
certRow f1185s1 on (rf1185 1) using bank tags [3,3,3,3,3,3]
certRow f1185s2 on (rf1185 2) using bank tags [3,3]
certRow f1185s3 on (rf1185 3) using bank tags [3,3,3,3]
certRow f1185s4 on (rf1185 4) using bank tags [3]
certRow f1185s5 on (rf1185 5) using bank tags []
certRow f1185s6 on (rf1185 6) using bank tags []
certRow f1185s7 on (rf1185 7) using bank tags [3,3,3,3,3,3]
certRow f1185s8 on (rf1185 8) using bank tags []
certRow f1185s9 on (rf1185 9) using bank tags [3,3,3,3,3]
certRow f1185s10 on (rf1185 10) using bank tags []
certRow f1185s11 on (rf1185 11) using bank tags [3]
theorem f1185 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,1,0,4]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,1,0,4] (.cons (f1185s0) (.cons (f1185s1) (.cons (f1185s2) (.cons (f1185s3) (.cons (f1185s4) (.cons (f1185s5) (.cons (f1185s6) (.cons (f1185s7) (.cons (f1185s8) (.cons (f1185s9) (.cons (f1185s10) (.cons (f1185s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
