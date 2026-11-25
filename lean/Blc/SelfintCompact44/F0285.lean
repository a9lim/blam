import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1264 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [2,1,1,0]
certRow f1264s0 on (rf1264 0) using bank tags [3]
certRow f1264s1 on (rf1264 1) using bank tags [3,3]
certRow f1264s2 on (rf1264 2) using bank tags [3,3,3]
certRow f1264s3 on (rf1264 3) using bank tags []
certRow f1264s4 on (rf1264 4) using bank tags []
certRow f1264s5 on (rf1264 5) using bank tags []
certRow f1264s6 on (rf1264 6) using bank tags []
certRow f1264s7 on (rf1264 7) using bank tags []
certRow f1264s8 on (rf1264 8) using bank tags []
certRow f1264s9 on (rf1264 9) using bank tags []
certRow f1264s10 on (rf1264 10) using bank tags []
certRow f1264s11 on (rf1264 11) using bank tags []
certRow f1264s12 on (rf1264 12) using bank tags []
certRow f1264s13 on (rf1264 13) using bank tags []
certRow f1264s14 on (rf1264 14) using bank tags []
certRow f1264s15 on (rf1264 15) using bank tags []
certRow f1264s16 on (rf1264 16) using bank tags []
certRow f1264s17 on (rf1264 17) using bank tags []
certRow f1264s18 on (rf1264 18) using bank tags []
certRow f1264s19 on (rf1264 19) using bank tags []
certRow f1264s20 on (rf1264 20) using bank tags []
certRow f1264s21 on (rf1264 21) using bank tags [3]
certRow f1264s22 on (rf1264 22) using bank tags []
certRow f1264s23 on (rf1264 23) using bank tags []
theorem f1264 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [2,1,1,0]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [2,1,1,0] (.cons (f1264s0) (.cons (f1264s1) (.cons (f1264s2) (.cons (f1264s3) (.cons (f1264s4) (.cons (f1264s5) (.cons (f1264s6) (.cons (f1264s7) (.cons (f1264s8) (.cons (f1264s9) (.cons (f1264s10) (.cons (f1264s11) (.cons (f1264s12) (.cons (f1264s13) (.cons (f1264s14) (.cons (f1264s15) (.cons (f1264s16) (.cons (f1264s17) (.cons (f1264s18) (.cons (f1264s19) (.cons (f1264s20) (.cons (f1264s21) (.cons (f1264s22) (.cons (f1264s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
