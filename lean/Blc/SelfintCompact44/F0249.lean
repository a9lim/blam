import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1220 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [3,1,1,1]
certRow f1220s0 on (rf1220 0) using bank tags [3]
certRow f1220s1 on (rf1220 1) using bank tags [3]
certRow f1220s2 on (rf1220 2) using bank tags [3,3,3,3]
certRow f1220s3 on (rf1220 3) using bank tags []
certRow f1220s4 on (rf1220 4) using bank tags [3,3]
certRow f1220s5 on (rf1220 5) using bank tags [3]
certRow f1220s6 on (rf1220 6) using bank tags []
certRow f1220s7 on (rf1220 7) using bank tags []
certRow f1220s8 on (rf1220 8) using bank tags []
certRow f1220s9 on (rf1220 9) using bank tags [3,3,3,3,3]
certRow f1220s10 on (rf1220 10) using bank tags []
certRow f1220s11 on (rf1220 11) using bank tags [3]
theorem f1220 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [3,1,1,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [3,1,1,1] (.cons (f1220s0) (.cons (f1220s1) (.cons (f1220s2) (.cons (f1220s3) (.cons (f1220s4) (.cons (f1220s5) (.cons (f1220s6) (.cons (f1220s7) (.cons (f1220s8) (.cons (f1220s9) (.cons (f1220s10) (.cons (f1220s11) .nil))))))))))))
private abbrev rf1221 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [3,1,2,0]
certRow f1221s0 on (rf1221 0) using bank tags [3]
certRow f1221s1 on (rf1221 1) using bank tags []
certRow f1221s2 on (rf1221 2) using bank tags [3,3]
certRow f1221s3 on (rf1221 3) using bank tags []
certRow f1221s4 on (rf1221 4) using bank tags []
certRow f1221s5 on (rf1221 5) using bank tags [3,3]
certRow f1221s6 on (rf1221 6) using bank tags []
certRow f1221s7 on (rf1221 7) using bank tags []
certRow f1221s8 on (rf1221 8) using bank tags []
certRow f1221s9 on (rf1221 9) using bank tags [3,3]
certRow f1221s10 on (rf1221 10) using bank tags []
certRow f1221s11 on (rf1221 11) using bank tags []
theorem f1221 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [3,1,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [3,1,2,0] (.cons (f1221s0) (.cons (f1221s1) (.cons (f1221s2) (.cons (f1221s3) (.cons (f1221s4) (.cons (f1221s5) (.cons (f1221s6) (.cons (f1221s7) (.cons (f1221s8) (.cons (f1221s9) (.cons (f1221s10) (.cons (f1221s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
