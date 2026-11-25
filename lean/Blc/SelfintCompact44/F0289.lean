import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1268 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [3,1,0,0]
certRow f1268s0 on (rf1268 0) using bank tags []
certRow f1268s1 on (rf1268 1) using bank tags [3,3]
certRow f1268s2 on (rf1268 2) using bank tags []
certRow f1268s3 on (rf1268 3) using bank tags [3]
certRow f1268s4 on (rf1268 4) using bank tags []
certRow f1268s5 on (rf1268 5) using bank tags []
certRow f1268s6 on (rf1268 6) using bank tags []
certRow f1268s7 on (rf1268 7) using bank tags []
certRow f1268s8 on (rf1268 8) using bank tags []
certRow f1268s9 on (rf1268 9) using bank tags []
certRow f1268s10 on (rf1268 10) using bank tags []
certRow f1268s11 on (rf1268 11) using bank tags []
certRow f1268s12 on (rf1268 12) using bank tags []
certRow f1268s13 on (rf1268 13) using bank tags []
certRow f1268s14 on (rf1268 14) using bank tags []
certRow f1268s15 on (rf1268 15) using bank tags []
certRow f1268s16 on (rf1268 16) using bank tags []
certRow f1268s17 on (rf1268 17) using bank tags []
certRow f1268s18 on (rf1268 18) using bank tags []
certRow f1268s19 on (rf1268 19) using bank tags []
certRow f1268s20 on (rf1268 20) using bank tags []
certRow f1268s21 on (rf1268 21) using bank tags []
certRow f1268s22 on (rf1268 22) using bank tags []
certRow f1268s23 on (rf1268 23) using bank tags []
theorem f1268 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [3,1,0,0]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [3,1,0,0] (.cons (f1268s0) (.cons (f1268s1) (.cons (f1268s2) (.cons (f1268s3) (.cons (f1268s4) (.cons (f1268s5) (.cons (f1268s6) (.cons (f1268s7) (.cons (f1268s8) (.cons (f1268s9) (.cons (f1268s10) (.cons (f1268s11) (.cons (f1268s12) (.cons (f1268s13) (.cons (f1268s14) (.cons (f1268s15) (.cons (f1268s16) (.cons (f1268s17) (.cons (f1268s18) (.cons (f1268s19) (.cons (f1268s20) (.cons (f1268s21) (.cons (f1268s22) (.cons (f1268s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
