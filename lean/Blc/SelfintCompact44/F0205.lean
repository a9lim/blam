import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1101 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [2,0,0,0,2]
certRow f1101s0 on (rf1101 0) using bank tags []
certRow f1101s1 on (rf1101 1) using bank tags []
certRow f1101s2 on (rf1101 2) using bank tags []
certRow f1101s3 on (rf1101 3) using bank tags [3,3,3,3,3]
certRow f1101s4 on (rf1101 4) using bank tags []
certRow f1101s5 on (rf1101 5) using bank tags [3,3]
certRow f1101s6 on (rf1101 6) using bank tags []
certRow f1101s7 on (rf1101 7) using bank tags [3,3]
certRow f1101s8 on (rf1101 8) using bank tags []
certRow f1101s9 on (rf1101 9) using bank tags [3,3,3,3,3]
certRow f1101s10 on (rf1101 10) using bank tags []
certRow f1101s11 on (rf1101 11) using bank tags []
theorem f1101 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [2,0,0,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [2,0,0,0,2] (.cons (f1101s0) (.cons (f1101s1) (.cons (f1101s2) (.cons (f1101s3) (.cons (f1101s4) (.cons (f1101s5) (.cons (f1101s6) (.cons (f1101s7) (.cons (f1101s8) (.cons (f1101s9) (.cons (f1101s10) (.cons (f1101s11) .nil))))))))))))
private abbrev rf1102 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [2,0,0,1,1]
certRow f1102s0 on (rf1102 0) using bank tags []
certRow f1102s1 on (rf1102 1) using bank tags [3,3,3,3,3]
certRow f1102s2 on (rf1102 2) using bank tags [3,3]
certRow f1102s3 on (rf1102 3) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f1102s4 on (rf1102 4) using bank tags [3,3,3,3,3]
certRow f1102s5 on (rf1102 5) using bank tags [3,3,3]
certRow f1102s6 on (rf1102 6) using bank tags []
certRow f1102s7 on (rf1102 7) using bank tags [3,3]
certRow f1102s8 on (rf1102 8) using bank tags []
certRow f1102s9 on (rf1102 9) using bank tags [3,3,3,3,3]
certRow f1102s10 on (rf1102 10) using bank tags [3,3,3,3,3]
certRow f1102s11 on (rf1102 11) using bank tags []
theorem f1102 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [2,0,0,1,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [2,0,0,1,1] (.cons (f1102s0) (.cons (f1102s1) (.cons (f1102s2) (.cons (f1102s3) (.cons (f1102s4) (.cons (f1102s5) (.cons (f1102s6) (.cons (f1102s7) (.cons (f1102s8) (.cons (f1102s9) (.cons (f1102s10) (.cons (f1102s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
