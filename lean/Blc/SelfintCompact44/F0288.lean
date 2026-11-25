import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1267 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [3,0,1,0]
certRow f1267s0 on (rf1267 0) using bank tags []
certRow f1267s1 on (rf1267 1) using bank tags [3,3]
certRow f1267s2 on (rf1267 2) using bank tags [3]
certRow f1267s3 on (rf1267 3) using bank tags [3,3]
certRow f1267s4 on (rf1267 4) using bank tags []
certRow f1267s5 on (rf1267 5) using bank tags []
certRow f1267s6 on (rf1267 6) using bank tags []
certRow f1267s7 on (rf1267 7) using bank tags []
certRow f1267s8 on (rf1267 8) using bank tags []
certRow f1267s9 on (rf1267 9) using bank tags []
certRow f1267s10 on (rf1267 10) using bank tags []
certRow f1267s11 on (rf1267 11) using bank tags []
certRow f1267s12 on (rf1267 12) using bank tags []
certRow f1267s13 on (rf1267 13) using bank tags []
certRow f1267s14 on (rf1267 14) using bank tags []
certRow f1267s15 on (rf1267 15) using bank tags []
certRow f1267s16 on (rf1267 16) using bank tags []
certRow f1267s17 on (rf1267 17) using bank tags []
certRow f1267s18 on (rf1267 18) using bank tags []
certRow f1267s19 on (rf1267 19) using bank tags []
certRow f1267s20 on (rf1267 20) using bank tags []
certRow f1267s21 on (rf1267 21) using bank tags []
certRow f1267s22 on (rf1267 22) using bank tags []
certRow f1267s23 on (rf1267 23) using bank tags []
theorem f1267 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [3,0,1,0]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [3,0,1,0] (.cons (f1267s0) (.cons (f1267s1) (.cons (f1267s2) (.cons (f1267s3) (.cons (f1267s4) (.cons (f1267s5) (.cons (f1267s6) (.cons (f1267s7) (.cons (f1267s8) (.cons (f1267s9) (.cons (f1267s10) (.cons (f1267s11) (.cons (f1267s12) (.cons (f1267s13) (.cons (f1267s14) (.cons (f1267s15) (.cons (f1267s16) (.cons (f1267s17) (.cons (f1267s18) (.cons (f1267s19) (.cons (f1267s20) (.cons (f1267s21) (.cons (f1267s22) (.cons (f1267s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
