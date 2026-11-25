import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1113 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [3,0,1,0,0]
certRow f1113s0 on (rf1113 0) using bank tags []
certRow f1113s1 on (rf1113 1) using bank tags [3,3,3,3,3]
certRow f1113s2 on (rf1113 2) using bank tags [3,3]
certRow f1113s3 on (rf1113 3) using bank tags [3,3]
certRow f1113s4 on (rf1113 4) using bank tags [3,3,3,3,3]
certRow f1113s5 on (rf1113 5) using bank tags []
certRow f1113s6 on (rf1113 6) using bank tags []
certRow f1113s7 on (rf1113 7) using bank tags []
certRow f1113s8 on (rf1113 8) using bank tags []
certRow f1113s9 on (rf1113 9) using bank tags []
certRow f1113s10 on (rf1113 10) using bank tags []
certRow f1113s11 on (rf1113 11) using bank tags []
theorem f1113 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [3,0,1,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [3,0,1,0,0] (.cons (f1113s0) (.cons (f1113s1) (.cons (f1113s2) (.cons (f1113s3) (.cons (f1113s4) (.cons (f1113s5) (.cons (f1113s6) (.cons (f1113s7) (.cons (f1113s8) (.cons (f1113s9) (.cons (f1113s10) (.cons (f1113s11) .nil))))))))))))
private abbrev rf1114 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [3,1,0,0,0]
certRow f1114s0 on (rf1114 0) using bank tags []
certRow f1114s1 on (rf1114 1) using bank tags [3,3,3,3,3]
certRow f1114s2 on (rf1114 2) using bank tags []
certRow f1114s3 on (rf1114 3) using bank tags [3]
certRow f1114s4 on (rf1114 4) using bank tags [3,3,3]
certRow f1114s5 on (rf1114 5) using bank tags []
certRow f1114s6 on (rf1114 6) using bank tags []
certRow f1114s7 on (rf1114 7) using bank tags []
certRow f1114s8 on (rf1114 8) using bank tags []
certRow f1114s9 on (rf1114 9) using bank tags []
certRow f1114s10 on (rf1114 10) using bank tags []
certRow f1114s11 on (rf1114 11) using bank tags []
theorem f1114 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [3,1,0,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [3,1,0,0,0] (.cons (f1114s0) (.cons (f1114s1) (.cons (f1114s2) (.cons (f1114s3) (.cons (f1114s4) (.cons (f1114s5) (.cons (f1114s6) (.cons (f1114s7) (.cons (f1114s8) (.cons (f1114s9) (.cons (f1114s10) (.cons (f1114s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
