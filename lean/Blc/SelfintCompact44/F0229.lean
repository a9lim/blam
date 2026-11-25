import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1180 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,0,1,4]
certRow f1180s0 on (rf1180 0) using bank tags [3,3]
certRow f1180s1 on (rf1180 1) using bank tags [3,3,3,3,3,3]
certRow f1180s2 on (rf1180 2) using bank tags [3,3,3]
certRow f1180s3 on (rf1180 3) using bank tags [3,3,3,3]
certRow f1180s4 on (rf1180 4) using bank tags [3,3,3]
certRow f1180s5 on (rf1180 5) using bank tags []
certRow f1180s6 on (rf1180 6) using bank tags []
certRow f1180s7 on (rf1180 7) using bank tags [3,3,3]
certRow f1180s8 on (rf1180 8) using bank tags []
certRow f1180s9 on (rf1180 9) using bank tags [3,3,3,3,3,3,3,3]
certRow f1180s10 on (rf1180 10) using bank tags []
certRow f1180s11 on (rf1180 11) using bank tags [3,3]
theorem f1180 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,0,1,4]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,0,1,4] (.cons (f1180s0) (.cons (f1180s1) (.cons (f1180s2) (.cons (f1180s3) (.cons (f1180s4) (.cons (f1180s5) (.cons (f1180s6) (.cons (f1180s7) (.cons (f1180s8) (.cons (f1180s9) (.cons (f1180s10) (.cons (f1180s11) .nil))))))))))))
private abbrev rf1181 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,0,2,3]
certRow f1181s0 on (rf1181 0) using bank tags [3,3,3]
certRow f1181s1 on (rf1181 1) using bank tags [3,3]
certRow f1181s2 on (rf1181 2) using bank tags [3,3,3,3]
certRow f1181s3 on (rf1181 3) using bank tags [3,3]
certRow f1181s4 on (rf1181 4) using bank tags [3,3,3,3,3,3]
certRow f1181s5 on (rf1181 5) using bank tags [3,3,3]
certRow f1181s6 on (rf1181 6) using bank tags []
certRow f1181s7 on (rf1181 7) using bank tags [3,3,3]
certRow f1181s8 on (rf1181 8) using bank tags [3]
certRow f1181s9 on (rf1181 9) using bank tags [3,3,3,3,3,3,3,3]
certRow f1181s10 on (rf1181 10) using bank tags []
certRow f1181s11 on (rf1181 11) using bank tags [3,3]
theorem f1181 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,0,2,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,0,2,3] (.cons (f1181s0) (.cons (f1181s1) (.cons (f1181s2) (.cons (f1181s3) (.cons (f1181s4) (.cons (f1181s5) (.cons (f1181s6) (.cons (f1181s7) (.cons (f1181s8) (.cons (f1181s9) (.cons (f1181s10) (.cons (f1181s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
