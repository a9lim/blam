import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1245 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [0,2,1,1]
certRow f1245s0 on (rf1245 0) using bank tags []
certRow f1245s1 on (rf1245 1) using bank tags [3]
certRow f1245s2 on (rf1245 2) using bank tags [3,3,3]
certRow f1245s3 on (rf1245 3) using bank tags [3,3]
certRow f1245s4 on (rf1245 4) using bank tags [3,3]
certRow f1245s5 on (rf1245 5) using bank tags []
certRow f1245s6 on (rf1245 6) using bank tags []
certRow f1245s7 on (rf1245 7) using bank tags []
certRow f1245s8 on (rf1245 8) using bank tags []
certRow f1245s9 on (rf1245 9) using bank tags []
certRow f1245s10 on (rf1245 10) using bank tags []
certRow f1245s11 on (rf1245 11) using bank tags []
certRow f1245s12 on (rf1245 12) using bank tags []
certRow f1245s13 on (rf1245 13) using bank tags []
certRow f1245s14 on (rf1245 14) using bank tags []
certRow f1245s15 on (rf1245 15) using bank tags []
certRow f1245s16 on (rf1245 16) using bank tags []
certRow f1245s17 on (rf1245 17) using bank tags []
certRow f1245s18 on (rf1245 18) using bank tags []
certRow f1245s19 on (rf1245 19) using bank tags [3,3]
certRow f1245s20 on (rf1245 20) using bank tags []
certRow f1245s21 on (rf1245 21) using bank tags [3,3]
certRow f1245s22 on (rf1245 22) using bank tags []
certRow f1245s23 on (rf1245 23) using bank tags [3]
theorem f1245 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [0,2,1,1]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [0,2,1,1] (.cons (f1245s0) (.cons (f1245s1) (.cons (f1245s2) (.cons (f1245s3) (.cons (f1245s4) (.cons (f1245s5) (.cons (f1245s6) (.cons (f1245s7) (.cons (f1245s8) (.cons (f1245s9) (.cons (f1245s10) (.cons (f1245s11) (.cons (f1245s12) (.cons (f1245s13) (.cons (f1245s14) (.cons (f1245s15) (.cons (f1245s16) (.cons (f1245s17) (.cons (f1245s18) (.cons (f1245s19) (.cons (f1245s20) (.cons (f1245s21) (.cons (f1245s22) (.cons (f1245s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
