import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1103 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [2,0,0,2,0]
certRow f1103s0 on (rf1103 0) using bank tags []
certRow f1103s1 on (rf1103 1) using bank tags []
certRow f1103s2 on (rf1103 2) using bank tags []
certRow f1103s3 on (rf1103 3) using bank tags [3,3,3]
certRow f1103s4 on (rf1103 4) using bank tags []
certRow f1103s5 on (rf1103 5) using bank tags [3]
certRow f1103s6 on (rf1103 6) using bank tags []
certRow f1103s7 on (rf1103 7) using bank tags []
certRow f1103s8 on (rf1103 8) using bank tags []
certRow f1103s9 on (rf1103 9) using bank tags []
certRow f1103s10 on (rf1103 10) using bank tags [3,3,3,3,3]
certRow f1103s11 on (rf1103 11) using bank tags []
theorem f1103 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [2,0,0,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [2,0,0,2,0] (.cons (f1103s0) (.cons (f1103s1) (.cons (f1103s2) (.cons (f1103s3) (.cons (f1103s4) (.cons (f1103s5) (.cons (f1103s6) (.cons (f1103s7) (.cons (f1103s8) (.cons (f1103s9) (.cons (f1103s10) (.cons (f1103s11) .nil))))))))))))
private abbrev rf1104 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [2,0,1,0,1]
certRow f1104s0 on (rf1104 0) using bank tags []
certRow f1104s1 on (rf1104 1) using bank tags [3,3,3,3,3]
certRow f1104s2 on (rf1104 2) using bank tags [3,3]
certRow f1104s3 on (rf1104 3) using bank tags [3,3,3,3,3,3,3,3,3]
certRow f1104s4 on (rf1104 4) using bank tags [3,3,3,3,3]
certRow f1104s5 on (rf1104 5) using bank tags [3,3]
certRow f1104s6 on (rf1104 6) using bank tags []
certRow f1104s7 on (rf1104 7) using bank tags [3,3]
certRow f1104s8 on (rf1104 8) using bank tags [3,3]
certRow f1104s9 on (rf1104 9) using bank tags [3,3,3,3,3]
certRow f1104s10 on (rf1104 10) using bank tags [3,3,3]
certRow f1104s11 on (rf1104 11) using bank tags []
theorem f1104 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [2,0,1,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [2,0,1,0,1] (.cons (f1104s0) (.cons (f1104s1) (.cons (f1104s2) (.cons (f1104s3) (.cons (f1104s4) (.cons (f1104s5) (.cons (f1104s6) (.cons (f1104s7) (.cons (f1104s8) (.cons (f1104s9) (.cons (f1104s10) (.cons (f1104s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
