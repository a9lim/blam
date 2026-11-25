import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1241 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [0,1,1,2]
certRow f1241s0 on (rf1241 0) using bank tags []
certRow f1241s1 on (rf1241 1) using bank tags []
certRow f1241s2 on (rf1241 2) using bank tags [3,3,3,3]
certRow f1241s3 on (rf1241 3) using bank tags [3,3]
certRow f1241s4 on (rf1241 4) using bank tags [3]
certRow f1241s5 on (rf1241 5) using bank tags []
certRow f1241s6 on (rf1241 6) using bank tags []
certRow f1241s7 on (rf1241 7) using bank tags []
certRow f1241s8 on (rf1241 8) using bank tags []
certRow f1241s9 on (rf1241 9) using bank tags []
certRow f1241s10 on (rf1241 10) using bank tags []
certRow f1241s11 on (rf1241 11) using bank tags []
certRow f1241s12 on (rf1241 12) using bank tags []
certRow f1241s13 on (rf1241 13) using bank tags []
certRow f1241s14 on (rf1241 14) using bank tags []
certRow f1241s15 on (rf1241 15) using bank tags []
certRow f1241s16 on (rf1241 16) using bank tags []
certRow f1241s17 on (rf1241 17) using bank tags []
certRow f1241s18 on (rf1241 18) using bank tags []
certRow f1241s19 on (rf1241 19) using bank tags [3]
certRow f1241s20 on (rf1241 20) using bank tags []
certRow f1241s21 on (rf1241 21) using bank tags [3]
certRow f1241s22 on (rf1241 22) using bank tags []
certRow f1241s23 on (rf1241 23) using bank tags []
theorem f1241 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [0,1,1,2]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [0,1,1,2] (.cons (f1241s0) (.cons (f1241s1) (.cons (f1241s2) (.cons (f1241s3) (.cons (f1241s4) (.cons (f1241s5) (.cons (f1241s6) (.cons (f1241s7) (.cons (f1241s8) (.cons (f1241s9) (.cons (f1241s10) (.cons (f1241s11) (.cons (f1241s12) (.cons (f1241s13) (.cons (f1241s14) (.cons (f1241s15) (.cons (f1241s16) (.cons (f1241s17) (.cons (f1241s18) (.cons (f1241s19) (.cons (f1241s20) (.cons (f1241s21) (.cons (f1241s22) (.cons (f1241s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
