import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1196 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,3,2,0]
certRow f1196s0 on (rf1196 0) using bank tags [3]
certRow f1196s1 on (rf1196 1) using bank tags []
certRow f1196s2 on (rf1196 2) using bank tags [3]
certRow f1196s3 on (rf1196 3) using bank tags [3]
certRow f1196s4 on (rf1196 4) using bank tags [3]
certRow f1196s5 on (rf1196 5) using bank tags [3,3,3]
certRow f1196s6 on (rf1196 6) using bank tags []
certRow f1196s7 on (rf1196 7) using bank tags []
certRow f1196s8 on (rf1196 8) using bank tags []
certRow f1196s9 on (rf1196 9) using bank tags [3,3]
certRow f1196s10 on (rf1196 10) using bank tags []
certRow f1196s11 on (rf1196 11) using bank tags [3]
theorem f1196 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,3,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,3,2,0] (.cons (f1196s0) (.cons (f1196s1) (.cons (f1196s2) (.cons (f1196s3) (.cons (f1196s4) (.cons (f1196s5) (.cons (f1196s6) (.cons (f1196s7) (.cons (f1196s8) (.cons (f1196s9) (.cons (f1196s10) (.cons (f1196s11) .nil))))))))))))
private abbrev rf1197 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [1,4,0,1]
certRow f1197s0 on (rf1197 0) using bank tags [3]
certRow f1197s1 on (rf1197 1) using bank tags [3,3,3]
certRow f1197s2 on (rf1197 2) using bank tags [3,3,3]
certRow f1197s3 on (rf1197 3) using bank tags [3,3]
certRow f1197s4 on (rf1197 4) using bank tags []
certRow f1197s5 on (rf1197 5) using bank tags [3]
certRow f1197s6 on (rf1197 6) using bank tags []
certRow f1197s7 on (rf1197 7) using bank tags [3,3]
certRow f1197s8 on (rf1197 8) using bank tags []
certRow f1197s9 on (rf1197 9) using bank tags [3,3]
certRow f1197s10 on (rf1197 10) using bank tags []
certRow f1197s11 on (rf1197 11) using bank tags []
theorem f1197 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [1,4,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [1,4,0,1] (.cons (f1197s0) (.cons (f1197s1) (.cons (f1197s2) (.cons (f1197s3) (.cons (f1197s4) (.cons (f1197s5) (.cons (f1197s6) (.cons (f1197s7) (.cons (f1197s8) (.cons (f1197s9) (.cons (f1197s10) (.cons (f1197s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
