import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1251 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [1,0,1,2]
certRow f1251s0 on (rf1251 0) using bank tags []
certRow f1251s1 on (rf1251 1) using bank tags [3,3]
certRow f1251s2 on (rf1251 2) using bank tags [3,3,3]
certRow f1251s3 on (rf1251 3) using bank tags [3,3]
certRow f1251s4 on (rf1251 4) using bank tags []
certRow f1251s5 on (rf1251 5) using bank tags [3]
certRow f1251s6 on (rf1251 6) using bank tags []
certRow f1251s7 on (rf1251 7) using bank tags []
certRow f1251s8 on (rf1251 8) using bank tags []
certRow f1251s9 on (rf1251 9) using bank tags []
certRow f1251s10 on (rf1251 10) using bank tags []
certRow f1251s11 on (rf1251 11) using bank tags []
certRow f1251s12 on (rf1251 12) using bank tags []
certRow f1251s13 on (rf1251 13) using bank tags []
certRow f1251s14 on (rf1251 14) using bank tags []
certRow f1251s15 on (rf1251 15) using bank tags []
certRow f1251s16 on (rf1251 16) using bank tags []
certRow f1251s17 on (rf1251 17) using bank tags []
certRow f1251s18 on (rf1251 18) using bank tags []
certRow f1251s19 on (rf1251 19) using bank tags []
certRow f1251s20 on (rf1251 20) using bank tags []
certRow f1251s21 on (rf1251 21) using bank tags [3]
certRow f1251s22 on (rf1251 22) using bank tags []
certRow f1251s23 on (rf1251 23) using bank tags []
theorem f1251 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [1,0,1,2]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [1,0,1,2] (.cons (f1251s0) (.cons (f1251s1) (.cons (f1251s2) (.cons (f1251s3) (.cons (f1251s4) (.cons (f1251s5) (.cons (f1251s6) (.cons (f1251s7) (.cons (f1251s8) (.cons (f1251s9) (.cons (f1251s10) (.cons (f1251s11) (.cons (f1251s12) (.cons (f1251s13) (.cons (f1251s14) (.cons (f1251s15) (.cons (f1251s16) (.cons (f1251s17) (.cons (f1251s18) (.cons (f1251s19) (.cons (f1251s20) (.cons (f1251s21) (.cons (f1251s22) (.cons (f1251s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
