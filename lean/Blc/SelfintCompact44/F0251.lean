import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1224 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [3,3,0,0]
certRow f1224s0 on (rf1224 0) using bank tags []
certRow f1224s1 on (rf1224 1) using bank tags []
certRow f1224s2 on (rf1224 2) using bank tags []
certRow f1224s3 on (rf1224 3) using bank tags []
certRow f1224s4 on (rf1224 4) using bank tags []
certRow f1224s5 on (rf1224 5) using bank tags []
certRow f1224s6 on (rf1224 6) using bank tags []
certRow f1224s7 on (rf1224 7) using bank tags []
certRow f1224s8 on (rf1224 8) using bank tags []
certRow f1224s9 on (rf1224 9) using bank tags []
certRow f1224s10 on (rf1224 10) using bank tags []
certRow f1224s11 on (rf1224 11) using bank tags []
theorem f1224 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [3,3,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [3,3,0,0] (.cons (f1224s0) (.cons (f1224s1) (.cons (f1224s2) (.cons (f1224s3) (.cons (f1224s4) (.cons (f1224s5) (.cons (f1224s6) (.cons (f1224s7) (.cons (f1224s8) (.cons (f1224s9) (.cons (f1224s10) (.cons (f1224s11) .nil))))))))))))
private abbrev rf1225 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [4,0,0,2]
certRow f1225s0 on (rf1225 0) using bank tags []
certRow f1225s1 on (rf1225 1) using bank tags [3,3,3,3]
certRow f1225s2 on (rf1225 2) using bank tags [3]
certRow f1225s3 on (rf1225 3) using bank tags [3,3]
certRow f1225s4 on (rf1225 4) using bank tags []
certRow f1225s5 on (rf1225 5) using bank tags []
certRow f1225s6 on (rf1225 6) using bank tags []
certRow f1225s7 on (rf1225 7) using bank tags []
certRow f1225s8 on (rf1225 8) using bank tags []
certRow f1225s9 on (rf1225 9) using bank tags [3,3]
certRow f1225s10 on (rf1225 10) using bank tags []
certRow f1225s11 on (rf1225 11) using bank tags [3]
theorem f1225 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [4,0,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [4,0,0,2] (.cons (f1225s0) (.cons (f1225s1) (.cons (f1225s2) (.cons (f1225s3) (.cons (f1225s4) (.cons (f1225s5) (.cons (f1225s6) (.cons (f1225s7) (.cons (f1225s8) (.cons (f1225s9) (.cons (f1225s10) (.cons (f1225s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
