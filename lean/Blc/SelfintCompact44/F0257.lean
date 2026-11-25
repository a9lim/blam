import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1235 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [0,0,0,4]
certRow f1235s0 on (rf1235 0) using bank tags []
certRow f1235s1 on (rf1235 1) using bank tags []
certRow f1235s2 on (rf1235 2) using bank tags []
certRow f1235s3 on (rf1235 3) using bank tags []
certRow f1235s4 on (rf1235 4) using bank tags []
certRow f1235s5 on (rf1235 5) using bank tags []
certRow f1235s6 on (rf1235 6) using bank tags []
certRow f1235s7 on (rf1235 7) using bank tags []
certRow f1235s8 on (rf1235 8) using bank tags []
certRow f1235s9 on (rf1235 9) using bank tags []
certRow f1235s10 on (rf1235 10) using bank tags []
certRow f1235s11 on (rf1235 11) using bank tags []
certRow f1235s12 on (rf1235 12) using bank tags []
certRow f1235s13 on (rf1235 13) using bank tags []
certRow f1235s14 on (rf1235 14) using bank tags []
certRow f1235s15 on (rf1235 15) using bank tags []
certRow f1235s16 on (rf1235 16) using bank tags []
certRow f1235s17 on (rf1235 17) using bank tags []
certRow f1235s18 on (rf1235 18) using bank tags []
certRow f1235s19 on (rf1235 19) using bank tags []
certRow f1235s20 on (rf1235 20) using bank tags []
certRow f1235s21 on (rf1235 21) using bank tags []
certRow f1235s22 on (rf1235 22) using bank tags []
certRow f1235s23 on (rf1235 23) using bank tags []
theorem f1235 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [0,0,0,4]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [0,0,0,4] (.cons (f1235s0) (.cons (f1235s1) (.cons (f1235s2) (.cons (f1235s3) (.cons (f1235s4) (.cons (f1235s5) (.cons (f1235s6) (.cons (f1235s7) (.cons (f1235s8) (.cons (f1235s9) (.cons (f1235s10) (.cons (f1235s11) (.cons (f1235s12) (.cons (f1235s13) (.cons (f1235s14) (.cons (f1235s15) (.cons (f1235s16) (.cons (f1235s17) (.cons (f1235s18) (.cons (f1235s19) (.cons (f1235s20) (.cons (f1235s21) (.cons (f1235s22) (.cons (f1235s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
