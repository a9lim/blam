import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1168 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,2,4,0]
certRow f1168s0 on (rf1168 0) using bank tags [3]
certRow f1168s1 on (rf1168 1) using bank tags [3]
certRow f1168s2 on (rf1168 2) using bank tags [3,3,3]
certRow f1168s3 on (rf1168 3) using bank tags [3,3,3]
certRow f1168s4 on (rf1168 4) using bank tags [3]
certRow f1168s5 on (rf1168 5) using bank tags [3,3]
certRow f1168s6 on (rf1168 6) using bank tags []
certRow f1168s7 on (rf1168 7) using bank tags []
certRow f1168s8 on (rf1168 8) using bank tags []
certRow f1168s9 on (rf1168 9) using bank tags []
certRow f1168s10 on (rf1168 10) using bank tags []
certRow f1168s11 on (rf1168 11) using bank tags []
theorem f1168 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,2,4,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,2,4,0] (.cons (f1168s0) (.cons (f1168s1) (.cons (f1168s2) (.cons (f1168s3) (.cons (f1168s4) (.cons (f1168s5) (.cons (f1168s6) (.cons (f1168s7) (.cons (f1168s8) (.cons (f1168s9) (.cons (f1168s10) (.cons (f1168s11) .nil))))))))))))
private abbrev rf1169 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,3,0,3]
certRow f1169s0 on (rf1169 0) using bank tags [3,3]
certRow f1169s1 on (rf1169 1) using bank tags [3,3,3,3,3]
certRow f1169s2 on (rf1169 2) using bank tags [3,3,3]
certRow f1169s3 on (rf1169 3) using bank tags [3,3]
certRow f1169s4 on (rf1169 4) using bank tags []
certRow f1169s5 on (rf1169 5) using bank tags [3,3,3]
certRow f1169s6 on (rf1169 6) using bank tags []
certRow f1169s7 on (rf1169 7) using bank tags [3,3,3,3]
certRow f1169s8 on (rf1169 8) using bank tags []
certRow f1169s9 on (rf1169 9) using bank tags [3,3,3,3,3]
certRow f1169s10 on (rf1169 10) using bank tags [3]
certRow f1169s11 on (rf1169 11) using bank tags [3]
theorem f1169 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,3,0,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,3,0,3] (.cons (f1169s0) (.cons (f1169s1) (.cons (f1169s2) (.cons (f1169s3) (.cons (f1169s4) (.cons (f1169s5) (.cons (f1169s6) (.cons (f1169s7) (.cons (f1169s8) (.cons (f1169s9) (.cons (f1169s10) (.cons (f1169s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
