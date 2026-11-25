import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1240 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [0,1,0,3]
certRow f1240s0 on (rf1240 0) using bank tags []
certRow f1240s1 on (rf1240 1) using bank tags [3,3,3,3]
certRow f1240s2 on (rf1240 2) using bank tags [3]
certRow f1240s3 on (rf1240 3) using bank tags [3,3]
certRow f1240s4 on (rf1240 4) using bank tags [3,3]
certRow f1240s5 on (rf1240 5) using bank tags [3,3]
certRow f1240s6 on (rf1240 6) using bank tags []
certRow f1240s7 on (rf1240 7) using bank tags []
certRow f1240s8 on (rf1240 8) using bank tags []
certRow f1240s9 on (rf1240 9) using bank tags []
certRow f1240s10 on (rf1240 10) using bank tags []
certRow f1240s11 on (rf1240 11) using bank tags []
certRow f1240s12 on (rf1240 12) using bank tags []
certRow f1240s13 on (rf1240 13) using bank tags []
certRow f1240s14 on (rf1240 14) using bank tags []
certRow f1240s15 on (rf1240 15) using bank tags []
certRow f1240s16 on (rf1240 16) using bank tags []
certRow f1240s17 on (rf1240 17) using bank tags []
certRow f1240s18 on (rf1240 18) using bank tags []
certRow f1240s19 on (rf1240 19) using bank tags [3,3,3,3]
certRow f1240s20 on (rf1240 20) using bank tags []
certRow f1240s21 on (rf1240 21) using bank tags [3,3]
certRow f1240s22 on (rf1240 22) using bank tags []
certRow f1240s23 on (rf1240 23) using bank tags [3]
theorem f1240 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [0,1,0,3]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [0,1,0,3] (.cons (f1240s0) (.cons (f1240s1) (.cons (f1240s2) (.cons (f1240s3) (.cons (f1240s4) (.cons (f1240s5) (.cons (f1240s6) (.cons (f1240s7) (.cons (f1240s8) (.cons (f1240s9) (.cons (f1240s10) (.cons (f1240s11) (.cons (f1240s12) (.cons (f1240s13) (.cons (f1240s14) (.cons (f1240s15) (.cons (f1240s16) (.cons (f1240s17) (.cons (f1240s18) (.cons (f1240s19) (.cons (f1240s20) (.cons (f1240s21) (.cons (f1240s22) (.cons (f1240s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
