import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1090 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [1,0,3,0,0]
certRow f1090s0 on (rf1090 0) using bank tags []
certRow f1090s1 on (rf1090 1) using bank tags [3,3,3,3,3]
certRow f1090s2 on (rf1090 2) using bank tags [3,3]
certRow f1090s3 on (rf1090 3) using bank tags [3,3,3,3]
certRow f1090s4 on (rf1090 4) using bank tags [3,3,3,3,3]
certRow f1090s5 on (rf1090 5) using bank tags []
certRow f1090s6 on (rf1090 6) using bank tags []
certRow f1090s7 on (rf1090 7) using bank tags []
certRow f1090s8 on (rf1090 8) using bank tags [3,3]
certRow f1090s9 on (rf1090 9) using bank tags []
certRow f1090s10 on (rf1090 10) using bank tags [3,3,3]
certRow f1090s11 on (rf1090 11) using bank tags []
theorem f1090 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,0,3,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [1,0,3,0,0] (.cons (f1090s0) (.cons (f1090s1) (.cons (f1090s2) (.cons (f1090s3) (.cons (f1090s4) (.cons (f1090s5) (.cons (f1090s6) (.cons (f1090s7) (.cons (f1090s8) (.cons (f1090s9) (.cons (f1090s10) (.cons (f1090s11) .nil))))))))))))
private abbrev rf1091 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [1,1,0,0,2]
certRow f1091s0 on (rf1091 0) using bank tags []
certRow f1091s1 on (rf1091 1) using bank tags [3,3,3,3,3]
certRow f1091s2 on (rf1091 2) using bank tags [3,3]
certRow f1091s3 on (rf1091 3) using bank tags [3,3]
certRow f1091s4 on (rf1091 4) using bank tags [3,3,3,3,3]
certRow f1091s5 on (rf1091 5) using bank tags []
certRow f1091s6 on (rf1091 6) using bank tags [3,3,3,3,3,3,3]
certRow f1091s7 on (rf1091 7) using bank tags []
certRow f1091s8 on (rf1091 8) using bank tags [3]
certRow f1091s9 on (rf1091 9) using bank tags []
certRow f1091s10 on (rf1091 10) using bank tags [3,3]
certRow f1091s11 on (rf1091 11) using bank tags []
theorem f1091 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,1,0,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [1,1,0,0,2] (.cons (f1091s0) (.cons (f1091s1) (.cons (f1091s2) (.cons (f1091s3) (.cons (f1091s4) (.cons (f1091s5) (.cons (f1091s6) (.cons (f1091s7) (.cons (f1091s8) (.cons (f1091s9) (.cons (f1091s10) (.cons (f1091s11) .nil))))))))))))
certRow f1092 on (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [1,1,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
