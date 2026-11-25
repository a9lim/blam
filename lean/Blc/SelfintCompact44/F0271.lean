import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1249 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [0,4,0,0]
certRow f1249s0 on (rf1249 0) using bank tags []
certRow f1249s1 on (rf1249 1) using bank tags []
certRow f1249s2 on (rf1249 2) using bank tags []
certRow f1249s3 on (rf1249 3) using bank tags []
certRow f1249s4 on (rf1249 4) using bank tags []
certRow f1249s5 on (rf1249 5) using bank tags []
certRow f1249s6 on (rf1249 6) using bank tags []
certRow f1249s7 on (rf1249 7) using bank tags []
certRow f1249s8 on (rf1249 8) using bank tags []
certRow f1249s9 on (rf1249 9) using bank tags []
certRow f1249s10 on (rf1249 10) using bank tags []
certRow f1249s11 on (rf1249 11) using bank tags []
certRow f1249s12 on (rf1249 12) using bank tags []
certRow f1249s13 on (rf1249 13) using bank tags []
certRow f1249s14 on (rf1249 14) using bank tags []
certRow f1249s15 on (rf1249 15) using bank tags []
certRow f1249s16 on (rf1249 16) using bank tags []
certRow f1249s17 on (rf1249 17) using bank tags []
certRow f1249s18 on (rf1249 18) using bank tags []
certRow f1249s19 on (rf1249 19) using bank tags []
certRow f1249s20 on (rf1249 20) using bank tags []
certRow f1249s21 on (rf1249 21) using bank tags []
certRow f1249s22 on (rf1249 22) using bank tags []
certRow f1249s23 on (rf1249 23) using bank tags []
theorem f1249 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [0,4,0,0]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [0,4,0,0] (.cons (f1249s0) (.cons (f1249s1) (.cons (f1249s2) (.cons (f1249s3) (.cons (f1249s4) (.cons (f1249s5) (.cons (f1249s6) (.cons (f1249s7) (.cons (f1249s8) (.cons (f1249s9) (.cons (f1249s10) (.cons (f1249s11) (.cons (f1249s12) (.cons (f1249s13) (.cons (f1249s14) (.cons (f1249s15) (.cons (f1249s16) (.cons (f1249s17) (.cons (f1249s18) (.cons (f1249s19) (.cons (f1249s20) (.cons (f1249s21) (.cons (f1249s22) (.cons (f1249s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
