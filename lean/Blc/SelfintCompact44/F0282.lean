import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1261 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [2,0,1,1]
certRow f1261s0 on (rf1261 0) using bank tags []
certRow f1261s1 on (rf1261 1) using bank tags [3,3,3,3]
certRow f1261s2 on (rf1261 2) using bank tags [3,3,3]
certRow f1261s3 on (rf1261 3) using bank tags [3,3]
certRow f1261s4 on (rf1261 4) using bank tags []
certRow f1261s5 on (rf1261 5) using bank tags []
certRow f1261s6 on (rf1261 6) using bank tags []
certRow f1261s7 on (rf1261 7) using bank tags []
certRow f1261s8 on (rf1261 8) using bank tags []
certRow f1261s9 on (rf1261 9) using bank tags []
certRow f1261s10 on (rf1261 10) using bank tags []
certRow f1261s11 on (rf1261 11) using bank tags []
certRow f1261s12 on (rf1261 12) using bank tags []
certRow f1261s13 on (rf1261 13) using bank tags []
certRow f1261s14 on (rf1261 14) using bank tags []
certRow f1261s15 on (rf1261 15) using bank tags []
certRow f1261s16 on (rf1261 16) using bank tags []
certRow f1261s17 on (rf1261 17) using bank tags []
certRow f1261s18 on (rf1261 18) using bank tags []
certRow f1261s19 on (rf1261 19) using bank tags []
certRow f1261s20 on (rf1261 20) using bank tags []
certRow f1261s21 on (rf1261 21) using bank tags [3,3,3]
certRow f1261s22 on (rf1261 22) using bank tags []
certRow f1261s23 on (rf1261 23) using bank tags [3]
theorem f1261 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [2,0,1,1]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [2,0,1,1] (.cons (f1261s0) (.cons (f1261s1) (.cons (f1261s2) (.cons (f1261s3) (.cons (f1261s4) (.cons (f1261s5) (.cons (f1261s6) (.cons (f1261s7) (.cons (f1261s8) (.cons (f1261s9) (.cons (f1261s10) (.cons (f1261s11) (.cons (f1261s12) (.cons (f1261s13) (.cons (f1261s14) (.cons (f1261s15) (.cons (f1261s16) (.cons (f1261s17) (.cons (f1261s18) (.cons (f1261s19) (.cons (f1261s20) (.cons (f1261s21) (.cons (f1261s22) (.cons (f1261s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
