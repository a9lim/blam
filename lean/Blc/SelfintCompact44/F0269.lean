import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1247 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [0,3,0,1]
certRow f1247s0 on (rf1247 0) using bank tags [3]
certRow f1247s1 on (rf1247 1) using bank tags [3,3]
certRow f1247s2 on (rf1247 2) using bank tags [3,3]
certRow f1247s3 on (rf1247 3) using bank tags [3,3]
certRow f1247s4 on (rf1247 4) using bank tags []
certRow f1247s5 on (rf1247 5) using bank tags [3,3]
certRow f1247s6 on (rf1247 6) using bank tags []
certRow f1247s7 on (rf1247 7) using bank tags []
certRow f1247s8 on (rf1247 8) using bank tags []
certRow f1247s9 on (rf1247 9) using bank tags []
certRow f1247s10 on (rf1247 10) using bank tags []
certRow f1247s11 on (rf1247 11) using bank tags []
certRow f1247s12 on (rf1247 12) using bank tags []
certRow f1247s13 on (rf1247 13) using bank tags []
certRow f1247s14 on (rf1247 14) using bank tags []
certRow f1247s15 on (rf1247 15) using bank tags []
certRow f1247s16 on (rf1247 16) using bank tags []
certRow f1247s17 on (rf1247 17) using bank tags []
certRow f1247s18 on (rf1247 18) using bank tags []
certRow f1247s19 on (rf1247 19) using bank tags [3,3]
certRow f1247s20 on (rf1247 20) using bank tags []
certRow f1247s21 on (rf1247 21) using bank tags []
certRow f1247s22 on (rf1247 22) using bank tags []
certRow f1247s23 on (rf1247 23) using bank tags []
theorem f1247 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [0,3,0,1]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [0,3,0,1] (.cons (f1247s0) (.cons (f1247s1) (.cons (f1247s2) (.cons (f1247s3) (.cons (f1247s4) (.cons (f1247s5) (.cons (f1247s6) (.cons (f1247s7) (.cons (f1247s8) (.cons (f1247s9) (.cons (f1247s10) (.cons (f1247s11) (.cons (f1247s12) (.cons (f1247s13) (.cons (f1247s14) (.cons (f1247s15) (.cons (f1247s16) (.cons (f1247s17) (.cons (f1247s18) (.cons (f1247s19) (.cons (f1247s20) (.cons (f1247s21) (.cons (f1247s22) (.cons (f1247s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
