import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1266 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [3,0,0,1]
certRow f1266s0 on (rf1266 0) using bank tags []
certRow f1266s1 on (rf1266 1) using bank tags [3,3]
certRow f1266s2 on (rf1266 2) using bank tags [3]
certRow f1266s3 on (rf1266 3) using bank tags [3,3]
certRow f1266s4 on (rf1266 4) using bank tags []
certRow f1266s5 on (rf1266 5) using bank tags []
certRow f1266s6 on (rf1266 6) using bank tags []
certRow f1266s7 on (rf1266 7) using bank tags []
certRow f1266s8 on (rf1266 8) using bank tags []
certRow f1266s9 on (rf1266 9) using bank tags []
certRow f1266s10 on (rf1266 10) using bank tags []
certRow f1266s11 on (rf1266 11) using bank tags []
certRow f1266s12 on (rf1266 12) using bank tags []
certRow f1266s13 on (rf1266 13) using bank tags []
certRow f1266s14 on (rf1266 14) using bank tags []
certRow f1266s15 on (rf1266 15) using bank tags []
certRow f1266s16 on (rf1266 16) using bank tags []
certRow f1266s17 on (rf1266 17) using bank tags []
certRow f1266s18 on (rf1266 18) using bank tags []
certRow f1266s19 on (rf1266 19) using bank tags []
certRow f1266s20 on (rf1266 20) using bank tags []
certRow f1266s21 on (rf1266 21) using bank tags []
certRow f1266s22 on (rf1266 22) using bank tags []
certRow f1266s23 on (rf1266 23) using bank tags []
theorem f1266 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [3,0,0,1]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [3,0,0,1] (.cons (f1266s0) (.cons (f1266s1) (.cons (f1266s2) (.cons (f1266s3) (.cons (f1266s4) (.cons (f1266s5) (.cons (f1266s6) (.cons (f1266s7) (.cons (f1266s8) (.cons (f1266s9) (.cons (f1266s10) (.cons (f1266s11) (.cons (f1266s12) (.cons (f1266s13) (.cons (f1266s14) (.cons (f1266s15) (.cons (f1266s16) (.cons (f1266s17) (.cons (f1266s18) (.cons (f1266s19) (.cons (f1266s20) (.cons (f1266s21) (.cons (f1266s22) (.cons (f1266s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
