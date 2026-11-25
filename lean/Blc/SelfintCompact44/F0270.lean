import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1248 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [0,3,1,0]
certRow f1248s0 on (rf1248 0) using bank tags [3]
certRow f1248s1 on (rf1248 1) using bank tags [3]
certRow f1248s2 on (rf1248 2) using bank tags [3,3]
certRow f1248s3 on (rf1248 3) using bank tags [3]
certRow f1248s4 on (rf1248 4) using bank tags []
certRow f1248s5 on (rf1248 5) using bank tags [3]
certRow f1248s6 on (rf1248 6) using bank tags []
certRow f1248s7 on (rf1248 7) using bank tags []
certRow f1248s8 on (rf1248 8) using bank tags []
certRow f1248s9 on (rf1248 9) using bank tags []
certRow f1248s10 on (rf1248 10) using bank tags []
certRow f1248s11 on (rf1248 11) using bank tags []
certRow f1248s12 on (rf1248 12) using bank tags []
certRow f1248s13 on (rf1248 13) using bank tags []
certRow f1248s14 on (rf1248 14) using bank tags []
certRow f1248s15 on (rf1248 15) using bank tags []
certRow f1248s16 on (rf1248 16) using bank tags []
certRow f1248s17 on (rf1248 17) using bank tags []
certRow f1248s18 on (rf1248 18) using bank tags []
certRow f1248s19 on (rf1248 19) using bank tags [3]
certRow f1248s20 on (rf1248 20) using bank tags []
certRow f1248s21 on (rf1248 21) using bank tags []
certRow f1248s22 on (rf1248 22) using bank tags []
certRow f1248s23 on (rf1248 23) using bank tags []
theorem f1248 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [0,3,1,0]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [0,3,1,0] (.cons (f1248s0) (.cons (f1248s1) (.cons (f1248s2) (.cons (f1248s3) (.cons (f1248s4) (.cons (f1248s5) (.cons (f1248s6) (.cons (f1248s7) (.cons (f1248s8) (.cons (f1248s9) (.cons (f1248s10) (.cons (f1248s11) (.cons (f1248s12) (.cons (f1248s13) (.cons (f1248s14) (.cons (f1248s15) (.cons (f1248s16) (.cons (f1248s17) (.cons (f1248s18) (.cons (f1248s19) (.cons (f1248s20) (.cons (f1248s21) (.cons (f1248s22) (.cons (f1248s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
