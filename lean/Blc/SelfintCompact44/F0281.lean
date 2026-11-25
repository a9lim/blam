import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1260 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [2,0,0,2]
certRow f1260s0 on (rf1260 0) using bank tags []
certRow f1260s1 on (rf1260 1) using bank tags [3,3]
certRow f1260s2 on (rf1260 2) using bank tags []
certRow f1260s3 on (rf1260 3) using bank tags []
certRow f1260s4 on (rf1260 4) using bank tags []
certRow f1260s5 on (rf1260 5) using bank tags []
certRow f1260s6 on (rf1260 6) using bank tags []
certRow f1260s7 on (rf1260 7) using bank tags []
certRow f1260s8 on (rf1260 8) using bank tags []
certRow f1260s9 on (rf1260 9) using bank tags []
certRow f1260s10 on (rf1260 10) using bank tags []
certRow f1260s11 on (rf1260 11) using bank tags []
certRow f1260s12 on (rf1260 12) using bank tags []
certRow f1260s13 on (rf1260 13) using bank tags []
certRow f1260s14 on (rf1260 14) using bank tags []
certRow f1260s15 on (rf1260 15) using bank tags []
certRow f1260s16 on (rf1260 16) using bank tags []
certRow f1260s17 on (rf1260 17) using bank tags []
certRow f1260s18 on (rf1260 18) using bank tags []
certRow f1260s19 on (rf1260 19) using bank tags []
certRow f1260s20 on (rf1260 20) using bank tags []
certRow f1260s21 on (rf1260 21) using bank tags [3,3]
certRow f1260s22 on (rf1260 22) using bank tags []
certRow f1260s23 on (rf1260 23) using bank tags [3]
theorem f1260 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [2,0,0,2]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [2,0,0,2] (.cons (f1260s0) (.cons (f1260s1) (.cons (f1260s2) (.cons (f1260s3) (.cons (f1260s4) (.cons (f1260s5) (.cons (f1260s6) (.cons (f1260s7) (.cons (f1260s8) (.cons (f1260s9) (.cons (f1260s10) (.cons (f1260s11) (.cons (f1260s12) (.cons (f1260s13) (.cons (f1260s14) (.cons (f1260s15) (.cons (f1260s16) (.cons (f1260s17) (.cons (f1260s18) (.cons (f1260s19) (.cons (f1260s20) (.cons (f1260s21) (.cons (f1260s22) (.cons (f1260s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
