import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1253 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [1,0,3,0]
certRow f1253s0 on (rf1253 0) using bank tags []
certRow f1253s1 on (rf1253 1) using bank tags [3,3]
certRow f1253s2 on (rf1253 2) using bank tags [3,3,3]
certRow f1253s3 on (rf1253 3) using bank tags [3,3]
certRow f1253s4 on (rf1253 4) using bank tags []
certRow f1253s5 on (rf1253 5) using bank tags []
certRow f1253s6 on (rf1253 6) using bank tags []
certRow f1253s7 on (rf1253 7) using bank tags []
certRow f1253s8 on (rf1253 8) using bank tags []
certRow f1253s9 on (rf1253 9) using bank tags []
certRow f1253s10 on (rf1253 10) using bank tags []
certRow f1253s11 on (rf1253 11) using bank tags []
certRow f1253s12 on (rf1253 12) using bank tags []
certRow f1253s13 on (rf1253 13) using bank tags []
certRow f1253s14 on (rf1253 14) using bank tags []
certRow f1253s15 on (rf1253 15) using bank tags []
certRow f1253s16 on (rf1253 16) using bank tags []
certRow f1253s17 on (rf1253 17) using bank tags []
certRow f1253s18 on (rf1253 18) using bank tags []
certRow f1253s19 on (rf1253 19) using bank tags []
certRow f1253s20 on (rf1253 20) using bank tags []
certRow f1253s21 on (rf1253 21) using bank tags [3]
certRow f1253s22 on (rf1253 22) using bank tags []
certRow f1253s23 on (rf1253 23) using bank tags []
theorem f1253 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [1,0,3,0]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [1,0,3,0] (.cons (f1253s0) (.cons (f1253s1) (.cons (f1253s2) (.cons (f1253s3) (.cons (f1253s4) (.cons (f1253s5) (.cons (f1253s6) (.cons (f1253s7) (.cons (f1253s8) (.cons (f1253s9) (.cons (f1253s10) (.cons (f1253s11) (.cons (f1253s12) (.cons (f1253s13) (.cons (f1253s14) (.cons (f1253s15) (.cons (f1253s16) (.cons (f1253s17) (.cons (f1253s18) (.cons (f1253s19) (.cons (f1253s20) (.cons (f1253s21) (.cons (f1253s22) (.cons (f1253s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
