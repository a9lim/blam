import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1081 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [1,0,0,0,3]
certRow f1081s0 on (rf1081 0) using bank tags []
certRow f1081s1 on (rf1081 1) using bank tags [3,3,3,3,3]
certRow f1081s2 on (rf1081 2) using bank tags [3,3]
certRow f1081s3 on (rf1081 3) using bank tags [3,3,3,3,3,3,3]
certRow f1081s4 on (rf1081 4) using bank tags [3,3,3,3,3]
certRow f1081s5 on (rf1081 5) using bank tags [3,3]
certRow f1081s6 on (rf1081 6) using bank tags []
certRow f1081s7 on (rf1081 7) using bank tags [3,3]
certRow f1081s8 on (rf1081 8) using bank tags []
certRow f1081s9 on (rf1081 9) using bank tags [3,3,3,3,3]
certRow f1081s10 on (rf1081 10) using bank tags []
certRow f1081s11 on (rf1081 11) using bank tags []
theorem f1081 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,0,0,0,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [1,0,0,0,3] (.cons (f1081s0) (.cons (f1081s1) (.cons (f1081s2) (.cons (f1081s3) (.cons (f1081s4) (.cons (f1081s5) (.cons (f1081s6) (.cons (f1081s7) (.cons (f1081s8) (.cons (f1081s9) (.cons (f1081s10) (.cons (f1081s11) .nil))))))))))))
private abbrev rf1082 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [1,0,0,1,2]
certRow f1082s0 on (rf1082 0) using bank tags []
certRow f1082s1 on (rf1082 1) using bank tags [3,3,3,3,3]
certRow f1082s2 on (rf1082 2) using bank tags [3,3]
certRow f1082s3 on (rf1082 3) using bank tags [3,3,3,3,3]
certRow f1082s4 on (rf1082 4) using bank tags [3,3,3,3,3]
certRow f1082s5 on (rf1082 5) using bank tags [3]
certRow f1082s6 on (rf1082 6) using bank tags [3,3,3,3]
certRow f1082s7 on (rf1082 7) using bank tags []
certRow f1082s8 on (rf1082 8) using bank tags []
certRow f1082s9 on (rf1082 9) using bank tags []
certRow f1082s10 on (rf1082 10) using bank tags [3,3,3,3,3,3]
certRow f1082s11 on (rf1082 11) using bank tags []
theorem f1082 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,0,0,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [1,0,0,1,2] (.cons (f1082s0) (.cons (f1082s1) (.cons (f1082s2) (.cons (f1082s3) (.cons (f1082s4) (.cons (f1082s5) (.cons (f1082s6) (.cons (f1082s7) (.cons (f1082s8) (.cons (f1082s9) (.cons (f1082s10) (.cons (f1082s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
