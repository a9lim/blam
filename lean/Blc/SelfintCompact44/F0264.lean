import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1242 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [0,1,2,1]
certRow f1242s0 on (rf1242 0) using bank tags []
certRow f1242s1 on (rf1242 1) using bank tags [3]
certRow f1242s2 on (rf1242 2) using bank tags [3,3]
certRow f1242s3 on (rf1242 3) using bank tags [3,3]
certRow f1242s4 on (rf1242 4) using bank tags [3]
certRow f1242s5 on (rf1242 5) using bank tags []
certRow f1242s6 on (rf1242 6) using bank tags []
certRow f1242s7 on (rf1242 7) using bank tags []
certRow f1242s8 on (rf1242 8) using bank tags []
certRow f1242s9 on (rf1242 9) using bank tags []
certRow f1242s10 on (rf1242 10) using bank tags []
certRow f1242s11 on (rf1242 11) using bank tags []
certRow f1242s12 on (rf1242 12) using bank tags []
certRow f1242s13 on (rf1242 13) using bank tags []
certRow f1242s14 on (rf1242 14) using bank tags []
certRow f1242s15 on (rf1242 15) using bank tags []
certRow f1242s16 on (rf1242 16) using bank tags []
certRow f1242s17 on (rf1242 17) using bank tags []
certRow f1242s18 on (rf1242 18) using bank tags []
certRow f1242s19 on (rf1242 19) using bank tags [3]
certRow f1242s20 on (rf1242 20) using bank tags []
certRow f1242s21 on (rf1242 21) using bank tags [3]
certRow f1242s22 on (rf1242 22) using bank tags []
certRow f1242s23 on (rf1242 23) using bank tags [3]
theorem f1242 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [0,1,2,1]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [0,1,2,1] (.cons (f1242s0) (.cons (f1242s1) (.cons (f1242s2) (.cons (f1242s3) (.cons (f1242s4) (.cons (f1242s5) (.cons (f1242s6) (.cons (f1242s7) (.cons (f1242s8) (.cons (f1242s9) (.cons (f1242s10) (.cons (f1242s11) (.cons (f1242s12) (.cons (f1242s13) (.cons (f1242s14) (.cons (f1242s15) (.cons (f1242s16) (.cons (f1242s17) (.cons (f1242s18) (.cons (f1242s19) (.cons (f1242s20) (.cons (f1242s21) (.cons (f1242s22) (.cons (f1242s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
