import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1170 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,3,1,2]
certRow f1170s0 on (rf1170 0) using bank tags [3,3]
certRow f1170s1 on (rf1170 1) using bank tags [3,3,3,3,3,3,3]
certRow f1170s2 on (rf1170 2) using bank tags [3,3,3,3,3]
certRow f1170s3 on (rf1170 3) using bank tags [3,3,3]
certRow f1170s4 on (rf1170 4) using bank tags [3,3,3,3,3,3,3]
certRow f1170s5 on (rf1170 5) using bank tags [3,3,3]
certRow f1170s6 on (rf1170 6) using bank tags []
certRow f1170s7 on (rf1170 7) using bank tags [3,3,3,3,3]
certRow f1170s8 on (rf1170 8) using bank tags []
certRow f1170s9 on (rf1170 9) using bank tags [3,3,3,3,3,3,3]
certRow f1170s10 on (rf1170 10) using bank tags []
certRow f1170s11 on (rf1170 11) using bank tags [3,3]
theorem f1170 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,3,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,3,1,2] (.cons (f1170s0) (.cons (f1170s1) (.cons (f1170s2) (.cons (f1170s3) (.cons (f1170s4) (.cons (f1170s5) (.cons (f1170s6) (.cons (f1170s7) (.cons (f1170s8) (.cons (f1170s9) (.cons (f1170s10) (.cons (f1170s11) .nil))))))))))))
private abbrev rf1171 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,3,2,1]
certRow f1171s0 on (rf1171 0) using bank tags [3]
certRow f1171s1 on (rf1171 1) using bank tags [3,3,3]
certRow f1171s2 on (rf1171 2) using bank tags [3,3,3,3,3,3,3]
certRow f1171s3 on (rf1171 3) using bank tags [3,3]
certRow f1171s4 on (rf1171 4) using bank tags [3,3,3]
certRow f1171s5 on (rf1171 5) using bank tags [3,3,3,3,3,3,3]
certRow f1171s6 on (rf1171 6) using bank tags []
certRow f1171s7 on (rf1171 7) using bank tags [3,3,3]
certRow f1171s8 on (rf1171 8) using bank tags []
certRow f1171s9 on (rf1171 9) using bank tags [3,3,3,3]
certRow f1171s10 on (rf1171 10) using bank tags [3]
certRow f1171s11 on (rf1171 11) using bank tags [3,3]
theorem f1171 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,3,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,3,2,1] (.cons (f1171s0) (.cons (f1171s1) (.cons (f1171s2) (.cons (f1171s3) (.cons (f1171s4) (.cons (f1171s5) (.cons (f1171s6) (.cons (f1171s7) (.cons (f1171s8) (.cons (f1171s9) (.cons (f1171s10) (.cons (f1171s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
