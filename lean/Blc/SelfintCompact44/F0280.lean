import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1259 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [1,3,0,0]
certRow f1259s0 on (rf1259 0) using bank tags []
certRow f1259s1 on (rf1259 1) using bank tags [3,3]
certRow f1259s2 on (rf1259 2) using bank tags []
certRow f1259s3 on (rf1259 3) using bank tags [3]
certRow f1259s4 on (rf1259 4) using bank tags []
certRow f1259s5 on (rf1259 5) using bank tags []
certRow f1259s6 on (rf1259 6) using bank tags []
certRow f1259s7 on (rf1259 7) using bank tags []
certRow f1259s8 on (rf1259 8) using bank tags []
certRow f1259s9 on (rf1259 9) using bank tags []
certRow f1259s10 on (rf1259 10) using bank tags []
certRow f1259s11 on (rf1259 11) using bank tags []
certRow f1259s12 on (rf1259 12) using bank tags []
certRow f1259s13 on (rf1259 13) using bank tags []
certRow f1259s14 on (rf1259 14) using bank tags []
certRow f1259s15 on (rf1259 15) using bank tags []
certRow f1259s16 on (rf1259 16) using bank tags []
certRow f1259s17 on (rf1259 17) using bank tags []
certRow f1259s18 on (rf1259 18) using bank tags []
certRow f1259s19 on (rf1259 19) using bank tags []
certRow f1259s20 on (rf1259 20) using bank tags []
certRow f1259s21 on (rf1259 21) using bank tags []
certRow f1259s22 on (rf1259 22) using bank tags []
certRow f1259s23 on (rf1259 23) using bank tags []
theorem f1259 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [1,3,0,0]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [1,3,0,0] (.cons (f1259s0) (.cons (f1259s1) (.cons (f1259s2) (.cons (f1259s3) (.cons (f1259s4) (.cons (f1259s5) (.cons (f1259s6) (.cons (f1259s7) (.cons (f1259s8) (.cons (f1259s9) (.cons (f1259s10) (.cons (f1259s11) (.cons (f1259s12) (.cons (f1259s13) (.cons (f1259s14) (.cons (f1259s15) (.cons (f1259s16) (.cons (f1259s17) (.cons (f1259s18) (.cons (f1259s19) (.cons (f1259s20) (.cons (f1259s21) (.cons (f1259s22) (.cons (f1259s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
