import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1206 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [2,1,1,2]
certRow f1206s0 on (rf1206 0) using bank tags [3,3]
certRow f1206s1 on (rf1206 1) using bank tags [3,3,3,3]
certRow f1206s2 on (rf1206 2) using bank tags [3,3,3,3]
certRow f1206s3 on (rf1206 3) using bank tags []
certRow f1206s4 on (rf1206 4) using bank tags [3,3,3,3,3]
certRow f1206s5 on (rf1206 5) using bank tags []
certRow f1206s6 on (rf1206 6) using bank tags []
certRow f1206s7 on (rf1206 7) using bank tags []
certRow f1206s8 on (rf1206 8) using bank tags []
certRow f1206s9 on (rf1206 9) using bank tags [3,3,3,3,3,3,3,3,3]
certRow f1206s10 on (rf1206 10) using bank tags []
certRow f1206s11 on (rf1206 11) using bank tags [3]
theorem f1206 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [2,1,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [2,1,1,2] (.cons (f1206s0) (.cons (f1206s1) (.cons (f1206s2) (.cons (f1206s3) (.cons (f1206s4) (.cons (f1206s5) (.cons (f1206s6) (.cons (f1206s7) (.cons (f1206s8) (.cons (f1206s9) (.cons (f1206s10) (.cons (f1206s11) .nil))))))))))))
private abbrev rf1207 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [2,1,2,1]
certRow f1207s0 on (rf1207 0) using bank tags [3]
certRow f1207s1 on (rf1207 1) using bank tags [3]
certRow f1207s2 on (rf1207 2) using bank tags [3,3,3,3]
certRow f1207s3 on (rf1207 3) using bank tags [3]
certRow f1207s4 on (rf1207 4) using bank tags [3,3]
certRow f1207s5 on (rf1207 5) using bank tags [3,3,3,3]
certRow f1207s6 on (rf1207 6) using bank tags []
certRow f1207s7 on (rf1207 7) using bank tags []
certRow f1207s8 on (rf1207 8) using bank tags []
certRow f1207s9 on (rf1207 9) using bank tags [3,3,3,3,3,3,3]
certRow f1207s10 on (rf1207 10) using bank tags []
certRow f1207s11 on (rf1207 11) using bank tags [3,3]
theorem f1207 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [2,1,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [2,1,2,1] (.cons (f1207s0) (.cons (f1207s1) (.cons (f1207s2) (.cons (f1207s3) (.cons (f1207s4) (.cons (f1207s5) (.cons (f1207s6) (.cons (f1207s7) (.cons (f1207s8) (.cons (f1207s9) (.cons (f1207s10) (.cons (f1207s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
