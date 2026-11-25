import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1204 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [2,0,4,0]
certRow f1204s0 on (rf1204 0) using bank tags []
certRow f1204s1 on (rf1204 1) using bank tags [3,3]
certRow f1204s2 on (rf1204 2) using bank tags [3,3,3]
certRow f1204s3 on (rf1204 3) using bank tags [3,3,3,3]
certRow f1204s4 on (rf1204 4) using bank tags [3]
certRow f1204s5 on (rf1204 5) using bank tags []
certRow f1204s6 on (rf1204 6) using bank tags []
certRow f1204s7 on (rf1204 7) using bank tags []
certRow f1204s8 on (rf1204 8) using bank tags []
certRow f1204s9 on (rf1204 9) using bank tags [3]
certRow f1204s10 on (rf1204 10) using bank tags []
certRow f1204s11 on (rf1204 11) using bank tags []
theorem f1204 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [2,0,4,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [2,0,4,0] (.cons (f1204s0) (.cons (f1204s1) (.cons (f1204s2) (.cons (f1204s3) (.cons (f1204s4) (.cons (f1204s5) (.cons (f1204s6) (.cons (f1204s7) (.cons (f1204s8) (.cons (f1204s9) (.cons (f1204s10) (.cons (f1204s11) .nil))))))))))))
private abbrev rf1205 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [2,1,0,3]
certRow f1205s0 on (rf1205 0) using bank tags [3,3,3]
certRow f1205s1 on (rf1205 1) using bank tags [3,3,3]
certRow f1205s2 on (rf1205 2) using bank tags [3]
certRow f1205s3 on (rf1205 3) using bank tags [3,3]
certRow f1205s4 on (rf1205 4) using bank tags [3,3]
certRow f1205s5 on (rf1205 5) using bank tags [3,3]
certRow f1205s6 on (rf1205 6) using bank tags []
certRow f1205s7 on (rf1205 7) using bank tags []
certRow f1205s8 on (rf1205 8) using bank tags []
certRow f1205s9 on (rf1205 9) using bank tags [3,3,3,3,3]
certRow f1205s10 on (rf1205 10) using bank tags []
certRow f1205s11 on (rf1205 11) using bank tags [3]
theorem f1205 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [2,1,0,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [2,1,0,3] (.cons (f1205s0) (.cons (f1205s1) (.cons (f1205s2) (.cons (f1205s3) (.cons (f1205s4) (.cons (f1205s5) (.cons (f1205s6) (.cons (f1205s7) (.cons (f1205s8) (.cons (f1205s9) (.cons (f1205s10) (.cons (f1205s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
