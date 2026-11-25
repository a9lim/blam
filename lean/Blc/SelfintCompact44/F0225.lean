import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1172 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,3,3,0]
certRow f1172s0 on (rf1172 0) using bank tags [3]
certRow f1172s1 on (rf1172 1) using bank tags []
certRow f1172s2 on (rf1172 2) using bank tags [3,3,3]
certRow f1172s3 on (rf1172 3) using bank tags [3,3]
certRow f1172s4 on (rf1172 4) using bank tags []
certRow f1172s5 on (rf1172 5) using bank tags [3,3]
certRow f1172s6 on (rf1172 6) using bank tags []
certRow f1172s7 on (rf1172 7) using bank tags []
certRow f1172s8 on (rf1172 8) using bank tags []
certRow f1172s9 on (rf1172 9) using bank tags []
certRow f1172s10 on (rf1172 10) using bank tags []
certRow f1172s11 on (rf1172 11) using bank tags []
theorem f1172 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,3,3,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,3,3,0] (.cons (f1172s0) (.cons (f1172s1) (.cons (f1172s2) (.cons (f1172s3) (.cons (f1172s4) (.cons (f1172s5) (.cons (f1172s6) (.cons (f1172s7) (.cons (f1172s8) (.cons (f1172s9) (.cons (f1172s10) (.cons (f1172s11) .nil))))))))))))
private abbrev rf1173 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,4,0,2]
certRow f1173s0 on (rf1173 0) using bank tags [3]
certRow f1173s1 on (rf1173 1) using bank tags [3,3,3,3,3,3,3]
certRow f1173s2 on (rf1173 2) using bank tags [3,3,3]
certRow f1173s3 on (rf1173 3) using bank tags [3,3,3]
certRow f1173s4 on (rf1173 4) using bank tags [3,3,3,3,3]
certRow f1173s5 on (rf1173 5) using bank tags [3,3]
certRow f1173s6 on (rf1173 6) using bank tags []
certRow f1173s7 on (rf1173 7) using bank tags []
certRow f1173s8 on (rf1173 8) using bank tags []
certRow f1173s9 on (rf1173 9) using bank tags [3,3]
certRow f1173s10 on (rf1173 10) using bank tags [3]
certRow f1173s11 on (rf1173 11) using bank tags [3,3]
theorem f1173 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,4,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,4,0,2] (.cons (f1173s0) (.cons (f1173s1) (.cons (f1173s2) (.cons (f1173s3) (.cons (f1173s4) (.cons (f1173s5) (.cons (f1173s6) (.cons (f1173s7) (.cons (f1173s8) (.cons (f1173s9) (.cons (f1173s10) (.cons (f1173s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
