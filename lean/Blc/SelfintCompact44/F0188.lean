import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1062 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,1,0,1,2]
certRow f1062s0 on (rf1062 0) using bank tags [3,3,3,3,3,3,3,3,3]
certRow f1062s1 on (rf1062 1) using bank tags [3,3,3,3,3,3]
certRow f1062s2 on (rf1062 2) using bank tags [3,3]
certRow f1062s3 on (rf1062 3) using bank tags [3,3,3,3,3,3,3,3]
certRow f1062s4 on (rf1062 4) using bank tags [3,3,3,3,3]
certRow f1062s5 on (rf1062 5) using bank tags [3]
certRow f1062s6 on (rf1062 6) using bank tags [3,3,3,3,3,3,3]
certRow f1062s7 on (rf1062 7) using bank tags []
certRow f1062s8 on (rf1062 8) using bank tags [3]
certRow f1062s9 on (rf1062 9) using bank tags []
certRow f1062s10 on (rf1062 10) using bank tags [3,3,3,3,3,3,3,3]
certRow f1062s11 on (rf1062 11) using bank tags []
theorem f1062 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,1,0,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,1,0,1,2] (.cons (f1062s0) (.cons (f1062s1) (.cons (f1062s2) (.cons (f1062s3) (.cons (f1062s4) (.cons (f1062s5) (.cons (f1062s6) (.cons (f1062s7) (.cons (f1062s8) (.cons (f1062s9) (.cons (f1062s10) (.cons (f1062s11) .nil))))))))))))
private abbrev rf1063 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,1,0,2,1]
certRow f1063s0 on (rf1063 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3]
certRow f1063s1 on (rf1063 1) using bank tags [3,3,3,3,3,3]
certRow f1063s2 on (rf1063 2) using bank tags [3,3]
certRow f1063s3 on (rf1063 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3]
certRow f1063s4 on (rf1063 4) using bank tags [3,3,3,3,3]
certRow f1063s5 on (rf1063 5) using bank tags [3,3]
certRow f1063s6 on (rf1063 6) using bank tags [3,3,3,3,3,3,3,3,3]
certRow f1063s7 on (rf1063 7) using bank tags [3,3,3,3,3,3]
certRow f1063s8 on (rf1063 8) using bank tags [3]
certRow f1063s9 on (rf1063 9) using bank tags [3,3,3,3,3]
certRow f1063s10 on (rf1063 10) using bank tags [3,3,3]
certRow f1063s11 on (rf1063 11) using bank tags []
theorem f1063 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,1,0,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,1,0,2,1] (.cons (f1063s0) (.cons (f1063s1) (.cons (f1063s2) (.cons (f1063s3) (.cons (f1063s4) (.cons (f1063s5) (.cons (f1063s6) (.cons (f1063s7) (.cons (f1063s8) (.cons (f1063s9) (.cons (f1063s10) (.cons (f1063s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
