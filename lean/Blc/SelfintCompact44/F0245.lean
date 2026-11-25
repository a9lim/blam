import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1212 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [2,3,0,1]
certRow f1212s0 on (rf1212 0) using bank tags [3]
certRow f1212s1 on (rf1212 1) using bank tags [3]
certRow f1212s2 on (rf1212 2) using bank tags [3,3]
certRow f1212s3 on (rf1212 3) using bank tags [3]
certRow f1212s4 on (rf1212 4) using bank tags []
certRow f1212s5 on (rf1212 5) using bank tags [3,3,3]
certRow f1212s6 on (rf1212 6) using bank tags []
certRow f1212s7 on (rf1212 7) using bank tags []
certRow f1212s8 on (rf1212 8) using bank tags []
certRow f1212s9 on (rf1212 9) using bank tags [3,3]
certRow f1212s10 on (rf1212 10) using bank tags []
certRow f1212s11 on (rf1212 11) using bank tags [3]
theorem f1212 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [2,3,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [2,3,0,1] (.cons (f1212s0) (.cons (f1212s1) (.cons (f1212s2) (.cons (f1212s3) (.cons (f1212s4) (.cons (f1212s5) (.cons (f1212s6) (.cons (f1212s7) (.cons (f1212s8) (.cons (f1212s9) (.cons (f1212s10) (.cons (f1212s11) .nil))))))))))))
private abbrev rf1213 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [2,3,1,0]
certRow f1213s0 on (rf1213 0) using bank tags [3]
certRow f1213s1 on (rf1213 1) using bank tags []
certRow f1213s2 on (rf1213 2) using bank tags [3,3]
certRow f1213s3 on (rf1213 3) using bank tags [3]
certRow f1213s4 on (rf1213 4) using bank tags []
certRow f1213s5 on (rf1213 5) using bank tags [3]
certRow f1213s6 on (rf1213 6) using bank tags []
certRow f1213s7 on (rf1213 7) using bank tags []
certRow f1213s8 on (rf1213 8) using bank tags []
certRow f1213s9 on (rf1213 9) using bank tags [3]
certRow f1213s10 on (rf1213 10) using bank tags []
certRow f1213s11 on (rf1213 11) using bank tags [3]
theorem f1213 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [2,3,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [2,3,1,0] (.cons (f1213s0) (.cons (f1213s1) (.cons (f1213s2) (.cons (f1213s3) (.cons (f1213s4) (.cons (f1213s5) (.cons (f1213s6) (.cons (f1213s7) (.cons (f1213s8) (.cons (f1213s9) (.cons (f1213s10) (.cons (f1213s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
