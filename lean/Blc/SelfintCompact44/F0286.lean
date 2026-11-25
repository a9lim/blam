import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1265 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [2,2,0,0]
certRow f1265s0 on (rf1265 0) using bank tags []
certRow f1265s1 on (rf1265 1) using bank tags []
certRow f1265s2 on (rf1265 2) using bank tags []
certRow f1265s3 on (rf1265 3) using bank tags []
certRow f1265s4 on (rf1265 4) using bank tags []
certRow f1265s5 on (rf1265 5) using bank tags []
certRow f1265s6 on (rf1265 6) using bank tags []
certRow f1265s7 on (rf1265 7) using bank tags []
certRow f1265s8 on (rf1265 8) using bank tags []
certRow f1265s9 on (rf1265 9) using bank tags []
certRow f1265s10 on (rf1265 10) using bank tags []
certRow f1265s11 on (rf1265 11) using bank tags []
certRow f1265s12 on (rf1265 12) using bank tags []
certRow f1265s13 on (rf1265 13) using bank tags []
certRow f1265s14 on (rf1265 14) using bank tags []
certRow f1265s15 on (rf1265 15) using bank tags []
certRow f1265s16 on (rf1265 16) using bank tags []
certRow f1265s17 on (rf1265 17) using bank tags []
certRow f1265s18 on (rf1265 18) using bank tags []
certRow f1265s19 on (rf1265 19) using bank tags []
certRow f1265s20 on (rf1265 20) using bank tags []
certRow f1265s21 on (rf1265 21) using bank tags []
certRow f1265s22 on (rf1265 22) using bank tags []
certRow f1265s23 on (rf1265 23) using bank tags []
theorem f1265 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [2,2,0,0]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [2,2,0,0] (.cons (f1265s0) (.cons (f1265s1) (.cons (f1265s2) (.cons (f1265s3) (.cons (f1265s4) (.cons (f1265s5) (.cons (f1265s6) (.cons (f1265s7) (.cons (f1265s8) (.cons (f1265s9) (.cons (f1265s10) (.cons (f1265s11) (.cons (f1265s12) (.cons (f1265s13) (.cons (f1265s14) (.cons (f1265s15) (.cons (f1265s16) (.cons (f1265s17) (.cons (f1265s18) (.cons (f1265s19) (.cons (f1265s20) (.cons (f1265s21) (.cons (f1265s22) (.cons (f1265s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
