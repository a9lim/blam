import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1079 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,3,1,0,0]
certRow f1079s0 on (rf1079 0) using bank tags []
certRow f1079s1 on (rf1079 1) using bank tags [3,3,3]
certRow f1079s2 on (rf1079 2) using bank tags [3,3]
certRow f1079s3 on (rf1079 3) using bank tags [3,3,3,3]
certRow f1079s4 on (rf1079 4) using bank tags [3,3,3]
certRow f1079s5 on (rf1079 5) using bank tags []
certRow f1079s6 on (rf1079 6) using bank tags [3,3,3,3,3]
certRow f1079s7 on (rf1079 7) using bank tags [3]
certRow f1079s8 on (rf1079 8) using bank tags [3,3]
certRow f1079s9 on (rf1079 9) using bank tags []
certRow f1079s10 on (rf1079 10) using bank tags [3,3]
certRow f1079s11 on (rf1079 11) using bank tags []
theorem f1079 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,3,1,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,3,1,0,0] (.cons (f1079s0) (.cons (f1079s1) (.cons (f1079s2) (.cons (f1079s3) (.cons (f1079s4) (.cons (f1079s5) (.cons (f1079s6) (.cons (f1079s7) (.cons (f1079s8) (.cons (f1079s9) (.cons (f1079s10) (.cons (f1079s11) .nil))))))))))))
private abbrev rf1080 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,4,0,0,0]
certRow f1080s0 on (rf1080 0) using bank tags []
certRow f1080s1 on (rf1080 1) using bank tags []
certRow f1080s2 on (rf1080 2) using bank tags []
certRow f1080s3 on (rf1080 3) using bank tags []
certRow f1080s4 on (rf1080 4) using bank tags []
certRow f1080s5 on (rf1080 5) using bank tags []
certRow f1080s6 on (rf1080 6) using bank tags []
certRow f1080s7 on (rf1080 7) using bank tags []
certRow f1080s8 on (rf1080 8) using bank tags []
certRow f1080s9 on (rf1080 9) using bank tags []
certRow f1080s10 on (rf1080 10) using bank tags []
certRow f1080s11 on (rf1080 11) using bank tags []
theorem f1080 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,4,0,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,4,0,0,0] (.cons (f1080s0) (.cons (f1080s1) (.cons (f1080s2) (.cons (f1080s3) (.cons (f1080s4) (.cons (f1080s5) (.cons (f1080s6) (.cons (f1080s7) (.cons (f1080s8) (.cons (f1080s9) (.cons (f1080s10) (.cons (f1080s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
