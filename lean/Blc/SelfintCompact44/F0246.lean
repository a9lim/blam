import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1214 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [2,4,0,0]
certRow f1214s0 on (rf1214 0) using bank tags []
certRow f1214s1 on (rf1214 1) using bank tags [3,3]
certRow f1214s2 on (rf1214 2) using bank tags []
certRow f1214s3 on (rf1214 3) using bank tags [3]
certRow f1214s4 on (rf1214 4) using bank tags []
certRow f1214s5 on (rf1214 5) using bank tags []
certRow f1214s6 on (rf1214 6) using bank tags []
certRow f1214s7 on (rf1214 7) using bank tags []
certRow f1214s8 on (rf1214 8) using bank tags []
certRow f1214s9 on (rf1214 9) using bank tags []
certRow f1214s10 on (rf1214 10) using bank tags []
certRow f1214s11 on (rf1214 11) using bank tags []
theorem f1214 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [2,4,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [2,4,0,0] (.cons (f1214s0) (.cons (f1214s1) (.cons (f1214s2) (.cons (f1214s3) (.cons (f1214s4) (.cons (f1214s5) (.cons (f1214s6) (.cons (f1214s7) (.cons (f1214s8) (.cons (f1214s9) (.cons (f1214s10) (.cons (f1214s11) .nil))))))))))))
private abbrev rf1215 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [3,0,0,3]
certRow f1215s0 on (rf1215 0) using bank tags [3]
certRow f1215s1 on (rf1215 1) using bank tags [3,3]
certRow f1215s2 on (rf1215 2) using bank tags []
certRow f1215s3 on (rf1215 3) using bank tags [3,3]
certRow f1215s4 on (rf1215 4) using bank tags []
certRow f1215s5 on (rf1215 5) using bank tags []
certRow f1215s6 on (rf1215 6) using bank tags []
certRow f1215s7 on (rf1215 7) using bank tags []
certRow f1215s8 on (rf1215 8) using bank tags []
certRow f1215s9 on (rf1215 9) using bank tags [3,3,3,3]
certRow f1215s10 on (rf1215 10) using bank tags []
certRow f1215s11 on (rf1215 11) using bank tags [3]
theorem f1215 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [3,0,0,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [3,0,0,3] (.cons (f1215s0) (.cons (f1215s1) (.cons (f1215s2) (.cons (f1215s3) (.cons (f1215s4) (.cons (f1215s5) (.cons (f1215s6) (.cons (f1215s7) (.cons (f1215s8) (.cons (f1215s9) (.cons (f1215s10) (.cons (f1215s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
