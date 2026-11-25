import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1238 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [0,0,3,1]
certRow f1238s0 on (rf1238 0) using bank tags []
certRow f1238s1 on (rf1238 1) using bank tags [3]
certRow f1238s2 on (rf1238 2) using bank tags [3,3]
certRow f1238s3 on (rf1238 3) using bank tags [3,3]
certRow f1238s4 on (rf1238 4) using bank tags [3]
certRow f1238s5 on (rf1238 5) using bank tags [3]
certRow f1238s6 on (rf1238 6) using bank tags []
certRow f1238s7 on (rf1238 7) using bank tags []
certRow f1238s8 on (rf1238 8) using bank tags []
certRow f1238s9 on (rf1238 9) using bank tags []
certRow f1238s10 on (rf1238 10) using bank tags []
certRow f1238s11 on (rf1238 11) using bank tags []
certRow f1238s12 on (rf1238 12) using bank tags []
certRow f1238s13 on (rf1238 13) using bank tags []
certRow f1238s14 on (rf1238 14) using bank tags []
certRow f1238s15 on (rf1238 15) using bank tags []
certRow f1238s16 on (rf1238 16) using bank tags []
certRow f1238s17 on (rf1238 17) using bank tags []
certRow f1238s18 on (rf1238 18) using bank tags []
certRow f1238s19 on (rf1238 19) using bank tags [3,3]
certRow f1238s20 on (rf1238 20) using bank tags []
certRow f1238s21 on (rf1238 21) using bank tags [3]
certRow f1238s22 on (rf1238 22) using bank tags []
certRow f1238s23 on (rf1238 23) using bank tags []
theorem f1238 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [0,0,3,1]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [0,0,3,1] (.cons (f1238s0) (.cons (f1238s1) (.cons (f1238s2) (.cons (f1238s3) (.cons (f1238s4) (.cons (f1238s5) (.cons (f1238s6) (.cons (f1238s7) (.cons (f1238s8) (.cons (f1238s9) (.cons (f1238s10) (.cons (f1238s11) (.cons (f1238s12) (.cons (f1238s13) (.cons (f1238s14) (.cons (f1238s15) (.cons (f1238s16) (.cons (f1238s17) (.cons (f1238s18) (.cons (f1238s19) (.cons (f1238s20) (.cons (f1238s21) (.cons (f1238s22) (.cons (f1238s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
