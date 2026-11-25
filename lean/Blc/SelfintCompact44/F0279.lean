import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1258 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [1,2,1,0]
certRow f1258s0 on (rf1258 0) using bank tags []
certRow f1258s1 on (rf1258 1) using bank tags [3,3]
certRow f1258s2 on (rf1258 2) using bank tags [3,3]
certRow f1258s3 on (rf1258 3) using bank tags []
certRow f1258s4 on (rf1258 4) using bank tags []
certRow f1258s5 on (rf1258 5) using bank tags [3]
certRow f1258s6 on (rf1258 6) using bank tags []
certRow f1258s7 on (rf1258 7) using bank tags []
certRow f1258s8 on (rf1258 8) using bank tags []
certRow f1258s9 on (rf1258 9) using bank tags []
certRow f1258s10 on (rf1258 10) using bank tags []
certRow f1258s11 on (rf1258 11) using bank tags []
certRow f1258s12 on (rf1258 12) using bank tags []
certRow f1258s13 on (rf1258 13) using bank tags []
certRow f1258s14 on (rf1258 14) using bank tags []
certRow f1258s15 on (rf1258 15) using bank tags []
certRow f1258s16 on (rf1258 16) using bank tags []
certRow f1258s17 on (rf1258 17) using bank tags []
certRow f1258s18 on (rf1258 18) using bank tags []
certRow f1258s19 on (rf1258 19) using bank tags []
certRow f1258s20 on (rf1258 20) using bank tags []
certRow f1258s21 on (rf1258 21) using bank tags [3]
certRow f1258s22 on (rf1258 22) using bank tags []
certRow f1258s23 on (rf1258 23) using bank tags []
theorem f1258 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [1,2,1,0]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [1,2,1,0] (.cons (f1258s0) (.cons (f1258s1) (.cons (f1258s2) (.cons (f1258s3) (.cons (f1258s4) (.cons (f1258s5) (.cons (f1258s6) (.cons (f1258s7) (.cons (f1258s8) (.cons (f1258s9) (.cons (f1258s10) (.cons (f1258s11) (.cons (f1258s12) (.cons (f1258s13) (.cons (f1258s14) (.cons (f1258s15) (.cons (f1258s16) (.cons (f1258s17) (.cons (f1258s18) (.cons (f1258s19) (.cons (f1258s20) (.cons (f1258s21) (.cons (f1258s22) (.cons (f1258s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
