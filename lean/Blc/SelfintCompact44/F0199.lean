import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1085 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [1,0,1,0,2]
certRow f1085s0 on (rf1085 0) using bank tags []
certRow f1085s1 on (rf1085 1) using bank tags [3,3,3,3,3]
certRow f1085s2 on (rf1085 2) using bank tags [3,3]
certRow f1085s3 on (rf1085 3) using bank tags [3,3,3,3]
certRow f1085s4 on (rf1085 4) using bank tags [3,3,3,3,3]
certRow f1085s5 on (rf1085 5) using bank tags []
certRow f1085s6 on (rf1085 6) using bank tags [3,3,3,3,3,3,3]
certRow f1085s7 on (rf1085 7) using bank tags []
certRow f1085s8 on (rf1085 8) using bank tags [3,3]
certRow f1085s9 on (rf1085 9) using bank tags []
certRow f1085s10 on (rf1085 10) using bank tags [3,3,3,3,3]
certRow f1085s11 on (rf1085 11) using bank tags []
theorem f1085 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,0,1,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [1,0,1,0,2] (.cons (f1085s0) (.cons (f1085s1) (.cons (f1085s2) (.cons (f1085s3) (.cons (f1085s4) (.cons (f1085s5) (.cons (f1085s6) (.cons (f1085s7) (.cons (f1085s8) (.cons (f1085s9) (.cons (f1085s10) (.cons (f1085s11) .nil))))))))))))
certRow f1086 on (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,0,1,1,1]) using bank tags []
private abbrev rf1087 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [1,0,1,2,0]
certRow f1087s0 on (rf1087 0) using bank tags []
certRow f1087s1 on (rf1087 1) using bank tags [3,3,3,3,3]
certRow f1087s2 on (rf1087 2) using bank tags [3,3]
certRow f1087s3 on (rf1087 3) using bank tags [3,3,3,3]
certRow f1087s4 on (rf1087 4) using bank tags [3,3,3,3,3]
certRow f1087s5 on (rf1087 5) using bank tags []
certRow f1087s6 on (rf1087 6) using bank tags [3,3,3,3]
certRow f1087s7 on (rf1087 7) using bank tags [3]
certRow f1087s8 on (rf1087 8) using bank tags [3,3]
certRow f1087s9 on (rf1087 9) using bank tags []
certRow f1087s10 on (rf1087 10) using bank tags [3,3,3,3]
certRow f1087s11 on (rf1087 11) using bank tags []
theorem f1087 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,0,1,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [1,0,1,2,0] (.cons (f1087s0) (.cons (f1087s1) (.cons (f1087s2) (.cons (f1087s3) (.cons (f1087s4) (.cons (f1087s5) (.cons (f1087s6) (.cons (f1087s7) (.cons (f1087s8) (.cons (f1087s9) (.cons (f1087s10) (.cons (f1087s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
