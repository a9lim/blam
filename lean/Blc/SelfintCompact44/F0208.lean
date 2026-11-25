import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1107 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [2,1,0,0,1]
certRow f1107s0 on (rf1107 0) using bank tags []
certRow f1107s1 on (rf1107 1) using bank tags [3,3,3,3,3]
certRow f1107s2 on (rf1107 2) using bank tags [3,3]
certRow f1107s3 on (rf1107 3) using bank tags [3,3,3,3,3,3,3]
certRow f1107s4 on (rf1107 4) using bank tags [3,3,3,3,3]
certRow f1107s5 on (rf1107 5) using bank tags []
certRow f1107s6 on (rf1107 6) using bank tags [3,3]
certRow f1107s7 on (rf1107 7) using bank tags [3]
certRow f1107s8 on (rf1107 8) using bank tags [3]
certRow f1107s9 on (rf1107 9) using bank tags [3,3,3]
certRow f1107s10 on (rf1107 10) using bank tags [3,3]
certRow f1107s11 on (rf1107 11) using bank tags []
theorem f1107 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [2,1,0,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [2,1,0,0,1] (.cons (f1107s0) (.cons (f1107s1) (.cons (f1107s2) (.cons (f1107s3) (.cons (f1107s4) (.cons (f1107s5) (.cons (f1107s6) (.cons (f1107s7) (.cons (f1107s8) (.cons (f1107s9) (.cons (f1107s10) (.cons (f1107s11) .nil))))))))))))
private abbrev rf1108 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [2,1,0,1,0]
certRow f1108s0 on (rf1108 0) using bank tags []
certRow f1108s1 on (rf1108 1) using bank tags [3,3,3,3,3]
certRow f1108s2 on (rf1108 2) using bank tags [3,3]
certRow f1108s3 on (rf1108 3) using bank tags [3,3,3,3,3]
certRow f1108s4 on (rf1108 4) using bank tags [3,3,3,3,3]
certRow f1108s5 on (rf1108 5) using bank tags []
certRow f1108s6 on (rf1108 6) using bank tags [3,3]
certRow f1108s7 on (rf1108 7) using bank tags []
certRow f1108s8 on (rf1108 8) using bank tags [3]
certRow f1108s9 on (rf1108 9) using bank tags []
certRow f1108s10 on (rf1108 10) using bank tags [3,3,3,3,3]
certRow f1108s11 on (rf1108 11) using bank tags []
theorem f1108 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [2,1,0,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [2,1,0,1,0] (.cons (f1108s0) (.cons (f1108s1) (.cons (f1108s2) (.cons (f1108s3) (.cons (f1108s4) (.cons (f1108s5) (.cons (f1108s6) (.cons (f1108s7) (.cons (f1108s8) (.cons (f1108s9) (.cons (f1108s10) (.cons (f1108s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
