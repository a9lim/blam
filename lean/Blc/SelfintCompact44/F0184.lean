import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1054 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,0,1,3,0]
certRow f1054s0 on (rf1054 0) using bank tags [3]
certRow f1054s1 on (rf1054 1) using bank tags [3,3,3]
certRow f1054s2 on (rf1054 2) using bank tags [3]
certRow f1054s3 on (rf1054 3) using bank tags [3,3,3,3,3,3,3,3,3]
certRow f1054s4 on (rf1054 4) using bank tags [3,3,3]
certRow f1054s5 on (rf1054 5) using bank tags []
certRow f1054s6 on (rf1054 6) using bank tags [3,3,3,3]
certRow f1054s7 on (rf1054 7) using bank tags [3]
certRow f1054s8 on (rf1054 8) using bank tags [3,3]
certRow f1054s9 on (rf1054 9) using bank tags [3]
certRow f1054s10 on (rf1054 10) using bank tags [3,3,3,3]
certRow f1054s11 on (rf1054 11) using bank tags [3]
theorem f1054 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,0,1,3,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,0,1,3,0] (.cons (f1054s0) (.cons (f1054s1) (.cons (f1054s2) (.cons (f1054s3) (.cons (f1054s4) (.cons (f1054s5) (.cons (f1054s6) (.cons (f1054s7) (.cons (f1054s8) (.cons (f1054s9) (.cons (f1054s10) (.cons (f1054s11) .nil))))))))))))
private abbrev rf1055 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,0,2,0,2]
certRow f1055s0 on (rf1055 0) using bank tags [3,3,3,3,3,3,3,3,3]
certRow f1055s1 on (rf1055 1) using bank tags []
certRow f1055s2 on (rf1055 2) using bank tags []
certRow f1055s3 on (rf1055 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f1055s4 on (rf1055 4) using bank tags []
certRow f1055s5 on (rf1055 5) using bank tags [3,3]
certRow f1055s6 on (rf1055 6) using bank tags [3,3]
certRow f1055s7 on (rf1055 7) using bank tags [3,3]
certRow f1055s8 on (rf1055 8) using bank tags [3,3]
certRow f1055s9 on (rf1055 9) using bank tags [3,3,3,3,3]
certRow f1055s10 on (rf1055 10) using bank tags [3,3,3]
certRow f1055s11 on (rf1055 11) using bank tags [3,3]
theorem f1055 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,0,2,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,0,2,0,2] (.cons (f1055s0) (.cons (f1055s1) (.cons (f1055s2) (.cons (f1055s3) (.cons (f1055s4) (.cons (f1055s5) (.cons (f1055s6) (.cons (f1055s7) (.cons (f1055s8) (.cons (f1055s9) (.cons (f1055s10) (.cons (f1055s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
