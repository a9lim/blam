import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1202 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [2,0,2,2]
certRow f1202s0 on (rf1202 0) using bank tags [3]
certRow f1202s1 on (rf1202 1) using bank tags [3,3,3,3]
certRow f1202s2 on (rf1202 2) using bank tags [3,3,3,3]
certRow f1202s3 on (rf1202 3) using bank tags []
certRow f1202s4 on (rf1202 4) using bank tags [3,3,3,3]
certRow f1202s5 on (rf1202 5) using bank tags []
certRow f1202s6 on (rf1202 6) using bank tags []
certRow f1202s7 on (rf1202 7) using bank tags []
certRow f1202s8 on (rf1202 8) using bank tags []
certRow f1202s9 on (rf1202 9) using bank tags [3,3,3,3,3,3]
certRow f1202s10 on (rf1202 10) using bank tags []
certRow f1202s11 on (rf1202 11) using bank tags [3,3]
theorem f1202 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [2,0,2,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [2,0,2,2] (.cons (f1202s0) (.cons (f1202s1) (.cons (f1202s2) (.cons (f1202s3) (.cons (f1202s4) (.cons (f1202s5) (.cons (f1202s6) (.cons (f1202s7) (.cons (f1202s8) (.cons (f1202s9) (.cons (f1202s10) (.cons (f1202s11) .nil))))))))))))
private abbrev rf1203 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [2,0,3,1]
certRow f1203s0 on (rf1203 0) using bank tags []
certRow f1203s1 on (rf1203 1) using bank tags [3,3]
certRow f1203s2 on (rf1203 2) using bank tags [3,3,3,3]
certRow f1203s3 on (rf1203 3) using bank tags [3,3]
certRow f1203s4 on (rf1203 4) using bank tags [3,3]
certRow f1203s5 on (rf1203 5) using bank tags [3,3,3]
certRow f1203s6 on (rf1203 6) using bank tags []
certRow f1203s7 on (rf1203 7) using bank tags []
certRow f1203s8 on (rf1203 8) using bank tags []
certRow f1203s9 on (rf1203 9) using bank tags [3,3,3,3]
certRow f1203s10 on (rf1203 10) using bank tags []
certRow f1203s11 on (rf1203 11) using bank tags [3]
theorem f1203 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [2,0,3,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [2,0,3,1] (.cons (f1203s0) (.cons (f1203s1) (.cons (f1203s2) (.cons (f1203s3) (.cons (f1203s4) (.cons (f1203s5) (.cons (f1203s6) (.cons (f1203s7) (.cons (f1203s8) (.cons (f1203s9) (.cons (f1203s10) (.cons (f1203s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
