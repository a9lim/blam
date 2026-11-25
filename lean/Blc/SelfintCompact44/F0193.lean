import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1073 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,2,0,2,0]
certRow f1073s0 on (rf1073 0) using bank tags [3,3,3]
certRow f1073s1 on (rf1073 1) using bank tags []
certRow f1073s2 on (rf1073 2) using bank tags []
certRow f1073s3 on (rf1073 3) using bank tags [3,3,3,3,3,3]
certRow f1073s4 on (rf1073 4) using bank tags []
certRow f1073s5 on (rf1073 5) using bank tags [3]
certRow f1073s6 on (rf1073 6) using bank tags [3,3]
certRow f1073s7 on (rf1073 7) using bank tags []
certRow f1073s8 on (rf1073 8) using bank tags [3,3,3]
certRow f1073s9 on (rf1073 9) using bank tags [3,3]
certRow f1073s10 on (rf1073 10) using bank tags [3,3,3,3,3,3,3]
certRow f1073s11 on (rf1073 11) using bank tags []
theorem f1073 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,2,0,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,2,0,2,0] (.cons (f1073s0) (.cons (f1073s1) (.cons (f1073s2) (.cons (f1073s3) (.cons (f1073s4) (.cons (f1073s5) (.cons (f1073s6) (.cons (f1073s7) (.cons (f1073s8) (.cons (f1073s9) (.cons (f1073s10) (.cons (f1073s11) .nil))))))))))))
private abbrev rf1074 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,2,1,0,1]
certRow f1074s0 on (rf1074 0) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f1074s1 on (rf1074 1) using bank tags [3,3,3,3,3]
certRow f1074s2 on (rf1074 2) using bank tags [3,3]
certRow f1074s3 on (rf1074 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3]
certRow f1074s4 on (rf1074 4) using bank tags [3,3,3,3,3]
certRow f1074s5 on (rf1074 5) using bank tags [3,3]
certRow f1074s6 on (rf1074 6) using bank tags [3,3,3,3,3,3]
certRow f1074s7 on (rf1074 7) using bank tags [3,3,3]
certRow f1074s8 on (rf1074 8) using bank tags [3,3]
certRow f1074s9 on (rf1074 9) using bank tags [3,3,3]
certRow f1074s10 on (rf1074 10) using bank tags [3,3,3]
certRow f1074s11 on (rf1074 11) using bank tags []
theorem f1074 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,2,1,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,2,1,0,1] (.cons (f1074s0) (.cons (f1074s1) (.cons (f1074s2) (.cons (f1074s3) (.cons (f1074s4) (.cons (f1074s5) (.cons (f1074s6) (.cons (f1074s7) (.cons (f1074s8) (.cons (f1074s9) (.cons (f1074s10) (.cons (f1074s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
