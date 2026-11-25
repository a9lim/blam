import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1237 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [0,0,2,2]
certRow f1237s0 on (rf1237 0) using bank tags []
certRow f1237s1 on (rf1237 1) using bank tags [3,3]
certRow f1237s2 on (rf1237 2) using bank tags [3,3]
certRow f1237s3 on (rf1237 3) using bank tags []
certRow f1237s4 on (rf1237 4) using bank tags [3,3]
certRow f1237s5 on (rf1237 5) using bank tags []
certRow f1237s6 on (rf1237 6) using bank tags []
certRow f1237s7 on (rf1237 7) using bank tags []
certRow f1237s8 on (rf1237 8) using bank tags []
certRow f1237s9 on (rf1237 9) using bank tags []
certRow f1237s10 on (rf1237 10) using bank tags []
certRow f1237s11 on (rf1237 11) using bank tags []
certRow f1237s12 on (rf1237 12) using bank tags []
certRow f1237s13 on (rf1237 13) using bank tags []
certRow f1237s14 on (rf1237 14) using bank tags []
certRow f1237s15 on (rf1237 15) using bank tags []
certRow f1237s16 on (rf1237 16) using bank tags []
certRow f1237s17 on (rf1237 17) using bank tags []
certRow f1237s18 on (rf1237 18) using bank tags []
certRow f1237s19 on (rf1237 19) using bank tags [3,3]
certRow f1237s20 on (rf1237 20) using bank tags []
certRow f1237s21 on (rf1237 21) using bank tags [3,3]
certRow f1237s22 on (rf1237 22) using bank tags []
certRow f1237s23 on (rf1237 23) using bank tags []
theorem f1237 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [0,0,2,2]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [0,0,2,2] (.cons (f1237s0) (.cons (f1237s1) (.cons (f1237s2) (.cons (f1237s3) (.cons (f1237s4) (.cons (f1237s5) (.cons (f1237s6) (.cons (f1237s7) (.cons (f1237s8) (.cons (f1237s9) (.cons (f1237s10) (.cons (f1237s11) (.cons (f1237s12) (.cons (f1237s13) (.cons (f1237s14) (.cons (f1237s15) (.cons (f1237s16) (.cons (f1237s17) (.cons (f1237s18) (.cons (f1237s19) (.cons (f1237s20) (.cons (f1237s21) (.cons (f1237s22) (.cons (f1237s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
