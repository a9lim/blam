import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1239 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [0,0,4,0]
certRow f1239s0 on (rf1239 0) using bank tags []
certRow f1239s1 on (rf1239 1) using bank tags []
certRow f1239s2 on (rf1239 2) using bank tags []
certRow f1239s3 on (rf1239 3) using bank tags []
certRow f1239s4 on (rf1239 4) using bank tags []
certRow f1239s5 on (rf1239 5) using bank tags []
certRow f1239s6 on (rf1239 6) using bank tags []
certRow f1239s7 on (rf1239 7) using bank tags []
certRow f1239s8 on (rf1239 8) using bank tags []
certRow f1239s9 on (rf1239 9) using bank tags []
certRow f1239s10 on (rf1239 10) using bank tags []
certRow f1239s11 on (rf1239 11) using bank tags []
certRow f1239s12 on (rf1239 12) using bank tags []
certRow f1239s13 on (rf1239 13) using bank tags []
certRow f1239s14 on (rf1239 14) using bank tags []
certRow f1239s15 on (rf1239 15) using bank tags []
certRow f1239s16 on (rf1239 16) using bank tags []
certRow f1239s17 on (rf1239 17) using bank tags []
certRow f1239s18 on (rf1239 18) using bank tags []
certRow f1239s19 on (rf1239 19) using bank tags []
certRow f1239s20 on (rf1239 20) using bank tags []
certRow f1239s21 on (rf1239 21) using bank tags []
certRow f1239s22 on (rf1239 22) using bank tags []
certRow f1239s23 on (rf1239 23) using bank tags []
theorem f1239 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [0,0,4,0]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [0,0,4,0] (.cons (f1239s0) (.cons (f1239s1) (.cons (f1239s2) (.cons (f1239s3) (.cons (f1239s4) (.cons (f1239s5) (.cons (f1239s6) (.cons (f1239s7) (.cons (f1239s8) (.cons (f1239s9) (.cons (f1239s10) (.cons (f1239s11) (.cons (f1239s12) (.cons (f1239s13) (.cons (f1239s14) (.cons (f1239s15) (.cons (f1239s16) (.cons (f1239s17) (.cons (f1239s18) (.cons (f1239s19) (.cons (f1239s20) (.cons (f1239s21) (.cons (f1239s22) (.cons (f1239s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
