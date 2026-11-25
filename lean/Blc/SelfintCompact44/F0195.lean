import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1077 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,3,0,0,1]
certRow f1077s0 on (rf1077 0) using bank tags []
certRow f1077s1 on (rf1077 1) using bank tags [3,3,3,3,3]
certRow f1077s2 on (rf1077 2) using bank tags [3,3]
certRow f1077s3 on (rf1077 3) using bank tags [3,3,3,3,3,3,3]
certRow f1077s4 on (rf1077 4) using bank tags [3,3,3,3,3]
certRow f1077s5 on (rf1077 5) using bank tags []
certRow f1077s6 on (rf1077 6) using bank tags [3,3,3,3,3,3,3]
certRow f1077s7 on (rf1077 7) using bank tags []
certRow f1077s8 on (rf1077 8) using bank tags [3]
certRow f1077s9 on (rf1077 9) using bank tags []
certRow f1077s10 on (rf1077 10) using bank tags [3,3]
certRow f1077s11 on (rf1077 11) using bank tags []
theorem f1077 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,3,0,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,3,0,0,1] (.cons (f1077s0) (.cons (f1077s1) (.cons (f1077s2) (.cons (f1077s3) (.cons (f1077s4) (.cons (f1077s5) (.cons (f1077s6) (.cons (f1077s7) (.cons (f1077s8) (.cons (f1077s9) (.cons (f1077s10) (.cons (f1077s11) .nil))))))))))))
private abbrev rf1078 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,3,0,1,0]
certRow f1078s0 on (rf1078 0) using bank tags []
certRow f1078s1 on (rf1078 1) using bank tags [3,3,3,3,3]
certRow f1078s2 on (rf1078 2) using bank tags [3,3]
certRow f1078s3 on (rf1078 3) using bank tags [3,3,3,3,3,3,3]
certRow f1078s4 on (rf1078 4) using bank tags [3,3,3,3,3]
certRow f1078s5 on (rf1078 5) using bank tags []
certRow f1078s6 on (rf1078 6) using bank tags [3,3,3,3,3,3,3]
certRow f1078s7 on (rf1078 7) using bank tags [3,3]
certRow f1078s8 on (rf1078 8) using bank tags [3,3,3]
certRow f1078s9 on (rf1078 9) using bank tags []
certRow f1078s10 on (rf1078 10) using bank tags [3,3]
certRow f1078s11 on (rf1078 11) using bank tags []
theorem f1078 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,3,0,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,3,0,1,0] (.cons (f1078s0) (.cons (f1078s1) (.cons (f1078s2) (.cons (f1078s3) (.cons (f1078s4) (.cons (f1078s5) (.cons (f1078s6) (.cons (f1078s7) (.cons (f1078s8) (.cons (f1078s9) (.cons (f1078s10) (.cons (f1078s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
