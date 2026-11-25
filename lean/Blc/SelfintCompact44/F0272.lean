import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1250 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [1,0,0,3]
certRow f1250s0 on (rf1250 0) using bank tags []
certRow f1250s1 on (rf1250 1) using bank tags [3,3,3,3]
certRow f1250s2 on (rf1250 2) using bank tags [3]
certRow f1250s3 on (rf1250 3) using bank tags [3,3]
certRow f1250s4 on (rf1250 4) using bank tags []
certRow f1250s5 on (rf1250 5) using bank tags []
certRow f1250s6 on (rf1250 6) using bank tags []
certRow f1250s7 on (rf1250 7) using bank tags []
certRow f1250s8 on (rf1250 8) using bank tags []
certRow f1250s9 on (rf1250 9) using bank tags []
certRow f1250s10 on (rf1250 10) using bank tags []
certRow f1250s11 on (rf1250 11) using bank tags []
certRow f1250s12 on (rf1250 12) using bank tags []
certRow f1250s13 on (rf1250 13) using bank tags []
certRow f1250s14 on (rf1250 14) using bank tags []
certRow f1250s15 on (rf1250 15) using bank tags []
certRow f1250s16 on (rf1250 16) using bank tags []
certRow f1250s17 on (rf1250 17) using bank tags []
certRow f1250s18 on (rf1250 18) using bank tags []
certRow f1250s19 on (rf1250 19) using bank tags []
certRow f1250s20 on (rf1250 20) using bank tags []
certRow f1250s21 on (rf1250 21) using bank tags [3,3]
certRow f1250s22 on (rf1250 22) using bank tags []
certRow f1250s23 on (rf1250 23) using bank tags [3]
theorem f1250 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [1,0,0,3]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [1,0,0,3] (.cons (f1250s0) (.cons (f1250s1) (.cons (f1250s2) (.cons (f1250s3) (.cons (f1250s4) (.cons (f1250s5) (.cons (f1250s6) (.cons (f1250s7) (.cons (f1250s8) (.cons (f1250s9) (.cons (f1250s10) (.cons (f1250s11) (.cons (f1250s12) (.cons (f1250s13) (.cons (f1250s14) (.cons (f1250s15) (.cons (f1250s16) (.cons (f1250s17) (.cons (f1250s18) (.cons (f1250s19) (.cons (f1250s20) (.cons (f1250s21) (.cons (f1250s22) (.cons (f1250s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
