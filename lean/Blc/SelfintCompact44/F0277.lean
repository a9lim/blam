import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1256 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [1,1,2,0]
certRow f1256s0 on (rf1256 0) using bank tags [3]
certRow f1256s1 on (rf1256 1) using bank tags [3,3]
certRow f1256s2 on (rf1256 2) using bank tags [3,3]
certRow f1256s3 on (rf1256 3) using bank tags []
certRow f1256s4 on (rf1256 4) using bank tags []
certRow f1256s5 on (rf1256 5) using bank tags [3]
certRow f1256s6 on (rf1256 6) using bank tags []
certRow f1256s7 on (rf1256 7) using bank tags []
certRow f1256s8 on (rf1256 8) using bank tags []
certRow f1256s9 on (rf1256 9) using bank tags []
certRow f1256s10 on (rf1256 10) using bank tags []
certRow f1256s11 on (rf1256 11) using bank tags []
certRow f1256s12 on (rf1256 12) using bank tags []
certRow f1256s13 on (rf1256 13) using bank tags []
certRow f1256s14 on (rf1256 14) using bank tags []
certRow f1256s15 on (rf1256 15) using bank tags []
certRow f1256s16 on (rf1256 16) using bank tags []
certRow f1256s17 on (rf1256 17) using bank tags []
certRow f1256s18 on (rf1256 18) using bank tags []
certRow f1256s19 on (rf1256 19) using bank tags []
certRow f1256s20 on (rf1256 20) using bank tags []
certRow f1256s21 on (rf1256 21) using bank tags []
certRow f1256s22 on (rf1256 22) using bank tags []
certRow f1256s23 on (rf1256 23) using bank tags []
theorem f1256 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [1,1,2,0]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [1,1,2,0] (.cons (f1256s0) (.cons (f1256s1) (.cons (f1256s2) (.cons (f1256s3) (.cons (f1256s4) (.cons (f1256s5) (.cons (f1256s6) (.cons (f1256s7) (.cons (f1256s8) (.cons (f1256s9) (.cons (f1256s10) (.cons (f1256s11) (.cons (f1256s12) (.cons (f1256s13) (.cons (f1256s14) (.cons (f1256s15) (.cons (f1256s16) (.cons (f1256s17) (.cons (f1256s18) (.cons (f1256s19) (.cons (f1256s20) (.cons (f1256s21) (.cons (f1256s22) (.cons (f1256s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
