import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1230 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [4,2,0,0]
certRow f1230s0 on (rf1230 0) using bank tags []
certRow f1230s1 on (rf1230 1) using bank tags [3,3]
certRow f1230s2 on (rf1230 2) using bank tags []
certRow f1230s3 on (rf1230 3) using bank tags [3]
certRow f1230s4 on (rf1230 4) using bank tags []
certRow f1230s5 on (rf1230 5) using bank tags []
certRow f1230s6 on (rf1230 6) using bank tags []
certRow f1230s7 on (rf1230 7) using bank tags []
certRow f1230s8 on (rf1230 8) using bank tags []
certRow f1230s9 on (rf1230 9) using bank tags []
certRow f1230s10 on (rf1230 10) using bank tags []
certRow f1230s11 on (rf1230 11) using bank tags []
theorem f1230 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [4,2,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [4,2,0,0] (.cons (f1230s0) (.cons (f1230s1) (.cons (f1230s2) (.cons (f1230s3) (.cons (f1230s4) (.cons (f1230s5) (.cons (f1230s6) (.cons (f1230s7) (.cons (f1230s8) (.cons (f1230s9) (.cons (f1230s10) (.cons (f1230s11) .nil))))))))))))
private abbrev rf1231 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [5,0,0,1]
certRow f1231s0 on (rf1231 0) using bank tags []
certRow f1231s1 on (rf1231 1) using bank tags [3,3]
certRow f1231s2 on (rf1231 2) using bank tags [3]
certRow f1231s3 on (rf1231 3) using bank tags [3,3]
certRow f1231s4 on (rf1231 4) using bank tags []
certRow f1231s5 on (rf1231 5) using bank tags []
certRow f1231s6 on (rf1231 6) using bank tags []
certRow f1231s7 on (rf1231 7) using bank tags []
certRow f1231s8 on (rf1231 8) using bank tags []
certRow f1231s9 on (rf1231 9) using bank tags []
certRow f1231s10 on (rf1231 10) using bank tags []
certRow f1231s11 on (rf1231 11) using bank tags []
theorem f1231 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [5,0,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [5,0,0,1] (.cons (f1231s0) (.cons (f1231s1) (.cons (f1231s2) (.cons (f1231s3) (.cons (f1231s4) (.cons (f1231s5) (.cons (f1231s6) (.cons (f1231s7) (.cons (f1231s8) (.cons (f1231s9) (.cons (f1231s10) (.cons (f1231s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
