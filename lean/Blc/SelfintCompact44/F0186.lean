import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1058 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,0,3,0,1]
certRow f1058s0 on (rf1058 0) using bank tags [3,3]
certRow f1058s1 on (rf1058 1) using bank tags [3,3,3,3,3]
certRow f1058s2 on (rf1058 2) using bank tags [3,3]
certRow f1058s3 on (rf1058 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f1058s4 on (rf1058 4) using bank tags [3,3,3,3,3]
certRow f1058s5 on (rf1058 5) using bank tags []
certRow f1058s6 on (rf1058 6) using bank tags [3,3,3,3,3,3,3]
certRow f1058s7 on (rf1058 7) using bank tags []
certRow f1058s8 on (rf1058 8) using bank tags [3,3]
certRow f1058s9 on (rf1058 9) using bank tags []
certRow f1058s10 on (rf1058 10) using bank tags [3,3,3,3,3]
certRow f1058s11 on (rf1058 11) using bank tags [3,3]
theorem f1058 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,0,3,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,0,3,0,1] (.cons (f1058s0) (.cons (f1058s1) (.cons (f1058s2) (.cons (f1058s3) (.cons (f1058s4) (.cons (f1058s5) (.cons (f1058s6) (.cons (f1058s7) (.cons (f1058s8) (.cons (f1058s9) (.cons (f1058s10) (.cons (f1058s11) .nil))))))))))))
private abbrev rf1059 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,0,3,1,0]
certRow f1059s0 on (rf1059 0) using bank tags [3,3]
certRow f1059s1 on (rf1059 1) using bank tags [3,3,3]
certRow f1059s2 on (rf1059 2) using bank tags [3]
certRow f1059s3 on (rf1059 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3]
certRow f1059s4 on (rf1059 4) using bank tags [3,3,3]
certRow f1059s5 on (rf1059 5) using bank tags []
certRow f1059s6 on (rf1059 6) using bank tags [3,3,3,3]
certRow f1059s7 on (rf1059 7) using bank tags [3]
certRow f1059s8 on (rf1059 8) using bank tags [3,3,3,3]
certRow f1059s9 on (rf1059 9) using bank tags [3]
certRow f1059s10 on (rf1059 10) using bank tags [3,3,3,3]
certRow f1059s11 on (rf1059 11) using bank tags [3]
theorem f1059 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,0,3,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,0,3,1,0] (.cons (f1059s0) (.cons (f1059s1) (.cons (f1059s2) (.cons (f1059s3) (.cons (f1059s4) (.cons (f1059s5) (.cons (f1059s6) (.cons (f1059s7) (.cons (f1059s8) (.cons (f1059s9) (.cons (f1059s10) (.cons (f1059s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
