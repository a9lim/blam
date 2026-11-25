import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1048 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,0,0,2,2]
certRow f1048s0 on (rf1048 0) using bank tags [3,3,3,3,3,3,3,3]
certRow f1048s1 on (rf1048 1) using bank tags []
certRow f1048s2 on (rf1048 2) using bank tags []
certRow f1048s3 on (rf1048 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f1048s4 on (rf1048 4) using bank tags []
certRow f1048s5 on (rf1048 5) using bank tags [3,3]
certRow f1048s6 on (rf1048 6) using bank tags [3,3]
certRow f1048s7 on (rf1048 7) using bank tags []
certRow f1048s8 on (rf1048 8) using bank tags []
certRow f1048s9 on (rf1048 9) using bank tags [3,3,3,3,3]
certRow f1048s10 on (rf1048 10) using bank tags [3,3,3,3,3]
certRow f1048s11 on (rf1048 11) using bank tags [3,3]
theorem f1048 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,0,0,2,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,0,0,2,2] (.cons (f1048s0) (.cons (f1048s1) (.cons (f1048s2) (.cons (f1048s3) (.cons (f1048s4) (.cons (f1048s5) (.cons (f1048s6) (.cons (f1048s7) (.cons (f1048s8) (.cons (f1048s9) (.cons (f1048s10) (.cons (f1048s11) .nil))))))))))))
private abbrev rf1049 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [0,0,0,3,1]
certRow f1049s0 on (rf1049 0) using bank tags [3,3,3,3]
certRow f1049s1 on (rf1049 1) using bank tags [3,3,3]
certRow f1049s2 on (rf1049 2) using bank tags [3]
certRow f1049s3 on (rf1049 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f1049s4 on (rf1049 4) using bank tags [3,3,3,3,3]
certRow f1049s5 on (rf1049 5) using bank tags [3]
certRow f1049s6 on (rf1049 6) using bank tags [3,3,3,3,3]
certRow f1049s7 on (rf1049 7) using bank tags []
certRow f1049s8 on (rf1049 8) using bank tags []
certRow f1049s9 on (rf1049 9) using bank tags []
certRow f1049s10 on (rf1049 10) using bank tags [3,3,3,3,3,3]
certRow f1049s11 on (rf1049 11) using bank tags [3,3]
theorem f1049 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [0,0,0,3,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [0,0,0,3,1] (.cons (f1049s0) (.cons (f1049s1) (.cons (f1049s2) (.cons (f1049s3) (.cons (f1049s4) (.cons (f1049s5) (.cons (f1049s6) (.cons (f1049s7) (.cons (f1049s8) (.cons (f1049s9) (.cons (f1049s10) (.cons (f1049s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
