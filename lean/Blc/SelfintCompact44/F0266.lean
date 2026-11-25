import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1244 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [0,2,0,2]
certRow f1244s0 on (rf1244 0) using bank tags [3]
certRow f1244s1 on (rf1244 1) using bank tags [3,3]
certRow f1244s2 on (rf1244 2) using bank tags [3]
certRow f1244s3 on (rf1244 3) using bank tags []
certRow f1244s4 on (rf1244 4) using bank tags [3,3]
certRow f1244s5 on (rf1244 5) using bank tags []
certRow f1244s6 on (rf1244 6) using bank tags []
certRow f1244s7 on (rf1244 7) using bank tags []
certRow f1244s8 on (rf1244 8) using bank tags []
certRow f1244s9 on (rf1244 9) using bank tags []
certRow f1244s10 on (rf1244 10) using bank tags []
certRow f1244s11 on (rf1244 11) using bank tags []
certRow f1244s12 on (rf1244 12) using bank tags []
certRow f1244s13 on (rf1244 13) using bank tags []
certRow f1244s14 on (rf1244 14) using bank tags []
certRow f1244s15 on (rf1244 15) using bank tags []
certRow f1244s16 on (rf1244 16) using bank tags []
certRow f1244s17 on (rf1244 17) using bank tags []
certRow f1244s18 on (rf1244 18) using bank tags []
certRow f1244s19 on (rf1244 19) using bank tags [3,3]
certRow f1244s20 on (rf1244 20) using bank tags []
certRow f1244s21 on (rf1244 21) using bank tags [3,3]
certRow f1244s22 on (rf1244 22) using bank tags []
certRow f1244s23 on (rf1244 23) using bank tags [3]
theorem f1244 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [0,2,0,2]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [0,2,0,2] (.cons (f1244s0) (.cons (f1244s1) (.cons (f1244s2) (.cons (f1244s3) (.cons (f1244s4) (.cons (f1244s5) (.cons (f1244s6) (.cons (f1244s7) (.cons (f1244s8) (.cons (f1244s9) (.cons (f1244s10) (.cons (f1244s11) (.cons (f1244s12) (.cons (f1244s13) (.cons (f1244s14) (.cons (f1244s15) (.cons (f1244s16) (.cons (f1244s17) (.cons (f1244s18) (.cons (f1244s19) (.cons (f1244s20) (.cons (f1244s21) (.cons (f1244s22) (.cons (f1244s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
