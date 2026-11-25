import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1156 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,0,5,1]
certRow f1156s0 on (rf1156 0) using bank tags []
certRow f1156s1 on (rf1156 1) using bank tags [3,3,3,3,3]
certRow f1156s2 on (rf1156 2) using bank tags [3,3]
certRow f1156s3 on (rf1156 3) using bank tags [3,3,3,3]
certRow f1156s4 on (rf1156 4) using bank tags [3,3]
certRow f1156s5 on (rf1156 5) using bank tags [3,3,3,3]
certRow f1156s6 on (rf1156 6) using bank tags []
certRow f1156s7 on (rf1156 7) using bank tags [3]
certRow f1156s8 on (rf1156 8) using bank tags []
certRow f1156s9 on (rf1156 9) using bank tags [3,3]
certRow f1156s10 on (rf1156 10) using bank tags []
certRow f1156s11 on (rf1156 11) using bank tags []
theorem f1156 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,0,5,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,0,5,1] (.cons (f1156s0) (.cons (f1156s1) (.cons (f1156s2) (.cons (f1156s3) (.cons (f1156s4) (.cons (f1156s5) (.cons (f1156s6) (.cons (f1156s7) (.cons (f1156s8) (.cons (f1156s9) (.cons (f1156s10) (.cons (f1156s11) .nil))))))))))))
private abbrev rf1157 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,0,6,0]
certRow f1157s0 on (rf1157 0) using bank tags []
certRow f1157s1 on (rf1157 1) using bank tags []
certRow f1157s2 on (rf1157 2) using bank tags []
certRow f1157s3 on (rf1157 3) using bank tags []
certRow f1157s4 on (rf1157 4) using bank tags []
certRow f1157s5 on (rf1157 5) using bank tags []
certRow f1157s6 on (rf1157 6) using bank tags []
certRow f1157s7 on (rf1157 7) using bank tags []
certRow f1157s8 on (rf1157 8) using bank tags []
certRow f1157s9 on (rf1157 9) using bank tags []
certRow f1157s10 on (rf1157 10) using bank tags []
certRow f1157s11 on (rf1157 11) using bank tags []
theorem f1157 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,0,6,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,0,6,0] (.cons (f1157s0) (.cons (f1157s1) (.cons (f1157s2) (.cons (f1157s3) (.cons (f1157s4) (.cons (f1157s5) (.cons (f1157s6) (.cons (f1157s7) (.cons (f1157s8) (.cons (f1157s9) (.cons (f1157s10) (.cons (f1157s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
