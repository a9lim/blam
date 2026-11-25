import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1246 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [0,2,2,0]
certRow f1246s0 on (rf1246 0) using bank tags [3]
certRow f1246s1 on (rf1246 1) using bank tags []
certRow f1246s2 on (rf1246 2) using bank tags [3,3]
certRow f1246s3 on (rf1246 3) using bank tags []
certRow f1246s4 on (rf1246 4) using bank tags []
certRow f1246s5 on (rf1246 5) using bank tags []
certRow f1246s6 on (rf1246 6) using bank tags []
certRow f1246s7 on (rf1246 7) using bank tags []
certRow f1246s8 on (rf1246 8) using bank tags []
certRow f1246s9 on (rf1246 9) using bank tags []
certRow f1246s10 on (rf1246 10) using bank tags []
certRow f1246s11 on (rf1246 11) using bank tags []
certRow f1246s12 on (rf1246 12) using bank tags []
certRow f1246s13 on (rf1246 13) using bank tags []
certRow f1246s14 on (rf1246 14) using bank tags []
certRow f1246s15 on (rf1246 15) using bank tags []
certRow f1246s16 on (rf1246 16) using bank tags []
certRow f1246s17 on (rf1246 17) using bank tags []
certRow f1246s18 on (rf1246 18) using bank tags []
certRow f1246s19 on (rf1246 19) using bank tags []
certRow f1246s20 on (rf1246 20) using bank tags []
certRow f1246s21 on (rf1246 21) using bank tags []
certRow f1246s22 on (rf1246 22) using bank tags []
certRow f1246s23 on (rf1246 23) using bank tags []
theorem f1246 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [0,2,2,0]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [0,2,2,0] (.cons (f1246s0) (.cons (f1246s1) (.cons (f1246s2) (.cons (f1246s3) (.cons (f1246s4) (.cons (f1246s5) (.cons (f1246s6) (.cons (f1246s7) (.cons (f1246s8) (.cons (f1246s9) (.cons (f1246s10) (.cons (f1246s11) (.cons (f1246s12) (.cons (f1246s13) (.cons (f1246s14) (.cons (f1246s15) (.cons (f1246s16) (.cons (f1246s17) (.cons (f1246s18) (.cons (f1246s19) (.cons (f1246s20) (.cons (f1246s21) (.cons (f1246s22) (.cons (f1246s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
