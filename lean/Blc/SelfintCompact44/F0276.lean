import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1254 (i : Nat) := Split43.four 24 i ⟨0,2,0,7,4,4⟩ [0,0] [1,1,0,2]
certRow f1254s0 on (rf1254 0) using bank tags [3]
certRow f1254s1 on (rf1254 1) using bank tags [3,3]
certRow f1254s2 on (rf1254 2) using bank tags [3,3]
certRow f1254s3 on (rf1254 3) using bank tags [3,3]
certRow f1254s4 on (rf1254 4) using bank tags []
certRow f1254s5 on (rf1254 5) using bank tags [3,3]
certRow f1254s6 on (rf1254 6) using bank tags []
certRow f1254s7 on (rf1254 7) using bank tags []
certRow f1254s8 on (rf1254 8) using bank tags []
certRow f1254s9 on (rf1254 9) using bank tags []
certRow f1254s10 on (rf1254 10) using bank tags []
certRow f1254s11 on (rf1254 11) using bank tags []
certRow f1254s12 on (rf1254 12) using bank tags []
certRow f1254s13 on (rf1254 13) using bank tags []
certRow f1254s14 on (rf1254 14) using bank tags []
certRow f1254s15 on (rf1254 15) using bank tags []
certRow f1254s16 on (rf1254 16) using bank tags []
certRow f1254s17 on (rf1254 17) using bank tags []
certRow f1254s18 on (rf1254 18) using bank tags []
certRow f1254s19 on (rf1254 19) using bank tags []
certRow f1254s20 on (rf1254 20) using bank tags []
certRow f1254s21 on (rf1254 21) using bank tags []
certRow f1254s22 on (rf1254 22) using bank tags []
certRow f1254s23 on (rf1254 23) using bank tags []
theorem f1254 : BadRow (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [1,1,0,2]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,7,4,4⟩ [0,0] [1,1,0,2] (.cons (f1254s0) (.cons (f1254s1) (.cons (f1254s2) (.cons (f1254s3) (.cons (f1254s4) (.cons (f1254s5) (.cons (f1254s6) (.cons (f1254s7) (.cons (f1254s8) (.cons (f1254s9) (.cons (f1254s10) (.cons (f1254s11) (.cons (f1254s12) (.cons (f1254s13) (.cons (f1254s14) (.cons (f1254s15) (.cons (f1254s16) (.cons (f1254s17) (.cons (f1254s18) (.cons (f1254s19) (.cons (f1254s20) (.cons (f1254s21) (.cons (f1254s22) (.cons (f1254s23) .nil))))))))))))))))))))))))
certRow f1255 on (Grammar43.fourRow ⟨0,2,0,7,4,4⟩ [0,0] [1,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
