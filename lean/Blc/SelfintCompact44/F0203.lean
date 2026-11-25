import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1097 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [1,2,0,0,1]
certRow f1097s0 on (rf1097 0) using bank tags []
certRow f1097s1 on (rf1097 1) using bank tags [3,3,3,3,3]
certRow f1097s2 on (rf1097 2) using bank tags [3,3]
certRow f1097s3 on (rf1097 3) using bank tags [3,3,3,3,3,3,3]
certRow f1097s4 on (rf1097 4) using bank tags [3,3,3,3,3]
certRow f1097s5 on (rf1097 5) using bank tags []
certRow f1097s6 on (rf1097 6) using bank tags [3,3,3,3,3]
certRow f1097s7 on (rf1097 7) using bank tags [3]
certRow f1097s8 on (rf1097 8) using bank tags []
certRow f1097s9 on (rf1097 9) using bank tags [3,3,3]
certRow f1097s10 on (rf1097 10) using bank tags []
certRow f1097s11 on (rf1097 11) using bank tags []
theorem f1097 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,2,0,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [1,2,0,0,1] (.cons (f1097s0) (.cons (f1097s1) (.cons (f1097s2) (.cons (f1097s3) (.cons (f1097s4) (.cons (f1097s5) (.cons (f1097s6) (.cons (f1097s7) (.cons (f1097s8) (.cons (f1097s9) (.cons (f1097s10) (.cons (f1097s11) .nil))))))))))))
private abbrev rf1098 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [1,2,0,1,0]
certRow f1098s0 on (rf1098 0) using bank tags []
certRow f1098s1 on (rf1098 1) using bank tags [3,3,3,3,3]
certRow f1098s2 on (rf1098 2) using bank tags [3,3]
certRow f1098s3 on (rf1098 3) using bank tags [3,3,3,3,3]
certRow f1098s4 on (rf1098 4) using bank tags [3,3,3,3,3]
certRow f1098s5 on (rf1098 5) using bank tags []
certRow f1098s6 on (rf1098 6) using bank tags [3,3,3,3,3]
certRow f1098s7 on (rf1098 7) using bank tags [3,3]
certRow f1098s8 on (rf1098 8) using bank tags []
certRow f1098s9 on (rf1098 9) using bank tags []
certRow f1098s10 on (rf1098 10) using bank tags [3,3,3]
certRow f1098s11 on (rf1098 11) using bank tags []
theorem f1098 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,2,0,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [1,2,0,1,0] (.cons (f1098s0) (.cons (f1098s1) (.cons (f1098s2) (.cons (f1098s3) (.cons (f1098s4) (.cons (f1098s5) (.cons (f1098s6) (.cons (f1098s7) (.cons (f1098s8) (.cons (f1098s9) (.cons (f1098s10) (.cons (f1098s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
