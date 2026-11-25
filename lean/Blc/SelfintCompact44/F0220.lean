import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1162 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,1,4,1]
certRow f1162s0 on (rf1162 0) using bank tags []
certRow f1162s1 on (rf1162 1) using bank tags [3,3]
certRow f1162s2 on (rf1162 2) using bank tags [3,3,3,3,3,3]
certRow f1162s3 on (rf1162 3) using bank tags [3,3,3]
certRow f1162s4 on (rf1162 4) using bank tags [3,3,3]
certRow f1162s5 on (rf1162 5) using bank tags [3,3,3,3,3]
certRow f1162s6 on (rf1162 6) using bank tags []
certRow f1162s7 on (rf1162 7) using bank tags []
certRow f1162s8 on (rf1162 8) using bank tags []
certRow f1162s9 on (rf1162 9) using bank tags [3,3]
certRow f1162s10 on (rf1162 10) using bank tags []
certRow f1162s11 on (rf1162 11) using bank tags [3,3]
theorem f1162 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,1,4,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,1,4,1] (.cons (f1162s0) (.cons (f1162s1) (.cons (f1162s2) (.cons (f1162s3) (.cons (f1162s4) (.cons (f1162s5) (.cons (f1162s6) (.cons (f1162s7) (.cons (f1162s8) (.cons (f1162s9) (.cons (f1162s10) (.cons (f1162s11) .nil))))))))))))
private abbrev rf1163 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,1,5,0]
certRow f1163s0 on (rf1163 0) using bank tags []
certRow f1163s1 on (rf1163 1) using bank tags [3,3]
certRow f1163s2 on (rf1163 2) using bank tags [3,3]
certRow f1163s3 on (rf1163 3) using bank tags [3,3]
certRow f1163s4 on (rf1163 4) using bank tags []
certRow f1163s5 on (rf1163 5) using bank tags [3,3]
certRow f1163s6 on (rf1163 6) using bank tags []
certRow f1163s7 on (rf1163 7) using bank tags []
certRow f1163s8 on (rf1163 8) using bank tags []
certRow f1163s9 on (rf1163 9) using bank tags []
certRow f1163s10 on (rf1163 10) using bank tags []
certRow f1163s11 on (rf1163 11) using bank tags []
theorem f1163 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,1,5,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,1,5,0] (.cons (f1163s0) (.cons (f1163s1) (.cons (f1163s2) (.cons (f1163s3) (.cons (f1163s4) (.cons (f1163s5) (.cons (f1163s6) (.cons (f1163s7) (.cons (f1163s8) (.cons (f1163s9) (.cons (f1163s10) (.cons (f1163s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
