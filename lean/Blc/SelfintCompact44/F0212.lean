import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1115 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [4,0,0,0,0]
certRow f1115s0 on (rf1115 0) using bank tags []
certRow f1115s1 on (rf1115 1) using bank tags []
certRow f1115s2 on (rf1115 2) using bank tags []
certRow f1115s3 on (rf1115 3) using bank tags []
certRow f1115s4 on (rf1115 4) using bank tags []
certRow f1115s5 on (rf1115 5) using bank tags []
certRow f1115s6 on (rf1115 6) using bank tags []
certRow f1115s7 on (rf1115 7) using bank tags []
certRow f1115s8 on (rf1115 8) using bank tags []
certRow f1115s9 on (rf1115 9) using bank tags []
certRow f1115s10 on (rf1115 10) using bank tags []
certRow f1115s11 on (rf1115 11) using bank tags []
theorem f1115 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [4,0,0,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [4,0,0,0,0] (.cons (f1115s0) (.cons (f1115s1) (.cons (f1115s2) (.cons (f1115s3) (.cons (f1115s4) (.cons (f1115s5) (.cons (f1115s6) (.cons (f1115s7) (.cons (f1115s8) (.cons (f1115s9) (.cons (f1115s10) (.cons (f1115s11) .nil))))))))))))
certRow f1116 on (Grammar43.fourRow ⟨0,3,0,5,4,4⟩ [0,0,0] [0,0,0,4]) using bank tags []
certRow f1117 on (Grammar43.fourRow ⟨0,3,0,5,4,4⟩ [0,0,0] [0,0,1,3]) using bank tags [3,3,3,3,3,3,3,3,3,3,48,48,48,48,48,48,48,48,48,48]
certRow f1118 on (Grammar43.fourRow ⟨0,3,0,5,4,4⟩ [0,0,0] [0,0,2,2]) using bank tags [3,3,3,3,3,3,3,3,3,3,48,48,48,48,48,48,48,48,48,48]
certRow f1119 on (Grammar43.fourRow ⟨0,3,0,5,4,4⟩ [0,0,0] [0,0,3,1]) using bank tags [3,3,3,3,3,3,3,3,3,3,48,48,48,48,48,48,48,48,48,48]
certRow f1120 on (Grammar43.fourRow ⟨0,3,0,5,4,4⟩ [0,0,0] [0,0,4,0]) using bank tags []
private abbrev rf1121 (i : Nat) := Split43.four 8 i ⟨0,3,0,5,4,4⟩ [0,0,0] [0,1,0,3]
certRow f1121s0 on (rf1121 0) using bank tags []
certRow f1121s1 on (rf1121 1) using bank tags [3,3,3,3,48,48,48,48]
certRow f1121s2 on (rf1121 2) using bank tags [3,48]
certRow f1121s3 on (rf1121 3) using bank tags [3,3,3,3,3,3,48,48,48,48,48,48]
certRow f1121s4 on (rf1121 4) using bank tags [3,3,48,48]
certRow f1121s5 on (rf1121 5) using bank tags [3,3,3,3,48,48,48,48]
certRow f1121s6 on (rf1121 6) using bank tags []
certRow f1121s7 on (rf1121 7) using bank tags [3,48]
theorem f1121 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,4⟩ [0,0,0] [0,1,0,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,3,0,5,4,4⟩ [0,0,0] [0,1,0,3] (.cons (f1121s0) (.cons (f1121s1) (.cons (f1121s2) (.cons (f1121s3) (.cons (f1121s4) (.cons (f1121s5) (.cons (f1121s6) (.cons (f1121s7) .nil))))))))
certRow f1122 on (Grammar43.fourRow ⟨0,3,0,5,4,4⟩ [0,0,0] [0,1,1,2]) using bank tags [3,3,3,3,3,3,3,3,3,48,48,48,48,48,48,48,48,48]
end Blc.SelfintSingleObject.Compact44
