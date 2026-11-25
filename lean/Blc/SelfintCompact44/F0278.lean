import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1257 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [1,2,0,1]
certRow f1257s0 on (rf1257 0) using bank tags []
certRow f1257s1 on (rf1257 1) using bank tags [3,3,3]
certRow f1257s2 on (rf1257 2) using bank tags [3]
certRow f1257s3 on (rf1257 3) using bank tags [3,3]
certRow f1257s4 on (rf1257 4) using bank tags []
certRow f1257s5 on (rf1257 5) using bank tags [3,3]
certRow f1257s6 on (rf1257 6) using bank tags []
certRow f1257s7 on (rf1257 7) using bank tags []
certRow f1257s8 on (rf1257 8) using bank tags []
certRow f1257s9 on (rf1257 9) using bank tags []
certRow f1257s10 on (rf1257 10) using bank tags []
certRow f1257s11 on (rf1257 11) using bank tags []
certRow f1257s12 on (rf1257 12) using bank tags []
certRow f1257s13 on (rf1257 13) using bank tags []
certRow f1257s14 on (rf1257 14) using bank tags []
certRow f1257s15 on (rf1257 15) using bank tags []
certRow f1257s16 on (rf1257 16) using bank tags []
certRow f1257s17 on (rf1257 17) using bank tags []
certRow f1257s18 on (rf1257 18) using bank tags []
certRow f1257s19 on (rf1257 19) using bank tags []
certRow f1257s20 on (rf1257 20) using bank tags []
certRow f1257s21 on (rf1257 21) using bank tags [3,3]
certRow f1257s22 on (rf1257 22) using bank tags []
certRow f1257s23 on (rf1257 23) using bank tags []
theorem f1257 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [1,2,0,1]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [1,2,0,1] (.cons (f1257s0) (.cons (f1257s1) (.cons (f1257s2) (.cons (f1257s3) (.cons (f1257s4) (.cons (f1257s5) (.cons (f1257s6) (.cons (f1257s7) (.cons (f1257s8) (.cons (f1257s9) (.cons (f1257s10) (.cons (f1257s11) (.cons (f1257s12) (.cons (f1257s13) (.cons (f1257s14) (.cons (f1257s15) (.cons (f1257s16) (.cons (f1257s17) (.cons (f1257s18) (.cons (f1257s19) (.cons (f1257s20) (.cons (f1257s21) (.cons (f1257s22) (.cons (f1257s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
