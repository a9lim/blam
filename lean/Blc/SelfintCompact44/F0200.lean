import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1088 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [1,0,2,0,1]
certRow f1088s0 on (rf1088 0) using bank tags []
certRow f1088s1 on (rf1088 1) using bank tags [3,3,3,3,3]
certRow f1088s2 on (rf1088 2) using bank tags [3,3]
certRow f1088s3 on (rf1088 3) using bank tags [3,3,3,3,3,3,3]
certRow f1088s4 on (rf1088 4) using bank tags [3,3,3,3,3]
certRow f1088s5 on (rf1088 5) using bank tags [3,3]
certRow f1088s6 on (rf1088 6) using bank tags [3,3,3,3,3,3,3]
certRow f1088s7 on (rf1088 7) using bank tags [3,3]
certRow f1088s8 on (rf1088 8) using bank tags []
certRow f1088s9 on (rf1088 9) using bank tags [3,3,3,3,3]
certRow f1088s10 on (rf1088 10) using bank tags [3,3]
certRow f1088s11 on (rf1088 11) using bank tags []
theorem f1088 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,0,2,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [1,0,2,0,1] (.cons (f1088s0) (.cons (f1088s1) (.cons (f1088s2) (.cons (f1088s3) (.cons (f1088s4) (.cons (f1088s5) (.cons (f1088s6) (.cons (f1088s7) (.cons (f1088s8) (.cons (f1088s9) (.cons (f1088s10) (.cons (f1088s11) .nil))))))))))))
private abbrev rf1089 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [1,0,2,1,0]
certRow f1089s0 on (rf1089 0) using bank tags []
certRow f1089s1 on (rf1089 1) using bank tags [3,3,3,3,3]
certRow f1089s2 on (rf1089 2) using bank tags [3,3]
certRow f1089s3 on (rf1089 3) using bank tags [3,3,3,3,3]
certRow f1089s4 on (rf1089 4) using bank tags [3,3,3,3,3]
certRow f1089s5 on (rf1089 5) using bank tags [3]
certRow f1089s6 on (rf1089 6) using bank tags [3,3,3,3]
certRow f1089s7 on (rf1089 7) using bank tags [3]
certRow f1089s8 on (rf1089 8) using bank tags []
certRow f1089s9 on (rf1089 9) using bank tags []
certRow f1089s10 on (rf1089 10) using bank tags [3,3,3,3,3,3]
certRow f1089s11 on (rf1089 11) using bank tags []
theorem f1089 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,0,2,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [1,0,2,1,0] (.cons (f1089s0) (.cons (f1089s1) (.cons (f1089s2) (.cons (f1089s3) (.cons (f1089s4) (.cons (f1089s5) (.cons (f1089s6) (.cons (f1089s7) (.cons (f1089s8) (.cons (f1089s9) (.cons (f1089s10) (.cons (f1089s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
