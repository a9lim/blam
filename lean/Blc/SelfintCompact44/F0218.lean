import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1158 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,1,0,5]
certRow f1158s0 on (rf1158 0) using bank tags [3,3,3]
certRow f1158s1 on (rf1158 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3]
certRow f1158s2 on (rf1158 2) using bank tags [3]
certRow f1158s3 on (rf1158 3) using bank tags [3,3,3,3]
certRow f1158s4 on (rf1158 4) using bank tags [3,3,3,3]
certRow f1158s5 on (rf1158 5) using bank tags [3,3,3,3]
certRow f1158s6 on (rf1158 6) using bank tags []
certRow f1158s7 on (rf1158 7) using bank tags [3,3]
certRow f1158s8 on (rf1158 8) using bank tags [3]
certRow f1158s9 on (rf1158 9) using bank tags [3,3,3,3]
certRow f1158s10 on (rf1158 10) using bank tags []
certRow f1158s11 on (rf1158 11) using bank tags [3]
theorem f1158 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,1,0,5]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,1,0,5] (.cons (f1158s0) (.cons (f1158s1) (.cons (f1158s2) (.cons (f1158s3) (.cons (f1158s4) (.cons (f1158s5) (.cons (f1158s6) (.cons (f1158s7) (.cons (f1158s8) (.cons (f1158s9) (.cons (f1158s10) (.cons (f1158s11) .nil))))))))))))
private abbrev rf1159 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,1,1,4]
certRow f1159s0 on (rf1159 0) using bank tags [3,3]
certRow f1159s1 on (rf1159 1) using bank tags [3,3,3,3,3,3,3,3]
certRow f1159s2 on (rf1159 2) using bank tags [3,3,3,3]
certRow f1159s3 on (rf1159 3) using bank tags [3,3,3,3]
certRow f1159s4 on (rf1159 4) using bank tags [3,3,3,3,3,3]
certRow f1159s5 on (rf1159 5) using bank tags [3,3,3]
certRow f1159s6 on (rf1159 6) using bank tags []
certRow f1159s7 on (rf1159 7) using bank tags [3,3]
certRow f1159s8 on (rf1159 8) using bank tags []
certRow f1159s9 on (rf1159 9) using bank tags [3,3,3,3]
certRow f1159s10 on (rf1159 10) using bank tags []
certRow f1159s11 on (rf1159 11) using bank tags [3,3]
theorem f1159 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,1,1,4]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,1,1,4] (.cons (f1159s0) (.cons (f1159s1) (.cons (f1159s2) (.cons (f1159s3) (.cons (f1159s4) (.cons (f1159s5) (.cons (f1159s6) (.cons (f1159s7) (.cons (f1159s8) (.cons (f1159s9) (.cons (f1159s10) (.cons (f1159s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
