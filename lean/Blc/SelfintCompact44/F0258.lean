import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1236 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [0,0,1,3]
certRow f1236s0 on (rf1236 0) using bank tags []
certRow f1236s1 on (rf1236 1) using bank tags [3,3,3]
certRow f1236s2 on (rf1236 2) using bank tags []
certRow f1236s3 on (rf1236 3) using bank tags [3,3]
certRow f1236s4 on (rf1236 4) using bank tags [3]
certRow f1236s5 on (rf1236 5) using bank tags [3]
certRow f1236s6 on (rf1236 6) using bank tags []
certRow f1236s7 on (rf1236 7) using bank tags []
certRow f1236s8 on (rf1236 8) using bank tags []
certRow f1236s9 on (rf1236 9) using bank tags []
certRow f1236s10 on (rf1236 10) using bank tags []
certRow f1236s11 on (rf1236 11) using bank tags []
certRow f1236s12 on (rf1236 12) using bank tags []
certRow f1236s13 on (rf1236 13) using bank tags []
certRow f1236s14 on (rf1236 14) using bank tags []
certRow f1236s15 on (rf1236 15) using bank tags []
certRow f1236s16 on (rf1236 16) using bank tags []
certRow f1236s17 on (rf1236 17) using bank tags []
certRow f1236s18 on (rf1236 18) using bank tags []
certRow f1236s19 on (rf1236 19) using bank tags [3,3]
certRow f1236s20 on (rf1236 20) using bank tags []
certRow f1236s21 on (rf1236 21) using bank tags [3]
certRow f1236s22 on (rf1236 22) using bank tags []
certRow f1236s23 on (rf1236 23) using bank tags []
theorem f1236 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [0,0,1,3]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [0,0,1,3] (.cons (f1236s0) (.cons (f1236s1) (.cons (f1236s2) (.cons (f1236s3) (.cons (f1236s4) (.cons (f1236s5) (.cons (f1236s6) (.cons (f1236s7) (.cons (f1236s8) (.cons (f1236s9) (.cons (f1236s10) (.cons (f1236s11) (.cons (f1236s12) (.cons (f1236s13) (.cons (f1236s14) (.cons (f1236s15) (.cons (f1236s16) (.cons (f1236s17) (.cons (f1236s18) (.cons (f1236s19) (.cons (f1236s20) (.cons (f1236s21) (.cons (f1236s22) (.cons (f1236s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
