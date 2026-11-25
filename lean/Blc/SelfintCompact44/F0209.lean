import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1109 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [2,1,1,0,0]
certRow f1109s0 on (rf1109 0) using bank tags []
certRow f1109s1 on (rf1109 1) using bank tags [3,3,3,3,3]
certRow f1109s2 on (rf1109 2) using bank tags [3,3]
certRow f1109s3 on (rf1109 3) using bank tags [3,3]
certRow f1109s4 on (rf1109 4) using bank tags [3,3,3]
certRow f1109s5 on (rf1109 5) using bank tags []
certRow f1109s6 on (rf1109 6) using bank tags [3,3]
certRow f1109s7 on (rf1109 7) using bank tags []
certRow f1109s8 on (rf1109 8) using bank tags [3,3]
certRow f1109s9 on (rf1109 9) using bank tags []
certRow f1109s10 on (rf1109 10) using bank tags [3,3,3,3]
certRow f1109s11 on (rf1109 11) using bank tags []
theorem f1109 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [2,1,1,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [2,1,1,0,0] (.cons (f1109s0) (.cons (f1109s1) (.cons (f1109s2) (.cons (f1109s3) (.cons (f1109s4) (.cons (f1109s5) (.cons (f1109s6) (.cons (f1109s7) (.cons (f1109s8) (.cons (f1109s9) (.cons (f1109s10) (.cons (f1109s11) .nil))))))))))))
private abbrev rf1110 (i : Nat) := Split43.four 12 i ⟨0,2,0,5,5,4⟩ [0,0] [2,2,0,0,0]
certRow f1110s0 on (rf1110 0) using bank tags []
certRow f1110s1 on (rf1110 1) using bank tags []
certRow f1110s2 on (rf1110 2) using bank tags []
certRow f1110s3 on (rf1110 3) using bank tags []
certRow f1110s4 on (rf1110 4) using bank tags []
certRow f1110s5 on (rf1110 5) using bank tags []
certRow f1110s6 on (rf1110 6) using bank tags []
certRow f1110s7 on (rf1110 7) using bank tags []
certRow f1110s8 on (rf1110 8) using bank tags []
certRow f1110s9 on (rf1110 9) using bank tags []
certRow f1110s10 on (rf1110 10) using bank tags []
certRow f1110s11 on (rf1110 11) using bank tags []
theorem f1110 : BadRow (Grammar43.fourRow ⟨0,2,0,5,5,4⟩ [0,0] [2,2,0,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,4⟩ [0,0] [2,2,0,0,0] (.cons (f1110s0) (.cons (f1110s1) (.cons (f1110s2) (.cons (f1110s3) (.cons (f1110s4) (.cons (f1110s5) (.cons (f1110s6) (.cons (f1110s7) (.cons (f1110s8) (.cons (f1110s9) (.cons (f1110s10) (.cons (f1110s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
