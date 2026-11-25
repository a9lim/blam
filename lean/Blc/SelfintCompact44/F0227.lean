import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1176 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,5,0,1]
certRow f1176s0 on (rf1176 0) using bank tags [3]
certRow f1176s1 on (rf1176 1) using bank tags [3,3,3,3]
certRow f1176s2 on (rf1176 2) using bank tags [3,3,3]
certRow f1176s3 on (rf1176 3) using bank tags [3,3,3]
certRow f1176s4 on (rf1176 4) using bank tags []
certRow f1176s5 on (rf1176 5) using bank tags [3,3,3]
certRow f1176s6 on (rf1176 6) using bank tags []
certRow f1176s7 on (rf1176 7) using bank tags []
certRow f1176s8 on (rf1176 8) using bank tags []
certRow f1176s9 on (rf1176 9) using bank tags []
certRow f1176s10 on (rf1176 10) using bank tags []
certRow f1176s11 on (rf1176 11) using bank tags [3]
theorem f1176 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,5,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,5,0,1] (.cons (f1176s0) (.cons (f1176s1) (.cons (f1176s2) (.cons (f1176s3) (.cons (f1176s4) (.cons (f1176s5) (.cons (f1176s6) (.cons (f1176s7) (.cons (f1176s8) (.cons (f1176s9) (.cons (f1176s10) (.cons (f1176s11) .nil))))))))))))
private abbrev rf1177 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,5,1,0]
certRow f1177s0 on (rf1177 0) using bank tags [3]
certRow f1177s1 on (rf1177 1) using bank tags [3,3]
certRow f1177s2 on (rf1177 2) using bank tags [3,3,3]
certRow f1177s3 on (rf1177 3) using bank tags [3,3]
certRow f1177s4 on (rf1177 4) using bank tags []
certRow f1177s5 on (rf1177 5) using bank tags [3,3]
certRow f1177s6 on (rf1177 6) using bank tags []
certRow f1177s7 on (rf1177 7) using bank tags []
certRow f1177s8 on (rf1177 8) using bank tags []
certRow f1177s9 on (rf1177 9) using bank tags []
certRow f1177s10 on (rf1177 10) using bank tags []
certRow f1177s11 on (rf1177 11) using bank tags [3]
theorem f1177 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,5,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,5,1,0] (.cons (f1177s0) (.cons (f1177s1) (.cons (f1177s2) (.cons (f1177s3) (.cons (f1177s4) (.cons (f1177s5) (.cons (f1177s6) (.cons (f1177s7) (.cons (f1177s8) (.cons (f1177s9) (.cons (f1177s10) (.cons (f1177s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
