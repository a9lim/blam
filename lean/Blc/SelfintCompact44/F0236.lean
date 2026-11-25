import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1194 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,3,0,2]
certRow f1194s0 on (rf1194 0) using bank tags [3]
certRow f1194s1 on (rf1194 1) using bank tags [3,3,3]
certRow f1194s2 on (rf1194 2) using bank tags [3,3]
certRow f1194s3 on (rf1194 3) using bank tags [3,3]
certRow f1194s4 on (rf1194 4) using bank tags [3,3,3]
certRow f1194s5 on (rf1194 5) using bank tags [3,3,3]
certRow f1194s6 on (rf1194 6) using bank tags []
certRow f1194s7 on (rf1194 7) using bank tags [3,3]
certRow f1194s8 on (rf1194 8) using bank tags []
certRow f1194s9 on (rf1194 9) using bank tags [3,3,3,3]
certRow f1194s10 on (rf1194 10) using bank tags []
certRow f1194s11 on (rf1194 11) using bank tags [3,3]
theorem f1194 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,3,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,3,0,2] (.cons (f1194s0) (.cons (f1194s1) (.cons (f1194s2) (.cons (f1194s3) (.cons (f1194s4) (.cons (f1194s5) (.cons (f1194s6) (.cons (f1194s7) (.cons (f1194s8) (.cons (f1194s9) (.cons (f1194s10) (.cons (f1194s11) .nil))))))))))))
private abbrev rf1195 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,3,1,1]
certRow f1195s0 on (rf1195 0) using bank tags []
certRow f1195s1 on (rf1195 1) using bank tags [3]
certRow f1195s2 on (rf1195 2) using bank tags [3,3,3]
certRow f1195s3 on (rf1195 3) using bank tags []
certRow f1195s4 on (rf1195 4) using bank tags [3,3]
certRow f1195s5 on (rf1195 5) using bank tags [3]
certRow f1195s6 on (rf1195 6) using bank tags []
certRow f1195s7 on (rf1195 7) using bank tags [3,3]
certRow f1195s8 on (rf1195 8) using bank tags []
certRow f1195s9 on (rf1195 9) using bank tags [3,3,3,3,3,3,3]
certRow f1195s10 on (rf1195 10) using bank tags []
certRow f1195s11 on (rf1195 11) using bank tags [3]
theorem f1195 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,3,1,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,3,1,1] (.cons (f1195s0) (.cons (f1195s1) (.cons (f1195s2) (.cons (f1195s3) (.cons (f1195s4) (.cons (f1195s5) (.cons (f1195s6) (.cons (f1195s7) (.cons (f1195s8) (.cons (f1195s9) (.cons (f1195s10) (.cons (f1195s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
