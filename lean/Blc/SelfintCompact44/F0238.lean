import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1198 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,4,1,0]
certRow f1198s0 on (rf1198 0) using bank tags [3]
certRow f1198s1 on (rf1198 1) using bank tags [3,3]
certRow f1198s2 on (rf1198 2) using bank tags [3,3,3,3]
certRow f1198s3 on (rf1198 3) using bank tags []
certRow f1198s4 on (rf1198 4) using bank tags []
certRow f1198s5 on (rf1198 5) using bank tags []
certRow f1198s6 on (rf1198 6) using bank tags []
certRow f1198s7 on (rf1198 7) using bank tags [3]
certRow f1198s8 on (rf1198 8) using bank tags []
certRow f1198s9 on (rf1198 9) using bank tags [3]
certRow f1198s10 on (rf1198 10) using bank tags []
certRow f1198s11 on (rf1198 11) using bank tags []
theorem f1198 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,4,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,4,1,0] (.cons (f1198s0) (.cons (f1198s1) (.cons (f1198s2) (.cons (f1198s3) (.cons (f1198s4) (.cons (f1198s5) (.cons (f1198s6) (.cons (f1198s7) (.cons (f1198s8) (.cons (f1198s9) (.cons (f1198s10) (.cons (f1198s11) .nil))))))))))))
private abbrev rf1199 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,5,0,0]
certRow f1199s0 on (rf1199 0) using bank tags []
certRow f1199s1 on (rf1199 1) using bank tags [3,3]
certRow f1199s2 on (rf1199 2) using bank tags []
certRow f1199s3 on (rf1199 3) using bank tags [3]
certRow f1199s4 on (rf1199 4) using bank tags []
certRow f1199s5 on (rf1199 5) using bank tags []
certRow f1199s6 on (rf1199 6) using bank tags []
certRow f1199s7 on (rf1199 7) using bank tags []
certRow f1199s8 on (rf1199 8) using bank tags []
certRow f1199s9 on (rf1199 9) using bank tags []
certRow f1199s10 on (rf1199 10) using bank tags []
certRow f1199s11 on (rf1199 11) using bank tags []
theorem f1199 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,5,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,5,0,0] (.cons (f1199s0) (.cons (f1199s1) (.cons (f1199s2) (.cons (f1199s3) (.cons (f1199s4) (.cons (f1199s5) (.cons (f1199s6) (.cons (f1199s7) (.cons (f1199s8) (.cons (f1199s9) (.cons (f1199s10) (.cons (f1199s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
