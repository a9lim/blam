import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1186 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,1,1,3]
certRow f1186s0 on (rf1186 0) using bank tags [3]
certRow f1186s1 on (rf1186 1) using bank tags [3,3]
certRow f1186s2 on (rf1186 2) using bank tags [3,3,3,3,3]
certRow f1186s3 on (rf1186 3) using bank tags []
certRow f1186s4 on (rf1186 4) using bank tags [3,3,3,3,3]
certRow f1186s5 on (rf1186 5) using bank tags [3]
certRow f1186s6 on (rf1186 6) using bank tags []
certRow f1186s7 on (rf1186 7) using bank tags [3,3]
certRow f1186s8 on (rf1186 8) using bank tags []
certRow f1186s9 on (rf1186 9) using bank tags [3,3,3,3,3]
certRow f1186s10 on (rf1186 10) using bank tags []
certRow f1186s11 on (rf1186 11) using bank tags [3]
theorem f1186 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,1,1,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,1,1,3] (.cons (f1186s0) (.cons (f1186s1) (.cons (f1186s2) (.cons (f1186s3) (.cons (f1186s4) (.cons (f1186s5) (.cons (f1186s6) (.cons (f1186s7) (.cons (f1186s8) (.cons (f1186s9) (.cons (f1186s10) (.cons (f1186s11) .nil))))))))))))
private abbrev rf1187 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,1,2,2]
certRow f1187s0 on (rf1187 0) using bank tags [3,3]
certRow f1187s1 on (rf1187 1) using bank tags [3,3]
certRow f1187s2 on (rf1187 2) using bank tags [3,3]
certRow f1187s3 on (rf1187 3) using bank tags [3]
certRow f1187s4 on (rf1187 4) using bank tags [3]
certRow f1187s5 on (rf1187 5) using bank tags [3,3,3,3]
certRow f1187s6 on (rf1187 6) using bank tags []
certRow f1187s7 on (rf1187 7) using bank tags [3,3]
certRow f1187s8 on (rf1187 8) using bank tags []
certRow f1187s9 on (rf1187 9) using bank tags [3,3,3,3]
certRow f1187s10 on (rf1187 10) using bank tags []
certRow f1187s11 on (rf1187 11) using bank tags []
theorem f1187 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,1,2,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,1,2,2] (.cons (f1187s0) (.cons (f1187s1) (.cons (f1187s2) (.cons (f1187s3) (.cons (f1187s4) (.cons (f1187s5) (.cons (f1187s6) (.cons (f1187s7) (.cons (f1187s8) (.cons (f1187s9) (.cons (f1187s10) (.cons (f1187s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
