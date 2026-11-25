import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1243 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [0,1,3,0]
certRow f1243s0 on (rf1243 0) using bank tags []
certRow f1243s1 on (rf1243 1) using bank tags [3]
certRow f1243s2 on (rf1243 2) using bank tags [3,3]
certRow f1243s3 on (rf1243 3) using bank tags [3]
certRow f1243s4 on (rf1243 4) using bank tags []
certRow f1243s5 on (rf1243 5) using bank tags [3]
certRow f1243s6 on (rf1243 6) using bank tags []
certRow f1243s7 on (rf1243 7) using bank tags []
certRow f1243s8 on (rf1243 8) using bank tags []
certRow f1243s9 on (rf1243 9) using bank tags []
certRow f1243s10 on (rf1243 10) using bank tags []
certRow f1243s11 on (rf1243 11) using bank tags []
certRow f1243s12 on (rf1243 12) using bank tags []
certRow f1243s13 on (rf1243 13) using bank tags []
certRow f1243s14 on (rf1243 14) using bank tags []
certRow f1243s15 on (rf1243 15) using bank tags []
certRow f1243s16 on (rf1243 16) using bank tags []
certRow f1243s17 on (rf1243 17) using bank tags []
certRow f1243s18 on (rf1243 18) using bank tags []
certRow f1243s19 on (rf1243 19) using bank tags [3]
certRow f1243s20 on (rf1243 20) using bank tags []
certRow f1243s21 on (rf1243 21) using bank tags []
certRow f1243s22 on (rf1243 22) using bank tags []
certRow f1243s23 on (rf1243 23) using bank tags []
theorem f1243 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [0,1,3,0]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [0,1,3,0] (.cons (f1243s0) (.cons (f1243s1) (.cons (f1243s2) (.cons (f1243s3) (.cons (f1243s4) (.cons (f1243s5) (.cons (f1243s6) (.cons (f1243s7) (.cons (f1243s8) (.cons (f1243s9) (.cons (f1243s10) (.cons (f1243s11) (.cons (f1243s12) (.cons (f1243s13) (.cons (f1243s14) (.cons (f1243s15) (.cons (f1243s16) (.cons (f1243s17) (.cons (f1243s18) (.cons (f1243s19) (.cons (f1243s20) (.cons (f1243s21) (.cons (f1243s22) (.cons (f1243s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
