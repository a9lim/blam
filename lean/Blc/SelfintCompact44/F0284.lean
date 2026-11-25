import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1263 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [2,1,0,1]
certRow f1263s0 on (rf1263 0) using bank tags [3]
certRow f1263s1 on (rf1263 1) using bank tags [3,3,3]
certRow f1263s2 on (rf1263 2) using bank tags [3,3]
certRow f1263s3 on (rf1263 3) using bank tags [3,3]
certRow f1263s4 on (rf1263 4) using bank tags []
certRow f1263s5 on (rf1263 5) using bank tags []
certRow f1263s6 on (rf1263 6) using bank tags []
certRow f1263s7 on (rf1263 7) using bank tags []
certRow f1263s8 on (rf1263 8) using bank tags []
certRow f1263s9 on (rf1263 9) using bank tags []
certRow f1263s10 on (rf1263 10) using bank tags []
certRow f1263s11 on (rf1263 11) using bank tags []
certRow f1263s12 on (rf1263 12) using bank tags []
certRow f1263s13 on (rf1263 13) using bank tags []
certRow f1263s14 on (rf1263 14) using bank tags []
certRow f1263s15 on (rf1263 15) using bank tags []
certRow f1263s16 on (rf1263 16) using bank tags []
certRow f1263s17 on (rf1263 17) using bank tags []
certRow f1263s18 on (rf1263 18) using bank tags []
certRow f1263s19 on (rf1263 19) using bank tags []
certRow f1263s20 on (rf1263 20) using bank tags []
certRow f1263s21 on (rf1263 21) using bank tags [3,3]
certRow f1263s22 on (rf1263 22) using bank tags []
certRow f1263s23 on (rf1263 23) using bank tags []
theorem f1263 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [2,1,0,1]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [2,1,0,1] (.cons (f1263s0) (.cons (f1263s1) (.cons (f1263s2) (.cons (f1263s3) (.cons (f1263s4) (.cons (f1263s5) (.cons (f1263s6) (.cons (f1263s7) (.cons (f1263s8) (.cons (f1263s9) (.cons (f1263s10) (.cons (f1263s11) (.cons (f1263s12) (.cons (f1263s13) (.cons (f1263s14) (.cons (f1263s15) (.cons (f1263s16) (.cons (f1263s17) (.cons (f1263s18) (.cons (f1263s19) (.cons (f1263s20) (.cons (f1263s21) (.cons (f1263s22) (.cons (f1263s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
