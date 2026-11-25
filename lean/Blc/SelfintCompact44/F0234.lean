import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1190 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,2,0,3]
certRow f1190s0 on (rf1190 0) using bank tags [3,3,3]
certRow f1190s1 on (rf1190 1) using bank tags [3,3,3]
certRow f1190s2 on (rf1190 2) using bank tags [3,3,3]
certRow f1190s3 on (rf1190 3) using bank tags [3,3]
certRow f1190s4 on (rf1190 4) using bank tags [3,3,3,3,3]
certRow f1190s5 on (rf1190 5) using bank tags [3,3,3]
certRow f1190s6 on (rf1190 6) using bank tags []
certRow f1190s7 on (rf1190 7) using bank tags [3,3]
certRow f1190s8 on (rf1190 8) using bank tags []
certRow f1190s9 on (rf1190 9) using bank tags [3,3,3,3]
certRow f1190s10 on (rf1190 10) using bank tags [3]
certRow f1190s11 on (rf1190 11) using bank tags [3]
theorem f1190 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,2,0,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,2,0,3] (.cons (f1190s0) (.cons (f1190s1) (.cons (f1190s2) (.cons (f1190s3) (.cons (f1190s4) (.cons (f1190s5) (.cons (f1190s6) (.cons (f1190s7) (.cons (f1190s8) (.cons (f1190s9) (.cons (f1190s10) (.cons (f1190s11) .nil))))))))))))
private abbrev rf1191 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,2,1,2]
certRow f1191s0 on (rf1191 0) using bank tags [3]
certRow f1191s1 on (rf1191 1) using bank tags [3]
certRow f1191s2 on (rf1191 2) using bank tags [3,3,3,3]
certRow f1191s3 on (rf1191 3) using bank tags [3]
certRow f1191s4 on (rf1191 4) using bank tags [3,3,3,3]
certRow f1191s5 on (rf1191 5) using bank tags [3,3]
certRow f1191s6 on (rf1191 6) using bank tags []
certRow f1191s7 on (rf1191 7) using bank tags [3,3]
certRow f1191s8 on (rf1191 8) using bank tags []
certRow f1191s9 on (rf1191 9) using bank tags [3,3,3,3,3,3]
certRow f1191s10 on (rf1191 10) using bank tags []
certRow f1191s11 on (rf1191 11) using bank tags [3]
theorem f1191 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,2,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,2,1,2] (.cons (f1191s0) (.cons (f1191s1) (.cons (f1191s2) (.cons (f1191s3) (.cons (f1191s4) (.cons (f1191s5) (.cons (f1191s6) (.cons (f1191s7) (.cons (f1191s8) (.cons (f1191s9) (.cons (f1191s10) (.cons (f1191s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
